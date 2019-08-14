Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED458D634
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vDnDiB7Kv24HNoA1iLk5mMSKdRCCZsZOfwoIfHjh6wU=; b=s4WqbNESWMxkRM
	L1AESn+Iw8uMtOSMDlVkZoj0npDtkNFcrlKWbHnqs3PsiZPWqQSR7qG4RSAjw/oNatDLVIELtlj4f
	cF9Chry51JW5WXvbZ4BC+M07MNpfKoO/u+hrmRx40oQctsXAwdjJZ9EwWCcaDF4CFwM+khkrkWWg+
	0RcfCyvoaTMc1Un/LLY3igMq3tcs05pZRoqhQ26sAnnki1HcPyEBEvXqjDMpx9z9wNppBTeJ63ypw
	wWJA1pM0TnVrB0Whhmp5rZP47DFR7xd2xURepnPREvDDCDN6E2ixCpJA946CDMvhN2hEoO23ZUDFl
	Wteivyk4rDfpgujoHgUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxuKd-0006wn-N7; Wed, 14 Aug 2019 14:32:55 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxuHP-0002i6-1o
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:29:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id 31so111343253wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pwx9hW1o2Gq2PergB5v8yAwMnz0OCKYudbljjiRvXYk=;
 b=Eb7EDaqtXhqzBiYSbdt5nj7cUJOesBGZQXjQGx8P5z8JqtF3ycxq2N+m6+TbPXN7RY
 Fng0SarDUOEMF1v7x00LxuTin02vm50+HH0qQ67TsSGiIxIG1Dk2AJIVWDz7aFG4XmgN
 horDmB4Ho4CRvX6FQGvnLZ2D2jm0i+BNfOSGRs2M6UkLZUyaiPmzVQaNQ0ezskEWjNbE
 rk0zBi5o3XmLPtWH6R06MFqjvCvlXV8yFY+g5HN7pGBi+dTSaCR+7qZDhoNpaRR6zEcA
 vs+Ib0qH8ApzA+VamZxKkLT6qh0yr03mhaVTq8EKLaKTN0X9wz13zPbobRvSF0yvN0Kb
 1rpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pwx9hW1o2Gq2PergB5v8yAwMnz0OCKYudbljjiRvXYk=;
 b=Dk8I8J+hubMIZpBCqIGEFF+rKcCij+A4tPBjFJ33347bmCxP5H0jXXxb/W1NBjlbvk
 wDbfH0cK+7xCvoyOTl7HxT26GztN7hVKGezkVSc1U1S2wLH+3Xl2P2QaGhuo+e2BTgof
 QTJqWv1PJ23NGUfIQ6rCMDeCi1tcuErqQvIK9zaoVL+gzHu1ea974X4Lfgo0m4ViHKZf
 VALarXPB/o+/y1mGGSTmkED24v5QHSWe/BH4frOgFW4n9SG5xrEhaHcuhUQOCbYcwLuL
 fl630Kj/7QEXdcrljGwznya++QUWAvac7qbcdftxsw+rYjyuZ1e3YO78uYtoboPsZUh9
 OYeA==
X-Gm-Message-State: APjAAAVAwd1CSFkKVB8vDI0kI3v1Ww6c1hEgvbjFZhIU+X/umxzfL1hQ
 5X0GfBBgdW+Xd50PpkekgCSEJg==
X-Google-Smtp-Source: APXvYqwFlZqG2iV08FiE4OCohyI3fIgKZcqD8f1isbMX17aYIR7vsElvrXVqtTUDDib5F7ms/LyrVg==
X-Received: by 2002:a5d:4b83:: with SMTP id b3mr48215449wrt.104.1565792973471; 
 Wed, 14 Aug 2019 07:29:33 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 07:29:32 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 10/14] arm64: dts: meson-g12a: fix reset controller compatible
Date: Wed, 14 Aug 2019 16:29:14 +0200
Message-Id: <20190814142918.11636-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_072935_260401_2CEBD623 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes the following DT schemas check errors:
meson-g12a-u200.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
meson-g12a-sei510.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 465106d37289..74c587411306 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -2215,8 +2215,7 @@
 			ranges = <0x0 0x0 0x0 0xffd00000 0x0 0x100000>;
 
 			reset: reset-controller@1004 {
-				compatible = "amlogic,meson-g12a-reset",
-					     "amlogic,meson-axg-reset";
+				compatible = "amlogic,meson-axg-reset";
 				reg = <0x0 0x1004 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
