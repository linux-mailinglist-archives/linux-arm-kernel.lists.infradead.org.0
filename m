Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D745A29E1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pZv/RBVZ4/+gKaxWTutvpTICBiftf0g236fwacKXl3w=; b=okTAJAOyY3giVcfyTcFVfx1maj
	pmgOANFzDLbvYE1VNyGoafGGJeSskK8Szl/qsNz0awhL3B0n6MN5BiI2FU7EEXT6o2rZ4IzuSGxUc
	deDi5x8YsIoocmxqPHqTaEMr70B9ppwK+lcHycG4JlmSoQLcdnTKbWjTAF0XSKwBmstHDQBLZe9Iz
	4ZWUkW6Pn272fOsuIXJCQ557gMywTWBucmc6+wCq1FvOziKM14LQCEwsHJBUDfTaI4ojtOQDTNK5K
	7vrAT4IWzhWRIk4AWRZz/fZPqwvYE/1/lHM/SstYaScL8eX9fAECOygSJ2yab9MozZc1Zbyg92+Iy
	9+hS3dzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUF0c-0001bu-Qq; Fri, 24 May 2019 18:33:38 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUF07-0001Aq-LS
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:33:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id 88BCE4E2050;
 Fri, 24 May 2019 18:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558722787; bh=LmQmUojdQSRgprO3m2DjN3DljwNQT9zOpEdeZGWgzBw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=nzVtAW6q5kxieimwEOFI9OX768YjDfMtsbfESF9mIf5p9c6UvL9qX788MupSFEVHx
 BCWHL8BjHulNrQTYbps3jzXTNqqLL37nRyXL05LItaKdy7VsBXcY5yqNfgUCm6p52p
 0pd1+/aNxBYCHYnJ3lEWYI+tBtCZbmV0H2JhF7xY=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgEYkabp4wt5; Fri, 24 May 2019 18:33:06 +0000 (UTC)
Received: from localhost.localdomain (unknown [24.244.23.228])
 by node.akkea.ca (Postfix) with ESMTPSA id CEE034E204B;
 Fri, 24 May 2019 18:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558722786; bh=LmQmUojdQSRgprO3m2DjN3DljwNQT9zOpEdeZGWgzBw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=nF7p9akwmfKryeBlra/1SbTeWO7OO1fYEglIgqbQDnVccpRnHQ3nnxU7h0yo6XZ2D
 Ak81BB1OmadnQw76BTjTh2MND/0QhZuvGVdppTjTaHaFRI8uDClmRVSu3GPL3VFwJI
 zZo+sfIjsYkopt6ijoGKpJ/kebmPuVjhmynBPYCY=
From: Angus Ainslie <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v14 2/3] dt-bindings: Add an entry for Purism SPC
Date: Fri, 24 May 2019 12:32:56 -0600
Message-Id: <20190524183257.16066-3-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524183257.16066-1-angus@akkea.ca>
References: <20190524183257.16066-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_113307_702490_25A3D648 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Pavel Machek <pavel@ucw.cz>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Add an entry for Purism, SPC

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 749e3c3843d0..07d5211a8192 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -687,6 +687,8 @@ patternProperties:
     description: PROBOX2 (by W2COMP Co., Ltd.)
   "^pulsedlight,.*":
     description: PulsedLight, Inc
+  "^purism,.*":
+    description: Purism, SPC
   "^qca,.*":
     description: Qualcomm Atheros, Inc.
   "^qcom,.*":
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
