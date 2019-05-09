Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2D218EC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 19:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RuiuHuvTcRZUvNY0dinXGF4B0fEBqxxuJNlX9ZEFKpU=; b=HQO
	ioqvDpfW+juisx2kK3ghkpiW2hk02tnQPURwJsrcQi7pW3e3dhIOa5Wimd8F95L+KixZvIwOA55so
	IH49otUNtSAsmlMT12UuvDj6ejgARHKbMfw5XNhIhgGwpPeiWihqc5qyVoc5ZiXIYExc0fSLA5RjY
	5OOb7gmVyGkIbhgQwvpVKsO1ilxpqeupyOK48aYaZ4ImtjgoJnJfloSYx0xILkrDnC7L+QvOhjbwz
	BTAWLN5udqOfracQg/+26J7ghtvM1dR1YN+RNoeagdrCXSxvU0G4+aqUQSV8DeT5THXCyY3zdGdhc
	8rEjIJ26R5yASj96tSYQiaU+STOjdBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOmeA-0005nc-EF; Thu, 09 May 2019 17:15:54 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOme2-0005n2-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 17:15:48 +0000
Received: by mail-ed1-x544.google.com with SMTP id p27so2739057eda.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 10:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zbF3oqCAGIPdLC4hANbX/incxnaiv6V68BxbekEEZaw=;
 b=UQtPyK2ZCVSBEctYacy3KjTsDRzLu+dJwxveJhSfx6JgHwr/3SFjvxy78tAPGuHvtJ
 2Bg9MdUX7Ej8E0ODmY+Wh5WfIJBTXVJCPKIOnLWXbDgtdcNUBT3EO7oH1xzft8YivzxQ
 wmZWagSB71iZsp5Sow96RNj9kS8Daysm2x7aGJ/n/3Ecs0clTBvOs73V1VJgCrV5XOH1
 QoJr9pSwxJ+qEdXcpqh/aAlpHCY6sFEg8Pr+728p50YmY47BwnZ6BKcprFgU+IhztbJB
 S645UQHb6vdoT7M7sYLXcofW+ogodZtASH/mSkvsHRtnffY5GjQHfdGcU7TDX3vw6Xte
 gOeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zbF3oqCAGIPdLC4hANbX/incxnaiv6V68BxbekEEZaw=;
 b=b1TsvuptUBWQy5K8OKLUAMjpzf2EplZkSaITm+dcs20cd6Cs256t/e9gDJPzb69zYF
 YWPp1stBUeGJU29rLN0l3HCBHk0TM0NQFQiux4BvWCbqRF3mtZaoU6Dc4oTXI/JvDxoX
 HI34tWuhQKduAX53+CR4R34BGPjvMMPOF6QlnXKnGS8OzUmEUpfMh5jwv2PyDaQ4LQG7
 Rf55/biqqM9a6jW5LBR/2xdLMSVeOcMVWSPGPXUCAHCHtq1ofzqIpL6GZn1y5sjWorcZ
 n2S3jcUe02lXcBv7OsrxydRF7ngbXf0Ik2O+5AsaJzIP1IcyY6U8pv1QslutB6sdxLtk
 BDoA==
X-Gm-Message-State: APjAAAUHBSpAhL92NpZuJlPnlVAy07R9RcrfpNNH/xkJ9gfNbkpb5EzZ
 9rnO3MivVr80A92LNIaTamBoy6bf
X-Google-Smtp-Source: APXvYqyYzGb7Cy5q4QPoEpmGU4zl+S2nL4QKnv4i0CueknI+kse9Moti7osXcnGWfeiOXMGwppjivw==
X-Received: by 2002:a17:906:890:: with SMTP id
 n16mr4357502eje.28.1557422143905; 
 Thu, 09 May 2019 10:15:43 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id p13sm397070ejj.2.2019.05.09.10.15.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 10:15:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: bcm: Add missing device_type = "memory" property
Date: Thu,  9 May 2019 10:15:25 -0700
Message-Id: <20190509171527.2331-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_101546_367766_7C6BBBC1 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, robh@kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM5301X ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During the removal of the skeleton.dtsi file with commit abe60a3a7afb
("ARM: dts: Kill off skeleton{64}.dtsi") a number of Broadcom SoCs were
converted, but a few were left unoticed, now causing boot failures with
v5.1 since the kernel cannot find suitable memory.

Updating the .dtsi files with the property will be done next, since
there are some memory nodes that do not follow the proper naming
convention and lack an unit name.

Fixes: abe60a3a7afb ("ARM: dts: Kill off skeleton{64}.dtsi")
Reported-by: Kevin Hilman <khilman@kernel.org>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
Rob,

Since I have additional ARM SoC fixes to submit, I will send that as
part of my pull request to Arnd, Olof and Kevin.

Thanks!

 arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts       | 1 +
 arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts       | 1 +
 arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts | 1 +
 arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts   | 1 +
 arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts   | 1 +
 arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts      | 1 +
 arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts      | 1 +
 arch/arm/boot/dts/bcm4708-netgear-r6250.dts       | 1 +
 arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts    | 1 +
 arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts     | 1 +
 arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts       | 1 +
 arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts | 1 +
 arch/arm/boot/dts/bcm4709-linksys-ea9200.dts      | 1 +
 arch/arm/boot/dts/bcm4709-netgear-r7000.dts       | 1 +
 arch/arm/boot/dts/bcm4709-netgear-r8000.dts       | 1 +
 arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts | 1 +
 arch/arm/boot/dts/bcm47094-phicomm-k3.dts         | 1 +
 arch/arm/boot/dts/bcm94708.dts                    | 1 +
 arch/arm/boot/dts/bcm94709.dts                    | 1 +
 arch/arm/boot/dts/bcm963138dvt.dts                | 1 +
 20 files changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts b/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
index 79d454ff3be4..1c6f561ac52b 100644
--- a/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
+++ b/arch/arm/boot/dts/bcm4708-asus-rt-ac56u.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts b/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
index 99365bb8c41e..e550799a6ae0 100644
--- a/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
+++ b/arch/arm/boot/dts/bcm4708-asus-rt-ac68u.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
index bc330b1f6de0..7bfa2238f70b 100644
--- a/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
+++ b/arch/arm/boot/dts/bcm4708-buffalo-wzr-1750dhp.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts b/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
index 258d2b251900..fd361c9b1374 100644
--- a/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
+++ b/arch/arm/boot/dts/bcm4708-linksys-ea6300-v1.dts
@@ -17,6 +17,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts b/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts
index babcfec50dde..7c34360d3285 100644
--- a/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-linksys-ea6500-v2.dts
@@ -18,6 +18,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
index e7fdaed99bd0..969b8d78e492 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xap-1510.dts
@@ -16,6 +16,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
index 42bafc644013..b62854ee27ab 100644
--- a/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
+++ b/arch/arm/boot/dts/bcm4708-luxul-xwc-1000.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
index dce35eb79dbe..75f7b4ef35da 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6250.dts
@@ -21,6 +21,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
index b7a024b7951b..148d16a9085e 100644
--- a/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
+++ b/arch/arm/boot/dts/bcm4708-netgear-r6300-v2.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
index f7f834cd3448..eed3aab6679b 100644
--- a/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
+++ b/arch/arm/boot/dts/bcm4708-smartrg-sr400ac.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts b/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
index 4cb10f88a95e..8f1e565c3db4 100644
--- a/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
+++ b/arch/arm/boot/dts/bcm4709-asus-rt-ac87u.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts b/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
index 77d1687b4228..ce888b1835d1 100644
--- a/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
+++ b/arch/arm/boot/dts/bcm4709-buffalo-wxr-1900dhp.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
index 983149b55269..ed8619b54d69 100644
--- a/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/bcm4709-linksys-ea9200.dts
@@ -17,6 +17,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r7000.dts b/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
index ca41481b44bd..1f87993eae1d 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r7000.dts
@@ -20,6 +20,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
index aa69e656d395..6c6199a53d09 100644
--- a/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
+++ b/arch/arm/boot/dts/bcm4709-netgear-r8000.dts
@@ -31,6 +31,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x08000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts b/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
index b527d2ff987e..f806be5da723 100644
--- a/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
+++ b/arch/arm/boot/dts/bcm4709-tplink-archer-c9-v1.dts
@@ -16,6 +16,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 
diff --git a/arch/arm/boot/dts/bcm47094-phicomm-k3.dts b/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
index ec09c0426d16..456045f17a00 100644
--- a/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
+++ b/arch/arm/boot/dts/bcm47094-phicomm-k3.dts
@@ -14,6 +14,7 @@
 	model = "Phicomm K3";
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000
 		       0x88000000 0x18000000>;
 	};
diff --git a/arch/arm/boot/dts/bcm94708.dts b/arch/arm/boot/dts/bcm94708.dts
index 934f07adfe3c..3d13e46c6949 100644
--- a/arch/arm/boot/dts/bcm94708.dts
+++ b/arch/arm/boot/dts/bcm94708.dts
@@ -39,6 +39,7 @@
 	compatible = "brcm,bcm94708", "brcm,bcm4708";
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/bcm94709.dts b/arch/arm/boot/dts/bcm94709.dts
index 31e4dd098776..5017b7b259cb 100644
--- a/arch/arm/boot/dts/bcm94709.dts
+++ b/arch/arm/boot/dts/bcm94709.dts
@@ -39,6 +39,7 @@
 	compatible = "brcm,bcm94709", "brcm,bcm4709", "brcm,bcm4708";
 
 	memory {
+		device_type = "memory";
 		reg = <0x00000000 0x08000000>;
 	};
 };
diff --git a/arch/arm/boot/dts/bcm963138dvt.dts b/arch/arm/boot/dts/bcm963138dvt.dts
index 8dca97eeaf57..29525686e51a 100644
--- a/arch/arm/boot/dts/bcm963138dvt.dts
+++ b/arch/arm/boot/dts/bcm963138dvt.dts
@@ -17,6 +17,7 @@
 	};
 
 	memory {
+		device_type = "memory";
 		reg = <0x0 0x08000000>;
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
