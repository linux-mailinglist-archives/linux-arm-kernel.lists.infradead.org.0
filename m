Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBB112692A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 19:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iSIgmoIA5mPYxc8LfnE1+wMJSaPpDas1TbMlU0P6NX4=; b=liEs6trYeijSob
	sblC6n0sLVif7g6+RxWdp76ZpzsuXRW4iAyRtM5V/GNL45W7Z4MgVunLgP+I+UsPCXpXkDEQANp6H
	bQ/Phee/D4PdGG/8WNovv/FSrQFiifcF5YkYzfItO0SzjQgpzL+HZkiMzAfyWG/V5ZZ2oAdzYIjuL
	PwZyj/n1C+VXgJnmA3zRbU2+vEn2w5yQ6ZqAHU4P25GLQnRQkZ3MSj98Econjx8m23/QfBBz4yClg
	UQucIr8nquguwYKAz9wbpd8y1BAk3e3nL75pB0LhiAUND4oHKw20KhC8JpPKQ9eT0TxffPlYA5gE6
	m+bmiimckZi6E6mpQAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii0cn-0006dV-Pz; Thu, 19 Dec 2019 18:34:13 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii0cM-0006Lq-Dl
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 18:33:47 +0000
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJIOvcA018104
 for <linux-arm-kernel@lists.infradead.org>; Thu, 19 Dec 2019 10:33:45 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=3JRBFKRpQH94huaiHVUb2DXHVLx5xpYAZyUWzz+kx7c=;
 b=VGZLUlUKoCM0oSy8t96sgj6bgrn5cq4RdC1w6+VJWVjuzahszuSbtiDMOnmJd9g9Psnz
 jvox/YsjtpFWsOMqhGe4hJ4Ouwl2s/iHevPD69FHGVwGFpoh4XgWBphZ5t/fSKaW9A8T
 /Zqe6B7rlB+USs2TBdrkL+fr67SB4TpDz2c= 
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
 by mx0a-00082601.pphosted.com with ESMTP id 2wyqv4p8e8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Thu, 19 Dec 2019 10:33:44 -0800
Received: from intmgw004.06.prn3.facebook.com (2620:10d:c081:10::13) by
 mail.thefacebook.com (2620:10d:c081:35::130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id 15.1.1713.5;
 Thu, 19 Dec 2019 10:33:44 -0800
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 7964818A1DBBE; Thu, 19 Dec 2019 10:33:42 -0800 (PST)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH] ARM: dts: aspeed: tiogapass: Add gpio line names
Date: Thu, 19 Dec 2019 10:33:30 -0800
Message-ID: <20191219183330.2860724-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_06:2019-12-17,2019-12-19 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 lowpriorityscore=0
 malwarescore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 clxscore=1011 suspectscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912190135
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_103346_463331_735263C1 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

Added GPIO line names for all gpio used in tiogapass platform,
these line names will be used by libgpiod to control GPIOs

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 .../dts/aspeed-bmc-facebook-tiogapass.dts     | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index 682f729ea25e..28c3a69437b1 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
@@ -121,6 +121,69 @@
 	kcs_addr = <0xca2>;
 };
 
+&gpio {
+	status = "okay";
+	gpio-line-names =
+	/*A0-A7*/	"BMC_CPLD_FPGA_SEL","","","","","","","",
+	/*B0-B7*/	"","BMC_DEBUG_EN","","","","BMC_PPIN","PS_PWROK",
+			"IRQ_PVDDQ_GHJ_VRHOT_LVT3",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"BIOS_MRC_DEBUG_MSG_DIS","BOARD_REV_ID0","",
+			"BOARD_REV_ID1","IRQ_DIMM_SAVE_LVT3","BOARD_REV_ID2",
+			"CPU_ERR0_LVT3_BMC","CPU_ERR1_LVT3_BMC",
+	/*E0-E7*/	"RESET_BUTTON","RESET_OUT","POWER_BUTTON",
+			"POWER_OUT","NMI_BUTTON","","CPU0_PROCHOT_LVT3_ BMC",
+			"CPU1_PROCHOT_LVT3_ BMC",
+	/*F0-F7*/	"IRQ_PVDDQ_ABC_VRHOT_LVT3","",
+			"IRQ_PVCCIN_CPU0_VRHOT_LVC3",
+			"IRQ_PVCCIN_CPU1_VRHOT_LVC3",
+			"IRQ_PVDDQ_KLM_VRHOT_LVT3","","P3VBAT_BRIDGE_EN","",
+	/*G0-G7*/	"CPU_ERR2_LVT3","CPU_CATERR_LVT3","PCH_BMC_THERMTRIP",
+			"CPU0_SKTOCC_LVT3","","","","BIOS_SMI_ACTIVE",
+	/*H0-H7*/	"LED_POST_CODE_0","LED_POST_CODE_1","LED_POST_CODE_2",
+			"LED_POST_CODE_3","LED_POST_CODE_4","LED_POST_CODE_5",
+			"LED_POST_CODE_6","LED_POST_CODE_7",
+	/*I0-I7*/	"CPU0_FIVR_FAULT_LVT3","CPU1_FIVR_FAULT_LVT3",
+			"FORCE_ADR","UV_ADR_TRIGGER_EN","","","","",
+	/*J0-J7*/	"","","","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"IRQ_UV_DETECT","IRQ_OC_DETECT","HSC_TIMER_EXP","",
+			"MEM_THERM_EVENT_PCH","PMBUS_ALERT_BUF_EN","","",
+	/*M0-M7*/	"CPU0_RC_ERROR","CPU1_RC_ERROR","","OC_DETECT_EN",
+			"CPU0_THERMTRIP_LATCH_LVT3",
+			"CPU1_THERMTRIP_LATCH_LVT3","","",
+	/*N0-N7*/	"","","","CPU_MSMI_LVT3","","","","",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"BOARD_SKU_ID0","BOARD_SKU_ID1","BOARD_SKU_ID2",
+			"BOARD_SKU_ID3","BOARD_SKU_ID4","BMC_PREQ",
+			"BMC_PWR_DEBUG","RST_RSMRST",
+	/*Q0-Q7*/	"","","","","UARTSW_LSB","UARTSW_MSB",
+			"POST_CARD_PRES_BMC","PE_BMC_WAKE",
+	/*R0-R7*/	"","","BMC_TCK_MUX_SEL","BMC_PRDY",
+			"BMC_XDP_PRSNT_IN","RST_BMC_PLTRST_BUF","SLT_CFG0",
+			"SLT_CFG1",
+	/*S0-S7*/	"THROTTLE","BMC_READY","","HSC_SMBUS_SWITCH_EN","",
+			"","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","BMC_FAULT","","",
+	/*V0-V7*/	"","","","FAST_PROCHOT_EN","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","GLOBAL_RST_WARN",
+			"CPU0_MEMABC_MEMHOT_LVT3_BMC",
+			"CPU0_MEMDEF_MEMHOT_LVT3_BMC",
+			"CPU1_MEMGHJ_MEMHOT_LVT3_BMC",
+			"CPU1_MEMKLM_MEMHOT_LVT3_BMC",
+	/*Y0-Y7*/	"SIO_S3","SIO_S5","BMC_JTAG_SEL","SIO_ONCONTROL","",
+			"","","",
+	/*Z0-Z7*/	"","SIO_POWER_GOOD","IRQ_PVDDQ_DEF_VRHOT_LVT3","",
+			"","","","",
+	/*AA0-AA7*/	"CPU1_SKTOCC_LVT3","IRQ_SML1_PMBUS_ALERT",
+			"SERVER_POWER_LED","","PECI_MUX_SELECT","UV_HIGH_SET",
+			"","POST_COMPLETE",
+	/*AB0-AB7*/	"IRQ_HSC_FAULT","OCP_MEZZA_PRES","","","","","","",
+	/*AC0-AC7*/	"","","","","","","","";
+};
+
 &mac0 {
 	status = "okay";
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
