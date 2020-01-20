Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5541424BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:02:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8/6Nv+fjP6KUdp4BpIgS9hiGqheIRUKYqawiSwndME=; b=hOqGEq6+lDVkOV
	Y84Vuz+KqTVWVQ2IrzjkoJ+OQ/3ipMNy3ARj2kz3bvXbmFgF4DRerEeis9WnacFZHnEpte9q/Rahk
	onWA3BZMWjQR9zGav/fBFGAWmt9EihkuJeNLcyhftYIkYBJVadijivCb+HpH9u4ePK89EtrHQR1GM
	sVgDHKcSydBniPRXD7Ov9WXMsrciwBlKnlHeWa2NUkRS/TuFb6QRToPPYF/Tj/1REZWfn6Mka/wHB
	3oPefXecNSArSeZU6R+KEW+YLOF+VT6hFDc3U7LEmnNscLCd3VVIvDA0hY9bljWZ3Ishkd2nDwvVP
	i2JTbTDA5IH21DJnoFzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itS19-0002m9-A0; Mon, 20 Jan 2020 08:02:39 +0000
Received: from mout.perfora.net ([74.208.4.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itS0e-0002X5-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:02:13 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0M5O2r-1jq3lT27Bf-00zXV3; Mon, 20 Jan 2020 09:01:08 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v4 1/3] dt-bindings: add vendor prefix for logic technologies
 limited
Date: Mon, 20 Jan 2020 09:00:58 +0100
Message-Id: <20200120080100.170294-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:cz02pypmXVVY9XStb0HoEZkx90vTXXjTAnxUxTCC/wEc/muxf/f
 AJAG1HLkGWz4YsSAlYrIu4ElEUR7z6r56s8TmO19+3b292a/Pvewx3QCaEwdvzQc0CLRHe4
 OqTco8zERosmNtc6+SbmNbaZkLKw6XbpvXA0JyizMUYY/nDnwx2XRR+m+uDdshsF9ZECjyU
 BxGjZgn7K+Nc5XiuUk6pg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lpKVWY8NVCU=:A8i+IMii7mHWnzZPyIhoTq
 60gLU+m3boGJcEechrLIBb6UWPHspULkn7x1DyF0jIIcxKMnH31oINGHoP5kKk4F3c1Pklk8Q
 LoKGfl4XRa6lQDpPS2yEy1cI77IGIXxyYERX8yWGGoxKKgEXHgcrdjPPzhEZJs0IQIh9mVx0L
 IRNII7qpfWA1IlZqWv+TFRAzZY2rCzbIC3UJbRh7AyxGCSTJnIPAivMQ35GDtroj4BoOBTWxP
 LwvmHp47lcMsIIXMD15ERoqZ8w7Zc8vNkfYYg7g5A8s6Dwsm3k5+ckSTZvxCSNZPK7KafdQrr
 OjeK8Ex5WxGAoozdtY6ClPSgnmPVhfaPxFSPAX3dR6ULUW80sF/vfj6AwR/ARSO5pYSHv6utJ
 2PBIqOg5m2kg7xzquw+onkTgX/mAEZ0J4ho8SNmKz6yNh4vh8m0gcbRw2rvjVXnjhSJVq0FOo
 2nKj9fdEEwqrQWQiqFriDcnzwoKCt6uKqmPcvjiQCm4rbp278N6DjOcV6Sfrk76d0HKwYUgP4
 LjQD7u2ohhTHTcSTUcP7wXy/NVm4xAzcG9LttYD2u5Go+t2cmXOeAIyS01kDdHj0s+WhVNeAd
 yx0e3dH4uTplhsJElQob3FFNhjuOkB28K7AjhmUP6jXHa64NyvTNDyhBeOtZrUuo3LfwOViPc
 og00QIEt7EDT/g34nQFqCVBsgyO2bMbeP1g4LaW59D3qZdgPOAOazg4WXtRKxAVROPs5oWxKw
 x1JD/EAxyqoO/SvT59u7OcXM/FiBJu0DrgtX3LmusJ6IoYFcbysaRzgr2X5+GdoR/BVJ+5pku
 6Ziny4Kvc3Vg4AS4NXk35tHbCu12jxW/GkucotLLK/DC/uDCVx7tRkFs/rE5dWLSyqtk9Xtt9
 lXvFVLCWTNMUtElXqFjA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_000209_007517_BD42961D 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.194 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>, info@logictechno.com,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Add vendor prefix for Logic Technologies Limited [1] which is a Chinese
display manufacturer e.g. distributed by German Endrich Bauelemente
Vertriebs GmbH [2].

[1] https://logictechno.com/contact-us/
[2] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Rob Herring <robh@kernel.org>

---

Changes in v4: None
Changes in v3: None
Changes in v2:
- Added Philippe's reviewed-by.
- Added Rob's acked-by.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f9b84f24a382..ac4804d0a991 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -549,6 +549,8 @@ patternProperties:
     description: Linear Technology Corporation
   "^logicpd,.*":
     description: Logic PD, Inc.
+  "^logictechno,.*":
+    description: Logic Technologies Limited
   "^longcheer,.*":
     description: Longcheer Technology (Shanghai) Co., Ltd.
   "^lsi,.*":
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
