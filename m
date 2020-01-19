Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AED14205A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 23:03:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDdgLZkmZg+8151utP0kafmdFTzPT71zE7oax1kDaJU=; b=EiK34Jtabta4Ke
	1scqsT/JgNcc2pK8jI/XzdZRuD7TiL81dlFRfrS2ZRN/sd3QilVVNNW5d6s11HcvLI+bXJXCtXjQc
	5U+/kVh3c45LQfMQcrYmfOrO0GGoHs8gmnWFuh5HcqN7gNH+NP193ZSHACX4jrdUQabS1KpsmuO2b
	1W7dSdZJP5+d6NMEGmlJyWJZ0xQcclXUq2si2BDfHsVipGjug90+UAiWIAL9UddHFTh4ZdvH3eKM9
	B0fVwxJcRp1h1CLMKoS4eDJtTaUr6HT7Wqw+H/ClrBAFJy5qTA7pCyyJZC2OCwpTObre+umJCm+7c
	CYj2fANTuvHwLnz8w53w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIex-0002ba-3l; Sun, 19 Jan 2020 22:03:07 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIeY-0002Ss-4B
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 22:02:43 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.128.11]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0LwYMD-1jhRgd1qLX-018NA9; Sun, 19 Jan 2020 23:02:16 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v3 3/3] dt-bindings: panel-simple: add bindings for logic
 technologies displays
Date: Sun, 19 Jan 2020 23:02:04 +0100
Message-Id: <20200119220204.208751-3-marcel@ziswiler.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200119220204.208751-1-marcel@ziswiler.com>
References: <20200119220204.208751-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Hw82bcaPWPwRrI77lcUeqVX5rPe9mSITMwkyCj3DhwJV1Jy7sjF
 G5jsx6nFQbqTzb6c7zCwHoDT3mVvsPgQq9HaWVVQEiQIU5r3LbvE922LooRY79Ys/eJdkLT
 rb0w0yIimcbuvTtxCi3cUlDS05RlV+m/XBQwmFW7l/RS/Kc8kNc6KYvhfc3Aap2fAnpQ+n2
 bQ5usd69vFLeQONi3zBjw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/Dzw8OPAP0c=:LQ3DaTyXz5b3qvwlMcnIAE
 xYeeJhTSTiAR+EpElIKLBKyDResj1z89YLeTsTwZ3960xiI5ol+ngFfcCwCOs8D2ZcBg1TzSH
 RbRx0y0dhVB/OOnlVVJmNxuo+kW4hmN/KmQ3f2HWYuKzC0nMhPjvXYq2dg3IZ8HCNoNWw2HLY
 G5tZW8rqr1+8ewAKR6GCepQ/gqIHEHeZ5MQ83nchB7H2eIEyXnWollXxn/YRLmOow9EODN1ib
 VlriWgNh/b6hdmufy1Yok2qQCv2d+kZaP63EGJfGP3N8lxIrXDGaALdqj6h6l4dArAN4o64oa
 OD3GFwExVIxvt0pEPjsM5walBPrwFMWLFn5HHwtRgJ9P5O3a0i6O3JfkJkU/jRoRS5FyTA6Zu
 zr9O4Kuqao7M+39PfcbQaHKukFGSzftRWygKdD//Uh+L2/Qy3lj25wZnLo0pjc3fcJu2q2ee0
 JV6Cd2wCcB5Ck98IDWnWkHD3sV/fdpm5mA88etikI7A0rvufWyNgzSiaCWz+y/W2akJ4DxRI5
 pgDEMtG+Q0FLkR3aQ3XbOobwuGV+vqH7AvX8Un8Sc8zXW4kbQxo2E9CRpoMvqlnbbqMJOd3mY
 e+HiK9phSggXfYipt2d+OS1MT7jONZx8inZsdo8Cx8NJzE4mt93nH5sa1dsmx2BHEXtNzzq8F
 cgcZS062SXNJwpFiO50gbdEObRjfWruDqIUPPb/8oRUqkNJzVVxdfT5LD/X7lI+tpwIHKn5BP
 Y28Y/WG2gKxuE94wAaynZtNuv0TAVeYUsFboPlRnxBJ2a/y6w9/fKIHBuP5elp1Qp0qkV/AU2
 4oYnccDfwd6glTzE62ur4ou2YzC9y9JdwFbVVvLsG/2Wvv43mYXvOgeiCS0dCzMirO/8eZPDF
 FzYgPv9udhzi0Cxh2F3A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_140242_232427_58FB9D22 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, info@logictechno.com,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marcel Ziswiler <marcel.ziswiler@toradex.com>

Add bindings for the following 3 previously added display panels
manufactured by Logic Technologies Limited:

- LT161010-2NHC e.g. as found in the Toradex Capacitive Touch Display
7" Parallel [1]
- LT161010-2NHR e.g. as found in the Toradex Resistive Touch Display 7"
Parallel [2]
- LT170410-2WHC e.g. as found in the Toradex Capacitive Touch Display
10.1" LVDS [3]

Those panels may also be distributed by Endrich Bauelemente Vertriebs
GmbH [4].

[1] https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
[2] https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
[3] https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
[4] https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30

Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v3:
- Add it to recently introduced panel-simple.yaml instead as suggested
  by Sam.

Changes in v2:
- New patch adding display panel bindings as well as suggested by Rob.

 .../devicetree/bindings/display/panel/panel-simple.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 4a8064e31793..f33c5d979f96 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -41,6 +41,12 @@ properties:
       - frida,frd350h54004
         # GiantPlus GPM940B0 3.0" QVGA TFT LCD panel
       - giantplus,gpm940b0
+        # Logic Technologies LT161010-2NHC 7" WVGA TFT Cap Touch Module
+      - logictechno,lt161010-2nhc
+        # Logic Technologies LT161010-2NHR 7" WVGA TFT Resistive Touch Module
+      - logictechno,lt161010-2nhr
+        # Logic Technologies LT170410-2WHC 10.1" 1280x800 IPS TFT Cap Touch Mod.
+      - logictechno,lt170410-2whc
         # Satoz SAT050AT40H12R2 5.0" WVGA TFT LCD panel
       - satoz,sat050at40h12r2
         # Sharp LS020B1DD01D 2.0" HQVGA TFT LCD panel
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
