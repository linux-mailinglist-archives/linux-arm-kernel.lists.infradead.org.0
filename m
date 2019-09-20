Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEAFB8C12
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 09:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G0lBb4b3ZQzOgaMguh+d4ivYexrHmCMiQDvZA+e4CZU=; b=YkWzVDSOBWcC6/
	OOLVzcQTzyf1gnI0jrN2jZKNt1KYNQt30Rm6Jhavdgme48QKe9ZSwBLXuXa9lidE7agZguyCeV4UP
	FrmrtZ4CvhQ55BNWw2SSbCtWnxctgXfPujHQ/zuniFoyxcVqEizXD+iVl+vclfyLgbVSnUuca7Y+4
	AfQPaayjorGuHQE6iVU8R9A0pJ/1+T49mj7BThLz3iN3nAX4sBIVAs7JzEWGiJFIfprZhzE7QjJK+
	9KdeuxwrnUdVPrYeQTKh9AodOkG73YfIH3Pc28nFmw7wVHfsBOQGSyeS96rlXqUpkozJmmzLtpWlU
	0DJwy0HC9JSfMEEpdyzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBDl4-0007bp-VL; Fri, 20 Sep 2019 07:55:15 +0000
Received: from mout.perfora.net ([74.208.4.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDkp-0007Zy-84
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 07:55:00 +0000
Received: from marcel-nb-toradex-int.cardiotech.int ([81.221.138.184]) by
 mrelay.perfora.net (mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
 0MGPxO-1iOTHF1O7c-00DD9w; Fri, 20 Sep 2019 09:54:25 +0200
From: Marcel Ziswiler <marcel@ziswiler.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v1 1/2] dt-bindings: add vendor prefix for logic technologies
 limited
Date: Fri, 20 Sep 2019 09:54:10 +0200
Message-Id: <20190920075411.15735-1-marcel@ziswiler.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:aQ4xStQWFccokTsnwpMEsTr19zszagYxLLJLxeRBk1kzhDNkFOH
 OrZ9Z8sDaQaaZb6xOeD/vWutzISjM1DTSh6UJYijeN+XiP8EdCOrEZKWF4hkg3spLLizROy
 +UkbkPMgL/DS0gbg2ANuzNFBui2iNVF5anESWW8FarmZZ4NeB+dZ2ZvBrrkJWq4sLiJJGAl
 7MVJ0O27AFsX/SdKp+C2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PwRLMrILxo4=:PGyhiCBnO2wa5RDaAzVr3D
 X73wKMW9ke5Dk/nwMKjw89XtApvNKHMmMqWcTxv1fICC4wiCoZH7FsEeDy77pEWtKR4Neq4lD
 rS4styjUA87UXWbHVl6pjHuHQzdCpUDE0vkQYSYgy2xjbqSfibf+XTi6mOaKnO2hSTe0jwH7h
 fC3QuknNBvnUPwYZ3N/32JXAkJgsQAq6S3pt/TVK3NNSIgI2I1ptheSYL+vrvw1OX40wznRGh
 yriEpDCjBPM45qowDdzQrU/VnnYKbVEf99WQb1HYVQrcqKutrLHE5xzPZ97BIEWC0El3LU+uh
 Yl+zT2/Hp7Nz4XdrJ4ZWQ7Mj2+6+Dni1uCnaV+FOSQsoO+AdzVNuS6kqsDifoVy/Moeww/0lK
 QE28vmRQsQ5pk/Gk5vcQ6z8xvgSs+k2DwawGRKbCcsqX68J/12xIfGKw8i3AqLgnevtRv5yvo
 ttY8qimSw3nZ2RZ7OzcNuEer3MqD8W5tUlNkZhvmMhChfboEfuWZtn1b6tzw6I4YMyT4OVtHS
 PqPFbQGX7YlgYJgRakdNFgFtueHOGf7+h7flMYQ0PCaESgQWxz3T2+7pwCsjvNQ8cDtQIyDep
 6Cb91WcfVDN0ZGJczFtXo2m7M1ctl/ds39f5TESiKcgEufncwNkSeKxlRytJVhpABmL4AuKCV
 lrZD/Oc6ZT3q/ZRFF3bMajtfkTVrUa/xEQOjhdy+UbVrHCopY77Vi5qNF/A5fl9V0GsXTRZd1
 NCZWSFUCKuGypZab2x3tcAJc1YAr7fHcJB2XIbsUfYwEof/KLOCiPE/hwItHMS6wrEY1ElbDH
 ReFNUWIqGWaJOtsrx++YUVbSCXN1T6zz/Pr3rNVtvRIMWgzsOrtxMrwUIEin9w95w0mF5T/Z5
 1o4nFqCpM7GCpMaHV/+z/FxXqHdA4qSMKZ/nAjPYg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_005459_365680_3C99CFBF 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [74.208.4.197 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.208.4.197 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Heiko Stuebner <heiko@sntech.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, j.bauer@endrich.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 info@logictechno.com, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Shawn Guo <shawnguo@kernel.org>,
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

---

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 967e78c5ec0a..1441146f394f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -541,6 +541,8 @@ patternProperties:
     description: Linear Technology Corporation
   "^logicpd,.*":
     description: Logic PD, Inc.
+  "^logictechno,.*":
+    description: Logic Technologies Limited
   "^longcheer,.*":
     description: Longcheer Technology (Shanghai) Co., Ltd.
   "^lsi,.*":
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
