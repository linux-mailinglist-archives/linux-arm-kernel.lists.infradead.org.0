Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28121E08AE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 10:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NXV+ivJ4TXByoLP1MelWqhYdiSj5Q+oZeis56V9AmTY=; b=p+i8y6FxF/piib
	v0k4k7BW/OreWE+5zc5tsgevXKAtSzdgydZLtx93BvMCnQey/Q7viQSGo3gRQJKWW/eX+BaL6UuXl
	HeFNsV/nnPUvR0vmNB9gACoZg7ZHSuyKBAsZeZX8kGA3ZVJ7ud6s/dWWQsz7+Jp0CuctjZRmqXBUa
	8tWm1EYYPU3Z/p1G+257nUVe7Xokbbb7VV0cSrJZQLnfbHgM5ly1u5/xrN5qis/vJmwxOm5Idj6Nn
	Yc+90j8bggwN8otkF6/0qbg8zjUDIIDkNkNyeWynrx5sqVuhStZ4uYY2NyV4mmJs8sxP0XCMJ9Yo5
	gVunnJj+WchBpyJECk7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd8O9-0000pi-L1; Mon, 25 May 2020 08:23:13 +0000
Received: from mail-eopbgr10041.outbound.protection.outlook.com ([40.107.1.41]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd8O0-0000pO-53
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 08:23:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gub2bRJTiLGZVdeybT1xheSoQFX7CFdX8kw78PCpCqvscl14CaFphsFDblxXn++OkW2I9V1NXAcrlkaGLumxaD0hVtf8ooIDBVr9FOhL+HdIZ2lVXEnYk0mFk27xjMxslGarTVgRW5YVGLGNivCh3RJFtHEG2cEFAjGLbbeFyPongtrr6i8VrljKiKThlokhaDUxq5fPyx+H0q0nDpYbbqDm/Fm1PkCM6UoWsX7coDb8TV85lhBtNJoLFKBNHpVAVzJuFjPzPr1/osLqsfsrVFobT9/qaKAazxg17kmyxgY8QWqJe2PxE1Q8n+cCTvyUO7ekkujsAfQA8a/zNORNjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMjqADPXcr7gZ911ODQ9t2r94LjENwwbABkPzilulFs=;
 b=g3X4vOq3j41zbSMe3GPmGG8edV3XMCe/oxnINaHQB86idPDfKPVSURsSRo2W6nv43V5uKBrw6nK5b2Et3nxH26algOLN1feNNaoyW92uBMutsTev5zJq/sT0hT3sK/zRZWeYYpI4c3jrc9B1JQWdDGqY0k92Ic73cPSUfloRo+tFgeW96GjrPS/AANi1PhhvG+3sj5bFZmPxvfVGsyO4SzmUw/lfsMzJ3C8XzxLK4njyZpRP4TW+AZhEaA6ZwCkeFJNY+HvF/B+U9+6tZ6XeBbwG82g/2bV6DxHDDq6MbFrFR8dh9OCp5pJgTUyRzJ67R5UJYEEnvF3ngYwDqAS9dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aMjqADPXcr7gZ911ODQ9t2r94LjENwwbABkPzilulFs=;
 b=lXVPzHScFlCmgGi7cpm/rJksWCgsFeaGqn7B1bam6lgGhPIOQ/KjSxg5k+/ZCttoXPIMP636yeuF01Iq4JwPB1Uv+5lbQs1nANp7/FAhjBT9WN0CquJ5Yx6Tr823Q0iRMqCnxq6d9TaBp9Su4Bx6h3sKz+28YpaHkoDEg6Kn1n8=
Authentication-Results: st.com; dkim=none (message not signed)
 header.d=none;st.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18) by AM6PR0402MB3717.eurprd04.prod.outlook.com
 (2603:10a6:209:25::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.24; Mon, 25 May
 2020 08:23:00 +0000
Received: from AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1]) by AM6PR0402MB3607.eurprd04.prod.outlook.com
 ([fe80::35f8:f020:9b47:9aa1%7]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 08:23:00 +0000
From: Fugang Duan <fugang.duan@nxp.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 kuba@kernel.org, davem@davemloft.net
Subject: [PATCH net 1/1] net: stmmac: enable timestamp snapshot for required
 PTP packets in dwmac v5.10a
Date: Mon, 25 May 2020 16:18:14 +0800
Message-Id: <1590394694-5505-1-git-send-email-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0222.apcprd06.prod.outlook.com
 (2603:1096:4:68::30) To AM6PR0402MB3607.eurprd04.prod.outlook.com
 (2603:10a6:209:12::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b38611.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0222.apcprd06.prod.outlook.com (2603:1096:4:68::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.26 via Frontend Transport; Mon, 25 May 2020 08:22:57 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: acd30223-2c72-4985-4f5b-08d80084d637
X-MS-TrafficTypeDiagnostic: AM6PR0402MB3717:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR0402MB37178487311C1EEA739EC3CBFFB30@AM6PR0402MB3717.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0414DF926F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1O0gNFqrjVOtvHxMKEqo+ocXtffqiOXe5cemxPEW4lGv5K5wIiMcHYYrwrwXVLlF69X8qImlFKqu05w0cHTlzxGmN9WV7X4qyS2oLfMXkpqraduj/D0JcNjVJzEfwPnbofysQxqW/oC0ls5XSAHzEnmfkDSUiwmqjF8EO0UzlhJHOVbkHN+pJPtPLdmGRN6LlpWvA3JJJHJc0SbIXhLTY458yfZ5APwlo9r6nZ2dYL4enZNeJrIGmLEVnRRsOZ5x6AXzg3P22C/fHFmtqWohk6nGf5jRa1QIvwXXY1uedhn/8B8ydJK5kbELWFsZqBrI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3607.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(346002)(366004)(39860400002)(136003)(2616005)(44832011)(956004)(66946007)(66556008)(66476007)(36756003)(4326008)(316002)(8936002)(52116002)(478600001)(8676002)(186003)(16526019)(2906002)(86362001)(6506007)(7416002)(6512007)(26005)(6486002)(5660300002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Fcy6VjNhsQmcNvtat6vkGEDOnNrVOlFMJqd6qv4vKbxDSKdQrC8BLilhYj8GntNgYQvPnPplfBRNCRD6/7jfeJXaiF4GXGeson7eQL+Pdk8Tg9UfFK9Qh1fvS3A6lpZEpA9wCf8OVXyt5lbrIHgMMGm7rCWxbvEdkDVAchSczZ+0qQIAvqjCwMn/A57fG9muX++urxkzpmLnGaf3oXscXeoi74tB2giNMsiwnnmTghAFSFvqacymXF2AEYelwN8KKqlzvomyV0suxAclqzmYz+lK4Ri0aDpbdWc5+7T1mI+jvEeOdarqfCdFr88iL8Hv5NqfVXhog8UgGApTNGRMIu+6E6tTaEi93ft/73jU6hagZ/LkXELvxe172HtpWRtTWlWOqO4a0f8pSsYMVXP87ji34MZpdq4uLtsQ4OHf9Cf0j9jVZz5zRrXuoztd21nqq2qR0gqjiMFMwriLPYOP/EykDhV9gTpDktM7fphFkEPfIn3U7bAIFoBp4GBpw87V
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acd30223-2c72-4985-4f5b-08d80084d637
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2020 08:23:00.5845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oTIsOyFDtdJKLqbQWUvXf6lwJ0v8YB8kLBbLR6JzV6uEmyFcERZf/JWXGuCIOWIqc//OVqbruL6j951dCv6ZCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_012304_193821_F2E6EA45 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: fugang.duan@nxp.com, mcoquelin.stm32@gmail.com, netdev@vger.kernel.org,
 p.zabel@pengutronix.de, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rm9yIHJ4IGZpbHRlciAnSFdUU1RBTVBfRklMVEVSX1BUUF9WMl9FVkVOVCcsIGl0IHNob3VsZCBi
ZQpQVFAgdjIvODAyLkFTMSwgYW55IGxheWVyLCBhbnkga2luZCBvZiBldmVudCBwYWNrZXQsIGJ1
dCBIVyBvbmx5CnRha2UgdGltZXN0YW1wIHNuYXBzaG90IGZvciBiZWxvdyBQVFAgbWVzc2FnZTog
c3luYywgUGRlbGF5X3JlcSwKUGRlbGF5X3Jlc3AuCgpUaGVuIGl0IGNhdXNlcyBiZWxvdyBpc3N1
ZSB3aGVuIHRlc3QgRTJFIGNhc2U6CnB0cDRsWzI0NzkuNTM0XTogcG9ydCAxOiByZWNlaXZlZCBE
RUxBWV9SRVEgd2l0aG91dCB0aW1lc3RhbXAKcHRwNGxbMjQ4MS40MjNdOiBwb3J0IDE6IHJlY2Vp
dmVkIERFTEFZX1JFUSB3aXRob3V0IHRpbWVzdGFtcApwdHA0bFsyNDgxLjc1OF06IHBvcnQgMTog
cmVjZWl2ZWQgREVMQVlfUkVRIHdpdGhvdXQgdGltZXN0YW1wCnB0cDRsWzI0ODMuNTI0XTogcG9y
dCAxOiByZWNlaXZlZCBERUxBWV9SRVEgd2l0aG91dCB0aW1lc3RhbXAKcHRwNGxbMjQ4NC4yMzNd
OiBwb3J0IDE6IHJlY2VpdmVkIERFTEFZX1JFUSB3aXRob3V0IHRpbWVzdGFtcApwdHA0bFsyNDg1
Ljc1MF06IHBvcnQgMTogcmVjZWl2ZWQgREVMQVlfUkVRIHdpdGhvdXQgdGltZXN0YW1wCnB0cDRs
WzI0ODYuODg4XTogcG9ydCAxOiByZWNlaXZlZCBERUxBWV9SRVEgd2l0aG91dCB0aW1lc3RhbXAK
cHRwNGxbMjQ4Ny4yNjVdOiBwb3J0IDE6IHJlY2VpdmVkIERFTEFZX1JFUSB3aXRob3V0IHRpbWVz
dGFtcApwdHA0bFsyNDg3LjMxNl06IHBvcnQgMTogcmVjZWl2ZWQgREVMQVlfUkVRIHdpdGhvdXQg
dGltZXN0YW1wCgpUaW1lc3RhbXAgc25hcHNob3QgZGVwZW5kZW5jeSBvbiByZWdpc3RlciBiaXRz
IGluIHJlY2VpdmVkIHBhdGg6ClNOQVBUWVBTRUwgVFNNU1RSRU5BIFRTRVZOVEVOQSAJUFRQX01l
c3NhZ2VzCjAxICAgICAgICAgeCAgICAgICAgIDAgICAgICAgICAgU1lOQywgRm9sbG93X1VwLCBE
ZWxheV9SZXEsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRGVsYXlfUmVzcCwgUGRl
bGF5X1JlcSwgUGRlbGF5X1Jlc3AsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUGRl
bGF5X1Jlc3BfRm9sbG93X1VwCjAxICAgICAgICAgMCAgICAgICAgIDEgICAgICAgICAgU1lOQywg
UGRlbGF5X1JlcSwgUGRlbGF5X1Jlc3AKCkZvciBkd21hYyB2NS4xMGEsIGVuYWJsaW5nIGFsbCBl
dmVudHMgYnkgc2V0dGluZyByZWdpc3RlcgpEV0NfRVFPU19USU1FX1NUQU1QSU5HW1NOQVBUWVBT
RUxdIHRvIDLigJliMDEsIGNsZWFyaW5nIGJpdCBbVFNFVk5URU5BXQp0byAw4oCZYjAsIHdoaWNo
IGNhbiBzdXBwb3J0IGFsbCByZXF1aXJlZCBldmVudHMuCgpTaWduZWQtb2ZmLWJ5OiBGdWdhbmcg
RHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1p
Y3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3Rt
aWNyby9zdG1tYWMvc3RtbWFjX21haW4uYwppbmRleCBiNmY5MmM3Li43MzY3N2MzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5jCisr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19tYWluLmMKQEAg
LTYzMCw3ICs2MzAsOCBAQCBzdGF0aWMgaW50IHN0bW1hY19od3RzdGFtcF9zZXQoc3RydWN0IG5l
dF9kZXZpY2UgKmRldiwgc3RydWN0IGlmcmVxICppZnIpCiAJCQljb25maWcucnhfZmlsdGVyID0g
SFdUU1RBTVBfRklMVEVSX1BUUF9WMl9FVkVOVDsKIAkJCXB0cF92MiA9IFBUUF9UQ1JfVFNWRVIy
RU5BOwogCQkJc25hcF90eXBlX3NlbCA9IFBUUF9UQ1JfU05BUFRZUFNFTF8xOwotCQkJdHNfZXZl
bnRfZW4gPSBQVFBfVENSX1RTRVZOVEVOQTsKKwkJCWlmIChwcml2LT5zeW5vcHN5c19pZCAhPSBE
V01BQ19DT1JFXzVfMTApCisJCQkJdHNfZXZlbnRfZW4gPSBQVFBfVENSX1RTRVZOVEVOQTsKIAkJ
CXB0cF9vdmVyX2lwdjRfdWRwID0gUFRQX1RDUl9UU0lQVjRFTkE7CiAJCQlwdHBfb3Zlcl9pcHY2
X3VkcCA9IFBUUF9UQ1JfVFNJUFY2RU5BOwogCQkJcHRwX292ZXJfZXRoZXJuZXQgPSBQVFBfVENS
X1RTSVBFTkE7Ci0tIAoyLjcuNAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
