Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0BAD1BC1F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:53:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LqOVIqwgAF2JhT/jnjHeKY8GzOGYl4WJcdqyGnicF2c=; b=nJCV9mwlqj0E38
	lQcgUL0O93rCjQ9KhYxyY3IirRZtDSlFtfp8Sr9yhWGaApXxudiyYw3nwVybRTS42pV6BwPnVM0G3
	6TdD1wl+5sc5Yl9cpWQygdDeSMfltN7pWyjgMXgnv+9RhnCsF/PkzVNsDwz2EhNeNyaJaqajw37NF
	W/INqMje8zBvI1but75ChrlDcM8bPYIhnyzxH/ZvKCc6evHC9FCvb6Ytg29Bw/PDC3HhRASCoVSmN
	y0KG06LK5H5U+hfFSLljgFbhoLA2O4ggtetfUMFcMd8LDjjr4TbuDn24GqOEXXhDOMHYev7IPgxCv
	yuQbPYjCdTiWD8dzHdsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRbp-0004NT-RQ; Tue, 28 Apr 2020 14:53:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYY-0008Py-V0
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:59 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 586DB2070B;
 Tue, 28 Apr 2020 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085394;
 bh=/0CscgUhw+hG67rkycE13dJ4JpaLGY7SZmZg0Hd4bJw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xI7xmjH3h0TjzZX1Lld2PfUTkecfsNTW8c2hKqwA5ER4GanG3/LCnnjjipSI2m6h/
 CQd7tVyNEyzC2QExEqqujN0mWKbH6c50qmIbFmp/CNqu936cgiCyUuIgwWmb9aPVqv
 Klayg2UBcsqKXB3h6SJXPU7kXoWhAwVXYaNEKD+A=
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH] arm64: lib: Consistently enable crc32 extension
Date: Tue, 28 Apr 2020 15:49:36 +0100
Message-Id: <158808099268.217262.1591672882839113602.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414182843.31664-1-broonie@kernel.org>
References: <20200414182843.31664-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074955_401361_B6EC9D1A 
X-CRM114-Status: UNSURE (   7.66  )
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
Cc: Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 19:28:43 +0100, Mark Brown wrote:
> Currently most of the assembly files that use architecture extensions
> enable them using the .arch directive but crc32.S uses .cpu instead. Move
> that over to .arch for consistency.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: lib: Consistently enable crc32 extension
      https://git.kernel.org/arm64/c/30218da5974c

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
