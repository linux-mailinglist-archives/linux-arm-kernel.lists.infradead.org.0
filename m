Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC083117BA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OSMwxsBUI2Qw1sQU+tTdGStJtZuFLtNEbcRb5k48Ck=; b=EG2f8sCUjFNBZW
	oPjiLTXa1fDH1vq50Jg+Rt37PZzSdeHzrAW2ej5C/oRUSj3fsX6GbqHDirJor7UM0lAvoWugz2SYA
	xzLnvCIwMFWmStSseC1j5Hp2+armAUj8LHcgwGZ0EVmjosZ+DtdoqdZ/GcfR+MwKE6WNIqMbd34aP
	awOlkGsiF5nIJU/lEG71ViEHSGlCOa/sC+XYB+HPvZnTHSE5ocYBJWUyGsFAKKFBJB1FaMvw8lIn8
	/bNVKfCsgdMlwFjYlD7mV9O2UAMWeF9Wsai2KDU60s32+FQZlqx1KFYN5mWKeVV4Lok75+NJVJ5Yt
	jZynZOdBu2Uv2nyfOKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieShx-0008G1-Qf; Mon, 09 Dec 2019 23:44:53 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieShG-0007oo-06
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 23:44:16 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 7E0EF23E4F;
 Tue, 10 Dec 2019 00:44:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1575935048;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=be7fCu04a3V6kQ7ufijxN9WEC5BVATqlM0smfMMKPzM=;
 b=NcDWtc/VBlnBMG47Rt5w7nZ7WVB+MyLHMZznm5b5XjGWw+ZyxCyn4SdB3k75aYYNv0mmUi
 If9CbR/9owDKM18kPS8PhpmRPvZy97EIWAeLLiOsUlZjQ3iarc27/EzzgUjg/SJFnkdISJ
 TGz0D4gfQTvtQzGXKb1819tVH/osneU=
From: Michael Walle <michael@walle.cc>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/5] dt-bindings: arm: fsl: add Kontron sl28 boards
Date: Tue, 10 Dec 2019 00:43:49 +0100
Message-Id: <20191209234350.18994-5-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209234350.18994-1-michael@walle.cc>
References: <20191209234350.18994-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 7E0EF23E4F
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[9]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.683]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_154413_032904_FA12C977 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Yuantian Tang <andy.tang@nxp.com>,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the Kontron SMARC-sAL28 board, its variants and combination with
carriers.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 .../devicetree/bindings/arm/fsl.yaml          | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f7792fe89a00..80ab4b5b68ef 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -358,6 +358,44 @@ properties:
               - fsl,ls1028a-rdb
           - const: fsl,ls1028a
 
+      - description: Kontron KBox A-230-LS
+        items:
+          - const: kontron,kbox-a-230-ls
+          - const: kontron,sl28-var4
+          - const: kontron,sl28
+          - const: fsl,ls1028a
+      - description:
+          Kontron SMARC-sAL28 board on the SMARC Eval Carrier 2.0
+        items:
+          - enum:
+              - kontron,sl28-var2-ads2
+              - kontron,sl28-var3-ads2
+              - kontron,sl28-var4-ads2
+          - enum:
+              - kontron,sl28-var2
+              - kontron,sl28-var3
+              - kontron,sl28-var4
+          - const: kontron,sl28
+          - const: fsl,ls1028a
+
+      - description:
+          Kontron SMARC-sAL28 board (on a generic/undefined carrier)
+        items:
+          - enum:
+              - kontron,sl28-var2
+              - kontron,sl28-var3
+              - kontron,sl28-var4
+          - const: kontron,sl28
+          - const: fsl,ls1028a
+
+      - description:
+          Kontron SMARC-sAL28 board (base). This is used in the base device
+          tree which is compatible with the overlays provided by the
+          vendor.
+        items:
+          - const: kontron,sl28
+          - const: fsl,ls1028a
+
       - description: LS1043A based Boards
         items:
           - enum:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
