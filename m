Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BF918ADC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+spe8sgQzgS+6hrQeHJ7OcNcIJlaacglzKmC4TTDuIg=; b=itrPAIG45pJDYm
	uMSM2HvSKMqf0GOf/S3PB0gWf+s7MXLXWRplKwWIyXmSqusBg7TW+DDu3KJa8UPSIKg0s9AcmoLO0
	46A9Bf01MEQyD3R4BNBXq4tYvN6tJbP8d4U597hTneFcbleRA2xNfKo3jQNEkAHHUt1PbOD5v8Jk6
	ytzo/ip7L+adsWlWMu3CY8x1RItd5bLscYhmVhgoXro9yA2yGSkdX869q5AKDSseCzulMmOFCV7g7
	gRuBwCTlciboXfy0sias+QaQjZMuwd+p2iYuOtSgk2/5zwViOc0bQaNNF4xtnBRstjkk2BxbyUwcO
	F0oAU17oUVBI2Er5qdcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq4E-0003T9-AY; Thu, 19 Mar 2020 07:58:14 +0000
Received: from mail-eopbgr40052.outbound.protection.outlook.com ([40.107.4.52]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq3a-00034h-Oj
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 07:57:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hKY85IksxSYDU56kShlJ8t5trlQk4586eXT6ZFMA4auca+R49jflGyGuJcDsJvdIfDIIdyEqoTvSYJmMQZrtD8p4OuQSq/B5aQIZRgFk4zc5VSHSLJLPNI8NZpvcXsk+8ye/SZe3oEBfewimiD1hW1bZSN6NqoO8TjT4v+XOH3lT1Gei/sPpjPBeN3EggSoFYKEjFzyFk1/fKcaU53g/V5C/W/Pn+PRLUM+a0jsCEL6p1XpA5c8GwW6jK+mjlB0oNmyb+idSlUum9oRJtz8YJUU/kkLeySJnW8MFYwzCpK0dB5wEfTxgzEctYTO9q3ebVV7r/Gkp9Xg+5FqV2O0Abw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8Jitof5CZyR3TGtnOCtcpPBUxbRnj8xqRLimxDM7aE=;
 b=n15K3f8iBXOYDLUaz96z8LBUQLImGEMh+Orm+CEvKaIOGkj1c1a0fCNgi3TS72FTTH7rzv86ZMrHfEU/fivArPPHGPkQmPmB0UmarR51RNK4NtHfm9zRxVzrIdjtG9fkkk2Clw6EAMB33WjcHSfiGD/jk4ae3xEqnjFUV89PqDp5zqYh5sq6ZN0TJBJJdNCqlLMxQJ2gK2EwFXo21xczIOTZ1CqRuUJ9PKF1h+f5rD/ShEcJq9ge0fDt8DojYDprGsJUX+0yU+YD7k77e1SXGjtsMp8eqL/e8u/OcS0ddMtHw1bsOKilU5aYlgF75geqAjSzU5pfAyGVTxifss5gxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U8Jitof5CZyR3TGtnOCtcpPBUxbRnj8xqRLimxDM7aE=;
 b=V18KhIopQ14oNSf6kCGfhvNaWDi5akhxub+BUbvm0EIunf0BJkglICYWRfewWE4BXtc8SEIrqCkMxaGi++PqVDZ5Rp45MWFOAKVUOR++7VNqvzqoECQqDLztNcSVk8eokQOohthyI6x65nMcdKHawAOoKhLOMJrF6IVbQ9QaXxQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5780.eurprd04.prod.outlook.com (20.178.118.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Thu, 19 Mar 2020 07:57:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 07:57:32 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, leonard.crestez@nxp.com
Subject: [PATCH V7 3/4] mailbox: imx: add SCU MU support
Date: Thu, 19 Mar 2020 15:49:52 +0800
Message-Id: <1584604193-2945-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0118.apcprd02.prod.outlook.com
 (2603:1096:4:92::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0118.apcprd02.prod.outlook.com (2603:1096:4:92::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.18 via Frontend Transport; Thu, 19 Mar 2020 07:57:28 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d7188d80-5df7-4f26-1054-08d7cbdb2d71
X-MS-TrafficTypeDiagnostic: AM0PR04MB5780:|AM0PR04MB5780:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5780FA37C693DEE370C3ABB088F40@AM0PR04MB5780.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39860400002)(376002)(396003)(199004)(6666004)(66946007)(36756003)(66476007)(15650500001)(6486002)(5660300002)(478600001)(6512007)(9686003)(16526019)(4326008)(81166006)(81156014)(52116002)(6506007)(8676002)(66556008)(316002)(2906002)(8936002)(2616005)(186003)(86362001)(956004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5780;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YSPTA6E2wEEyQfx8PHCerS5O7iDNP02lXkMHix81se9Rm5M40dxqrmD8TlT2VN4fwuBxSVJGuWcPUf/AuNsTuAWMK35lS8jpIhVkFg/V0fgGuBFtrey6cQsszS6w/oI7WmkidRIAWhHPKPQyDC/Jl5ft5nuaP/RWzAmplwc6yT9jKMtnTQMvqWcpPgGlYbCkMRkRqk9ufnx3zufUSx5eqSAMF5tl+2s2afXchFUm+UR4CGO3QIX/w6Z2WfG7M7DyfBVGlgytX7e4XBYCowOTN5eN4cCnnYlPvaIC9bHxP8YybUN8qLWuVEkfnuBU8+gq8Hft1vnz+yucuDecYvSkRfS6vQWiepu/mqHYjG2fOHi1gT2p8JecJVylHEqVyNVE7+6ht3I+g8Fj7V3SVfcr3HaspvryG4eTMkpBmHGBV0DnwYk40Uibvy6kc/GdL+rZ
X-MS-Exchange-AntiSpam-MessageData: j/dvqPFx+aySpYpJb8GKqa8szNe6UMOGpsnbu7HpjOLDNM2uzyiaZbwznbvbbzF4lvaHZ9ydlgLHstQrh35EI6bQ3Zaa0BJhBQvDt82EaTEdHRXH4QZb4uQOTODdmNnw4RzIEVUS5adBJbAOEt0qSA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7188d80-5df7-4f26-1054-08d7cbdb2d71
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 07:57:32.0343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bFf7kw3gHQkWmpnN2HDIhdotsd4HVAWGMbbyHepHWs85rNDvbjpuU9gfRdN572hEExidATvWUJLdOpxnkxTE7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5780
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_005734_840539_56C137B4 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54cC5jb20+CgppLk1YOC84WCBTQ1UgTVUgaXMgZGVk
aWNhdGVkIGZvciBjb21tdW5pY2F0aW9uIGJldHdlZW4gU0NVIGFuZCBDb3J0ZXgtQQpjb3JlcyBm
cm9tIGhhcmR3YXJlIGRlc2lnbiwgYW5kIGNvdWxkIG5vdCBiZSByZXVzZWQgZm9yIG90aGVyIHB1
cnBvc2UuCgpQZXIgaS5NWDgvOFggUmVmZXJlbmNlIG1hbm51YWwsIENoYXB0ZXIgIjEyLjkuMi4z
LjIgTWVzc2FnaW5nIEV4YW1wbGVzIiwKIFBhc3Npbmcgc2hvcnQgbWVzc2FnZXM6IFRyYW5zbWl0
IHJlZ2lzdGVyKHMpIGNhbiBiZSB1c2VkIHRvIHBhc3MKIHNob3J0IG1lc3NhZ2VzIGZyb20gb25l
IHRvIGZvdXIgd29yZHMgaW4gbGVuZ3RoLiBGb3IgZXhhbXBsZSwgd2hlbgogYSBmb3VyLXdvcmQg
bWVzc2FnZSBpcyBkZXNpcmVkLCBvbmx5IG9uZSBvZiB0aGUgcmVnaXN0ZXJzIG5lZWRzIHRvCiBo
YXZlIGl0cyBjb3JyZXNwb25kaW5nIGludGVycnVwdCBlbmFibGUgYml0IHNldCBhdCB0aGUgcmVj
ZWl2ZXIgc2lkZTsKIHRoZSBtZXNzYWdl4oCZcyBmaXJzdCB0aHJlZSB3b3JkcyBhcmUgd3JpdHRl
biB0byB0aGUgcmVnaXN0ZXJzIHdob3NlCiBpbnRlcnJ1cHQgaXMgbWFza2VkLCBhbmQgdGhlIGZv
dXJ0aCB3b3JkIGlzIHdyaXR0ZW4gdG8gdGhlIG90aGVyCiByZWdpc3RlciAod2hpY2ggdHJpZ2dl
cnMgYW4gaW50ZXJydXB0IGF0IHRoZSByZWNlaXZlciBzaWRlKS4KCmkuTVg4LzhYIFNDVSBmaXJt
d2FyZSBJUEMgaXMgYW4gaW1wbGVtZW50YXRpb24gb2YgcGFzc2luZyBzaG9ydAptZXNzYWdlcy4g
QnV0IGN1cnJlbnQgaW14LW1haWxib3ggZHJpdmVyIG9ubHkgc3VwcG9ydCBvbmUgd29yZAptZXNz
YWdlLCBpLk1YOC84WCBsaW51eCBzaWRlIGZpcm13YXJlIGhhcyB0byByZXF1ZXN0IGZvdXIgVFgK
YW5kIGZvdXIgUlggdG8gc3VwcG9ydCBJUEMgdG8gU0NVIGZpcm13YXJlLiBUaGlzIGlzIGxvdyBl
ZmZpY2VudAphbmQgbW9yZSBpbnRlcnJ1cHRzIHRyaWdnZXJlZCBjb21wYXJlZCB3aXRoIG9uZSBU
WCBhbmQKb25lIFJYLgoKVG8gbWFrZSBTQ1UgTVUgd29yaywKICAtIHBhcnNlIHRoZSBzaXplIG9m
IG1zZy4KICAtIE9ubHkgZW5hYmxlIFRSMC9SUjAgaW50ZXJydXB0IGZvciB0cmFuc21pdC9yZWNl
aXZlIG1lc3NhZ2UuCiAgLSBGb3IgVFgvUlgsIG9ubHkgc3VwcG9ydCBvbmUgVFggY2hhbm5lbCBh
bmQgb25lIFJYIGNoYW5uZWwKICAtIEZvciBSWCwgc3VwcG9ydCByZWNlaXZlIG1zZyBsYXJnZXIg
dGhhbiA0IHUzMiB3b3Jkcy4KICAtIFN1cHBvcnQgNiBjaGFubmVscywgVFgwL1JYMC9SWERCWzAt
M10sIG5vdCBzdXBwb3J0IFRYREIuCgpSZXZpZXdlZC1ieTogT2xla3NpaiBSZW1wZWwgPG8ucmVt
cGVsQHBlbmd1dHJvbml4LmRlPgpTaWduZWQtb2ZmLWJ5OiBQZW5nIEZhbiA8cGVuZy5mYW5Abnhw
LmNvbT4KLS0tClY3OgogQWRkIFRFL1JFIGNoZWNrCgpWNjoKIEFkZCBSLWIgdGFnCiBVc2UgJXp1
IGZvciBwcmludGsgc2l6ZW9mCgpWNToKIENvZGUgc3R5bGUgY2xlYW51cAogQWRkIG1vcmUgZGVi
dWcgbXNnCiBEcm9wIF9fcGFja2VkIGFsaWduZWQKIGlkeCBzYW50aXR5IGNoZWNrIGluIHNjdSB4
bGF0ZQoKVjQ6CiBBZGRlZCBzZXBhcmF0ZSBjaGFucyBpbml0IGFuZCB4bGF0ZSBmdW5jdGlvbiBm
b3IgU0NVIE1VCiBMaW1pdCBjaGFucyB0byBUWDAvUlgwL1JYREJbMC0zXSwgbWF4IDYgY2hhbnMu
CiBTYW50aXR5IGNoZWNrIHRvIG1zZyBzaXplCgpWMzoKIEFkZGVkIHNjdSB0eXBlIHR4L3J4IGFu
ZCBTQ1UgTVUgdHlwZQoKIGRyaXZlcnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIHwgMTU1ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1
NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94
LmMgYi9kcml2ZXJzL21haWxib3gvaW14LW1haWxib3guYwppbmRleCBkZjZjNGVjZDkxM2MuLjc5
MDY2MjRhNzMxYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKKysr
IGIvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKQEAgLTQsOCArNCwxMCBAQAogICovCiAK
ICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KKyNpbmNsdWRlIDxsaW51eC9maXJtd2FyZS9pbXgvaXBj
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW50ZXJydXB0Lmg+CiAjaW5jbHVkZSA8bGludXgvaW8uaD4K
KyNpbmNsdWRlIDxsaW51eC9pb3BvbGwuaD4KICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KICNp
bmNsdWRlIDxsaW51eC9tYWlsYm94X2NvbnRyb2xsZXIuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1
bGUuaD4KQEAgLTI3LDYgKzI5LDggQEAKICNkZWZpbmUgSU1YX01VX3hDUl9HSVJuKHgpCUJJVCgx
NiArICgzIC0gKHgpKSkKIAogI2RlZmluZSBJTVhfTVVfQ0hBTlMJCTE2CisvKiBUWDAvUlgwL1JY
REJbMC0zXSAqLworI2RlZmluZSBJTVhfTVVfU0NVX0NIQU5TCTYKICNkZWZpbmUgSU1YX01VX0NI
QU5fTkFNRV9TSVpFCTIwCiAKIGVudW0gaW14X211X2NoYW5fdHlwZSB7CkBAIC0zNiw2ICs0MCwx
MSBAQCBlbnVtIGlteF9tdV9jaGFuX3R5cGUgewogCUlNWF9NVV9UWVBFX1JYREIsCS8qIFJ4IGRv
b3JiZWxsICovCiB9OwogCitzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4IHsKKwlzdHJ1Y3QgaW14
X3NjX3JwY19tc2cgaGRyOworCXUzMiBkYXRhWzddOworfTsKKwogc3RydWN0IGlteF9tdV9jb25f
cHJpdiB7CiAJdW5zaWduZWQgaW50CQlpZHg7CiAJY2hhcgkJCWlycV9kZXNjW0lNWF9NVV9DSEFO
X05BTUVfU0laRV07CkBAIC0xMzQsNiArMTQzLDgzIEBAIHN0YXRpYyBpbnQgaW14X211X2dlbmVy
aWNfcngoc3RydWN0IGlteF9tdV9wcml2ICpwcml2LAogCXJldHVybiAwOwogfQogCitzdGF0aWMg
aW50IGlteF9tdV9zY3VfdHgoc3RydWN0IGlteF9tdV9wcml2ICpwcml2LAorCQkJIHN0cnVjdCBp
bXhfbXVfY29uX3ByaXYgKmNwLAorCQkJIHZvaWQgKmRhdGEpCit7CisJc3RydWN0IGlteF9zY19y
cGNfbXNnX21heCAqbXNnID0gZGF0YTsKKwl1MzIgKmFyZyA9IGRhdGE7CisJaW50IGksIHJldDsK
Kwl1MzIgeHNyOworCisJc3dpdGNoIChjcC0+dHlwZSkgeworCWNhc2UgSU1YX01VX1RZUEVfVFg6
CisJCWlmIChtc2ctPmhkci5zaXplID4gc2l6ZW9mKCptc2cpKSB7CisJCQkvKgorCQkJICogVGhl
IHJlYWwgbWVzc2FnZSBzaXplIGNhbiBiZSBkaWZmZXJlbnQgdG8KKwkJCSAqIHN0cnVjdCBpbXhf
c2NfcnBjX21zZ19tYXggc2l6ZQorCQkJICovCisJCQlkZXZfZXJyKHByaXYtPmRldiwgIkV4Y2Vl
ZCBtYXggbXNnIHNpemUgKCV6dSkgb24gVFgsIGdvdDogJWlcbiIsIHNpemVvZigqbXNnKSwgbXNn
LT5oZHIuc2l6ZSk7CisJCQlyZXR1cm4gLUVJTlZBTDsKKwkJfQorCisJCWZvciAoaSA9IDA7IGkg
PCA0ICYmIGkgPCBtc2ctPmhkci5zaXplOyBpKyspCisJCQlpbXhfbXVfd3JpdGUocHJpdiwgKmFy
ZysrLCBwcml2LT5kY2ZnLT54VFJbaSAlIDRdKTsKKwkJZm9yICg7IGkgPCBtc2ctPmhkci5zaXpl
OyBpKyspIHsKKwkJCXJldCA9IHJlYWRsX3BvbGxfdGltZW91dChwcml2LT5iYXNlICsgcHJpdi0+
ZGNmZy0+eFNSLAorCQkJCQkJIHhzciwKKwkJCQkJCSB4c3IgJiBJTVhfTVVfeFNSX1RFbihpICUg
NCksCisJCQkJCQkgMCwgMTAwKTsKKwkJCWlmIChyZXQpIHsKKwkJCQlkZXZfZXJyKHByaXYtPmRl
diwgIlNlbmQgZGF0YSBpbmRleDogJWQgdGltZW91dFxuIiwgaSk7CisJCQkJcmV0dXJuIHJldDsK
KwkJCX0KKwkJCWlteF9tdV93cml0ZShwcml2LCAqYXJnKyssIHByaXYtPmRjZmctPnhUUltpICUg
NF0pOworCQl9CisKKwkJaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9USUVuKGNwLT5p
ZHgpLCAwKTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJZGV2X3dhcm5fcmF0ZWxpbWl0ZWQocHJp
di0+ZGV2LCAiU2VuZCBkYXRhIG9uIHdyb25nIGNoYW5uZWwgdHlwZTogJWRcbiIsIGNwLT50eXBl
KTsKKwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQg
aW14X211X3NjdV9yeChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsCisJCQkgc3RydWN0IGlteF9t
dV9jb25fcHJpdiAqY3ApCit7CisJc3RydWN0IGlteF9zY19ycGNfbXNnX21heCBtc2c7CisJdTMy
ICpkYXRhID0gKHUzMiAqKSZtc2c7CisJaW50IGksIHJldDsKKwl1MzIgeHNyOworCisJaW14X211
X3hjcl9ybXcocHJpdiwgMCwgSU1YX01VX3hDUl9SSUVuKDApKTsKKwkqZGF0YSsrID0gaW14X211
X3JlYWQocHJpdiwgcHJpdi0+ZGNmZy0+eFJSWzBdKTsKKworCWlmIChtc2cuaGRyLnNpemUgPiBz
aXplb2YobXNnKSkgeworCQlkZXZfZXJyKHByaXYtPmRldiwgIkV4Y2VlZCBtYXggbXNnIHNpemUg
KCV6dSkgb24gUlgsIGdvdDogJWlcbiIsCisJCQlzaXplb2YobXNnKSwgbXNnLmhkci5zaXplKTsK
KwkJcmV0dXJuIC1FSU5WQUw7CisJfQorCisJZm9yIChpID0gMTsgaSA8IG1zZy5oZHIuc2l6ZTsg
aSsrKSB7CisJCXJldCA9IHJlYWRsX3BvbGxfdGltZW91dChwcml2LT5iYXNlICsgcHJpdi0+ZGNm
Zy0+eFNSLCB4c3IsCisJCQkJCSB4c3IgJiBJTVhfTVVfeFNSX1JGbihpICUgNCksIDAsIDEwMCk7
CisJCWlmIChyZXQpIHsKKwkJCWRldl9lcnIocHJpdi0+ZGV2LCAidGltZW91dCByZWFkIGlkeCAl
ZFxuIiwgaSk7CisJCQlyZXR1cm4gcmV0OworCQl9CisJCSpkYXRhKysgPSBpbXhfbXVfcmVhZChw
cml2LCBwcml2LT5kY2ZnLT54UlJbaSAlIDRdKTsKKwl9CisKKwlpbXhfbXVfeGNyX3Jtdyhwcml2
LCBJTVhfTVVfeENSX1JJRW4oMCksIDApOworCW1ib3hfY2hhbl9yZWNlaXZlZF9kYXRhKGNwLT5j
aGFuLCAodm9pZCAqKSZtc2cpOworCisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyB2b2lkIGlteF9t
dV90eGRiX3Rhc2tsZXQodW5zaWduZWQgbG9uZyBkYXRhKQogewogCXN0cnVjdCBpbXhfbXVfY29u
X3ByaXYgKmNwID0gKHN0cnVjdCBpbXhfbXVfY29uX3ByaXYgKilkYXRhOwpAQCAtMjYzLDYgKzM0
OSw0MiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG1ib3hfY2hhbl9vcHMgaW14X211X29wcyA9IHsK
IAkuc2h1dGRvd24gPSBpbXhfbXVfc2h1dGRvd24sCiB9OwogCitzdGF0aWMgc3RydWN0IG1ib3hf
Y2hhbiAqaW14X211X3NjdV94bGF0ZShzdHJ1Y3QgbWJveF9jb250cm9sbGVyICptYm94LAorCQkJ
CQkgIGNvbnN0IHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwKQoreworCXUzMiB0eXBlLCBpZHgs
IGNoYW47CisKKwlpZiAoc3AtPmFyZ3NfY291bnQgIT0gMikgeworCQlkZXZfZXJyKG1ib3gtPmRl
diwgIkludmFsaWQgYXJndW1lbnQgY291bnQgJWRcbiIsIHNwLT5hcmdzX2NvdW50KTsKKwkJcmV0
dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisJfQorCisJdHlwZSA9IHNwLT5hcmdzWzBdOyAvKiBjaGFu
bmVsIHR5cGUgKi8KKwlpZHggPSBzcC0+YXJnc1sxXTsgLyogaW5kZXggKi8KKworCXN3aXRjaCAo
dHlwZSkgeworCWNhc2UgSU1YX01VX1RZUEVfVFg6CisJY2FzZSBJTVhfTVVfVFlQRV9SWDoKKwkJ
aWYgKGlkeCAhPSAwKQorCQkJZGV2X2VycihtYm94LT5kZXYsICJJbnZhbGlkIGNoYW4gaWR4OiAl
ZFxuIiwgaWR4KTsKKwkJY2hhbiA9IHR5cGU7CisJCWJyZWFrOworCWNhc2UgSU1YX01VX1RZUEVf
UlhEQjoKKwkJY2hhbiA9IDIgKyBpZHg7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCWRldl9lcnIo
bWJveC0+ZGV2LCAiSW52YWxpZCBjaGFuIHR5cGU6ICVkXG4iLCB0eXBlKTsKKwkJcmV0dXJuIE5V
TEw7CisJfQorCisJaWYgKGNoYW4gPj0gbWJveC0+bnVtX2NoYW5zKSB7CisJCWRldl9lcnIobWJv
eC0+ZGV2LCAiTm90IHN1cHBvcnRlZCBjaGFubmVsIG51bWJlcjogJWQuICh0eXBlOiAlZCwgaWR4
OiAlZClcbiIsIGNoYW4sIHR5cGUsIGlkeCk7CisJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwor
CX0KKworCXJldHVybiAmbWJveC0+Y2hhbnNbY2hhbl07Cit9CisKIHN0YXRpYyBzdHJ1Y3QgbWJv
eF9jaGFuICogaW14X211X3hsYXRlKHN0cnVjdCBtYm94X2NvbnRyb2xsZXIgKm1ib3gsCiAJCQkJ
ICAgICAgIGNvbnN0IHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKnNwKQogewpAQCAtMzEwLDYgKzQz
MiwyOCBAQCBzdGF0aWMgdm9pZCBpbXhfbXVfaW5pdF9nZW5lcmljKHN0cnVjdCBpbXhfbXVfcHJp
diAqcHJpdikKIAlpbXhfbXVfd3JpdGUocHJpdiwgMCwgcHJpdi0+ZGNmZy0+eENSKTsKIH0KIAor
c3RhdGljIHZvaWQgaW14X211X2luaXRfc2N1KHN0cnVjdCBpbXhfbXVfcHJpdiAqcHJpdikKK3sK
Kwl1bnNpZ25lZCBpbnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBJTVhfTVVfU0NVX0NIQU5TOyBp
KyspIHsKKwkJc3RydWN0IGlteF9tdV9jb25fcHJpdiAqY3AgPSAmcHJpdi0+Y29uX3ByaXZbaV07
CisKKwkJY3AtPmlkeCA9IGkgPCAyID8gMCA6IGkgLSAyOworCQljcC0+dHlwZSA9IGkgPCAyID8g
aSA6IElNWF9NVV9UWVBFX1JYREI7CisJCWNwLT5jaGFuID0gJnByaXYtPm1ib3hfY2hhbnNbaV07
CisJCXByaXYtPm1ib3hfY2hhbnNbaV0uY29uX3ByaXYgPSBjcDsKKwkJc25wcmludGYoY3AtPmly
cV9kZXNjLCBzaXplb2YoY3AtPmlycV9kZXNjKSwKKwkJCSAiaW14X211X2NoYW5bJWktJWldIiwg
Y3AtPnR5cGUsIGNwLT5pZHgpOworCX0KKworCXByaXYtPm1ib3gubnVtX2NoYW5zID0gSU1YX01V
X1NDVV9DSEFOUzsKKwlwcml2LT5tYm94Lm9mX3hsYXRlID0gaW14X211X3NjdV94bGF0ZTsKKwor
CS8qIFNldCBkZWZhdWx0IE1VIGNvbmZpZ3VyYXRpb24gKi8KKwlpbXhfbXVfd3JpdGUocHJpdiwg
MCwgcHJpdi0+ZGNmZy0+eENSKTsKK30KKwogc3RhdGljIGludCBpbXhfbXVfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+
ZGV2OwpAQCAtMzk2LDkgKzU0MCwyMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlteF9tdV9kY2Zn
IGlteF9tdV9jZmdfaW14N3VscCA9IHsKIAkueENSCT0gMHg2NCwKIH07CiAKK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgaW14X211X2RjZmcgaW14X211X2NmZ19pbXg4X3NjdSA9IHsKKwkudHgJPSBpbXhf
bXVfc2N1X3R4LAorCS5yeAk9IGlteF9tdV9zY3VfcngsCisJLmluaXQJPSBpbXhfbXVfaW5pdF9z
Y3UsCisJLnhUUgk9IHsweDAsIDB4NCwgMHg4LCAweGN9LAorCS54UlIJPSB7MHgxMCwgMHgxNCwg
MHgxOCwgMHgxY30sCisJLnhTUgk9IDB4MjAsCisJLnhDUgk9IDB4MjQsCit9OworCiBzdGF0aWMg
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBpbXhfbXVfZHRfaWRzW10gPSB7CiAJeyAuY29tcGF0
aWJsZSA9ICJmc2wsaW14N3VscC1tdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14N3VscCB9LAog
CXsgLmNvbXBhdGlibGUgPSAiZnNsLGlteDZzeC1tdSIsIC5kYXRhID0gJmlteF9tdV9jZmdfaW14
NnN4IH0sCisJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14OC1tdS1zY3UiLCAuZGF0YSA9ICZpbXhf
bXVfY2ZnX2lteDhfc2N1IH0sCiAJeyB9LAogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIGlt
eF9tdV9kdF9pZHMpOwotLSAKMi4xNi40CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
