Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1FE1572BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:17:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pL8i/3dLyL9XIDlUA6TeCRejVL1+SmnEAh8yOsgS7KM=; b=cA/GarH8RRrlKv
	FbrnJlVVOrcFwVeXoEHyzdxC24gJLPXsbjs6hXoWIgFWq11HodCS/Acf/w9FgsHOHJZWkALuZsVBe
	NN6ZLFIgxh7+hPqLSlMbGH5Mj0yNH+rHamN7qZfmarLzXr/TyGnJgHfzTJgHbox/2iNARWx8eyfa2
	29+aJGrFWBZRMhJj/3bt783sED22Q/K7/uCmAp5OhJtVvvxt5SfLQBYOIkgB7TwmF9YmrMY7lrNPs
	Lx1bYo1Dwrz/JYN5WRO43s9/AQD5IBlnk61VH1IL7DcpGuHQvTNDoq8p/O1U7tpE3yS7J2CQZadst
	rmw6DJ7swaYhYNOpJNBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j168O-0003Sf-KV; Mon, 10 Feb 2020 10:17:44 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j168I-0002rR-87
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:17:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:Reply-To:Cc:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eMz09a6YKzgI2+eat6dObdocEEZZF71ptqYTvO8FOgQ=; b=aOU4AV6Dk07jZkMEasYC0SHXlm
 JSquBGoft3FHlXtFUUOsOjY+o7TX7zvS3KDhS+558mHCbUsaNYHLrq6LvE75qMUDVW1bOjPnaqyT5
 y/i4ofUZdN1SAtPhZwc/I39QWxGTv4OCXKp72LrCrCAw7TCdiPDpPYh+EiQUCBFfWkxX4E2LWeuXG
 5QiwsX11f0lZfbPweyNOg5vLsTKh9WUaNffsdxK7shvsEh8PdplChtC0vz8EIIFUoEzzG7Kxe1OOp
 mj3z3VKS3ID60kXGq5rz+RBDLDCVayDz4z1Og7Fv3J86DmZb5e7lCwnqGDkpOwv6qYy1pRLkMzxik
 aqSo1W4Q==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:43382 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j166E-00064d-IJ; Mon, 10 Feb 2020 10:15:30 +0000
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1j166D-0005ct-VG; Mon, 10 Feb 2020 10:15:30 +0000
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: allow unwinder to unwind recursive functions
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1j166D-0005ct-VG@rmk-PC.armlinux.org.uk>
Date: Mon, 10 Feb 2020 10:15:29 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_021738_290526_B7AA8BE1 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow the unwinder to unwind recursive functions if the stack makes
progress, even if the PC is the same. This allows tracing through
recursive __switchdev_handle_port_attr_set() and similar.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/kernel/unwind.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 4574e6aea0a5..11a964fd66f4 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -444,7 +444,7 @@ int unwind_frame(struct stackframe *frame)
 		ctrl.vrs[PC] = ctrl.vrs[LR];
 
 	/* check for infinite loop */
-	if (frame->pc == ctrl.vrs[PC])
+	if (frame->pc == ctrl.vrs[PC] && frame->sp == ctrl.vrs[SP])
 		return -URC_FAILURE;
 
 	frame->fp = ctrl.vrs[FP];
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
