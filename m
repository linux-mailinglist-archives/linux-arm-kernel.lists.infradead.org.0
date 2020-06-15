Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE831F9D88
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yM2/15klDfimNz54fH9OdedDLK6QgpSsVUsPYtZlOFw=; b=ZN6LmruxukKGwJ
	cx9+0JBZMYMcxz/alJ4K4Kum05l13RXoCAzSE+aw7+wCnzIjDd5QCQan5HtzLmMDokXRTkoeoyH7+
	edcCLK2esynODMJ61d6h3NyyWv3iFVhxcaFHXTLQck6ISVZeb7doSj8YtunJsS6SKNr5UzaFp6bMq
	vdYX/xJTHdQ7MUer2o+ZHBO/EZVAHB67y9hazFXJUBzWjK8RpBT4J/Y/UfM39DHDmpEe4fdYJ2/xy
	P4MH37eQI3Qn5/Qglcq2LVFdjDaOXJp0q+hHDlq0GjSmSoBliq63rAbUnHMfFqFHkAQoDI00NzwWJ
	DTsTrncqPgVVGsObKmQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jks3w-00066R-1L; Mon, 15 Jun 2020 16:34:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jks3n-00065k-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:34:12 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C9C2B207F5;
 Mon, 15 Jun 2020 16:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592238850;
 bh=thG45A8ntIZN9sP66ir0jrwFj4hQP7RxEFUh34afbsQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YuTA92aN1ElaojPW92MEbCUre3bw08ciBXZ+ikn1Lz6cTlaoIfKktfCPlxjQ6140g
 9hDKS5mI+lZMviQndCK0RpogsJ94l8BBHj1YFxNTr6Jbn8CHeAm9aEccBbq63ZiTGK
 ly9OU+T8agwuj6zaa6Hwkh0jN+PX8v8aTBOOGV5s=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: remove TEXT_OFFSET randomization
Date: Mon, 15 Jun 2020 17:34:00 +0100
Message-Id: <159222305960.98922.8272329670937173495.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200615101939.634391-1-ardb@kernel.org>
References: <20200615101939.634391-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_093411_233984_69621763 
X-CRM114-Status: GOOD (  10.56  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 12:19:39 +0200, Ard Biesheuvel wrote:
> TEXT_OFFSET was recently changed to 0x0, in preparation for its removal
> at a later stage, and a warning is emitted into the kernel log when the
> bootloader appears to have failed to take the TEXT_OFFSET image header
> value into account.
> 
> Ironically, this warning itself fails to take TEXT_OFFSET into account,
> and compares the kernel image's alignment modulo 2M against a hardcoded
> value of 0x0, and so the warning will trigger spuriously when TEXT_OFFSET
> randomization is enabled.
> 
> [...]

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: remove TEXT_OFFSET randomization
      https://git.kernel.org/arm64/c/751c263bb74f

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
