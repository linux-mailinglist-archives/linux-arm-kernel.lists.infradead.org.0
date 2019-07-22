Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E22709DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 21:41:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EflpDxWXct6HLw3sfYFjbOwH8q/kZ4Nb0/ks5QUW5Qc=; b=OzZ1xThw05LFim
	zJf5dUlV5TNEmJRm82bRCXzCd+9MfyAzfzXASy21PHeY7dj7DdOGLAHj3JtkAH1y7EiZ9MeJk6U/F
	1M9vEtpuUotlSWhrUGwmOqH04cw8wgTcVEy3y5RtrxPnIwZ6flBGkCYnssOu/+U2OkccAgj/K/+xK
	jRumbfMsa4Bqe5Ta5mmT84E2rAfywTverXvM+6kTBnkfStXGIgvIz4wRgEyMT/y+l6JAgrYzjWhNi
	mG/F9UrCzJFM1FTaRzWD15/k/uKhKCG/4aviqqPcx3I6sS1xvznlbcufCFhB+O7RbtRI9VbPeCKoR
	IOEVY4fH9aWtR152Opug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpeBT-0008Ik-Rd; Mon, 22 Jul 2019 19:41:19 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30]
 helo=mx0a-00082601.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpeAw-0008Hn-Mu
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 19:40:48 +0000
Received: from pps.filterd (m0001303.ppops.net [127.0.0.1])
 by m0001303.ppops.net (8.16.0.27/8.16.0.27) with SMTP id x6MJQam3020882
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 12:40:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=1NSQ3GlOcXUrCSgPzKEGZL0QZp3rRab0Nvo0ylv224U=;
 b=cnxkTAyKXPanJ1kocii4LVRNOMIzUdTow+eMCFk0zfzzK2r4h9xbCQPiWRZUFTOEQUfh
 IIKgd14hr1aIDsOEVjyRWV4aikmSuYGFCo41ePL1oRfdFl8j0LSVJQJfV3B5DXeiEICH
 bsEH2hNaR2XTcVv/FEKfS03P2Sm/R5lQK5A= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by m0001303.ppops.net with ESMTP id 2twjyn03yn-9
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 22 Jul 2019 12:40:43 -0700
Received: from mx-out.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::128) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Mon, 22 Jul 2019 12:40:41 -0700
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 653DE1150EA86; Mon, 22 Jul 2019 12:25:23 -0700 (PDT)
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
Subject: [PATCH 1/2] ARM: dts: aspeed: tiogapass: Add VR devices
Date: Mon, 22 Jul 2019 12:24:47 -0700
Message-ID: <20190722192451.1947348-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-22_14:, , signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=960 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1907220213
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_124047_018218_06709911 
X-CRM114-Status: GOOD (  12.32  )
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

Addes Voltage regulators Infineon pxe1610 devices to Facebook
tiogapass platform.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 .../dts/aspeed-bmc-facebook-tiogapass.dts     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index c4521eda787c..b7783833a58c 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
@@ -144,6 +144,42 @@
 &i2c5 {
 	status = "okay";
 	// CPU Voltage regulators
+	vr@48 {
+		compatible = "infineon,pxe1610";
+		reg = <0x48>;
+	};
+	vr@4a {
+		compatible = "infineon,pxe1610";
+		reg = <0x4a>;
+	};
+	vr@50 {
+		compatible = "infineon,pxe1610";
+		reg = <0x50>;
+	};
+	vr@52 {
+		compatible = "infineon,pxe1610";
+		reg = <0x52>;
+	};
+	vr@58 {
+		compatible = "infineon,pxe1610";
+		reg = <0x58>;
+	};
+	vr@5a {
+		compatible = "infineon,pxe1610";
+		reg = <0x5a>;
+	};
+	vr@68 {
+		compatible = "infineon,pxe1610";
+		reg = <0x68>;
+	};
+	vr@70 {
+		compatible = "infineon,pxe1610";
+		reg = <0x70>;
+	};
+	vr@72 {
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
