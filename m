Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1FA1424BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 09:02:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSHFgRgjSAE+4B16q3RYJ2xsQnkjxw0qV7FugC4LAG8=; b=doeZBBOze845hd
	HeeqV4ZaJy8YZWQvA3ZIjqPHugNdF+ApD6bY9J4mLYVyIK12oOUodPmQHiVhhw1J8Ww59btSymJ4t
	zSaVvetWPnzJcGdY67eJixtDsDe2MSAJ7iED504OYEleuBsBPDdTu1IbRIdf2JquZIR0XlPoz90Ni
	JNTmQco+Uj+WwauIzBOIrbYNFcR8ZIO0XMTWe+Nec8jEkx36Qa8WAXVNocWWAg1y9rnqXLIUOgODn
	purmaHAe0sB802UTVwoWv6mNjtV2ppTN+87Pxr0q+tX9gJ0xuFDcdgRD76oJalWhRf42rXnsIoVg5
	CO3Qa7a+R3e/Y1xB2F2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itS0s-0002Vr-TG; Mon, 20 Jan 2020 08:02:22 +0000
Received: from mout.perfora.net ([74.208.4.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itS0Q-0002NN-To
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 08:01:59 +0000
Received: from marcel-nb-toradex-int.toradex.int ([31.10.206.124]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0MIxBv-1ivMsA0LBB-002VEd; Mon, 20 Jan 2020 09:01:11 +0100
From: Marcel Ziswiler <marcel@ziswiler.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH v4 2/3] dt-bindings: panel-simple: add bindings for logic
 technologies displays
Date: Mon, 20 Jan 2020 09:00:59 +0100
Message-Id: <20200120080100.170294-2-marcel@ziswiler.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200120080100.170294-1-marcel@ziswiler.com>
References: <20200120080100.170294-1-marcel@ziswiler.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:s1YhVdw4eX8lnWxPXPUdwEDdSpyhr/cTaEUmZmnSuORfJ+RTbAz
 ZHoAsjJ2plmBFvYddfoQ8KOAu3OTokhtE9UsIW3H6kGpY8YzRO1SqaYzKTvs9CmqcZ+GhTh
 uE4ZY5T3SnfCn9WpsB/4HmH8grkCf58MB15hzUz82rIZSCCAs1EG5xOGc5ZYNvbwmgbqCrj
 24uPLf/+PaEuqouwR4CMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z8rtjWTZ5I0=:8HwvfDcwTFzzPj/I7nHmXc
 GXqgYk+64Dm/Zy5mRLKzPSvlM+j2iTJ4GjYwRROrpvqiuOeaGdVNB0RXIr28rsh5i9YGhCr75
 DjT2st3H3XYE899Fs8uHc0CoTQ8jqmC6wp5L7ruDTyb0LhOP4Elldx3gq2DhfVaur/C3Jj1Ku
 K6My9rNJQ0xfO+bG/i9ZT73hU4pg1fEhULQEHEcP446I5WEMAfywraN5kYAeMPh44mCWvYXTk
 0mjUl97GDixde3gP7sbrut1L+EJ1Jn1I0ntwvEwD/E0plgxlvdbbgkNX55hN89qujEkJStHMM
 nwhwINulgjp9giFzBkyqGC+Y+rcGrTrIJUCZ4RgSTVZURTbSlVHu/njYCzzG/Zbf6C+jwxQa6
 TBJhXG1745hYVBJLC2NBq8Egc2kq8SDohh/3h72/dy5YHgIwO82quzm8rqerwAf6eYooL7U/x
 PsxQEVrrBbw6nU8NiwfhEh5013GoIyUu6NygXHaC1rQPxCgV9MCFs+cmiVVbh9YwVksGcctGK
 0NeMA//VtzWG7SYnsI1HTpZSRyCuOs/ClogaoGOkIgjdoyWO+2AnvJU8rO2/L0X+tZWYfl8Qm
 y/jxNJmctMG9S0PjhTrORC2w6qsOpiR3Ku/aDRIN4tPENmh633vVLThwSj5Dwmpe1DmBZI3GN
 UFcQtK1V3dD0EImRORcZGUoyH5jRspiDfJ2zZZCCop3nMQPeAX9UQPftjpzaviO3cKkYTnw1R
 YWjOYoWh4vMFd0sYR63sxLmArSUyeorNEeIl0eplK1KWgJlIHCl95D/c6W6YszKmtFtILEah6
 59yqiGg5DuY2aPSOyUFmy4AYHXUTDtEeCdbvvSCFQnRwCPiKBmxoyBD8i3Hx96PZwQIPUCfny
 xSSKh0v9+shMRaPcQEqw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_000155_028152_C2108265 
X-CRM114-Status: UNSURE (   8.32  )
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

Add bindings for the following 3 to be added display panels manufactured
by Logic Technologies Limited:

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

Changes in v4:
- Re-ordered commits as suggested by Sam and re-worded commit message.

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
