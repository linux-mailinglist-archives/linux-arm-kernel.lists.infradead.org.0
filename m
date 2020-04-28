Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7A91BC1EA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cs+WQKoydXSwc4Swli6XD7dKuD4USqmoRa9FChREezE=; b=IsetGhL3O88gkR
	36MHiukvZJN3iX8uTGuRHRUi31g6kI6xBPVu0GdbO8Q+/gRV3AlMFNYTfPqEhKkpZ0ue2jFG+JYL/
	NazuDz0iT5ll0QBx//p1tWN9/y4ZP/9qyN2zviXeej9jXxQUGjWi6YO5w0mbzb+FCLhgAi/pvc0mB
	jNg/slK6HVx1etzo3DpJALU93KooOcRthNXwURTwGuu02HTtQpeK9IsXm2hcfkuTpGNzWe5wqstUQ
	GIY2oeK8ra+CE3mO1VQ0jKCaEpy282JMJLEoYu5J1J1xx3ST+y4g7x8GB4yCPipOn5+FmCzbH2vsN
	Qkv8eqsfAtT9vp5ePHVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRap-0003ck-DA; Tue, 28 Apr 2020 14:52:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYV-0008N6-DO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:54 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D32C120757;
 Tue, 28 Apr 2020 14:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085391;
 bh=HW5gY/PTGX5BQrBOARDH8pwTJ3WlmMRBNfR1t0B9/kY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L8zkHQlrc60X+lZLNznKbk5fh98lJju5xEBKbfwfPtb07WwwheodJ8dvchJXi/Ca7
 x4ARma7HkKjoEFWstuFJtZJbLeFWqhh0Gr2zV8YzClUTNN6EW745wccoGQMkLol6rf
 poHrSgYnDVCojqexu4EN6EiPaKqGKSxP7zTwdfAk=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: rename stext to primary_entry
Date: Tue, 28 Apr 2020 15:49:34 +0100
Message-Id: <158807851720.208186.17336418596950831891.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326171423.3080-1-ardb@kernel.org>
References: <20200326171423.3080-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074951_955458_8A73CB8A 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, broonie@kernel.org,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 26 Mar 2020 18:14:23 +0100, Ard Biesheuvel wrote:
> For historical reasons, the primary entry routine living somewhere in
> the inittext section is called stext(), which is confusing, given that
> there is also a section marker called _stext which lives at a fixed
> offset in the image (either 64 or 4096 bytes, depending on whether
> CONFIG_EFI is enabled)
> 
> Let's rename stext to primary_entry(), which is a better description
> and reflects the secondary_entry() routine that already exists for
> SMP boot.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: rename stext to primary_entry
      https://git.kernel.org/arm64/c/348a625deef1

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
