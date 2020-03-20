Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E01518CCF4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:26:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4PhdCddTlVXVplEQeaOlh0um+EYCxctdVohJf5dHzDk=; b=Ha03SloYAgZQA6
	h6nF3gbbLUrO9oEdjn0ZI9dkO9LlfCJFfRqACuoWLerX7WrJKoNaK8iIYFzEaaSAJ7sv0yLJ9vA2I
	BVtv9itm+waqKk4OfK3xbApQuLdx0XJyPb9QaAHryd42xmecIhGk8Xai5WXWS1DoaoG6ojWMd+fbn
	pNOMpL+2GdwtZtW1FiBfGW97vWEVT2gFtezq6EVNpUkvb9VAndkWZmkizorWsJ5Hin20CKRBQFKxi
	jOLiwL31egdSrch5nlKy5KzUIL+qku0f0qx1mybiZwxm4oWgBz+GEgcNFRzTuTO4+ktxfYkSiBMDi
	0sQ1CZnsJQ1E+xDBunUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFn5-0007mY-FE; Fri, 20 Mar 2020 11:26:15 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFmk-0007cu-Me
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Content-Transfer-Encoding:MIME-Version:References
 :In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qEhR3T0Nfojt3eERAwazI68eQPd13TAEcxAgAW/RKYc=; b=N0cfTIenwdEy/BWu8/a7ulLJBk
 PU/AJ75NTxnoUgVZ6XaLXNNky4hAfXBR4xZTV6OwUCA/tlIyqhthjm0yi8FPiAyG3ik37CEJlfLHR
 g7FUk3YrTLUyN/CvfD1MvPZs0J9e1I8iPPSowOvFSB2fsau6RWOr/kXBMJmUHK4wDL4YpEP5PfLmJ
 ftY2GzKOnn+s6ZEeZcFCIDfNE2ws49hHC5SNTHSi2+rHYM8IgojRAPMD8rUgCXWjj7kJ4xAWcuqMl
 JrnUxB/tV/cSAehFrBbmIuwcKDoGYZtVkotPsIRCFuR6qqoqimIeZZq07RKTOipXjw7NGUXxH1dNA
 7DFA7y6g==;
Received: from ip565b1bc7.direct-adsl.nl ([86.91.27.199]:57936
 helo=localhost.localdomain)
 by web0081.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <dev@pascalroeleven.nl>)
 id 1jFFmf-0011ci-PN; Fri, 20 Mar 2020 12:25:49 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH v2 3/5] dt-bindings: vendor-prefixes: Add Topwise
Date: Fri, 20 Mar 2020 12:21:34 +0100
Message-Id: <20200320112205.7100-4-dev@pascalroeleven.nl>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320112205.7100-1-dev@pascalroeleven.nl>
References: <20200320112205.7100-1-dev@pascalroeleven.nl>
MIME-Version: 1.0
X-Authenticated-Id: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_042554_924981_EDAB84D7 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-sunxi@googlegroups.com, Pascal Roeleven <dev@pascalroeleven.nl>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Topwise Communication Co,. Ltd. is a company based in Shenzhen. They
manufacture all kind of products but seem to be focusing on POS nowadays.

Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944be..3c08370b7 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -982,6 +982,8 @@ patternProperties:
   "^toppoly,.*":
     description: TPO (deprecated, use tpo)
     deprecated: true
+  "^topwise,.*":
+    description: Topwise Communication Co., Ltd.
   "^toradex,.*":
     description: Toradex AG
   "^toshiba,.*":
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
