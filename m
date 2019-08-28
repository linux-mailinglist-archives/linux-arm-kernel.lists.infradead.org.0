Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37531A0B74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 22:28:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ev1CWjuAzGvbRZDkqpOp2UgtMCghevfIE9MG7Fgw4yM=; b=jbrBxdCpsVhLKo
	J2CpabnpSpaD+gLT7zJVEIhjdwM/hczkxj39jUTc/6kDMijGYcmo2jVoN4I1l0jidaer4zUPosptS
	lDP9nyFA1V5HL+6zxFc/PjdVURufpOc5rfTgZ3IgODBw+obGwdtpcaXSuRSfXfQSHK2QdsslaEUO9
	ByUrPLNdg+236JQFqio6op/zaBpKZPFBnGqJqgKoo8MRtwLjQEtvYsHVdEkgNfcbqc/eR079d/rUz
	QpH6jN6yRFyNAsXJfbV18BdqRsI3OZMEgMXsaslhHiJMB3TU3otYn79JW9tPrOUgpB/pZPusTouDU
	1ZNr5TYo5Tk3rWLc4jmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i34YZ-0001Eo-VY; Wed, 28 Aug 2019 20:28:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i34Xg-0000Vk-Jw; Wed, 28 Aug 2019 20:27:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id g2so530024pfq.0;
 Wed, 28 Aug 2019 13:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dkXX5TgiTvbmjZ2s48sm4xiTslbHfT/2Tf1RMDcUMM4=;
 b=lmauFG49VNHXeEHXlI8hUJynuUqS3GWxNpN9EIvomJl3C9ApBZzLH/erJcW6rTzdgw
 Lt5iL4SbrD/pv4FYJSvMNDc5RoBBFqvCnChz/nyFqV6jaIhuund/Km4eDj7iZsoa1cmN
 zw3ru34EDUQ7Hb/P8ut5dyDuh8XNHF+4tq/VaNO/GgEHvLSCk6DAK77CBeoS1WOh5Vvg
 /wknMk9qtIbldZ4WMagQ1WgWEQOTyH9bJJNU0kT0m3YbTPS+BN4q+qu1u0I1fsAYP3Uk
 FmgwNwr30tTw6lbv8nhaVxImkRrYqQn0RwsnhBYyXPQSR6aS0EaqFUyHuK6oJ58t9FgV
 dSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dkXX5TgiTvbmjZ2s48sm4xiTslbHfT/2Tf1RMDcUMM4=;
 b=Xdq2BotKxWVun1wDrw2CnCiEPgvMNUxLw6Y0uT0dO/yiDzpC4Qjh2js/TwxQhRqTkT
 fxiSoGB/eCCO7f3+WW9qDRzSCaaMq9krKbUans2NOVTintTikfon3YdBjzXVClKzRYWZ
 gKixo3230yhP31TZPd0sbXJThb4dBOnrrV4MJM2+U/dZWs/C2ih56WB7CptfaFbHIr3j
 z+ErGfoqE5zAmMIzv8IEqmlXkIXjObwyLhYWcF1T5AJMv41JBB/15DXyh6Diy0FUBK6e
 GwynjpC5CEKLxIJvcyU0gpmeMcKbiHbb+4hoTy5IdjJf/NPpMR8YPXCcqSVhsMVoiDHP
 ltmw==
X-Gm-Message-State: APjAAAXfYUZgtuwdUbCmOO61CQAo/W3nxOQkcYS0kJrnSe8hJOIPozG0
 1q90n2z8R2TQH7WmCNPfJhc=
X-Google-Smtp-Source: APXvYqzh2Ahi+YBjudkc/D6a3Rt2lT3vtzWfy3Lwr8zSzRTJ1DJR4wGqglvYhUWpr6KYMJNbz3+Mtw==
X-Received: by 2002:a62:641:: with SMTP id 62mr6804168pfg.55.1567024064309;
 Wed, 28 Aug 2019 13:27:44 -0700 (PDT)
Received: from localhost.localdomain ([103.51.74.111])
 by smtp.gmail.com with ESMTPSA id g2sm253373pfq.88.2019.08.28.13.27.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 13:27:43 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: [PATCHv1 3/3] arm64: dts: meson: odroid-c2: Add missing regulator
 linked to HDMI supply
Date: Wed, 28 Aug 2019 20:27:23 +0000
Message-Id: <20190828202723.1145-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190828202723.1145-1-linux.amoon@gmail.com>
References: <20190828202723.1145-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_132744_771922_EECA97C3 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As per shematics HDMI_P5V0 is supplied by P5V0 so add missing link.

Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index a078a1ee5004..47789fd50415 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -213,6 +213,8 @@
 	status = "okay";
 	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
 	pinctrl-names = "default";
+	/* AP2331SA-7 */
+	hdmi-supply = <&p5v0>;
 };
 
 &hdmi_tx_tmds_port {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
