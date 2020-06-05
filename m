Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3C81EF4FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 12:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rFn5OzXNue3SloVNQPcsxpnTPJfSBlcWKfWAvgfWJJk=; b=IuThyIxR0Z8mEY
	N2V5tmyMgs3jgvY95dSgjWU5Ug8FgUB/TJ7wADX/rHGtRKC1rwuJlPDvXD0h2+M4n3As9X76udFvP
	gF/j0fEud2isFnpgHni1WY6Nd0ClKwJs0qe8QIKOnaazu61a3L+FUMMJZSvjV8gv4+YH0PlOqingd
	acse1CL8Nd4Y9prEPqACfRH6lxF1bJ6ZPxTuCStcffcsg+BXHo08WfWOhu2MANbERJjDUf/qpkE2k
	QxsSNvmDi5SnsbuFDNS6hKha4PPdDlQjo5cf67z5xB7CBZocqbw6aydnTf2b0iOzGKtA8YdHq+RZb
	USrAI590bIKBF68RmP7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh9FR-0000b2-Pj; Fri, 05 Jun 2020 10:06:49 +0000
Received: from segapp02.wistron.com ([103.200.3.19] helo=segapp03.wistron.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh9FB-0000T3-Hd
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 10:06:35 +0000
Received: from EXCHAPP04.whq.wistron (unverified [10.37.38.27]) by 
 TWNHUMSW4.wistron.com (Clearswift SMTPRS 5.6.0) with ESMTP id 
 <Tdf921276e5c0a816729a0@TWNHUMSW4.wistron.com>; Fri, 5 Jun 2020 
 18:06:30 +0800
Received: from EXCHAPP03.whq.wistron (10.37.38.26) by EXCHAPP04.whq.wistron 
 (10.37.38.27) with Microsoft SMTP Server 
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 
 15.1.1913.5; Fri, 5 Jun 2020 18:06:29 +0800
Received: from gitserver.wistron.com (10.37.38.233) by EXCHAPP03.whq.wistron 
 (10.37.38.26) with Microsoft SMTP Server id 15.1.1913.5 via Frontend
 Transport; Fri, 5 Jun 2020 18:06:29 +0800
From: Ben Pai <Ben_Pai@wistron.com>
To: <joel@jms.id.au>, <devicetree@vger.kernel.org>, 
 <linux-arm-kernel@lists.infradead.org>, 
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 2/2] ARM: dts: aspeed: mihawk: Add 8 tmp401 thermal sensor
Date: Fri, 5 Jun 2020 18:06:28 +0800
Message-ID: <20200605100628.14807-1-Ben_Pai@wistron.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: DDB9BC0458D24F053680539219F4C8D39E075093F38EDD5C6560CD8C1B8894672000:8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_030633_872640_9AA3C2CC 
X-CRM114-Status: UNSURE (   5.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [103.200.3.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ben Pai <Ben_Pai@wistron.com>, claire_ku@wistron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Ben Pai <Ben_Pai@wistron.com>
---
 arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts | 40 +++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
index 25ffe65fbdc0..5bf1f13dda3b 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-mihawk.dts
@@ -834,6 +834,11 @@
 					line-name = "smbus0";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus9_mux232: i2c@1 {
@@ -854,6 +859,11 @@
 					line-name = "smbus1";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus9_mux233: i2c@2 {
@@ -897,6 +907,11 @@
 					line-name = "smbus2";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus9_mux236: i2c@1 {
@@ -917,6 +932,11 @@
 					line-name = "smbus3";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus9_mux237: i2c@2 {
@@ -979,6 +999,11 @@
 					line-name = "smbus4";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus10_mux240: i2c@1 {
@@ -999,6 +1024,11 @@
 					line-name = "smbus5";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus10_mux241: i2c@2 {
@@ -1042,6 +1072,11 @@
 					line-name = "smbus6";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus10_mux244: i2c@1 {
@@ -1062,6 +1097,11 @@
 					line-name = "smbus7";
 				};
 			};
+
+			tmp431@4c {
+				compatible = "ti,tmp401";
+				reg = <0x4c>;
+			};
 		};
 
 		bus10_mux245: i2c@2 {
-- 
2.17.1


---------------------------------------------------------------------------------------------------------------------------------------------------------------
This email contains confidential or legally privileged information and is for the sole use of its intended recipient. 
Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited.
If you are not the intended recipient, you may reply to the sender and should delete this e-mail immediately.
---------------------------------------------------------------------------------------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
