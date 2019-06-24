Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141A451CA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=68B4RccRNJNrc69zywWLoyAtQOBfYtD5CfF8K7zOffA=; b=WVZyMhlJj8UgE5lCvVMWLvpnxN
	EFjDNHDhMhC59q8qq/W731x3FROFKhSKJ37eGz8DlB+qYl/0/jtq1Ry2XZ3hrrP1PK8BA6dgeId56
	4pzyL0VL6rYXp51NG8bXlDrPGMGj+7ctGJ9t5vUH2H+v+yPQj/cHcS0KAvWe18ySsg/q6JyY99mKi
	m+YLCji6T5BfPDDJE4yv7yhcq5JYN3Y9Ql5Depjl59QMbT5oTNJSbLvyFRZy1JH5I/JDtVU8i2hiR
	tb8vD+hCPDjYsUPXFeGifilysZP2HAj3oYCcCZFbxrK4C9OHpAwZYrcvmc1WwfVCg7InlR1UkEXYI
	T8ycHUmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVzm-0008O2-4T; Mon, 24 Jun 2019 20:55:22 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVzD-0007PV-VI
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:54:49 +0000
Received: by mail-qt1-x844.google.com with SMTP id w17so16021785qto.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 13:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vQXCFln6LJVp1O5dd02wZaohJL1DpjtnXs/gBuGay7w=;
 b=nmf4R9aryB1BBd/xqJdAPO8iEYnOzq7crYyTXpMB7qWzEIIF2/AxdBC6dF9UhkYDb5
 w9N69S+qElX+79L67yXUJNypjkYofd3ZjTm+9RaKu1Qu/0mQqVSE5j+afDDbwzoKRWdp
 RRomCV1f5j6I2Tv+5r/khKNgykazlxdVDdQMoeXAP4afzAnUCnYmVjMrXvfEf0SrDk2a
 GyC56zDzxNGSLqxgD85bTPjc3eLE7pA6WSAcFyK/R6dMqfqbnyC0P1ux5gD7Et+JOhmw
 4FuSbYPDttNgvXh9cO0THOaCPOOJnSaYe9hT72jN00jkMKi9XgVF4iHb9xFlKH/MAd/4
 2qOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vQXCFln6LJVp1O5dd02wZaohJL1DpjtnXs/gBuGay7w=;
 b=jxU5ctE9jyfXlan/TjHz/b7zx7OAR6HPI/q7Raskc8vJrCXytdfeU6mgF38yIrEDUe
 LIOldRnMT+hf1sKXW66XWbbCn/Cqc9VtzRL6DxSqelWIzatkR3N0A5ZA0xXk//nfQFD5
 ioj7zbzxx+WteRd1Ae8sbH3fKhIgP9d6NXWtKRUsPhQX8V79bWrmxhA9j/JcPkJK/jC7
 D8BLdjB80+5uLPiUemzOErR3SC+QuzRUF5qwdeWFfe4qINH7fn/R7talkLfJrvz9+exm
 YO/Z5zN5dasky3eeFSAPQSSzadfTupDcRwferzzFJWkSHvHM3SLE9enBFuc/kE+5kIBQ
 O6KQ==
X-Gm-Message-State: APjAAAXCWizoINdugUEAea7R1ZPHybTCEVApMkYS3dzS86dNyglmvUGo
 iR6QnXS+V6fefI8tGrXBM3s=
X-Google-Smtp-Source: APXvYqy3bFrgmpzfav0jK1TT0hm00C3hOyyDKQgO4O5t/V+V1lVXTUcdv8l8ud6PCzUSpDAXoD+CyA==
X-Received: by 2002:a0c:b758:: with SMTP id q24mr59808714qve.45.1561409687223; 
 Mon, 24 Jun 2019 13:54:47 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net
 ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id r17sm6251481qtf.26.2019.06.24.13.54.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 13:54:46 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 2/2] ARM: dts: imx7-colibri: Remove unneeded snvs_pwrkey node
Date: Mon, 24 Jun 2019 17:54:32 -0300
Message-Id: <20190624205432.16727-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624205432.16727-1-festevam@gmail.com>
References: <20190624205432.16727-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_135448_001720_F1565251 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stefan@agner.ch, cphealy@gmail.com, Fabio Estevam <festevam@gmail.com>,
 Anson.Huang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 4664179fe679 ("ARM: dts: imx7s: Enable SNVS power key
according to board design") snvs_pwrkey is disabled by default, so there
is no need for disabling it explicitly in the board dts anymore.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx7-colibri.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 895fbde4d433..0d00aeb64336 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -267,10 +267,6 @@
 	status = "okay";
 };
 
-&snvs_pwrkey {
-	status = "disabled";
-};
-
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1 &pinctrl_uart1_ctrl1 &pinctrl_uart1_ctrl2>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
