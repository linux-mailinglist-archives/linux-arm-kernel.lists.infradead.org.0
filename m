Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1FF14AD70
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 02:18:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A5HZX8zydC39BoAJO7NVeuBJsYkRRCpCRNZzWrWg5Tk=; b=bqqb9lcQ3PC3x0
	EP1Qh9MGGimKU1fIJJ/xc2MURTNj/Hayqq8xpLF3Kau1goVuAx5Pn3HZ4STwnGPBjCM8w5s2LOO6B
	bJl27Wq2VvodskLBrv7fq3jgrUCxdyC8URyKttod8xaOFd+fQaP32VPztPmdIMChAq3QxX1SRMg5k
	8NuxWZiw5UKVRsFuh+FRFYxYyRdrUpEVYbFgnn/Sb9QMpb3TCH3F0+WV+IEjxbji+xKKNSZPX++KT
	Sh61+gtr2e7whdZg9W0YaXV/zk328OGBevsrzUUVLXxs+Sf4o32foVB8bI5DoY2u9GeHHv1gtgNjt
	f+Gyx9iIKeJB9bAH0E5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwFVo-0007UX-52; Tue, 28 Jan 2020 01:17:52 +0000
Received: from mx0b-00082601.pphosted.com ([67.231.153.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwFVc-0007Tx-Hr
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 01:17:42 +0000
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S1FB9I030456
 for <linux-arm-kernel@lists.infradead.org>; Mon, 27 Jan 2020 17:17:37 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=M2pQ+C/5WH+N1S+hgivS0kbnHkTeJqtKnhd90O4CwLo=;
 b=iaYqYTTtx9btcrzsP2QiIgrBZTM3SMaaYvWF3iX4HdokxWVnJYfoIPM2gOGN+bYWlUVB
 h/0gI5VarXy/vCmgxaW1e44wKDczST3Bi+NiT9nWZxR5o4dAYuM5J4DVRN7R888fK0YP
 Jy4VkcrJpCSc6f0d4V4HcPreICMvI5MHJQI= 
Received: from maileast.thefacebook.com ([163.114.130.16])
 by mx0a-00082601.pphosted.com with ESMTP id 2xrm9uubhk-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 27 Jan 2020 17:17:37 -0800
Received: from intmgw001.06.prn3.facebook.com (2620:10d:c0a8:1b::d) by
 mail.thefacebook.com (2620:10d:c0a8:82::d) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 27 Jan 2020 17:17:35 -0800
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 20AC11A7047E2; Mon, 27 Jan 2020 17:17:32 -0800 (PST)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH] ARM: dts: aspeed: tiogapass: Add IPMB device
Date: Mon, 27 Jan 2020 17:17:28 -0800
Message-ID: <20200128011728.4092945-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_08:2020-01-24,
 2020-01-27 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 phishscore=0 bulkscore=0
 clxscore=1015 malwarescore=0 adultscore=0 priorityscore=1501 mlxscore=0
 mlxlogscore=937 spamscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1911200001 definitions=main-2001280006
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_171740_714096_E21D6DA3 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.153.30 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.153.30 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: sdasari@fb.com, vijaykhemka@fb.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding IPMB devices for facebook tiogapass platform.

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index fb7f034d5db2..719c130a198c 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
@@ -5,6 +5,7 @@
 
 #include "aspeed-g5.dtsi"
 #include <dt-bindings/gpio/aspeed-gpio.h>
+#include <dt-bindings/i2c/i2c.h>
 
 / {
 	model = "Facebook TiogaPass BMC";
@@ -428,6 +429,11 @@
 &i2c4 {
 	status = "okay";
 	// BMC Debug Header
+	ipmb0@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
 };
 
 &i2c5 {
@@ -509,6 +515,11 @@
 &i2c9 {
 	status = "okay";
 	//USB Debug Connector
+	ipmb0@10 {
+		compatible = "ipmb-dev";
+		reg = <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
+		i2c-protocol;
+	};
 };
 
 &pwm_tacho {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
