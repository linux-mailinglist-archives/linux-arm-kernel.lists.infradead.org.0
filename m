Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA01FD9AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:45:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8qcaGM/CZRcrhOugvPDRex0jQ14b5hyM8zd5C48+uDU=; b=Dr+Ts5yiXw86Xp
	Yj0XV0YVGEw3Z349WMIo8GH4tKLEXVWGf741mCR71j69qqJpBncRLkLYDPt93lgztczndOiaM9SVC
	iz29sOx+JfWF0BrYNyiIatfUzDlJrOsVBJ7jBdGWbjz28R6hJQ70DMqDYaFwREEgf0xHoQwL0mFYf
	rViImZvkrNFmyY9p++hZ+fU4m3UM+rFz1pFb37Wixtz3KRyz+BJanTAkmQ0yFuJxPPrSVdTyD811D
	dgcjMr5VC5kn0tmFTV+1W3OSab/6d3ox0krCjfCNDC5gjCS/wOaP28GP3O+jawxaPoSqVYhrMfLzv
	AQgOD/hkiQ/S8HTl0WRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYAb-00047k-GC; Fri, 15 Nov 2019 09:45:37 +0000
Received: from mail-eopbgr130088.outbound.protection.outlook.com
 ([40.107.13.88] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYA4-0002av-0D
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:45:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WpgJ/NX1P7YCV8c0WH8pJh2G/4aOhjEX+kfTZWSwxoHpYKESXde0Pu9nNIEqKcznRJ4+eU3pPlHmDHvn6w0W4uCkLH9koanuHheNmRyf+O8n35l5VE/XBeXkZhnocEaN3pH34WKVtR+tLUPE+OGSMw5X3GYqgoL+p7ch2TDezWon//cfz7A6pAfkci/A/xp7XxW9D6CWCuImC7SGEjIgPFHaHdbm2aH8RzzdajJ8QZGMkFKohNprbVHrAbXUBQ4elDBWjSLX/VrLe/HGjsH3Zg4EzKZkSpM2d9L28tEwNHc3H2aUbUdz1SEJrCq41c/64IDPVSFx9Mn07NOGxoELXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zsDiIsGKN1JZwMR0iGFgZl4Eiww48ALEr8hE1RkIRUs=;
 b=f+iG0TfN51ZteXJZ3+a0scSLpCcm5OYvZlBH1z8Ywwwp3GYi4kAv/7RiF6SI5yNeKkqZViGemSIj4HP5q2dmzn5XTjOjxb0tmiQlKQDqUVRsparcTgtGO2k2LP1VSJ4kIgvUBDqDVGnlWyRYE36coobu8Qky0dVCHc+CcH39iRbyYROvtLs6EgB1Dej7JfAVnvVVxT/wVHUUFThuamS0WNE4oo+bBeiInS88B91v2z106VqMunEra6SN2q+wXmfBRs70xSzZVuusSOm6ASoJWQKJ+qfCZTUnviRwWH1/BA0IYizzaVgH4Q/tNfT36ghUaDm2nufGwmMagn80ydhghQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zsDiIsGKN1JZwMR0iGFgZl4Eiww48ALEr8hE1RkIRUs=;
 b=RhuImplX2cbias9YgPdqiItdkBR3MPBou5SLOqZre9tg1OGDVEmQ4uxiEUzJSQ31FBJF/NvIpTfny7C+Rj3P06ksArAnCv4w1SQ6zUM6id2nhZcHS8ZBRbQ3rOckQnygxAzxIh6JSA4h7w3Cvou0OwKRZZ4t88BCeS/niGCuh6s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4146.eurprd04.prod.outlook.com (52.134.93.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Fri, 15 Nov 2019 09:45:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Fri, 15 Nov 2019
 09:45:00 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>
Subject: [PATCH 2/2] arm64: export __hyp_stub_vectors
Thread-Topic: [PATCH 2/2] arm64: export __hyp_stub_vectors
Thread-Index: AQHVm5lZpVu/s7W1Uk+l10ntkFA81g==
Date: Fri, 15 Nov 2019 09:45:00 +0000
Message-ID: <1573810972-2159-2-git-send-email-peng.fan@nxp.com>
References: <1573810972-2159-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1573810972-2159-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:203:2e::22) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dbeb9bce-553b-4ebf-d09b-08d769b07b4e
x-ms-traffictypediagnostic: AM0PR04MB4146:|AM0PR04MB4146:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB41469FE5053B791FA359E81888700@AM0PR04MB4146.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 02229A4115
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(199004)(189003)(476003)(14454004)(8936002)(66946007)(386003)(6506007)(5660300002)(305945005)(316002)(110136005)(76176011)(50226002)(102836004)(7736002)(66446008)(64756008)(66556008)(66476007)(8676002)(478600001)(256004)(186003)(14444005)(26005)(81156014)(81166006)(11346002)(446003)(86362001)(6512007)(6436002)(486006)(4326008)(54906003)(52116002)(44832011)(25786009)(6486002)(71200400001)(71190400001)(2501003)(6116002)(99286004)(2616005)(66066001)(3846002)(2906002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4146;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v0ZUtZQFysbCIHv1zoN6NImCGM1eIjM6oo1IAqjfLV1nYlNiXpzHpcZv3XR3X400pcI/G4s0kTywzfvSdqhi99+Rt/dWG2kuaUdqrMzFnviIErdvtfmfTdl411YsRdgYF27ydeXzNVuBKsWxfSjHavmyLG3zyspGybVZr0VNeeJGey9oUtP7tnxlJ94oJ/4jEV3LKApwD9fKVWx6HsMwcIqw62cvS+XQJlJ7hzwut9B/gSmeMxuYB5Ifs7CfLXqYiFmfRmKl4tkqVZh2/vAruGzoK9qF8S93+XP4Usx2kxJauQ6h/3pCqk706/7BaeeHCn86YSHoLirTnrZdKOLfMdLQhF7R548SwqW6JUlVfy8gZda8b7jshazGV6DGmYS2kXr5JidRDTZFthFAjdnwgZ+gVAnKWkLyh9qMT9uHt2FVD1oBSNa5xdMZbHEYN2rE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbeb9bce-553b-4ebf-d09b-08d769b07b4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2019 09:45:00.4225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MqHSLQp6Lg6opJ9RvuacljAp6PfzCrkb7aDoa8fCAyue3l6/qZDLk4AJXCeQwHWsZQc9yVJE8BvPJv6a53T4/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4146
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_014504_048804_4B2205B2 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.88 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "jan.kiszka@siemens.com" <jan.kiszka@siemens.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf.ramsauer@oth-regensburg.de" <ralf.ramsauer@oth-regensburg.de>,
 "james.morse@arm.com" <james.morse@arm.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

External hypervisors, like Jailhouse, need this address when they are
deactivated, in order to restore original state.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/include/asm/virt.h | 2 ++
 arch/arm64/kernel/hyp-stub.S  | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm64/include/asm/virt.h b/arch/arm64/include/asm/virt.h
index 0958ed6191aa..b1b48353e3b3 100644
--- a/arch/arm64/include/asm/virt.h
+++ b/arch/arm64/include/asm/virt.h
@@ -62,6 +62,8 @@
  */
 extern u32 __boot_cpu_mode[2];
 
+extern char __hyp_stub_vectors[];
+
 void __hyp_set_vectors(phys_addr_t phys_vector_base);
 void __hyp_reset_vectors(void);
 
diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index f17af9a39562..22b728fb14bd 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -38,6 +38,7 @@ ENTRY(__hyp_stub_vectors)
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
 ENDPROC(__hyp_stub_vectors)
+EXPORT_SYMBOL(__hyp_stub_vectors);
 
 	.align 11
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
