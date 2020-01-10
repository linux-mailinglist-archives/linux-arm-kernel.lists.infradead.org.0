Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B6D1371EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:55:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=saMMkyWzr+V5t7fhP/n1nCJKIG1MCG3k12fUFusKeOM=; b=sWY+L6YaShzwzr
	NCPr2QbJEMDuLi8AYJVu93OWVNZbB7ydzaAOe/dt3O99alF4jeSx/IO+YFZjyZJcMuSyxEaMhbEGO
	r0ijx1lL7XBSgjrndNhu1c0/qnSFathpsUG4DYiRjm/ir1zjQ8hMqRVvnJ3YdNtGDW10LHo2Kfl2e
	FMijCnOjbynnh6LO7f9bmeWR+SQ1b6Zd2TzohWT09UfFy6CNZmEisnHb4wWd1jAoj0ns4WubG1T2G
	Xd2887xBiyeA6+AC5x4VvGAB9kxt4fmB142pmGLKC5td98oaYqA/2J6O+zmZAzMJKmx5LkF+/VK+V
	pxkXjowKWLW4WDHzN5Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwdO-0002Af-Ji; Fri, 10 Jan 2020 15:55:38 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwcE-0008SH-Bh
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:54:27 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 15
X-Spam-Symbols: ARC_NA, FROM_HAS_DN, RCVD_NO_TLS_LAST, R_MISSING_CHARSET,
 TO_MATCH_ENVRCPT_SOME, MID_CONTAINS_FROM, RCPT_COUNT_TWELVE,
 FROM_EQ_ENVFROM, ASN, RCVD_COUNT_TWO, SUSPICIOUS_RECIPS,
 RCVD_VIA_SMTP_AUTH, TO_DN_SOME, FREEMAIL_ENVRCPT, TAGGED_RCPT,
 BROKEN_CONTENT_TYPE, MIME_TRACE
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id facda0dd
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Fri, 10 Jan 2020 07:54:25 -0800 (PST)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 68A6846F05;
 Fri, 10 Jan 2020 15:54:16 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 4/5] dt-bindings: arm: sunxi: add binding for PineTab tablet
Date: Fri, 10 Jan 2020 23:52:24 +0800
Message-Id: <20200110155225.1051749-5-icenowy@aosc.io>
In-Reply-To: <20200110155225.1051749-1-icenowy@aosc.io>
References: <20200110155225.1051749-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1578671664;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=aHMVf9YN/Ou2qI2bu7BHpQN10yiVfdUCCsz62MjLlb8=;
 b=Cs8pYDB/qv1UtHCqiHCo3rxLkZE4at2kffjmucentPbpaKnkes6kVayEtX6hXesTErBCgT
 KUko1jWhcp8tUmfX/rT0PkMbVFZzs+gQbT0r2LhuiULo+ai0L0eHCh/SJZEGbXudWRpCUE
 5Yd5/UDivXP+nCDHiewF//iKWSmYV7k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_075426_470779_66DB90E1 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the device tree binding for Pine64's PineTab tablet, which uses
Allwinner A64 SoC.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 327ce6730823..159060b65c5d 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -636,6 +636,11 @@ properties:
           - const: pine64,pinebook
           - const: allwinner,sun50i-a64
 
+      - description: Pine64 PineTab
+        items:
+          - const: pine64,pinetab
+          - const: allwinner,sun50i-a64
+
       - description: Pine64 SoPine Baseboard
         items:
           - const: pine64,sopine-baseboard
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
