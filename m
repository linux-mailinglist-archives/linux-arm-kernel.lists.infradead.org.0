Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD3B178A6D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 06:57:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8QZUVr7yJUPPBC1ZdcmEckRRPaCBtDAfsOBLQoiu85E=; b=ODnIhaBlV6RDhN
	LY3y/osuylNqNCQZtbmbFAB+VaWXluqDfPWmEZt3dXKkYvtJ6jtYpZv6+84c6/IjZuh7cznGsU0af
	6QOD4Ukq3HMeAWA41SSYLRL90jgciUYUDL56R8u50cjKjYKf1fVmMMbr1lVXRVY0MG2vSId1sCJaj
	CGNJoX2vs02+2YHoiXp1128Pqo1byEKZ3i9s4a3G2bEBVN0Jjjsm8KWFVFm0ktpK5HFQxW1yAJjwa
	AKXR/e9ys6yztCI5UHmq0vfrCzKXtsYIc09D1OGgtQeY2+aqIu61OdcVDFaM0qaZklF+bsuwZmky1
	3vgoqnXsloMZF6mPrWQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9N2F-0000mk-Ep; Wed, 04 Mar 2020 05:57:35 +0000
Received: from mail-eopbgr10043.outbound.protection.outlook.com ([40.107.1.43]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9N0x-0008JK-2N
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 05:56:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1dvHuYg6sCQgjvEJoJq0G2tvzWs52aKVfzVGOF8VyDl/jSHof/EqZ+jYAy/TeW0mjgKFj91SSRYhglEr2S4IP3PpUxXjsYJC/Iki7RbVjUn/bNEsdRsvINL6ZRVymKBlrFyeK7Yf4inEzyJWKCpH7I3+TwIjpZOe0fViFaGU5XyfejOFz+YKhpePom+utUXvrHSSsgEsclm7oqvdscbJkJrgQtfmwXJ80eyWsfDtd8PF85VX65ceYKuXUV5yqDIdcGRdTyN7XySXLuCVOWxr9m9/pIuWaJlj3Qe1R3oC42M9VL8AVsTqeOBlxeXK472fy03aF7cIBhoEbhTK2kRDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nVJ+o0DDdIR8cs2sO5pisK+82naQ1GUXow/ghLdblbI=;
 b=NTVoZzQVJ0lZYvmvGkfLiLrJA8t09IKYiWietOT0iQF2F36Rfyvf0BTNxGnyyh3csCk6VfsgOjogGMGcNBwig4s1ZLRmOh2koUpMNNs+3Kb09t2dhdOdwOGsaRecQDLwUvjC2f0Xh4pXGEaZX1V/r0GYU5vHO9nwUVMo2Go8MH8g0Zmwh1OobrEBrk9lfCiYX2X7LOhUQgWaIng+TpwLjhHK4vlGwmIusUs3ddlkB28xi8dRKCskmY9zLu1RZoUs3yJVmoiYRPoNKhCevu1u1gwoUUn89KQO7n6PBYuF2M7kpj3unn5zxcM6ZwxYBFIJEgmdRCzZ1F+HvrQebR92dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nVJ+o0DDdIR8cs2sO5pisK+82naQ1GUXow/ghLdblbI=;
 b=YucU2i/TptxfXW0labh96eGedTYl+1iuyI6oZnbGYhDLStj4DEQSYclVn7l2rA095zG559ex75FNk1wbHkrgD3kz4PF64H3p7fTyXNm4g+1MR7dOd4Yijah4V8oDpaPlnBc1RQcOMXbypuiBb9qIAio0+2gh0ees9QwZhZdjKHE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4947.eurprd04.prod.outlook.com (20.177.40.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Wed, 4 Mar 2020 05:56:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 05:56:08 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V6 3/4] mailbox: imx: add SCU MU support
Date: Wed,  4 Mar 2020 13:49:36 +0800
Message-Id: <1583300977-2327-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
References: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0401CA0010.apcprd04.prod.outlook.com
 (2603:1096:3:1::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0401CA0010.apcprd04.prod.outlook.com (2603:1096:3:1::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Wed, 4 Mar 2020 05:56:03 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2b14e196-e09f-4fa0-fb88-08d7c000baf8
X-MS-TrafficTypeDiagnostic: AM0PR04MB4947:|AM0PR04MB4947:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB494721007866EB40E30032AA88E50@AM0PR04MB4947.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0332AACBC3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(189003)(199004)(52116002)(66556008)(66476007)(316002)(478600001)(66946007)(2906002)(81166006)(8676002)(6506007)(956004)(2616005)(81156014)(4326008)(6512007)(9686003)(6486002)(5660300002)(26005)(36756003)(15650500001)(16526019)(6666004)(8936002)(186003)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4947;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gQblMPl/+gjZ6VjnbOfZR2mQs23rxB2eNyD6IumybVyjc8SnqTcCAi98W8+cuT6PM7pOitXZfoZJGI5lpvwdX3DzzthPMZSR05ILMNoOgw2pqHFBpjQZ2qhD2rfafnXWvQndP4Osv2Pt4AGffIlcDIPm/x5HnsruZgLBYuFz0f7LpDjO2kINzgFrUY7OfARa6+e+W/7EEEvg1YudOHMscsSVf/yzvjeZfpqxrKmwARaI/egw5FTNomZg7+b2tbPijQivwvEuR99wyeiCWYMxUGp2OMNYHEvsT7d+C875/LZods0nTem15E90pSFL4AKm9k3IA7zPodAdWap90a78QwztHldXPM36bNCO2zDY2VbMUZiqEvTa2lCbUZ3iH4bzCnmE6+0+OCwgkhejRidiRjqHt+qD82EvjgmYU2LT+9UEbjxjsq+rr0SkQESao0TG
X-MS-Exchange-AntiSpam-MessageData: Q+2kc2JhhZCGuVusILQrLFUcM2ewMUCntHjvERTTrT0WsCbZiwDMR22yb46nWSa1hmAnTNOEeCc3MUgyCW0iQvKr2TSjPWIB0+oo/dA0BNpiWqNHksa1smyO3saPftYXoB1FvmCFgCgO7DL3mVlOpQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b14e196-e09f-4fa0-fb88-08d7c000baf8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2020 05:56:07.0124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B3CYbacTHAMHvd+C4OyLM4NrFfiFkrPHUGXhiA10Y3fA41fl7YBK3Hz3DcHHbL2g46WEwqgkhGS5lGazWmRarA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_215615_134883_0B770D2B 
X-CRM114-Status: GOOD (  19.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
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
LmNvbT4KLS0tCgpWNjoKIEFkZCBSLWIgdGFnCiBVc2UgJXp1IGZvciBwcmludGsgc2l6ZW9mCgpW
NToKIENvZGUgc3R5bGUgY2xlYW51cAogQWRkIG1vcmUgZGVidWcgbXNnCiBEcm9wIF9fcGFja2Vk
IGFsaWduZWQKIGlkeCBzYW50aXR5IGNoZWNrIGluIHNjdSB4bGF0ZQoKVjQ6CiBBZGRlZCBzZXBh
cmF0ZSBjaGFucyBpbml0IGFuZCB4bGF0ZSBmdW5jdGlvbiBmb3IgU0NVIE1VCiBMaW1pdCBjaGFu
cyB0byBUWDAvUlgwL1JYREJbMC0zXSwgbWF4IDYgY2hhbnMuCiBTYW50aXR5IGNoZWNrIHRvIG1z
ZyBzaXplCgpWMzoKIEFkZGVkIHNjdSB0eXBlIHR4L3J4IGFuZCBTQ1UgTVUgdHlwZQoKIGRyaXZl
cnMvbWFpbGJveC9pbXgtbWFpbGJveC5jIHwgMTM0ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMgYi9kcml2ZXJzL21haWxib3gv
aW14LW1haWxib3guYwppbmRleCBkZjZjNGVjZDkxM2MuLjA4OTVjY2QyM2QxNyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9tYWlsYm94L2lteC1tYWlsYm94LmMKKysrIGIvZHJpdmVycy9tYWlsYm94L2lt
eC1tYWlsYm94LmMKQEAgLTQsNiArNCw3IEBACiAgKi8KIAogI2luY2x1ZGUgPGxpbnV4L2Nsay5o
PgorI2luY2x1ZGUgPGxpbnV4L2Zpcm13YXJlL2lteC9pcGMuaD4KICNpbmNsdWRlIDxsaW51eC9p
bnRlcnJ1cHQuaD4KICNpbmNsdWRlIDxsaW51eC9pby5oPgogI2luY2x1ZGUgPGxpbnV4L2tlcm5l
bC5oPgpAQCAtMjcsNiArMjgsOCBAQAogI2RlZmluZSBJTVhfTVVfeENSX0dJUm4oeCkJQklUKDE2
ICsgKDMgLSAoeCkpKQogCiAjZGVmaW5lIElNWF9NVV9DSEFOUwkJMTYKKy8qIFRYMC9SWDAvUlhE
QlswLTNdICovCisjZGVmaW5lIElNWF9NVV9TQ1VfQ0hBTlMJNgogI2RlZmluZSBJTVhfTVVfQ0hB
Tl9OQU1FX1NJWkUJMjAKIAogZW51bSBpbXhfbXVfY2hhbl90eXBlIHsKQEAgLTM2LDYgKzM5LDEx
IEBAIGVudW0gaW14X211X2NoYW5fdHlwZSB7CiAJSU1YX01VX1RZUEVfUlhEQiwJLyogUnggZG9v
cmJlbGwgKi8KIH07CiAKK3N0cnVjdCBpbXhfc2NfcnBjX21zZ19tYXggeworCXN0cnVjdCBpbXhf
c2NfcnBjX21zZyBoZHI7CisJdTMyIGRhdGFbN107Cit9OworCiBzdHJ1Y3QgaW14X211X2Nvbl9w
cml2IHsKIAl1bnNpZ25lZCBpbnQJCWlkeDsKIAljaGFyCQkJaXJxX2Rlc2NbSU1YX01VX0NIQU5f
TkFNRV9TSVpFXTsKQEAgLTEzNCw2ICsxNDIsNjMgQEAgc3RhdGljIGludCBpbXhfbXVfZ2VuZXJp
Y19yeChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsCiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBp
bnQgaW14X211X3NjdV90eChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsCisJCQkgc3RydWN0IGlt
eF9tdV9jb25fcHJpdiAqY3AsCisJCQkgdm9pZCAqZGF0YSkKK3sKKwlzdHJ1Y3QgaW14X3NjX3Jw
Y19tc2dfbWF4ICptc2cgPSBkYXRhOworCXUzMiAqYXJnID0gZGF0YTsKKwlpbnQgaTsKKworCXN3
aXRjaCAoY3AtPnR5cGUpIHsKKwljYXNlIElNWF9NVV9UWVBFX1RYOgorCQlpZiAobXNnLT5oZHIu
c2l6ZSA+IHNpemVvZigqbXNnKSkgeworCQkJLyoKKwkJCSAqIFRoZSByZWFsIG1lc3NhZ2Ugc2l6
ZSBjYW4gYmUgZGlmZmVyZW50IHRvCisJCQkgKiBzdHJ1Y3QgaW14X3NjX3JwY19tc2dfbWF4IHNp
emUKKwkJCSAqLworCQkJZGV2X2Vycihwcml2LT5kZXYsICJFeGNlZWQgbWF4IG1zZyBzaXplICgl
enUpIG9uIFRYLCBnb3Q6ICVpXG4iLCBzaXplb2YoKm1zZyksIG1zZy0+aGRyLnNpemUpOworCQkJ
cmV0dXJuIC1FSU5WQUw7CisJCX0KKworCQlmb3IgKGkgPSAwOyBpIDwgbXNnLT5oZHIuc2l6ZTsg
aSsrKQorCQkJaW14X211X3dyaXRlKHByaXYsICphcmcrKywgcHJpdi0+ZGNmZy0+eFRSW2kgJSA0
XSk7CisKKwkJaW14X211X3hjcl9ybXcocHJpdiwgSU1YX01VX3hDUl9USUVuKGNwLT5pZHgpLCAw
KTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJZGV2X3dhcm5fcmF0ZWxpbWl0ZWQocHJpdi0+ZGV2
LCAiU2VuZCBkYXRhIG9uIHdyb25nIGNoYW5uZWwgdHlwZTogJWRcbiIsIGNwLT50eXBlKTsKKwkJ
cmV0dXJuIC1FSU5WQUw7CisJfQorCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgaW14X211
X3NjdV9yeChzdHJ1Y3QgaW14X211X3ByaXYgKnByaXYsCisJCQkgc3RydWN0IGlteF9tdV9jb25f
cHJpdiAqY3ApCit7CisJc3RydWN0IGlteF9zY19ycGNfbXNnX21heCBtc2c7CisJdTMyICpkYXRh
ID0gKHUzMiAqKSZtc2c7CisJaW50IGk7CisKKwlpbXhfbXVfeGNyX3Jtdyhwcml2LCAwLCBJTVhf
TVVfeENSX1JJRW4oMCkpOworCSpkYXRhKysgPSBpbXhfbXVfcmVhZChwcml2LCBwcml2LT5kY2Zn
LT54UlJbMF0pOworCisJaWYgKG1zZy5oZHIuc2l6ZSA+IHNpemVvZihtc2cpKSB7CisJCWRldl9l
cnIocHJpdi0+ZGV2LCAiRXhjZWVkIG1heCBtc2cgc2l6ZSAoJXp1KSBvbiBSWCwgZ290OiAlaVxu
IiwKKwkJCXNpemVvZihtc2cpLCBtc2cuaGRyLnNpemUpOworCQlyZXR1cm4gLUVJTlZBTDsKKwl9
CisKKwlmb3IgKGkgPSAxOyBpIDwgbXNnLmhkci5zaXplOyBpKyspCisJCSpkYXRhKysgPSBpbXhf
bXVfcmVhZChwcml2LCBwcml2LT5kY2ZnLT54UlJbaSAlIDRdKTsKKworCWlteF9tdV94Y3Jfcm13
KHByaXYsIElNWF9NVV94Q1JfUklFbigwKSwgMCk7CisJbWJveF9jaGFuX3JlY2VpdmVkX2RhdGEo
Y3AtPmNoYW4sICh2b2lkICopJm1zZyk7CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIHZvaWQg
aW14X211X3R4ZGJfdGFza2xldCh1bnNpZ25lZCBsb25nIGRhdGEpCiB7CiAJc3RydWN0IGlteF9t
dV9jb25fcHJpdiAqY3AgPSAoc3RydWN0IGlteF9tdV9jb25fcHJpdiAqKWRhdGE7CkBAIC0yNjMs
NiArMzI4LDQyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWJveF9jaGFuX29wcyBpbXhfbXVfb3Bz
ID0gewogCS5zaHV0ZG93biA9IGlteF9tdV9zaHV0ZG93biwKIH07CiAKK3N0YXRpYyBzdHJ1Y3Qg
bWJveF9jaGFuICppbXhfbXVfc2N1X3hsYXRlKHN0cnVjdCBtYm94X2NvbnRyb2xsZXIgKm1ib3gs
CisJCQkJCSAgY29uc3Qgc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3ApCit7CisJdTMyIHR5cGUs
IGlkeCwgY2hhbjsKKworCWlmIChzcC0+YXJnc19jb3VudCAhPSAyKSB7CisJCWRldl9lcnIobWJv
eC0+ZGV2LCAiSW52YWxpZCBhcmd1bWVudCBjb3VudCAlZFxuIiwgc3AtPmFyZ3NfY291bnQpOwor
CQlyZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKKwl9CisKKwl0eXBlID0gc3AtPmFyZ3NbMF07IC8q
IGNoYW5uZWwgdHlwZSAqLworCWlkeCA9IHNwLT5hcmdzWzFdOyAvKiBpbmRleCAqLworCisJc3dp
dGNoICh0eXBlKSB7CisJY2FzZSBJTVhfTVVfVFlQRV9UWDoKKwljYXNlIElNWF9NVV9UWVBFX1JY
OgorCQlpZiAoaWR4ICE9IDApCisJCQlkZXZfZXJyKG1ib3gtPmRldiwgIkludmFsaWQgY2hhbiBp
ZHg6ICVkXG4iLCBpZHgpOworCQljaGFuID0gdHlwZTsKKwkJYnJlYWs7CisJY2FzZSBJTVhfTVVf
VFlQRV9SWERCOgorCQljaGFuID0gMiArIGlkeDsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJZGV2
X2VycihtYm94LT5kZXYsICJJbnZhbGlkIGNoYW4gdHlwZTogJWRcbiIsIHR5cGUpOworCQlyZXR1
cm4gTlVMTDsKKwl9CisKKwlpZiAoY2hhbiA+PSBtYm94LT5udW1fY2hhbnMpIHsKKwkJZGV2X2Vy
cihtYm94LT5kZXYsICJOb3Qgc3VwcG9ydGVkIGNoYW5uZWwgbnVtYmVyOiAlZC4gKHR5cGU6ICVk
LCBpZHg6ICVkKVxuIiwgY2hhbiwgdHlwZSwgaWR4KTsKKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZB
TCk7CisJfQorCisJcmV0dXJuICZtYm94LT5jaGFuc1tjaGFuXTsKK30KKwogc3RhdGljIHN0cnVj
dCBtYm94X2NoYW4gKiBpbXhfbXVfeGxhdGUoc3RydWN0IG1ib3hfY29udHJvbGxlciAqbWJveCwK
IAkJCQkgICAgICAgY29uc3Qgc3RydWN0IG9mX3BoYW5kbGVfYXJncyAqc3ApCiB7CkBAIC0zMTAs
NiArNDExLDI4IEBAIHN0YXRpYyB2b2lkIGlteF9tdV9pbml0X2dlbmVyaWMoc3RydWN0IGlteF9t
dV9wcml2ICpwcml2KQogCWlteF9tdV93cml0ZShwcml2LCAwLCBwcml2LT5kY2ZnLT54Q1IpOwog
fQogCitzdGF0aWMgdm9pZCBpbXhfbXVfaW5pdF9zY3Uoc3RydWN0IGlteF9tdV9wcml2ICpwcml2
KQoreworCXVuc2lnbmVkIGludCBpOworCisJZm9yIChpID0gMDsgaSA8IElNWF9NVV9TQ1VfQ0hB
TlM7IGkrKykgeworCQlzdHJ1Y3QgaW14X211X2Nvbl9wcml2ICpjcCA9ICZwcml2LT5jb25fcHJp
dltpXTsKKworCQljcC0+aWR4ID0gaSA8IDIgPyAwIDogaSAtIDI7CisJCWNwLT50eXBlID0gaSA8
IDIgPyBpIDogSU1YX01VX1RZUEVfUlhEQjsKKwkJY3AtPmNoYW4gPSAmcHJpdi0+bWJveF9jaGFu
c1tpXTsKKwkJcHJpdi0+bWJveF9jaGFuc1tpXS5jb25fcHJpdiA9IGNwOworCQlzbnByaW50Zihj
cC0+aXJxX2Rlc2MsIHNpemVvZihjcC0+aXJxX2Rlc2MpLAorCQkJICJpbXhfbXVfY2hhblslaS0l
aV0iLCBjcC0+dHlwZSwgY3AtPmlkeCk7CisJfQorCisJcHJpdi0+bWJveC5udW1fY2hhbnMgPSBJ
TVhfTVVfU0NVX0NIQU5TOworCXByaXYtPm1ib3gub2ZfeGxhdGUgPSBpbXhfbXVfc2N1X3hsYXRl
OworCisJLyogU2V0IGRlZmF1bHQgTVUgY29uZmlndXJhdGlvbiAqLworCWlteF9tdV93cml0ZShw
cml2LCAwLCBwcml2LT5kY2ZnLT54Q1IpOworfQorCiBzdGF0aWMgaW50IGlteF9tdV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogewogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
ZGV2LT5kZXY7CkBAIC0zOTYsOSArNTE5LDIwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW14X211
X2RjZmcgaW14X211X2NmZ19pbXg3dWxwID0gewogCS54Q1IJPSAweDY0LAogfTsKIAorc3RhdGlj
IGNvbnN0IHN0cnVjdCBpbXhfbXVfZGNmZyBpbXhfbXVfY2ZnX2lteDhfc2N1ID0geworCS50eAk9
IGlteF9tdV9zY3VfdHgsCisJLnJ4CT0gaW14X211X3NjdV9yeCwKKwkuaW5pdAk9IGlteF9tdV9p
bml0X3NjdSwKKwkueFRSCT0gezB4MCwgMHg0LCAweDgsIDB4Y30sCisJLnhSUgk9IHsweDEwLCAw
eDE0LCAweDE4LCAweDFjfSwKKwkueFNSCT0gMHgyMCwKKwkueENSCT0gMHgyNCwKK307CisKIHN0
YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGlteF9tdV9kdF9pZHNbXSA9IHsKIAl7IC5j
b21wYXRpYmxlID0gImZzbCxpbXg3dWxwLW11IiwgLmRhdGEgPSAmaW14X211X2NmZ19pbXg3dWxw
IH0sCiAJeyAuY29tcGF0aWJsZSA9ICJmc2wsaW14NnN4LW11IiwgLmRhdGEgPSAmaW14X211X2Nm
Z19pbXg2c3ggfSwKKwl7IC5jb21wYXRpYmxlID0gImZzbCxpbXg4LW11LXNjdSIsIC5kYXRhID0g
JmlteF9tdV9jZmdfaW14OF9zY3UgfSwKIAl7IH0sCiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShv
ZiwgaW14X211X2R0X2lkcyk7Ci0tIAoyLjE2LjQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
