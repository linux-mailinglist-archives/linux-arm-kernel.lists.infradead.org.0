Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B86A864B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mIuvWf47aHyLcpnyHENZ0N8FSpMB9akgpdVMuKZNT/A=; b=I9NON1YwPQT/I+
	ZtIzgVIo+jgqw290lX4rAa3Qbz+WBJj/c0I8AJYtw7GNzQi7PH2ud1Loe0mDPMkN9fDwk5PJYgXSc
	PRouDoOjJNdT5E/OcNaGJEMw//+NTj+gVaSP1FL2JmVfTsTtlZA9WDxD4aVPB7amFuUqmyWUAvJZl
	9fOwi5JLbO1FLCepOycr0PQKKBpozX1TWQR7dPCYwG4MBwqU9DyI/UNJ98hKm0b7Mrsw34Cgr2tqL
	WzoiOVi3I2cBm8zapTqoTrCv7rdvQzj47EMelkBBdpOTjgundjsNOwTJnIG1XoNqQd3QinCIHJT/b
	A+/V43lVqhutkoj2n7AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5XiS-000300-44; Wed, 04 Sep 2019 16:01:04 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5XiE-0002z5-SM
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:00:52 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MryKp-1iYq7A0YsP-00o0MA; Wed, 04 Sep 2019 18:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] bus: imx-weim: remove incorrect __init annotations
Date: Wed,  4 Sep 2019 18:00:21 +0200
Message-Id: <20190904160039.3350229-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:edSQpPbQz2i0QyQuA+gpW63iqvRaqDAQVKOzJ3suKf+nyFqMcMI
 RKLBf7wmMBsX3B6VL98jLw9HvRgEXOWqAn0lir9QaQkdbIqWjGOdCwOzCesPsKPDZpAPytU
 Clh0eqK029q8ih2vNOnoAQcxDdYCdoX9GBgduNipzMpBvbnC+VHkNDTahUYu0rgxX8Hic0R
 SlBCpbELBaATcVxUwqyPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/BMWc4WL1IA=:UQx49a3M/46yAIqufq86VM
 21sdTV7pJuWwJq7AbtHv9HfmlMBrqz8vmUsYWa39y97opPHXoyc1sIXe97gV0XC/kGnKj+Nd1
 Tt/oIBVkzFJ4LMbmMpntZdjy/pJiN1CfmTv1McQjMJdiFfZ2hpuk/6vNEEkVChe8MbHabbQ7V
 t8uH+4XMeyvvUkYoih/aDjRlXcsMwnHuu7boacviY0LDxIcAs7Umgb19jGciq+vemPjpfeOHR
 XbygfneBE2EpgJ2g3HZpqmA9zV1ouaUo4egHuag854s/+a+fxsYtaA5/pROTuEDTW5hq42gZy
 7tU3hYKuirDFCj3hRlcRMavDS7JTPi631dG7krtkUwds1iH9heTV7C6aAoFifpBpPJ9uHVrmT
 jqTp9kjYaUfnLpTbf29yLKXksB7vxKPWYa+YKyBaw7UpZJxpZ1VCbVEZd/xC3/1vI6IZFpnEs
 P4u4Fmj4wBTfC0BTmXuicKjIEZkCUnhgK6Ly6rYQFf2lX8zkoENzntEx9yPbpyDbOB5fnizXv
 oSPM1o30Cv2Cu7bDnicaflr7Etgh6CWuEdmrEsn1C03dRvsIawfFuB3t15y48Sxa8tmHartHF
 66RgCYPZZfNMhFNslVM9pK4Z4UgNHkFujrxCXdY9X2m4XhklZTRwc0CQCo8q6s0LLHH8sL77R
 CzckQD7lBVVuh8YqsM0HwQO+gdwTsYe8B0glWp8SjiGMh5wsjT3lGufB28kVHNOEDnmh+Vg13
 jLbk+CBHS6AgfQmVIClUAseuUJ2m54DCWQ/uBYAkSgE5MqLLPZQmJkr8nsIVdApZj1WHBvv2B
 828SZegT19VN2u1ywaaOouOFK8e+gX21cMHH44rYiESsKjdsCg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_090051_211362_4262519D 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Sven Van Asbroeck <thesven73@gmail.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The probe function is no longer __init, so anything it calls now
must also be available at runtime, as Kbuild points out when building
with clang-9:

WARNING: vmlinux.o(.text+0x6e7040): Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
The function weim_probe() references
the function __init imx_weim_gpr_setup().
This is often because weim_probe lacks a __init
annotation or the annotation of imx_weim_gpr_setup is wrong.

WARNING: vmlinux.o(.text+0x6e70f0): Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()
The function weim_probe() references
the function __init weim_timing_setup().
This is often because weim_probe lacks a __init
annotation or the annotation of weim_timing_setup is wrong.

Remove the remaining __init markings that are now wrong.

Fixes: 4a92f07816ba ("bus: imx-weim: use module_platform_driver()")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I applied this on top of the patch taht introduced the build error

 drivers/bus/imx-weim.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 79af0c27f5a3..28bb65a5613f 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -76,7 +76,7 @@ static const struct of_device_id weim_id_table[] = {
 };
 MODULE_DEVICE_TABLE(of, weim_id_table);
 
-static int __init imx_weim_gpr_setup(struct platform_device *pdev)
+static int imx_weim_gpr_setup(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct property *prop;
@@ -126,10 +126,10 @@ static int __init imx_weim_gpr_setup(struct platform_device *pdev)
 }
 
 /* Parse and set the timing for this device. */
-static int __init weim_timing_setup(struct device *dev,
-				    struct device_node *np, void __iomem *base,
-				    const struct imx_weim_devtype *devtype,
-				    struct cs_timing_state *ts)
+static int weim_timing_setup(struct device *dev,
+			     struct device_node *np, void __iomem *base,
+			     const struct imx_weim_devtype *devtype,
+			     struct cs_timing_state *ts)
 {
 	u32 cs_idx, value[MAX_CS_REGS_COUNT];
 	int i, ret;
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
