Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721C019137A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68FmxfA73eZMit39zwNhJZcdqSBEyALjuHtEnJPR1w8=; b=rw7xlVdPtua+LO
	uxamQjWZj/xDcz9nNDlpHLPwKPSTJ8BrYE6TC510gazZCJKbT6pMqDT+XyPegPzO4PvXfQaUkJ7A2
	OYbpY36IJ40ipIxYocZHALMvUj5w/l0YZu++z2tqZVzerGjE53N9NClG+ig3k9DOV7msm9fZe8SZ0
	EpPXH5mIs4CoAxuyHEYW6Rjnf+QJ/00rOaSXGrxG1NezHmTMflx55RfMHlf47lw7yc1Vjpdo4mpcG
	Jyi6Ce0aaudSu85omcJQyw5l6zbqfJN3J0T1cN0fGhci2uWJ/ngU0ku1ntsGSq+4JT+hh6k3gLNxR
	x4UTMTF49eWtxEiH3WFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkmg-0002HG-8m; Tue, 24 Mar 2020 14:44:02 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkmV-0002G1-Rp
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:43:53 +0000
Received: by mail-qt1-x832.google.com with SMTP id e14so883918qts.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6hZ3mKFxh7nBErS5Qg4UsC0Q2wGLsvJidQirvrTzzSQ=;
 b=cObX7ajULHqU7zTNfhCt1smSq/VvkzTYK65I2TiJW95LK/16Fy2gnAdCMz31/4qcA+
 H2aHXvog8Z1S7P9k0RvGOr4Rv+XktKW/7KIq6A8Ww/ABuDDEObyr9KKoBn1yENOydz02
 fU6qS4jz7xl892/+H+yiwY4xj3vXMwHafjRR3bBOJP5xNb/tBwK2s6fksrL67g1aTswU
 FhmCxxNkY7ssCMxN9Dak7cAd2TLud8QKQmltq6w5GXJwQKAEXwGYV8aB7dmbth4WKq4e
 KTliUCGSxux7Y6OefDxXVvas/QoYjkC/b3GH2ofs5ydt8tWCamLiAlcU/+KsCl0uNFmz
 8qWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6hZ3mKFxh7nBErS5Qg4UsC0Q2wGLsvJidQirvrTzzSQ=;
 b=DChLX08JjlQSVXjhV/NKCt8P3mMadYsqQYUd1N3RW3hWjo+0JFx0zL5crYpG1bV3zI
 nEj0/Fq+Xcy2d7X6zn9GunHssrjL+w97DyDYu8m8TZR/dBUfh9rzXNfza80Gy7SkAFRl
 TAfB39x/WckAGmicquBn4RIAXsUDmVFkQCkBtXCpZKN6LYA+Q+jp2TBCNyC9Uw0JauAi
 fZgTcd+V+RIBIcfgCFC9297ClozXCs03F0l86ZxDBsCjjOeuP5C4HBplz9bY4XDllcXO
 PD34EGAij1/7CjcyF1CS5dlP+FIqOrsyREjiZlEgbJyxC+NQ5vzi6/dlQkheR7B5ndKH
 u4mg==
X-Gm-Message-State: ANhLgQ07ISsFcI2FhYsBxia1bnJ6ZcoKxMeC33sOF8usplalyzNmwDr/
 WfbqIwWUT7VvILHa2uMRAmJ2NaF2p5Q=
X-Google-Smtp-Source: ADFU+vtqb2HjPXS6RLREfTrVNSOCGBWkXzFhUbc9muoSfFghXzvbywcda2wPQplRdBZenYOtgOBE7Q==
X-Received: by 2002:ac8:1611:: with SMTP id p17mr22233916qtj.300.1585061025878; 
 Tue, 24 Mar 2020 07:43:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id y41sm14749800qtc.72.2020.03.24.07.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 07:43:44 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: vendor-prefixes: Add Beacon vendor prefix
Date: Tue, 24 Mar 2020 09:43:22 -0500
Message-Id: <20200324144324.21178-1-aford173@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_074351_899491_00F4D19C 
X-CRM114-Status: UNSURE (   6.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Beacon EmebeddedWorks is the brand owned by Compass Electronics Group,
LLC based out of the United States.
https://beaconembedded.com/

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 4c8eaa11daff..7ee772b1840a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -141,6 +141,8 @@ patternProperties:
     description: Shenzhen AZW Technology Co., Ltd.
   "^bananapi,.*":
     description: BIPAI KEJI LIMITED
+  "^beacon,.*":
+    description: Compass Electronics Group, LLC
   "^bhf,.*":
     description: Beckhoff Automation GmbH & Co. KG
   "^bitmain,.*":
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
