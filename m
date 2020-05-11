Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174601CDE81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 17:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hho/ltpZv7kKtVnoskEf1ZEKHqjKGdFkF53HiNLs8gA=; b=OLHxb3tfJS7pGN
	Jt3upeqnn8L5z7NB2UKlGxxti+XSeq5YIRL4ytHGf+ErM3sFwY2DjY2ZI/2AtgETW0kXlc7UVFAnb
	421rWlvLWzzZtV+a/e4L+s/QOXi7U5TIbqxe7aQ40Apn89gzWXBkvSqvGxUS8N34XtD/UKm0FGk2A
	nLcadCNm6sfOaeJsyjhCJyJWLyxw5UuljRWbCseTO6W6peeeKaQbUzxl23ZJUG/MIhOCfvq6IMLZz
	AobF+tw2HiLNCBFkQmiFx8jL+IoQJRnIsRxKjtKC5pWKGNpwznIxtoRUEu+sVR1kpqYePhb4oG5vf
	cDEnkJxf0lGkxLxGQ3QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYA6M-0008QU-JX; Mon, 11 May 2020 15:12:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYA2m-0002ev-Gq
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 15:08:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so11439355wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 08:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=yQRdWTUUY8BtpgYf0O6+JxCpTQQ7YY5DMoBHZh8lfcBtgFmcmYRFvaqU5qMeGhFDWm
 CDpXAd4jp+N5aZunI52e7jbDLHpfUyC9o5by8J/55R1jm0qIu1qYfQvBHJO+tNsKWB1p
 AolpfCzCBQBM2ESWJvao6fiQ/CS9fG2NadGPhDtw4J3JQ2dJL7QuxIM/MknGHbUu5wIv
 wZY8Yr8s+nmwW5TODaI1j7Uq9uLSRlxnSfYy5+qg50Ah1fgmd50NMNW6QYL9yX70K7E/
 yGbZ1CcIgQcQCmmebj6kZ2+Yp5FhiwtSlR45BZow7MfGMl2dI+79rr2j+m0UEUkUaGdI
 +pjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A3BhZ5w2nZuK3+ZudhXc+00fKQMrXVNQ6trbR5U2M5Y=;
 b=BgRfJG0Ick144lStq1pOGB913j0NTevqyfVH6QdgL/6RJBvupisnkNpt+nqCnFjbqo
 onpKs7mlAWIBoBB91L0TDXUaCgKAlEqS5eRrSbkV1Fhwe7cE1gacy9w1VAhyFE6p+isU
 yeQZJxEezaeiE3gEl0MC/OBeBOgl28LF9RyBQX3zgikVyO9Pvg1ifo3LfM5C+ofiVZT9
 tfnU9e9s7VQRsUpeko7m9BsrhrE7OcQOyn+DggUWGpZIWGqURRgWG++sHh1P/JhCN4cu
 7h8FcBrwHRdhijdeYWiyzAhVVCnw70hcm2GdGEkyChbO9BTYEMu2lrZjOGZvW7z7WdTX
 pDUg==
X-Gm-Message-State: AGi0PuZiEp3dF2w1xUn4f7fzkW3t6V5Y7SzC1G4qEXZ0aXFDJBOQSbDh
 R5ajEUSmUyThPb8Gn0UrOyggkg==
X-Google-Smtp-Source: APiQypLYCrKbbP67ZuW6k/GvCnVZzqnJrj+rFWSiKDfJIOmzuY0m86IY8Y+0AfqHvjKqDVcpGVV22Q==
X-Received: by 2002:a5d:4f06:: with SMTP id c6mr20552983wru.12.1589209714391; 
 Mon, 11 May 2020 08:08:34 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 94sm3514792wrf.74.2020.05.11.08.08.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 08:08:33 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v2 10/14] ARM64: dts: mediatek: add pericfg syscon to
 mt8516.dtsi
Date: Mon, 11 May 2020 17:07:55 +0200
Message-Id: <20200511150759.18766-11-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200511150759.18766-1-brgl@bgdev.pl>
References: <20200511150759.18766-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_080836_856376_7E45C726 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

This adds support for the PERICFG register range as a syscon. This will
soon be used by the MediaTek Ethernet MAC driver for NIC configuration.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 2f8adf042195..8cedaf74ae86 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -191,6 +191,11 @@ infracfg: infracfg@10001000 {
 			#clock-cells = <1>;
 		};
 
+		pericfg: pericfg@10003050 {
+			compatible = "mediatek,mt8516-pericfg", "syscon";
+			reg = <0 0x10003050 0 0x1000>;
+		};
+
 		apmixedsys: apmixedsys@10018000 {
 			compatible = "mediatek,mt8516-apmixedsys", "syscon";
 			reg = <0 0x10018000 0 0x710>;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
