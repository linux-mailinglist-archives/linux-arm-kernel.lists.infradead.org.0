Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A99D70E35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 02:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l0JhhJotPyTNyml7mPreRAAzAWU1+hk+zUWFuRQV5RM=; b=ry3WtZnBM1O6mi
	y1t8GkE/1xxqv4XuAE+YFlzpMLdwkhZAiUb3KKSllL0MtG0JplWiXuFIbd4bMp+AU6vyAhq1O3Lj8
	SkHqk4T3PlF4AaLT1xQbmCV2Ibx9Vf6wARSwo3lAmITfqCSJosNkfCrt6pXM+8IWmA7pokiKx5yO/
	AIBqU31znM0WyJI76qHPwCCwJs7ukA93T63b8kCWxaMs/KbTrwaXP50H7bpjmizGLS9X81itCD0ji
	s/JJlJDO42FVQlHgiXXnKKfON0Tk15JecXD1PwLfncymMs0xfWgFOvc9BhZc2bfYzSBdGgQ9mQcJl
	SE+V/CfyGRIkJv7+cBhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpim3-0005WS-2L; Tue, 23 Jul 2019 00:35:23 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpilb-0005W7-II
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 00:34:56 +0000
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
 by m0001303.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x6N0YmQh012797
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 17:34:54 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=upxpwa+NHml6Xp6NZf6ZnaOWMnszUj5BKBn+ik5Bpgw=;
 b=S+RGh1ibHWnPvF8X2OO46KMOxdDxVIR57ENJoeUxzyPNW5ekVJBbfhxHz6h+hjqy1tuy
 +1QDQaJVH2Jyk9XEyG1no4bzuXk+K1CNExGFqd19ouZQLEWB7oiqkvkGYB7+G+FqD+YX
 BIg7M1/MfPmGJOBpTRX1yHoqScVJxUppQ0A= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by m0001303.ppops.net with ESMTP id 2twjyn10u0-5
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 17:34:54 -0700
Received: from mx-out.facebook.com (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:82::c) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 22 Jul 2019 17:34:52 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id E50481152F9BD; Mon, 22 Jul 2019 17:32:17 -0700 (PDT)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH v2] ARM: dts: aspeed: tiogapass: Add VR devices
Date: Mon, 22 Jul 2019 17:32:16 -0700
Message-ID: <20190723003216.2910042-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-23_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907230000
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_173455_724565_A008A8C9 
X-CRM114-Status: GOOD (  12.50  )
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

Adds voltage regulators Infineon pxe1610 devices to Facebook
tiogapass platform.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
In v2: Renamed vr to regulator and fixed some typo in commit message.

 .../dts/aspeed-bmc-facebook-tiogapass.dts     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index c4521eda787c..e722e9aef907 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
@@ -144,6 +144,42 @@
 &i2c5 {
 	status = "okay";
 	// CPU Voltage regulators
+	regulator@48 {
+		compatible = "infineon,pxe1610";
+		reg = <0x48>;
+	};
+	regulator@4a {
+		compatible = "infineon,pxe1610";
+		reg = <0x4a>;
+	};
+	regulator@50 {
+		compatible = "infineon,pxe1610";
+		reg = <0x50>;
+	};
+	regulator@52 {
+		compatible = "infineon,pxe1610";
+		reg = <0x52>;
+	};
+	regulator@58 {
+		compatible = "infineon,pxe1610";
+		reg = <0x58>;
+	};
+	regulator@5a {
+		compatible = "infineon,pxe1610";
+		reg = <0x5a>;
+	};
+	regulator@68 {
+		compatible = "infineon,pxe1610";
+		reg = <0x68>;
+	};
+	regulator@70 {
+		compatible = "infineon,pxe1610";
+		reg = <0x70>;
+	};
+	regulator@72 {
+		compatible = "infineon,pxe1610";
+		reg = <0x72>;
+	};
 };
 
 &i2c6 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
