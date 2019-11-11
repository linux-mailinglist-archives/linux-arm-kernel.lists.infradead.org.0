Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DECF6C14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sOujUeSAzXPbneR3hK5V1eHdyAjKBaoc2HdNwv8L+84=; b=Pv7aAIlvo0rt0YfBeH+CTDas4J
	xAlLSR8U6/84ABpHZRaEO9jUS0x50KbOqxpFLqfG1RgucfdScZdkazXdoZ9lN3rgL5vPBKk+Ky1Qz
	17xBP342vhNSdVd6ZNBNHruNGER05VCHmMhkCVQqL49hgiYd5cjtmgF22snEK4iLR/5aBkoV0JWyD
	R3MZ3CSDyYoyBWtQiXTUBdA3mCEFtBEiMm4txEO8vBxnJBtI6jvryd3HSp3U3/7CZgq5zzEM+05+u
	gt7jcpUkNvQKDP4NDF9IhXnZDPiVch5eu2qJrq1/EvU2BGTt9s9Eh5TLRF7u1Rmssm1d57gCB1O+O
	vbFu3t2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxx8-0003wW-AA; Mon, 11 Nov 2019 00:53:10 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxwS-0003Qx-14; Mon, 11 Nov 2019 00:52:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id r4so9456870pfl.7;
 Sun, 10 Nov 2019 16:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xYVsNMrMtkwvfwvE55iDXEc/0l3/pWmx2NHWuQN41yw=;
 b=nt1fK+gox6il/z0hOVtieY6g0sPXcUzqeuQj03ZA/asU0uWpnFTgOI4SpKsrPIheh9
 g3NMtgawH6CkXRhIMErwYad5jbVclB4+Gwd6cw5SE8AOQZgdYuTN5f5NkDoxwoDFiDCD
 lxJuto0FER2+NKf2ownfFUrJochZz7baaQ0JXAt5jWOm9e/TSR3xOwYu2of/y/9BcVfx
 ynl0N3SSWzdWTIbSKuq6v/kpMV78Yf/HKEAMRGDTwTHmXmae2hdE5d/MCBY1RC5JC8pi
 NK0LljHTXjKIyXRRub8kzblF8Ks31j2zdt707lEgzMPvzLyRpU0Be/4SUXiGCaFL3Imy
 OcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references;
 bh=xYVsNMrMtkwvfwvE55iDXEc/0l3/pWmx2NHWuQN41yw=;
 b=HbB4ihkvcvoRgbEzlb4JHxOAulkpJDrxTcPhKYbtX0f6GiIJq8CAeN4ZMxE/GX1lvq
 XqJQNd1lPnvQSss1ssbMJAqvpe9Fn5HRMfGVhYqVZ1maYFF8F6zGxbHyYZqiarEsBd1p
 3QMLEO4J7tC9Fp7L+0CpFSLd1jkKm7JS/ExNH5bMZTZc3fj/nslTw1ae2nhFJlknkvWl
 RJbpRutMVv1qbWpshn/kvNMbiQTSMSETT7NRZnvnic7+o7ag1DaEweF6q5wByadgIyjp
 GoUbAOjj4zSv7i8fxSNzSYMFWbT90KKg3DmDFZ4fW+GFBBM0d6Ecj3D9xAMK0lBaj+A0
 bANQ==
X-Gm-Message-State: APjAAAVNRsTEdWWQLCpyw4f4qoja+h3dcc/vc50qMvhx6+aD4S3GXUJ9
 V3lM2OuPuKX8SsI+Cdm8TYWU10Lt
X-Google-Smtp-Source: APXvYqyDnNrIq2s09BxFo2ZrvC/Ca6XsjHDrsYlX4ajb6ZtC25zUb/GHmP8nX9AC8PR3KkOCpUREVg==
X-Received: by 2002:a63:ae02:: with SMTP id q2mr26208411pgf.210.1573433547047; 
 Sun, 10 Nov 2019 16:52:27 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
 by smtp.gmail.com with ESMTPSA id e8sm12449215pga.17.2019.11.10.16.52.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 10 Nov 2019 16:52:26 -0800 (PST)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Mon, 11 Nov 2019 08:51:58 +0800
Message-Id: <20191111005158.25070-3-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191111005158.25070-1-kever.yang@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_165228_160481_1CC8534A 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kever.yang[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 Kever Yang <kever.yang@rock-chips.com>, Soeren Moch <smoch@web.de>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Andy Yan <andyshrk@gmail.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?q?Andrius=20=C5=A0tikonas?= <andrius@stikonas.eu>,
 linux-kernel@vger.kernel.org, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since there is no devfreq used for vdd_log, so the vdd_log(pwm regulator)
will be 'enable' with the dts node at a default PWM state with high or low
output. Both too high or too low for vdd_log is not good for the board,
add init voltage for driver to make the regulator get into a know output.

Note that this will be used by U-Boot for init voltage output, and this
is very important for it may get system hang somewhere during system
boot up with regulator enable and without this init value.

CC: Elaine Zhang <zhangqing@rock-chips.com>
CC: Peter Robinson <pbrobinson@gmail.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts          | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts   | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts       | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi    | 1 +
 9 files changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
index 77008dca45bc..fa241aeb11b0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
@@ -65,6 +65,7 @@
 		regulator-name = "vdd_center";
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		regulator-always-on;
 		regulator-boot-on;
 		status = "okay";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 92de83dd4dbc..4e45269fcdff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -208,6 +208,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <430000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index c133e8d64b2a..692f3154edc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -100,6 +100,7 @@
 		regulator-name = "vdd_log";
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		regulator-always-on;
 		regulator-boot-on;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
index 4944d78a0a1c..c2ac80d99301 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
@@ -79,6 +79,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vsys_3v3>;
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 73be38a53796..c32abcc4ddc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -101,6 +101,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index 0541dfce924d..9d674c51f025 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -164,6 +164,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
index 19f7732d728c..7d856ce1d156 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
@@ -129,6 +129,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc3v3_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
index e544deb61d28..8fbccbc8bf47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
@@ -174,6 +174,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1700000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
index 1bc1579674e5..f8e2cb8c0624 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
@@ -133,6 +133,7 @@
 		regulator-boot-on;
 		regulator-min-microvolt = <800000>;
 		regulator-max-microvolt = <1400000>;
+		regulator-init-microvolt = <950000>;
 		vin-supply = <&vcc_sys>;
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
