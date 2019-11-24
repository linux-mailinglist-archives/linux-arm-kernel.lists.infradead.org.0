Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED611082A1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 10:36:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wR0m8Jh54HCG9w6vd/7RML/bmV4fcNf7GcfYFx9BnZQ=; b=QVpR282wVbg8Sk
	yvikYjDGUnzsi3eEwv3VuuhQGhYBvuhCWetzFXFoDAPbwDr1NZ4WAMPmoSjUx1zdU7tzZuuXcy2m/
	hCK8lpJU19j0EaEb3hDQfV4Pmd2nfaTT39+Pohp7hS8OSAf+d0ntuixZQ5cHfYVSBPQUGqKepis/q
	KAsYkmoNBQ85uHKfxLQ4UETofWPFnGWboQvJab+lnMldDpI24BBKPhprI9yInfWHGIJRxlrQImSeh
	sIYwgt1KLsR+0o+0nl8edFdkrD8qNAEQrl9i4a+7bEDTegQOETxW9HwCq2r50ADzJGNu4lLb0YEEf
	rQ/Grpxj+jRDJydLGNjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYoJO-00042c-4k; Sun, 24 Nov 2019 09:36:10 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYoJD-00040i-R7
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 09:36:02 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id E4BE38066C;
 Sun, 24 Nov 2019 22:35:41 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1574588141;
 bh=DjOBw6Xpojk9+dBNOgHOjFHBLzPNhypo3ES2j4tw81Q=;
 h=From:To:Cc:Subject:Date;
 b=jA+nkWg/GArYd7kK10OBv5GD3RwwDGiA5EYA01K5XIr3CCe78xBgH8k2AT29EIJ+y
 bdmYTvYKvEKp6FM0hDXe42FDkEVPFUr9Fn3aFZard4a39hP/37M7VCMzNdXuGFoJom
 cV+Rqbm8pz9o+7JFy0v2LTnDbpM1urJxONekC/6Tg/a4D9mSfXkc9GFjLo7zlGAz+w
 ggaiz9J0GpWsvlShre1P/NKb+yxl1MKWChWYsKlnH/QBP7FWaK6obJf6Mk/qA0amBj
 lOKeX/yA0JsdzODVt/H09eI4O6+MN7PqD4fI16bwludTxQmhzJUYaQZ7MHLkKXWkv4
 zq9cItepE9avQ==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5dda4ee80000>; Sun, 24 Nov 2019 22:35:41 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 753B313ED45;
 Sun, 24 Nov 2019 22:35:34 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id E964F280063; Sun, 24 Nov 2019 22:35:35 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: jason@lakedaemon.net, andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com,
 Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Subject: [PATCH] ARM: mvebu: Enable MBUS error propagation
Date: Sun, 24 Nov 2019 22:35:29 +1300
Message-Id: <20191124093529.32399-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_013600_255802_9A021ACC 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U-boot disables MBUS error propagation for Armada-385. The effect of
this on the kernel is that any access to a mapped but inaccessible
address causes the system to hang.

By enabling MBUS error propagation the kernel can raise a Bus Error and
panic to restart the system.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---

Notes:
    We've encountered an issue where rogue accesses to PCI-e space cause an
    Armada-385 system to lockup. We've found that enabling MBUS error
    propagation lets us get a bus error which at least gives us a panic to
    help identify what was accessed.
    
    U-boot clears the IO Err Prop Enable Bit[1] but so far no-one seems to
    know why.
    
    I wasn't sure where to put this code. There is similar code for kirwood
    in the equivalent dt_init function. On Armada-XP the register is part of
    the Core Coherency Fabric block (for A385 it's documented as part of the
    CCF block).
    
    --
    [1] - https://gitlab.denx.de/u-boot/u-boot/blob/master/arch/arm/mach-mvebu/cpu.c#L489

 arch/arm/boot/dts/armada-38x.dtsi |  5 +++++
 arch/arm/mach-mvebu/board-v7.c    | 27 +++++++++++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
index 3f4bb44d85f0..3214c67433eb 100644
--- a/arch/arm/boot/dts/armada-38x.dtsi
+++ b/arch/arm/boot/dts/armada-38x.dtsi
@@ -386,6 +386,11 @@
 				      <0x20250 0x8>;
 			};
 
+			ioerrc: io-err-control@20200 {
+				compatible = "marvell,io-err-control";
+				reg = <0x20200 0x4>;
+			};
+
 			mpic: interrupt-controller@20a00 {
 				compatible = "marvell,mpic";
 				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
diff --git a/arch/arm/mach-mvebu/board-v7.c b/arch/arm/mach-mvebu/board-v7.c
index d2df5ef9382b..fb7718386ef9 100644
--- a/arch/arm/mach-mvebu/board-v7.c
+++ b/arch/arm/mach-mvebu/board-v7.c
@@ -138,10 +138,36 @@ static void __init i2c_quirk(void)
 	}
 }
 
+#define MBUS_ERR_PROP_EN BIT(8)
+
+/*
+ * U-boot disables MBUS error propagation. Re-enable it so we
+ * can handle them as Bus Errors.
+ */
+static void __init enable_mbus_error_propagation(void)
+{
+	struct device_node *np =
+		of_find_compatible_node(NULL, NULL, "marvell,io-err-control");
+
+	if (np) {
+		void __iomem *reg;
+
+		reg = of_iomap(np, 0);
+		if (reg) {
+			u32 val;
+
+			val = readl_relaxed(reg);
+			writel_relaxed(val | MBUS_ERR_PROP_EN, reg);
+		}
+		of_node_put(np);
+	}
+}
+
 static void __init mvebu_dt_init(void)
 {
 	if (of_machine_is_compatible("marvell,armadaxp"))
 		i2c_quirk();
+	enable_mbus_error_propagation();
 }
 
 static void __init armada_370_xp_dt_fixup(void)
@@ -191,6 +217,7 @@ DT_MACHINE_START(ARMADA_38X_DT, "Marvell Armada 380/385 (Device Tree)")
 	.l2c_aux_val	= 0,
 	.l2c_aux_mask	= ~0,
 	.init_irq       = mvebu_init_irq,
+	.init_machine	= mvebu_dt_init,
 	.restart	= mvebu_restart,
 	.dt_compat	= armada_38x_dt_compat,
 MACHINE_END
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
