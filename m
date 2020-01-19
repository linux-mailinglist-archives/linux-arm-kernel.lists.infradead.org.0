Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC27A14205B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 23:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RU4u8CnCVYQ+Khd294rKM6eMvDBjgtq1Kjxk9BHV7dY=; b=K19DgLSZCV4GGF
	tiP5fzTRQ0W8NP28bYr+tcHmCYhvWSZG95I37bvVRw7YY75Ble48xp3zTeVzs5nE8mrV1vDEWfDhJ
	oQ+KRhv+VtN9VQy8dyuEiOaqt2OqqhFUOvM5gMEJD8tnRCjiyZ/wwQH65JMYKCDMwokVpxiFxwbiS
	BjN3Ww6AcEB027hxgCOAzjXNeUdmE7ullXKqaIzbMHy21L1aUMoRnvw/ir3X6He7R95z8ngE4NJ7V
	l81nDYuFVBpxk6DLwMbqfDvMRiEp8UWwcJfMT0smg2HHHGZ6ZMx72uQak1wgkOn/mNioYk2JwmQyL
	8J/j/dE6a/roEEe8ajwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIf9-0002vv-Mi; Sun, 19 Jan 2020 22:03:19 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIed-0002WV-RD
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 22:02:49 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.128.11]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0M41XI-1jkRQf2XHm-00rZmO; Sun, 19 Jan 2020 23:02:12 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v3 1/3] dt-bindings: add vendor prefix for logic technologies
 limited
Date: Sun, 19 Jan 2020 23:02:02 +0100
Message-Id: <20200119220204.208751-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:jjLOqXuv2by4EJLQeH/ScEtpzVFtAz0VS19+C7zEHeSvWPbiTwy
 LDFUP9YFQGhtKnV6lBHbWFwnRF1t3JEIaYS6/OMyLege+P6xIkp1c3kalQtWUVwFYanNoOV
 rl6OMKDd2McWAR+kuocOyIzA262yJ1dvPoEtGSAuiRekP7NWGrWYrL9xhEUt1PSdl77X2fW
 rViBk0Qzt8Nw+iHRc7JMg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PpJcJ+lEr9U=:ZQw6NSiEGAfGxuK9wNrxVj
 sU4M386rfyma+qAxVEADpO7aQoqZYeiupu3Yk4NaCBT9iSsIBR+WMQydoVZFPkLEa4wKYgY/9
 ggr37kVjRXLCbaUz45PJKIomKeXTK6qTtNVwi4Ca1tJf6SVSFdd6Cx141yGz/zrbnWRXE0XjE
 qs9h8MIHNepTGAVkbT81XsMafbtKlEUytsEGeI7L09biQJcpAi0F7CzgfLzW+y58BEWlRwage
 2dEv3h/C0teHz5/avoJDG8yIY1oORLKRWltKBhjY4tQQXh0MCQkX4j7kcVbHbU0ZJb/6X28sO
 dCcpXQ6RrI1af5Z7np88YKWq3Dwqh2hZpdWi08tCsVJRGMJv22FYUJwaXbMaFSmWwqq0WrXNA
 E+C/Qzf4F7QeD6uB9btEuRSuzrC/K/94DGX4m5r1oaWW41H/4OGcjLvqXq89wHMDj2rRZ4liW
 VHtJRobmYx7qsKJMPqvyv+cTqa252XAiW5ovJIeewIrXUvlAUrtIgnGk7EknFMLVek9q4P1fM
 gAfP3fDLDyvQBRv5kEh0bCxMsE/0cwygZ/BpcXaYSvUNVs/jlYuLKzMPTRElElu4Vs2uhrdqU
 kQvxzhROL+SzZX0vrSJPBiGptp/CcA6/Zw11S9hRZJ291ybwk22wSxeTG3LzXhMP02WzazTYn
 43iYrCQtYPauFBvh5q1QPf2aRHotNDd2K5Ep2CrVYp0IxcskpHYk8hVeApaz7U1HV7jOhVCq9
 n2pxtu5J7qCio+wHhl6Ld/zlg0xSErrYU4DxvBG/hdeYZWnAs+cg9k+ESud5bD+GDsAFN+h2S
 xRCUqIjRPhoo6YZGuf3v9yc8ErgN5XXYmRkx+av29wQSKn1ha0KpKMA2sAtj7llVCtWmTOCYC
 Oa+ojSjUQoQa6Z96KwVQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_140248_105314_A8049B1E 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.196 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
