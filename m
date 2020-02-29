Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D641746BA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 13:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=znPBt/KGklReZP2KuRZ4Aq7XDhxClSduX2+UREULoow=; b=meI
	XoLdF+ZFYQQoZb737WKPTMUzJDQ6ocUfqq7meDEHNRcduqpkGekXT+2Dket6Yd6E99lnnGPPmuDGC
	AqpaVSEkduZdcKG0lMw8+gpOJpL8GyyS3DTT48FJ5AzXwd5yzqfUPa6Qu7eryfkog+rehnQx9nghM
	txoIMZKIa1/3K0bGagT3oBDFwkLK+IKs7Ra6G+K/8lWJ5HY80cIg/EGM5hNnH3WVRLCoTyj1X8AZR
	2qH1wylf0mATdtNSbwJRpvexA/aDFoS1aSV0Ck1bqqevt521XHaHBuuQpMXQ6P7rEcutYS9VpCEeX
	MeaKAiITRUjqLvkalFUk34/lDPoJNfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j813R-00054n-CS; Sat, 29 Feb 2020 12:17:13 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j813B-00053u-O6; Sat, 29 Feb 2020 12:16:59 +0000
Received: by mail-lf1-x141.google.com with SMTP id s1so3631626lfd.3;
 Sat, 29 Feb 2020 04:16:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=HUQahJ8jieCI4R4OACtWdxDB3DdcfhrTI/7VNOoaPK8=;
 b=fF+PnU8ypTPRYP2StXGZUT73bB/q0X22+IzS9vRlhTkiVKY2TQ7/D3RIQf809t0GID
 GQyq5z+7IGlHTP+Thu+DJ8pJ8CGEI9MjxzVXX+HsSgS5AeanZ9v5NTafVFIO/62vMLrX
 +OG7rW4w7XmgIyL1aWNB4zfB39z6Rl5IksWRdwjUJI9/rm2wRFxVSqJaA1RCfVVXOXsJ
 zurj3FLrv+kFuR2t+W+KISSdagPuLefEHgmZXbA8bRbLxbAfoaxH7IlcF3/fRm9dFJXx
 MdJ4jxvQ/9gSJplaJV3UEC10zSCWEeyCpP237XfweYQIDD7QoL1FeaqGwjHINgAOpvNn
 iI/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HUQahJ8jieCI4R4OACtWdxDB3DdcfhrTI/7VNOoaPK8=;
 b=IJ0X+WL6T7fTO60OZJ24OZ6X3iP7UYBoUO3gw+DQpfMXf+EBxpHYk+FgiJz1jTXtR8
 sWGbJ3OtgRi5wnQ0pUgFwv5ogSzzpVjBr6F/ly7D8TMhqGJI3YQ3ym4lYG3E2L52ihAh
 RH40A12hTSPsbiz/15mLOQDUKtRg6Oa3IO2em78hAggLMv4SphG/3vCBfbQQ1VzU2rPG
 JFt/QTBj0BPLNIraIA/HB+a4WqCz5bAk1ux6ffmJx1wUNlEnptDbk1xyg5YoKJuzv/NR
 pM75ZnbdavYIjCUk2hGrqC5kLxELNsdXjXDAw7p92uptRDR9PcEkx+MaHkJ6OAewvm1o
 B5HQ==
X-Gm-Message-State: ANhLgQ3i2OG9Fcr/src7J7LcAkjHNrOPo/YusON6YTgH6p0Zb+pRTsIf
 st2mAOm5N0ieOowMhyVfdsg=
X-Google-Smtp-Source: ADFU+vsLBJTIEqIzdTzPSw9aHFuC1dvOqRssdzID6BwrYxGJAlETK+qn94/K1264KDgW4nbrqvGOCQ==
X-Received: by 2002:a05:6512:6c7:: with SMTP id
 u7mr5408308lff.176.1582978615322; 
 Sat, 29 Feb 2020 04:16:55 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id x1sm6270232lfq.46.2020.02.29.04.16.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 29 Feb 2020 04:16:54 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] arm64: dts: meson: add dts/bindings for SmartLabs
 SML-5442TW
Date: Sat, 29 Feb 2020 16:16:01 +0400
Message-Id: <1582978564-81491-1-git-send-email-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_041657_810330_152C5A1E 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
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
Cc: Christian Hewitt <christianshewitt@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 =?UTF-8?q?Jer=C3=B4me=20Brunet?= <jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new bindings and a device-tree file for the Smartlabs
SML-5442TW set-top box. The previous v3 attempt [1] was 15-months ago
but nothing has really changed apart from a change to yaml bindings. I
have checked and the hci_qca driver does not provide QCA9377 bindings
so there is no alernative to the gpio-hog for enabling BT support.

It would be good if Jerome would check the audio card config. It looks
correct from dmesg output but the driver is new and there's currently
no upstream prior-art to copy. I've cribbed node details from his WIP
gitlab branches.

v4 - typos/corrections from Andreas
   - add sound node back
   - confirmed gpio-hog is necessary

v3 - change to Smartlabs LLC
   - removed sound node

v2 - removed audio nodes
   - changes soundcard name to "meson-gx-audio"
   - added missing uart-has-rtscts;

[1] https://patchwork.kernel.org/cover/10674939/

Christian Hewitt (3):
  dt-bindings: add vendor prefix for Smartlabs LLC
  dt-bindings: arm: amlogic: add support for the Smartlabs SML-5442TW
  arm64: dts: meson: add support for the Smartlabs SML-5442TW

 Documentation/devicetree/bindings/arm/amlogic.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/amlogic/Makefile               |   1 +
 .../boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts | 386 +++++++++++++++++++++
 4 files changed, 390 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s905d-sml5442tw.dts

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
