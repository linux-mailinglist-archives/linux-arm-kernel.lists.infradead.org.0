Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8311214AD74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 02:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BRY9pb8eiXLw1UzI4yqlOvIjsSEeKUKVd/tW7O87NVQ=; b=OFZqiHRmzItgJH
	x88PDkoqb9aptvS1q3DGByLzH3eXXai3OjaGROxbVr9KQyfA0SyE7S4tCJclkLGOml/OW9TmHg7tg
	n1Y8EaaSZealxp5QAcQSLchr9QsIHvV7HkJ8jJHZ22IXC78U9/WhLQP9NLW2pXpluVVRP7/tMVjFt
	tUh9wvaR8sfMB44TTFLsdO89l+shtLAaCQ9J74Jqg1X1uuu40dKAdgUum0IH5od+UjAgKiUpSXjd3
	wIc94PZspz4B9bTtVyaVA4v4GLG4boA01QYCrvFIngjOYcPcsFGbgAFml0kW1kDcewfpmdInA7K+p
	oYVsfYW9WpU5lQ5Wbqsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwFWe-0007q8-Qo; Tue, 28 Jan 2020 01:18:44 +0000
Received: from mx0a-00082601.pphosted.com ([67.231.145.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwFWQ-0007pj-7Z
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 01:18:31 +0000
Received: from pps.filterd (m0109333.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00S1BPvk014837
 for <linux-arm-kernel@lists.infradead.org>; Mon, 27 Jan 2020 17:18:29 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=facebook;
 bh=2D8tgyLgm0Ncp4PJJyYFKw9yZG29sqQS6MuVg5GIbtc=;
 b=hUqf8n7XGp8UmChRh0rf1Ady0cBYLvuPINDxcSjRRK3XCKW6WzPI96/9rrtj24BSccMz
 RyR98YR6vhYaXM6uzB38bM1ibA2ahjuMYS7ICvxByREiM7Os03eCTfZQ/23c+jUiUlqH
 wkUcDaDEBIglbnC8YVe0lC+lg3IrR0PkUy0= 
Received: from mail.thefacebook.com ([163.114.132.120])
 by mx0a-00082601.pphosted.com with ESMTP id 2xspcve8r4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 27 Jan 2020 17:18:29 -0800
Received: from intmgw002.06.prn3.facebook.com (2620:10d:c085:108::4) by
 mail.thefacebook.com (2620:10d:c085:11d::5) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Mon, 27 Jan 2020 17:18:28 -0800
Received: by devvm4117.prn2.facebook.com (Postfix, from userid 167582)
 id 217D41A704BA5; Mon, 27 Jan 2020 17:18:24 -0800 (PST)
Smtp-Origin-Hostprefix: devvm
From: Vijay Khemka <vijaykhemka@fb.com>
Smtp-Origin-Hostname: devvm4117.prn2.facebook.com
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-aspeed@lists.ozlabs.org>, <linux-kernel@vger.kernel.org>
Smtp-Origin-Cluster: prn2c23
Subject: [PATCH v2] ARM: dts: aspeed: tiogapass: Add gpio line names
Date: Mon, 27 Jan 2020 17:18:17 -0800
Message-ID: <20200128011817.4095682-1-vijaykhemka@fb.com>
X-Mailer: git-send-email 2.17.1
X-FB-Internal: Safe
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_08:2020-01-24,
 2020-01-27 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0
 lowpriorityscore=0
 suspectscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 phishscore=0 bulkscore=0 mlxlogscore=999 mlxscore=0 spamscore=0
 adultscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1911200001 definitions=main-2001280006
X-FB-Internal: deliver
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_171830_282847_9FEA6F61 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.145.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [67.231.145.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
v2 : Added BIOS_SPI_BMC_CTRL gpio line name

 .../dts/aspeed-bmc-facebook-tiogapass.dts     | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-tiogapass.dts
index 682f729ea25e..fb7f034d5db2 100644
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
+	/*N0-N7*/	"","","","CPU_MSMI_LVT3","","BIOS_SPI_BMC_CTRL","","",
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
