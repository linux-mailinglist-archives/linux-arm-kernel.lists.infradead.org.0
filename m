Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3961A1AA3A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:15:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/SIs/915Zzyp96kF0ATdbU/RJw5IjxhP9STj9zqS2yw=; b=bfS/iHh0F0EqqW
	upnKBAraLlPBB1ipYB7qxE23S8i0YL2uFfnzRN57AfQmxpm4xPpi3kSDC1tCxgkIKG/e0Yzm7Ax+r
	3zYv6+BxhQa1FSUffgWALhUeG0MwuIGTvVsK8h1LjNXURJxMC+c2cVN2tgHvgtVVt0kZLy28VdSIu
	7WoYcl+tpaSjMA0UWvT43MZJzof6M5ZJCGEPLawktfdgAC1MByyStDGMT4p9U/sb9KBDTmcTjTuyk
	JGaph8yax1e78d0RhuPpn907536vjTn85jvkKKHcrF2DbxCyVFLYQ2+zkfZJ2kZHrfhH8qxywp1qy
	jQpO+Ul+rpKhUPBbqGgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhsV-0003Ub-T3; Wed, 15 Apr 2020 13:14:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhq2-0001IV-6m
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:24 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B5982078A;
 Wed, 15 Apr 2020 13:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956341;
 bh=DLC2gp4sDO4SoNspJIRtWioj277xiVHSrzt3kpHm6sU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A5S0T31iqqlRLToCC53VapeuV49ShDF3D4SdNrmXFnlpHfuBk3L9LX+iSmY6oQGh2
 dTtwv8i56y99AH+27cRJb/XLuxHz2ReIpAwaVtxbip00pEbZ8vit59BfXQ2S5DRrzo
 B1kBgyPN/qLWh4rD+4Hbsgl07SPUxtkN+XAz9cX8=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 10/10] arm64: vdso: Map the vDSO text with guarded pages when
 built for BTI
Date: Wed, 15 Apr 2020 14:07:49 +0100
Message-Id: <20200415130750.18645-11-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061222_297011_00C760AC 
X-CRM114-Status: GOOD (  11.59  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel is responsible for mapping the vDSO into userspace processes,
including mapping the text section as executable. Handle the mapping of
the vDSO for BTI similarly, mapping the text section as guarded pages so
the BTI annotations in the vDSO become effective when they are present.

This will mean that we can have BTI active for the vDSO in processes that
do not otherwise support BTI. This should not be an issue for any expected
use of the vDSO.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index 354b11e27c07..9271b7774df0 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -142,6 +142,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 				    int uses_interp)
 {
 	unsigned long vdso_base, vdso_text_len, vdso_mapping_len;
+	unsigned long gp_flags = 0;
 	void *ret;
 
 	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
@@ -160,10 +161,13 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
 	if (IS_ERR(ret))
 		goto up_fail;
 
+	if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL) && system_supports_bti())
+		gp_flags = VM_ARM64_BTI;
+
 	vdso_base += PAGE_SIZE;
 	mm->context.vdso = (void *)vdso_base;
 	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
-				       VM_READ|VM_EXEC|
+				       VM_READ|VM_EXEC|gp_flags|
 				       VM_MAYREAD|VM_MAYWRITE|VM_MAYEXEC,
 				       vdso_lookup[arch_index].cm);
 	if (IS_ERR(ret))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
