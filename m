Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A28775D2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 04:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nmLSsqWo6eGARBKSxmTu1VWm1ItF+82mluo+GUiaD5E=; b=a1oesIIPcj5sYW
	IrL+yQtFzCtw1TseyIrWOqvjYK30xMAMgB+tb88+AXxe81pdycbKlQR37gNyAyjPvqikCmateRLkq
	AYqba3h42LHkfCK/uxFRbfjNnxIkAwsW/jDDXiz/UhmlZ5hmFCjiAmA588Nld6Kaxu3qO+jH9mYDE
	Pn8BuRkDgGSnT1AIPJY3rrttz8yuygdEUn6ZgoStCUziLyVMNOa50dFX5eHqvVNdPcG4N7T7V37jZ
	vGpV7XjHKROOZK+Eu8bEsahff2r+FWkfvHsnccfSTAwj8dETxZbUz8VNXExUCWCdPw/j4URHl1xhZ
	Rh44Z+ZsHMw3EvH+QRpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrC3P-0006Fb-Rc; Sat, 27 Jul 2019 02:03:23 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrC3C-0006FK-IM
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 02:03:12 +0000
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MsZaJ-1ieuK71l4V-00u0bF; Sat, 27 Jul 2019 04:03:00 +0200
From: Sunil Mohan Adapa <sunil@medhas.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: allwinner: a64: Enable eMMC on A64-OLinuXino
Date: Fri, 26 Jul 2019 19:02:52 -0700
Message-Id: <20190727020252.17126-1-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:p8MaZ8RhoQALxZqXFF9tpYKQbSFcpmQrg8wskCQD7K/lPhM0l40
 wzaHVWRvk/k76sWaUQJ2avhWztqU/jizhpODew+rMSQBg6jXPM7yG4MkAQZcYZHNupuXknF
 0jEuUvb/8vDJ6vhPZAyLnQrw5mUVdzY4O+4y4IoGBUpOtFEm+GLIWPUIMRzc386+Wj0tN6f
 KOcxANzGF1jEXiw96la/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZKrwOXmMxY0=:0cD6DGEtssl8RJiEfERQhy
 oWZ3Gje/1Rvjd9hkWGtAQV4fOLu2SArnCh7mqo9RY0MdScupSbKdJpkgenW68orQ8vSN4s+mf
 aLh3HWcB3fhoUuW29VfIyBvVh/MweQMLpRxa++inEbCHgNf5oMThEz5ArZsPI2gPtvlVZp40s
 h7Xx6I8csB/yXXrAwCIyM1P9FHlgSva//hX4gVZKjCkvKoKbr/D855zldbomfORB42zQ4ucDg
 wwqy9tq378ZqWHp+Aw/Uol28hUVsKWVgkr8BY2udm653ROdcjA0vVM8eyGzj77KfAiKjPTsqj
 obECh41FVPVfqu6CzJGPi0If5WQDQAit7MDaDT6vcqQzfk2YBjlM7d6WXAHL1T79PXiSqRkxx
 unEBELDIBfmuZbc9qOFsG1AZOc4Xrd7gBRCk5o/e/tSbfEKmCv4cl/+byRZQpsaEeDJDm9Du7
 GmCrF5tgQSBB0u/pYansck8pA8rVM2m3nlZXurKUBb/m5FrT766CWtG9FbVQlSJd6mvq5OEho
 RIwfqi+V4hjrE95XU0s8eOeJhzsGI7zsemAZMmLSKw0Ey2tHEao2yuldL8/C+q7RJ8tTdMhcX
 ruG39QM1S1s3VZsuaNR7BAb/4pqHiX1uxKa5smEKGUpHQmh4EYsEsv8YTO13HXQMTAwygB+rx
 L/8OA0u3kDQHIjS7FZgz8gHE6Mby2buECp+QWf/2YDNziJ7lUnH7cqejZEudcOk3MHFuuEZxn
 jb6BYLRpR/pxYzaq8MazrYIFoFqbauu7ioiwfw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_190310_680012_F99A522D 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: maxime.ripard@bootlin.com, Sunil Mohan Adapa <sunil@medhas.org>,
 wens@csie.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A64-OLinuXino board has three variants that have eMMC support. Add support for
eMMC on boards that have it.

This patch has been tested on A64-OLinuXino-1Ge16GW with Linux 5.0 from Debain.
Basic benchmarks using Flexible IO Tester show reasonable performance from the
eMMC.

eMMC - Random Write: 23.1MiB/s
eMMC - Sequential Write: 74.5MiB/s
SD Card - Random Write: 1690KiB/s
SD Card - Sequential Write: 11.0MiB/s

Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
Tested-by: Sunil Mohan Adapa <sunil@medhas.org>

From: Martin Ayotte <martinayotte@gmail.com>
Link: https://github.com/armbian/build/commit/174953de1eb09e6aa1ef7075066b573dba625398
Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
---
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..751273f514fb 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -81,6 +81,13 @@
 		status = "okay";
 	};
 
+	reg_vcc3v3: vcc3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
 	wifi_pwrseq: wifi_pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&r_pio 0 2 GPIO_ACTIVE_LOW>; /* PL2 */
@@ -155,6 +162,16 @@
 	};
 };
 
+&mmc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc2_pins>;
+	vmmc-supply = <&reg_vcc3v3>;
+	bus-width = <8>;
+	non-removable;
+	cap-mmc-hw-reset;
+	status = "okay";
+};
+
 &ohci0 {
 	status = "okay";
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
