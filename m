Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5509A10432E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:20:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TVrrWH38KeNPemxJJrIiymxmUeWVv2IpfXzhotbYvY0=; b=XkBYtOyneV2sY5
	bTvIev8c1PzjHdbBFLjL4J07SstbidMbEWsauPULZcymgjJHaQqRDKiMp2+c2h6iu0XScuHn1+bNt
	K4D3HY2mWpsyrlHOxoveBhRtUguWNVJ/xVdyrjiyezxUooosr2RIzKyOxKsBfY8RyIISVsUzhl82t
	U94ZRl8E/MVe+MG9J+Vg2TKHJLdVSIMY53nU0kYqifgU0Izqma6qfbnB7UHVAifzgXuAomq+hgrlE
	jce+rorHazb5dUMdl8e0wEUuD5LGZYEMK2B1RfgCpANXs4H1cMg2UR5aYQxAVsh0kzDIPfI/Za945
	HqQ33CW9op0Bct4Hu57w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUai-00074L-3m; Wed, 20 Nov 2019 18:20:36 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUa5-0005dx-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:19:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574273990;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=6dWqLxdoQNqzAy0WaMslQR1kh9mHzQEQyVgDF/g0rPg=;
 b=qiMhjzDWXJg0mcdCKvfK9Rzkt29AS7dDkKe/xp87ucqOaTG++G+OQFc1nxYBnN0O+9
 LXpx7hUTvLkp1TFt4t632JDxuJJEY28JqK30QlNTv2NW8F0MnKS8/FtDaTk4U50bF4YS
 uZuIlFHNmiH/SgmkbwwJetTXqPnmmnYiznDmpD2Nlvje7M7k4a6X8zhJgwR+mSPLU8GJ
 mVh93w0inaePOFqECu5187Tp0b2FdM1LN3+/DY2wA4S45r0pvKJaEtlFPdKSj2TTNfkf
 ty8qtLizTv+oACmVu5MsAyoFbYpwtnqVSdToILaPEneKjNzjDT0YqJ64gQVYAqToq4g4
 0caw==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQrEOHTIXs8Lvtn4="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 44.29.0 AUTH)
 with ESMTPSA id e07688vAKIJlvAY
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Wed, 20 Nov 2019 19:19:47 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add yet another for
 ST-Ericsson
Date: Wed, 20 Nov 2019 19:18:54 +0100
Message-Id: <20191120181857.97174-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_101957_753928_BD2D6336 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:7 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unfortunately the vendor prefix for ST-Ericsson is used very
inconsistently. "ste," and "stericsson," are already documented,
but some things in the kernel use "st-ericsson," which is not
documented yet.

st-ericsson,u8500 is documented in bindings/arm/ux500/boards.txt,
and is used to match the machine code and the generic DT cpufreq
driver.

Add it to the list of vendor prefixes.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
Changes in v2: none, added new patch to deprecate other vendor prefixes
v1: https://lore.kernel.org/linux-devicetree/20191120121720.72845-1-stephan@gerhold.net/
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 967e78c5ec0a..c9b0bab8ed23 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -909,6 +909,8 @@ patternProperties:
     description: ST-Ericsson
   "^stericsson,.*":
     description: ST-Ericsson
+  "^st-ericsson,.*":
+    description: ST-Ericsson
   "^summit,.*":
     description: Summit microelectronics
   "^sunchip,.*":
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
