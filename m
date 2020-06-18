Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690B81FEFCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGXDSTj43JlIl7m3FynEVR2mtUmNbs2WUUuipgGFKSw=; b=o4DF1ow7vCjhR+
	u0+cUk3KGUyCC038hP8Ru1xwtdsXuwAku4XnxZXzgBCHlgGs5FozeKCL5VQZ2EEE2/ycNApue/jVB
	7GsuxnyHTwhtl3zPcKR9gK4OHO1ij0ylDe7RU39Iq/eUaDVKg43Wo3LFZgl9tbTEPOs22yI0XrYHZ
	vdWunkxB6y+uAxQfG/IXyL1CTpBme0RE8hX4oHfxEDkeYVVvKdY6zydWRb2+YI7zr5iCDfSuAyNP9
	b1VkonuRoywa6xOK9Ljiu90qLP2YLjTLvp3iZyDb0ms4IjBjpon4R9KfupjzKeU/Hl2IePLtt3OHb
	QgkzbGASEaVVJ5HoDFhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrym-0007VT-7o; Thu, 18 Jun 2020 10:41:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlryb-0007RC-FD
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:40:59 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD4FA2070A;
 Thu, 18 Jun 2020 10:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592476857;
 bh=7lAlMhCxQd0BiaTtbS/UPLzWqxDbBJolmFufkjeg4hU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y5y8IbPXVHOdmvq3Zm92nObVYL/7sAVAuT4tjHp4gu6FZWPa/iX0IV2ohPig78mI/
 Yn6MLxGXZHq0djRK8ce4w9lUXPG3gs7W88JsIQZIiCyMK85WcBcpR63fsnzKAKMOvM
 jIakxRpNLgnpmMZl/yRWAfWz8wERVwJz818lGvtA=
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] arm64: kexec_file: Use struct_size() in kmalloc()
Date: Thu, 18 Jun 2020 11:40:47 +0100
Message-Id: <159247357675.11586.8446389951509984593.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200617213407.GA1385@embeddedor>
References: <20200617213407.GA1385@embeddedor>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_034057_538125_95B5A723 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jun 2020 16:34:07 -0500, Gustavo A. R. Silva wrote:
> Make use of the struct_size() helper instead of an open-coded version
> in order to avoid any potential type mistakes.
> 
> This code was detected with the help of Coccinelle and, audited and
> fixed manually.

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: kexec_file: Use struct_size() in kmalloc()
      https://git.kernel.org/arm64/c/bf508ec95ca3

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
