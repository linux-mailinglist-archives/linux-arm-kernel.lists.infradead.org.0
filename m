Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1351B83B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DbtKiTiv5S8ttUAUQcipepz/BOnJf5XMwCicdK2Qm1Y=; b=SWH8EcdW+pw4Tu
	t1eF2nqo1XFrU+3cOu+kjD1s32flM4/cgyqEzzNOAtV99g7aZQv8ouT23AXV07TL4B17S3ayBHh8O
	iupy7b4pnk/IeVVdpgRvzSfsWUkYSJ2TrBa99pCMfAOvUiGvbnWpCb1wfbtsOLYniz9AQiUHNKHMS
	eYtR6IyydufJrbaMycpGpVBa6eP8tZNXL4acFnrWLPGtntFF7fgjYYr5jqYdBUbnkjk7NbzAYFmeS
	Hw8UjFzYZe1dMIf2Gy8zP5youvcAeKdpIJvUiPDfzZc6xc2jxcP2ZpdfQ5si1nDwVcBLSoxqdR7rz
	tuipUekimqcEw8Skhs3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBqH-0006Sb-Il; Mon, 13 May 2019 14:22:13 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBpq-00068y-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:21:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id h4so15518033wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 07:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AUf8m75b1jcXgPG7N+MQYE2RSkYM8jBGz55TKb5hL3g=;
 b=aEfNnn+IfrPwWIU5xkBCmp50TmqPUsCXSA6rTulbbQ2PC6DDXGfjkMXMgKuHliOvi0
 b3NfiIJRaKglH08KEDtel0WexYxJv9i3cPCXmhFPqZIBGk+3fA1WVqJPot2RNKy++6Ld
 oxSuktx/cNdc/RDX8VW1WKXf26U2yO5PtzKRpUS/JqrqWsUtz9UIHleIzxtpU0eB0tzy
 od84ATyaVGGg2mjYZzCmhUvHiTaqt9I6dY+ps1eps8/wdjvoL5QNPD2M40tchmOkn9Lw
 8Fz4SB5YjUsoh/Uoa7AYS3Ev7afXIUH3TR3+pR8y2oal81KVXzPFSGEzP95FKpEzLOgN
 FaPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AUf8m75b1jcXgPG7N+MQYE2RSkYM8jBGz55TKb5hL3g=;
 b=WU9jO+BrJK1Eu2lKNmhKUljvx05hx2n6LCfUd1cM4nJxk9e5UCTgTocw2scw7w/Kkv
 hUyKDhkK17eW7ETwJnD86j/1oFHYusxPH/wjpLtrJuE7gZsjDm2Mq8C3hIQLNt6mOD4R
 TBJLpZpNmwuvcLeccAruQj2BSyoT3/1xmnwbbsSoXnGwPbNYMmBsn4c4d7AIue+blNpN
 EMYuwB5fzPV7URGnyHsIgWadc40N+53Gb9VWZgvQvD6FXmBHZ+sPn2L1UOOOI/dSAZKU
 18HGD2XI1BmfSIrwZbfWjGHIxQNM+fWlcPVTb0EiAAmRYQxRpR0HfHF/xY+twc+tukUy
 zRhA==
X-Gm-Message-State: APjAAAVwIqWt1YuymsvWqYpsgHNqo3vf0yr7qmC9wAB4kPzWU48/PRXs
 ethPPil05blwCyV1wM2lojhB4A==
X-Google-Smtp-Source: APXvYqzn91lD6eedmAzVssO5xswe1ZAQaefUBlpsZtRJs7YMayR6NIvT1sEdX34ZQ1nzfs4XhaBA1w==
X-Received: by 2002:adf:ef50:: with SMTP id c16mr1707151wrp.296.1557757303963; 
 Mon, 13 May 2019 07:21:43 -0700 (PDT)
Received: from localhost.localdomain
 (aputeaux-684-1-11-31.w90-86.abo.wanadoo.fr. [90.86.214.31])
 by smtp.gmail.com with ESMTPSA id v184sm21133615wma.6.2019.05.13.07.21.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 07:21:43 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: dmitry.torokhov@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 matthias.bgg@gmail.com
Subject: [PATCH 1/2] dt-bindings: input: mtk-pmic-keys: add MT6392 binding
 definition
Date: Mon, 13 May 2019 16:21:19 +0200
Message-Id: <20190513142120.6527-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_072148_977688_6129D6F8 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the binding documentation of the mtk-pmic-keys for the MT6392 PMICs.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/input/mtk-pmic-keys.txt       | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
index 2888d07c2ef0..858f78e7262c 100644
--- a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
+++ b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
@@ -1,15 +1,18 @@
-MediaTek MT6397/MT6323 PMIC Keys Device Driver
+MediaTek MT6397/MT6392/MT6323 PMIC Keys Device Driver
 
-There are two key functions provided by MT6397/MT6323 PMIC, pwrkey
+There are two key functions provided by MT6397/MT6392/MT6323 PMIC, pwrkey
 and homekey. The key functions are defined as the subnode of the function
 node provided by MT6397/MT6323 PMIC that is being defined as one kind
 of Muti-Function Device (MFD)
 
-For MT6397/MT6323 MFD bindings see:
+For MT6397/MT6392/MT6323 MFD bindings see:
 Documentation/devicetree/bindings/mfd/mt6397.txt
 
 Required properties:
-- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+- compatible: Should be one of:
+	- "mediatek,mt6397-keys"
+	- "mediatek,mt6392-keys"
+	- "mediatek,mt6323-keys"
 - linux,keycodes: See Documentation/devicetree/bindings/input/keys.txt
 
 Optional Properties:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
