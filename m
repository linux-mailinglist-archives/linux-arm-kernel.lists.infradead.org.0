Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2A617CE81
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 14:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r8GHIY5YuNOb/cfaTt+67W0oohjrqKzfKbzF8azE3Ns=; b=EBQ7XPaGCLO6f1PMvySmuZh/9i
	K3yVdMn+6wlk3PReIHwHpRtyTtuIEmau/NlzjsSrGLuculpKZ9Yi1XD1FBCJIgdk6hESylUB18we2
	QFAZ52qxBVSQ2P/plvxtoroL8AGqGGcp+/ei3OFhISb22QRGe4jxjjPvm3qTw+rrJVazOLFNX7P0c
	SqelMs377uIDOa/5u+P5d/dpKR0DyrJV0LuXTENwR4JO5Ay7BbMTPm/hhQF16q3agJZAPsJnmEV6l
	ouoSbBlr/QXqksTYm0Te66jq/2bRFmUyeqk1XhNnzT7+9JTAeh0njiy0yWKmho7T29KQ7lzYn6nbw
	1guKTknQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAZpQ-0001RO-9x; Sat, 07 Mar 2020 13:49:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAZox-00019Z-Qv; Sat, 07 Mar 2020 13:48:53 +0000
Received: by mail-wm1-x344.google.com with SMTP id e26so5241734wme.5;
 Sat, 07 Mar 2020 05:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2IH7KzQC1elq12VnowpNAipmMQUPET2Kh6DcuNwrX+E=;
 b=guNv2u8aad75h2Dy+CJemJg8fZOWKV4MRdf8+4vmo1vcdNRW4xM0xlxHbfDzcSVTWH
 lpKIilyU+OfrRv9S4WBaa9wGJYEmYtV8cQfsmwHTeKzpchK29R3S/OWZVMtH/DlKV+L+
 wdQvR7I0hckZ/b4y6ewyPLyuhF0n5h1/g1TXJiTwltIOG2NpgAckcU44N0O8PMVaDnpl
 Gr+DAdmg1TUfS0AVs0sDJVJu4PILQ/CYpCEgsqUHZ8ukdPqafisx3oJve9p5h6LMUdM2
 iozvkvfbM2szO74WAIW4QRYDCzVo5E/Pgp/J1w91GdxIGAz7diGsiwe9TAd1siaXorel
 CRQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2IH7KzQC1elq12VnowpNAipmMQUPET2Kh6DcuNwrX+E=;
 b=HOdN6lS/OitduK7Bv+EmJQrP8NbrFdBKmKG/uXQ0MLtmyO1u+SdD/kVxc35vkRA35I
 p+bRew+HHSF4xkdabW6LdGkjufElhCvpdM9KqbJm6rwNQLtBua+yb8wQZ/Bd+DgGV49C
 +7chBDtU1oXu2OJ5vkPThGttUfBZjmuMPIFAfuSEilc5Cz56zuX1e6P1VC2+ffwAMOyq
 PDX9MnRyTKgxApCC2bpaLem8T+YCGy3s89sbYq1G85xgMMLr4qgSHzSSJ2bVnY5qgLB+
 fKnK6T59P/jHtGpW5J+KlUBpxe0fAEJuRrkH5WDCsDZ6DgAUd+JrCz9pwyTGp/fI+oEn
 EQsg==
X-Gm-Message-State: ANhLgQ01IBBp7FOZ12kcsdLER7tit+cdh1yzi/nY7dicXrqK94LKPScu
 AoYB/JHyxPSpEKjf4tfCK0k=
X-Google-Smtp-Source: ADFU+vv3PgqIbCaqS+/cHZ/qOpqqVZm0POM2tszTay3g45d6g3SYV6XbuREuuyTf4OoiuGgSVA9FVg==
X-Received: by 2002:a1c:cc11:: with SMTP id h17mr10429280wmb.154.1583588930249; 
 Sat, 07 Mar 2020 05:48:50 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 9sm11767265wmx.32.2020.03.07.05.48.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 07 Mar 2020 05:48:49 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 3/5] arm64: dts: remove no-emmc from mmc node for Rockchip
 PX5 EVB
Date: Sat,  7 Mar 2020 14:48:39 +0100
Message-Id: <20200307134841.13803-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200307134841.13803-1-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_054851_906224_4A5E5FFC 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
this error:

arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dt.yaml: mmc@ff0c0000:
'no-emmc' does not match any of the regexes:
'^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'

'no-emmc' is not a valid property name for mmc nodes,
so remove it.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
index 231db0305..5ffd7b4d3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
@@ -239,7 +239,6 @@
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	card-detect-delay = <200>;
-	no-emmc;
 	no-sdio;
 	sd-uhs-sdr12;
 	sd-uhs-sdr25;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
