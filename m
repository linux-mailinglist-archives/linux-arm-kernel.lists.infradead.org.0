Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2081F1F63DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:42:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wgp3z5iJKE+nQWskYngZJRyqEuiIuOXwjhKkVgnTFac=; b=mid9TIrSZByK9RDNIUHF1nwlf
	UM7C+dwKGo9MMEpL9Jtb5xeI87V/E0QbKiNjtvMCi0TVrsehI2KPrb7iX9CVv1P/F6lmyu5GzaOcy
	g7hA1PFAg03yVaHHOz7YaDQBaTNKNj5bEzSdc3yAv9bRchzN403uR0IG9OsfJEs5pyhyIVTGHAOSZ
	/ayLKLKJ+fo4jmIS0vIc95IpHqh40R68+A+0pe/CWIWGk94+jVgVsl+UxSUHTKgFy1/xVbHJ+lnq2
	6weNjQGhIXusTNlP5sApCW79XlLb7LLKX2hZpnq9y+4V9ZvycZnmIrPS3DMuITWg7soqLxIYsqjVm
	kLBBdkn7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIn6-0004Ns-Fu; Thu, 11 Jun 2020 08:42:28 +0000
Received: from mail-am6eur05on2074.outbound.protection.outlook.com
 ([40.107.22.74] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjImy-0004NV-Fy
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:42:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=guRGX/iD39p9E6YnWJoiU/5f/nQUdzinVNTq15oS9dIp53vt5HB+w54A84zGwlVON6G5lVsBgw3q0W66OpOBGB3gQ4XNXETUv+bv9p/TFMV+SElgHMMui481J9yg6A2BDtu1CC6HyHyWYW2URX606BsSM7Dulte69yzCccBivUS8s6TCDzx++xgQSJV1kgR2UKp1RWvrZA6Gjw9yBCD44jT6LkrreScSwrtIlpRGeEgDFaOtAtMlZkSPBjtGLqKQaDDYV9/uvoPQJnzDZPu1V/L/TaiAHsjvwlXYa3TszM4I1f1WRclbCr3mnYsT6lT42pmUXjoj2M7MPd4Yn3tc3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aaKLcSMzri/TGVbDLMfiPh3RMLvoqPo4w7dwSjzRa9s=;
 b=XOwloy7R9Cs6LIfHCN7YNMvlP8Uo8s9Ge0K7MSVHngNfFW6jwDrzEDMMYxuMEauDBN04G/YCnTMY62WRo5BzQAEkN54MfqDuXXiU1jn8hUofBQeptwX4uiwb1StxyrHG9zEsly43ogYTr+nsrkYXdvZTcHmUPdpOzmNEajBCMpS/OCQG4df6W8Rw0FssQbcYC/MHpSRsoaZnmcyeenyFJczt6nfU9jsR+nr/LsjFXSCgCRICjMTlyuDmmUjn+efdyM/S3UjEz/7FTjp5XcNAWEJ8SkmllBuBbjVdG+pY3Rzxto9f79HHBQIy/asnRwiK+AgEpzJAP7g0OpN1u2xRHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aaKLcSMzri/TGVbDLMfiPh3RMLvoqPo4w7dwSjzRa9s=;
 b=aKkH4nPkOQl2CL6O/IWNnCYvdaw39QLfRy2hjsV+Xk0uqyv38iuNXO1g0eTYnNU9EY497ODjTSJZ8TMbCVEO3214lnSXOR/H/dKiDGS5hq3SMER8FjsLNYbw9EIq7zKfsvPT6fKoXdlVWbHGWSA7zxwTwLi7juvRJGwnicUceno=
Authentication-Results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19) by VI1PR0401MB2464.eurprd04.prod.outlook.com
 (2603:10a6:800:56::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Thu, 11 Jun
 2020 08:42:17 +0000
Received: from VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60]) by VI1PR0401MB2287.eurprd04.prod.outlook.com
 ([fe80::9d5c:685e:4b51:fa60%3]) with mapi id 15.20.3066.023; Thu, 11 Jun 2020
 08:42:17 +0000
Subject: Re: [PATCH V4 4/9] pinctrl: imx8mn: Support building as module
To: Anson Huang <Anson.Huang@nxp.com>, aisheng.dong@nxp.com,
 festevam@gmail.com, shawnguo@kernel.org, stefan@agner.ch,
 kernel@pengutronix.de, linus.walleij@linaro.org, s.hauer@pengutronix.de,
 linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
 <1591775865-26872-5-git-send-email-Anson.Huang@nxp.com>
From: Daniel Baluta <daniel.baluta@nxp.com>
Message-ID: <33292cab-c49d-0878-dd8c-1166258e089b@nxp.com>
Date: Thu, 11 Jun 2020 11:42:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
In-Reply-To: <1591775865-26872-5-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR01CA0110.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:168::15) To VI1PR0401MB2287.eurprd04.prod.outlook.com
 (2603:10a6:800:2e::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:2f08:560d:e500:fcf6:7c4d:8076:b570]
 (2a02:2f08:560d:e500:fcf6:7c4d:8076:b570) by
 AM0PR01CA0110.eurprd01.prod.exchangelabs.com (2603:10a6:208:168::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18 via Frontend
 Transport; Thu, 11 Jun 2020 08:42:16 +0000
X-Originating-IP: [2a02:2f08:560d:e500:fcf6:7c4d:8076:b570]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0c6849ab-3f55-4489-4cdd-08d80de358cd
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2464:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0401MB246489B0406B9CCFB69AC275F9800@VI1PR0401MB2464.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0431F981D8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DImLV8J8FexEW+sHFXrJ06czzddzPXy6fja/UdRWbtx5WYQRbh64LUOUVL2Nok1SDZekkXV71JhbboYozr+hlB7gVf5B7fhGYUuefRF/rg+0BXESOgxZ6azIQq983CydhplhoB4QBo4hZJUArNCW70kPUcKagLmsOhCE7yIOwu0ZJ1qL5bMDI7jXINqQFwqFSlWpjvcHDK+m05hNJc7JQE0BM3DN+hbECZ4IiVh/MPQLfrv7tpQ0KSLl8K9+agLU2XiW+Xhwc59JvCBKJ/PV5ckQtVEoPrepEWiV/y+61npYQKb4X7Kp5B5e7BFg3tTgqVOEj3TYQ7nFE5z2mXe4V0Qr2q9KeRu/G9e+/tSKtOBAy8aDZmbtW6ZjitF0zrPUb2M0udQnJmJ5w7TJGu3SxtiuhC7ewHSrbA8IstPB6Us=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0401MB2287.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(2906002)(31686004)(83380400001)(8676002)(186003)(316002)(86362001)(5660300002)(16526019)(66556008)(8936002)(478600001)(66946007)(66476007)(2616005)(31696002)(6486002)(4326008)(53546011)(36756003)(52116002)(44832011)(921003)(32563001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: GpH0JD7MWUdthuNbZSrrx7gA3DnKyjAWMUenfVat42egxvPlaC5sPuW1iDdvqJXDc4HYHrI/vOMQohS53RBNV6zIXje+BOoXPXtjLAfJg0A/6zbGWhiEhPkK419VRe0wIf72sV8O99KStnBf9GtBjfpSaGpSCj7zkQp2GYe9tOuQO3Ct2WgN1b1F0u+gBKy8XeTdnBwvLTQo842iVZ1DInrDhFv864DOQRfX+2zI6sj42+LJA3MV6OU1ueTbxV8wf4+8y3zwYjI0QnhwXnQnys6FMrhjfZKgOXTce7VosY9+OOsd/feojf6F4+D1JICKB6z5xe12Qmoy2ieZAsCiVLyRRKrOQG4kC4xP6P9dr2O4BcVIpmoEO4UFQ1WcrWU0dCNHRAEaYFg/ZhHZGse5oLBlSsP0XNM8SzrX2t5Xv3M2Irh64vN/pSWc3H7p3Ww6nwIlRD8zbEfEksY9SPv57kVzCZDEGovXeqF0yPO8gNmenZAGQIFup/o9vXmKal0MjfQf9/qZUVgSqCQBxZ6yVMC1nUDt2f/SNAJh3brpGTxPcOt/1tg2lmBVVMSRA0p3
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6849ab-3f55-4489-4cdd-08d80de358cd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2020 08:42:17.5510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /o8oBHa8emBcnA4L+AGRGfXy1Afn5n4egA2ha1vasKOFS4p4+MhRUDiqAUN4NjeG2vBBcLMBJKkGBvzznEpDNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_014220_534664_6DD2E9A8 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.74 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux-imx@nxp.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWF5YmUgdGhpcyBpcyBvYnZpb3VzIGJ1dCBJIHdvdWxkIHJlYWxseSBsaWtlIHRvIHNlZSBhbiBl
eHBsYW5hdGlvbgoKb2Ygd2h5IHdlIGFyZSBzd2l0Y2hpbmcgZnJvbSBhcmNoX2luaXRjYWxsIHRv
IHBsYXRmb3JtX2luaXQuCgpDb21taXQgbWVzc2FnZSBhY3QgYXMgZG9jdW1lbnRhdGlvbsKgIGZv
ciB0aGUgcmV2aWV3ZXJzLgoKT24gMTAuMDYuMjAyMCAxMDo1NywgQW5zb24gSHVhbmcgd3JvdGU6
Cj4gU3VwcG9ydCBidWlsZGluZyBpLk1YOE1OIHBpbmN0cmwgZHJpdmVyIGFzIG1vZHVsZS4KPgo+
IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+IC0tLQo+
IE5vIGNoYW5nZS4KPiAtLS0KPiAgIGRyaXZlcnMvcGluY3RybC9mcmVlc2NhbGUvS2NvbmZpZyAg
ICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL3BpbmN0cmwvZnJlZXNjYWxlL3BpbmN0cmwtaW14
OG1uLmMgfCAxMCArKysrLS0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvZnJlZXNj
YWxlL0tjb25maWcgYi9kcml2ZXJzL3BpbmN0cmwvZnJlZXNjYWxlL0tjb25maWcKPiBpbmRleCA1
NTZhZGMzLi5mZTNlNDljIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9mcmVlc2NhbGUv
S2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9mcmVlc2NhbGUvS2NvbmZpZwo+IEBAIC0x
MzIsNyArMTMyLDcgQEAgY29uZmlnIFBJTkNUUkxfSU1YOE1NCj4gICAJICBTYXkgWSBoZXJlIHRv
IGVuYWJsZSB0aGUgaW14OG1tIHBpbmN0cmwgZHJpdmVyCj4gICAKPiAgIGNvbmZpZyBQSU5DVFJM
X0lNWDhNTgo+IC0JYm9vbCAiSU1YOE1OIHBpbmN0cmwgZHJpdmVyIgo+ICsJdHJpc3RhdGUgIklN
WDhNTiBwaW5jdHJsIGRyaXZlciIKPiAgIAlkZXBlbmRzIG9uIEFSQ0hfTVhDCj4gICAJc2VsZWN0
IFBJTkNUUkxfSU1YCj4gICAJaGVscAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvZnJl
ZXNjYWxlL3BpbmN0cmwtaW14OG1uLmMgYi9kcml2ZXJzL3BpbmN0cmwvZnJlZXNjYWxlL3BpbmN0
cmwtaW14OG1uLmMKPiBpbmRleCAxMDBlZDhjLi5iNmRiNzgwIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGluY3RybC9mcmVlc2NhbGUvcGluY3RybC1pbXg4bW4uYwo+ICsrKyBiL2RyaXZlcnMvcGlu
Y3RybC9mcmVlc2NhbGUvcGluY3RybC1pbXg4bW4uYwo+IEBAIC01LDYgKzUsNyBAQAo+ICAgCj4g
ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+ICsj
aW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvb2YuaD4KPiAgICNp
bmNsdWRlIDxsaW51eC9waW5jdHJsL3BpbmN0cmwuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9wbGF0
Zm9ybV9kZXZpY2UuaD4KPiBAQCAtMzI2LDYgKzMyNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
b2ZfZGV2aWNlX2lkIGlteDhtbl9waW5jdHJsX29mX21hdGNoW10gPSB7Cj4gICAJeyAuY29tcGF0
aWJsZSA9ICJmc2wsaW14OG1uLWlvbXV4YyIsIC5kYXRhID0gJmlteDhtbl9waW5jdHJsX2luZm8s
IH0sCj4gICAJeyAvKiBzZW50aW5lbCAqLyB9Cj4gICB9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxF
KG9mLCBpbXg4bW5fcGluY3RybF9vZl9tYXRjaCk7Cj4gICAKPiAgIHN0YXRpYyBpbnQgaW14OG1u
X3BpbmN0cmxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIHsKPiBAQCAt
MzQwLDkgKzM0Miw1IEBAIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyIGlteDhtbl9waW5j
dHJsX2RyaXZlciA9IHsKPiAgIAl9LAo+ICAgCS5wcm9iZSA9IGlteDhtbl9waW5jdHJsX3Byb2Jl
LAo+ICAgfTsKPiAtCj4gLXN0YXRpYyBpbnQgX19pbml0IGlteDhtbl9waW5jdHJsX2luaXQodm9p
ZCkKPiAtewo+IC0JcmV0dXJuIHBsYXRmb3JtX2RyaXZlcl9yZWdpc3RlcigmaW14OG1uX3BpbmN0
cmxfZHJpdmVyKTsKPiAtfQo+IC1hcmNoX2luaXRjYWxsKGlteDhtbl9waW5jdHJsX2luaXQpOwo+
ICttb2R1bGVfcGxhdGZvcm1fZHJpdmVyKGlteDhtbl9waW5jdHJsX2RyaXZlcik7Cj4gK01PRFVM
RV9MSUNFTlNFKCJHUEwgdjIiKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
