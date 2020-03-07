Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58A017CE88
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 14:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BtEy5bYIPkVIqFnfXZl10kjhfTVx+bo97ff+6vsIt+U=; b=Ttn8x8dcoajQHyCzcEqvJXjncn
	gAvshL9OkV7ucKPprS1pP+TbRRHr97PU4jUK9K0jJ9JD6zqXOupFJWb2adVuKr3e+xmDM+BAajayo
	RQtwL1nulR5bWND0PprR4ij+p2lOuiuDyP7v120Zml3DseVzI1LOAnQYzMhymvZUBdX9DnDbS11R+
	tWckkvqZSOjYYRFHyUG8sbbDU3ZkHC8Iu39OlSp6cDYMivV1+QDxcV7GTDkcVAbzAJLAwL0RuEhp/
	Lk7FUPVr5tHaGDagijW56G5/G/rDEbqVUkMCi6tzdWotqh84WGf1kZ2DH1i1d1vD8UjeG7r3tqbr6
	h+b+lHYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZqW-0003MN-KU; Sat, 07 Mar 2020 13:50:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZp0-0001Aq-1N; Sat, 07 Mar 2020 13:48:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so1815831wrd.0;
 Sat, 07 Mar 2020 05:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r8vU221Fl1wRDhepKyfW4xhkJN/Ivc1A7S2pOvLbFIU=;
 b=NfYmzcoZPQlWO8KkyWMuaJlZPYo19zE/UOr4wWnKj0CXCeV5mI3VM14xv/GTDDfC+Q
 aJ/I4k7kR2K3vFGUM17z8EpkkPdUESTEw4ap/uAmbuBrcmzcmPTxty/QVlNCPONcwRuB
 VR3tL7aNU0JN7wHU0BjO7tk3165sP1n+4WkSaQEVnGI2rqi4PZkLK/X/rqpoESXw+C0y
 iw51B9JbCFDuVX+lyFlUkJuBWsE6IUjCxBj5mlHzKLV85FVaB22hphOHsSl8IqPxsICM
 JhM69/IXjbk7QAiwYopnQoBndYH12Ro1nhGPwlqVEM5P8EakCx2eDcAmJvYdcMDN9SBH
 uUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r8vU221Fl1wRDhepKyfW4xhkJN/Ivc1A7S2pOvLbFIU=;
 b=CplmSBWob+XNcTP4HQeymgROZQxA9SvH6/G/0OCT0eb+1RmXxLHj5v/fCEm9yg2oaB
 LWS4LBKUEVIC5GSroWCSzWh+MvbTSN4Qvw9OHnSuXISuw8I/ecd7MU7WNp39gH3zNl+8
 WplGhyD/oZGCQZ/wlJYbKXyYoDD8BQODrI7GcKQJlcNbFiQjgo8iP5C/Gdan7SWjrwEn
 5mamfI3FqBuKGZsiS0CQt+Od4pNX348/heyljDXqjdXMFnO7p/JHifF/qDnmvWyaDM86
 OxT94aiY2i0FKTJoZr+orEJPc2ZqsatI1pmHhnjCiVvXcRIywhd4jAlJlEbSJee8f/U0
 cHmg==
X-Gm-Message-State: ANhLgQ1x3ZMMy4E+aBccQZ+G7GvERoGHJ/+Hl4AFMEiE7LsH99x7w218
 ealbgtdEFfA+7f9PyYunKic=
X-Google-Smtp-Source: ADFU+vuqgLoogFvxDf8zmOIagX/6EgMcrmjZMR1lY83duVqibjH1wJOvkB2FC4KR1mQPDt79vOxiRw==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr3848479wrv.17.1583588932141;
 Sat, 07 Mar 2020 05:48:52 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm11767265wmx.32.2020.03.07.05.48.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 05:48:51 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 5/5] arm64: dts: rockchip: replace clock-freq-min-max by
 max-frequency
Date: Sat,  7 Mar 2020 14:48:41 +0100
Message-Id: <20200307134841.13803-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200307134841.13803-1-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_054854_135095_1988D20D 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below does not detect all errors
in combination with 'additionalProperties: false' and
allOf:
  - $ref: "synopsys-dw-mshc-common.yaml#"
allOf:
  - $ref: "mmc-controller.yaml#"

'additionalProperties' applies to all properties that are not
accounted-for by 'properties' or 'patternProperties' in
the immediate schema.

First when we combine rockchip-dw-mshc.yaml,
synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
for example this error:

arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: mmc@fe320000:
'clock-freq-min-max' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index d69a613fb..f2ffee639 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -555,7 +555,7 @@
 
 &sdmmc {
 	clock-frequency = <150000000>;
-	clock-freq-min-max = <200000 150000000>;
+	max-frequency = <150000000>;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index b69f0f2cb..ba7c75c9f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -542,7 +542,7 @@
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	clock-frequency = <100000000>;
-	clock-freq-min-max = <100000 100000000>;
+	max-frequency = <100000000>;
 	cd-gpios = <&gpio0 7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	sd-uhs-sdr104;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
