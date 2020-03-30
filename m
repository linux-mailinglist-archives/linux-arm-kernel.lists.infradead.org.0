Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 792491977CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 11:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Yh9PJU1XL1N3Yl+LZif8v7QDnMRaDvcFqBsBgIvXFWA=; b=aJX
	hVjXJ8gkSDBdefxCKps/IzA8/TJ17ccxPIDKZRqQC33joiG/U+74mKPI93A9Wb9xJN8+uRZCysL6B
	fzDRKbMWNoXRtaIVSNc/N+W8/OtrxGLPIlqA8oyIIOOfCU60h/m3DAfInHIiEGb2GR+RnWS71zow9
	zyDLtDvEXhhWGWR0bUvuoFJ28ETQKdh8hjEDAVEXgVZMD7FHvknS7IhuRC7YQ1GHs9xx9Bhw7QK9n
	F+vYqnskW9j49UeciLiZkKRIEHJhgJQWCZcRQ2/bfjDh4jpI5JJiKNTIK9Hs1QbNTtg1+/rUVMwzF
	394BUkLjYzCr4+uCTsFCjBfRftrWFaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIqdO-0002fi-6l; Mon, 30 Mar 2020 09:23:06 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIqdA-0002ei-Ub
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 09:22:54 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 02U9MRYO004012;
 Mon, 30 Mar 2020 18:22:27 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 02U9MRYO004012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1585560147;
 bh=jub3TGqtGTkZnD38uTgdfqYya/SwA1lK8vt+6CKyAds=;
 h=From:To:Cc:Subject:Date:From;
 b=dR/P67Xq4lgIqq9JQjyY8WPrAMVXn0rwdrH9bH+/l6CHnhY/bS9VG1dwiApdpqrDF
 ILRWFya0YyQsh9xf7mOowuFBMobI0Fz+O1Ixb7CYsh5yCjZxf+gANrjSdHBLX9tAIK
 Mv5lli9eyUI9otBTv0hyKnK9ntewQSvjhHDB77PhVD/e1cvrnrOMt3FZnEQ3PrJbxx
 caEEeYrXDWC+XsHAEfYxowuuhbWCyEEnM4iwS6WTGuw6cxPtuM1FBygPpkcN2uhwG9
 DPdEn02ZeDbzhM0m9wltfzKXyLk94tS2ja1vGq2zWpxNwp3C7Msmam9a6bL6AR5wZB
 59SMie8IQBEYQ==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: uniphier-system-bus: fix warning in the example
Date: Mon, 30 Mar 2020 18:22:18 +0900
Message-Id: <20200330092218.28967-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_022253_223236_585971A4 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following warning from 'make dt_binding_check'.

Warning (unit_address_vs_reg): /example-0/system-bus: node has a reg or ranges property, but no unit name

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .../devicetree/bindings/bus/socionext,uniphier-system-bus.yaml  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml b/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
index ff9600d6de3b..c4c9119e4a20 100644
--- a/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
+++ b/Documentation/devicetree/bindings/bus/socionext,uniphier-system-bus.yaml
@@ -72,7 +72,7 @@ examples:
     // - the UART device is connected at the offset 0x00200000 of CS5 and
     //   mapped to 0x46200000 of the parent bus.
 
-    system-bus {
+    system-bus@58c00000 {
         compatible = "socionext,uniphier-system-bus";
         reg = <0x58c00000 0x400>;
         #address-cells = <2>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
