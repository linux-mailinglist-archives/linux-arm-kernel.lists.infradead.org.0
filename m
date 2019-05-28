Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7458E2C724
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=syKs7PSFUPxs91I7IBblWz7rRS/1emCso476RKR59+Y=; b=irFXUCN8UyJ/eSRyBQCPhRZpM5
	72ymdruxC8Mli+sw5GS3gIoWT5d86k0bVPAHopJZkNyiygbdB1jvMxVxUHUGiBYhNexb/j8vGJlS/
	VY87IMHuR9d+YLc6tEvIZ6loXUfVBoGuGYugHVGjmqi9lOi91Tc0OeDSqEW+7WvDepluEy1avbB+n
	Nw6dZ3da/zF1xvaPvt4CVvOHiidbaHh4HAkPOy/S/JJF753VkZ5QEbE/Tf1oe97zH+bkBJ6VKDe/L
	r1uh7ZWqmwf9uzOagJ4i4SwOjbX8xbp6eLDhmCqCo5DZdDHEY2gyJjfCtUOJnBTgPa92h/pKRpwnN
	Cb0DcmMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbgU-0006DI-Ju; Tue, 28 May 2019 12:58:30 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbg3-0005q0-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:58:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id F33C34E2058;
 Tue, 28 May 2019 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1559048283; bh=lelvFHTb/2EBptwvKMw/2mYGKmO6s1cDu3Iox9D0FcA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JkXdyGmJ2y3fdeNURfH40q0V2TzVmj7c5hFqDKGyIIZZy7ICKem/ZA0WQMdW8l4IF
 PraYfN2Hxy8xrq2XOusDcxyHvsgvzoUv4Rc/6KEsODhwwrjIa0uAuCihV9xFqo+4YM
 QXENwNuFgdRdnbf1zTWeOF1cKkxkslIo2rFlo424=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MgtEvu5V1tXn; Tue, 28 May 2019 12:58:01 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id 1074A4E204B;
 Tue, 28 May 2019 12:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1559048281; bh=lelvFHTb/2EBptwvKMw/2mYGKmO6s1cDu3Iox9D0FcA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=pdqP/1OtumjtWqPKfsu7mxUpU57Pz+1Fsh7eMH63d0x60oPzTQWvb0H1RH+kHO+PM
 wBE0Xy+TKWB32fVwyZcRGgIT5in2rARN/90L/pm906yVe/ozlWHBc3u/0aJ7JD0zgI
 yoZmPKOEdkPhjyM+ES02QhZKGHRJQFEyT47PR6KY=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v15 2/3] dt-bindings: Add an entry for Purism SPC
Date: Tue, 28 May 2019 05:57:46 -0700
Message-Id: <20190528125747.1047-3-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528125747.1047-1-angus@akkea.ca>
References: <20190528125747.1047-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_055803_207971_D07003CD 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Abel Vesa <abel.vesa@nxp.com>, Carlo Caione <ccaione@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for Purism, SPC

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c0881d51aa91..0faa0edbecd6 100644
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
