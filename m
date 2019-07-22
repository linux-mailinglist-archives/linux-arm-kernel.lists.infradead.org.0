Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2131E709F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=or3grSxM56IZbBteRDVnXocVg2mTUwTYUeKAREbhdX0=; b=UhjZzwcIziaRhF
	he3FXiuKyhQP1SuGTr6u7/my4FBe+TmcfcDqWwx8FlpIs8hMOnwBShaVqkzJ2cOgrDxoaDxHLJipj
	cq8nkyquN82TnHkYVKsL+c5/Yem5np6AJbtQrrfIFLrsTSISgkk/HEVrhowRE5gmoawHyluizi8pb
	BNBtlB7CbUfZ7KPDpqAVnkagqUKhFWK228z71GbhRwg8fSp9vQ+z68RjpMcTrQzL0wh5xp1y8mOvS
	wHr2HYB+Qqfg/TpdMI290mabCQxRuL0OtnS6SBHoYoKA7/iZzIHeRoirfcttIDJT5dDNPKsmSJ9Nm
	tp/sm8wOL/vIzzePnQLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeCG-0000L9-Gb; Mon, 22 Jul 2019 19:42:08 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeB7-0008Kl-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:41:04 +0000
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6MJbcpc025500
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 12:40:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=facebook; bh=RIMo/irHxec3Z93o4mQBFJZkIaeVoXWKzsnOMyC8bKQ=;
 b=fhpkMNthEh/IZ/4ehrPjd4EoQRIWPR26geGmjMrUYm6Frb/qByRH9WETwTzZNfqiRnMw
 7Dw3MH1hCfVRQ1TZCxY819HWAC83iEcjU4OLl+l2AYR01dik38OprQ4F5ArDPiTTMv7A
 /LpqyCEoJe2f7j/HLYIMcj0aQWDGF/1wqEQ= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2twey7h6mk-8
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 12:40:56 -0700
Received: from mx-out.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::129) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Mon, 22 Jul 2019 12:40:41 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 10D791150EA96; Mon, 22 Jul 2019 12:25:27 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Joel
 Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <linux-hwmon@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH 2/2] ARM: dts: aspeed: tiogapass: Add Riser card
Date: Mon, 22 Jul 2019 12:24:49 -0700
Message-ID: <20190722192451.1947348-3-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722192451.1947348-1-vijaykhemka@fb.com>
References: <20190722192451.1947348-1-vijaykhemka@fb.com>
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=983 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907220215
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_124057_576292_B2218D8E 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "openbmc @ lists . ozlabs . org" <openbmc@lists.ozlabs.org>, sdasari@fb.com,
 vijaykhemka@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added i2c mux for riser card and multiple ava card and its sensor
components for Facebook Tiogapass platform

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 .../dts/aspeed-bmc-facebook-tiogapass.dts     | 230 ++++++++++++++++++
 1 file changed, 230 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index b7783833a58c..8d0bcb3cd419 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
@@ -12,6 +12,27 @@
 	aliases {
 		serial0 = &uart1;
 		serial4 = &uart5;
+
+		/*
+		 * Hardcode the bus number of i2c switches' channels to
+		 * avoid breaking the legacy applications.
+		 */
+		i2c16 = &imux16;
+		i2c17 = &imux17;
+		i2c18 = &imux18;
+		i2c19 = &imux19;
+		i2c20 = &imux20;
+		i2c21 = &imux21;
+		i2c22 = &imux22;
+		i2c23 = &imux23;
+		i2c24 = &imux24;
+		i2c25 = &imux25;
+		i2c26 = &imux26;
+		i2c27 = &imux27;
+		i2c28 = &imux28;
+		i2c29 = &imux29;
+		i2c30 = &imux30;
+		i2c31 = &imux31;
 	};
 	chosen {
 		stdout-path = &uart5;
@@ -124,6 +145,215 @@
 &i2c1 {
 	status = "okay";
 	//X24 Riser
+	i2c-switch@71 {
+		compatible = "nxp,pca9544";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x71>;
+
+		imux16: i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			ina219@45 {
+				compatible = "ti,ina219";
+				reg = <0x45>;
+			};
+
+			tmp75@48 {
+				compatible = "ti,tmp75";
+				reg = <0x48>;
+			};
+
+			tmp421@49 {
+				compatible = "ti,tmp75";
+				reg = <0x49>;
+			};
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+				pagesize = <32>;
+			};
+
+			i2c-switch@73 {
+				compatible = "nxp,pca9546";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x73>;
+
+				imux20: i2c@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+				};
+
+				imux21: i2c@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+				};
+
+				imux22: i2c@2 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <2>;
+				};
+
+				imux23: i2c@3 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <3>;
+				};
+
+			};
+
+		};
+
+		imux17: i2c@1 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <1>;
+
+			ina219@45 {
+				compatible = "ti,ina219";
+				reg = <0x45>;
+			};
+
+			tmp421@48 {
+				compatible = "ti,tmp75";
+				reg = <0x48>;
+			};
+
+			tmp421@49 {
+				compatible = "ti,tmp75";
+				reg = <0x49>;
+			};
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+				pagesize = <32>;
+			};
+
+			i2c-switch@73 {
+				compatible = "nxp,pca9546";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x73>;
+
+				imux24: i2c@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+				};
+
+				imux25: i2c@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+				};
+
+				imux26: i2c@2 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <2>;
+				};
+
+				imux27: i2c@3 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <3>;
+				};
+
+			};
+
+		};
+
+		imux18: i2c@2 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <2>;
+
+			ina219@45 {
+				compatible = "ti,ina219";
+				reg = <0x45>;
+			};
+
+			tmp421@48 {
+				compatible = "ti,tmp75";
+				reg = <0x48>;
+			};
+
+			tmp421@49 {
+				compatible = "ti,tmp75";
+				reg = <0x49>;
+			};
+
+			eeprom@50 {
+				compatible = "atmel,24c64";
+				reg = <0x50>;
+				pagesize = <32>;
+			};
+
+			i2c-switch@73 {
+				compatible = "nxp,pca9546";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0x73>;
+
+				imux28: i2c@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+				};
+
+				imux29: i2c@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+				};
+
+				imux30: i2c@2 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <2>;
+				};
+
+				imux31: i2c@3 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <3>;
+				};
+
+			};
+
+		};
+
+		imux19: i2c@3 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <3>;
+
+			i2c-switch@40 {
+				compatible = "ti,ina219";
+				reg = <0x40>;
+			};
+
+			i2c-switch@41 {
+				compatible = "ti,ina219";
+				reg = <0x41>;
+			};
+
+			i2c-switch@45 {
+				compatible = "ti,ina219";
+				reg = <0x45>;
+			};
+
+		};
+
+	};
 };
 
 &i2c2 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
