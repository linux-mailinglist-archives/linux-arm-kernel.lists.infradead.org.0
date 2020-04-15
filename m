Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2441AAEC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2+eBWIgVlO7zd7V/Jj6wUnGG3B+tA2sgsc7yzuM+Voc=; b=gF/HZm0R4YKglO
	ipMt4nbbgD2Xpu7NFQaLuZhS+ICTivrgrObGFvVDqyM2a+eT52BSqmvS2hYHu3034fdYZmkAUK6T6
	olLGLefc7/A5mPJ6N9ilTKMXfEtfOu6jAjSHkuOaJt1EwZzhtp1SNtjDLfWcXwQnzQWLoUFUPGaEi
	m/XSb5RAf2CKGfU4v/Hm8DPo2yz9+3hJeS3/1b5F6PrS0lfnsVLbP21QMLcvFJHPHSvatUhxu724Z
	eKDyrDy/oT3gjV7vyDvgCxTHtHPit5JNgtC9HHi3MO2x0GKJ9E78VEf7RngZto7kdkExLMmAZ/JQN
	SU7a9e0vkDb73RVdGjOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOlML-0002SK-FN; Wed, 15 Apr 2020 16:57:57 +0000
Received: from mail-db8eur05on2055.outbound.protection.outlook.com
 ([40.107.20.55] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOlM9-0002Re-MP
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:57:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OMwdD/g/g4ofbxc8CqDaF/4KUrg09nWZU1RcPY+uuQJtwlpUXiNINesBWKZwM2nHk3BWrsETnk8z7o/uwVahFj74eaw7DBOafMSDc+FZMQubglNSMj+GnOvp/fYg4V6NK08RgxJ3QJu4WR0/9MC1KuteplHeVcIJvCjLrUdDKxGx7ZHNQtDKY9FJyXwlGhkdTzsBVasqoD+vOTvI5yiqLBOjdJ+iPsNYUIXoyaKrnB+Sn4QnByP+QrwEPix6MT7jkxLMT6kpY0HgLtVw0/vt4YuQYeM64UYOgVZGOgYS653ORSOHMHtHCrEVWVCXc4lLNZpe9Jfi3crPUPJ3XCy5cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4uiJAnAt3Zl/mTOT9ytV+2KEBbFreL5o0Ha78CUVw9A=;
 b=Rr7SSwIuZzSrRaFG5DLZ3zUvrh5W6Ll1pvgTewIQ2rU/lSbruK3mVxFB/ltLGfDCEj1ii76geVlNEd7IPqtCfHjBQqyf8JKiLRdfVggticsfZBkndS0HRgPstKoQg6I6YVEWVzt2cBfO+myWrOvMyV8RX5pl2mAcccFxMX4gkHpkL6ECtb8WPAjYbm3AG0yBmBljPOTubSpmjlAyPZHF9YRYAmzcR7NtK9fOrsj2vtmcC0jqqmTiNMcQF7V10ZfLnXV3O2/9OybBsza4Q5AbMd49qmjuJqkOJpCJyL1Y35n0Ek2XIYq1h0A0BI1/6AzHEyyDqkZNrjm4ugyuvE+dxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4uiJAnAt3Zl/mTOT9ytV+2KEBbFreL5o0Ha78CUVw9A=;
 b=m0OikrsD0QbMwlkxO4QnQiPM8RUihLcW1HR76/f6B9U8atNbBWosQuhA5xwWcHlJsFD/1u1rDuk19datJIlU1e5KC5BBu8o6RLtDruAJ9IzUTglXxf7Uvrcjy1abA8EJ/kkuy/t9LUbeXTGZEWqHrs500R9YHZpBHMGC0jgv4AY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (2603:10a6:803:7::25)
 by VI1PR0402MB2910.eurprd04.prod.outlook.com (2603:10a6:800:b6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.26; Wed, 15 Apr
 2020 16:57:40 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f%7]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 16:57:40 +0000
Subject: Re: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our own
 events
From: =?UTF-8?Q?Horia_Geant=c4=83?= <horia.geanta@nxp.com>
To: Adam Ford <aford173@gmail.com>, =?UTF-8?Q?Andr=c3=a9_Draszik?=
 <git@andred.net>, Herbert Xu <herbert@gondor.apana.org.au>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Robin Gong <yibin.gong@nxp.com>
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-6-git@andred.net>
 <VI1PR0402MB3485A743C94442533B6840F298E70@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <CAHCN7x+NJLaKF9SfHw9sDpw6zDUGs_TuD_co7USjQ5hgFDeaHg@mail.gmail.com>
 <fd36d0ae-f3fa-6608-9179-3e7562068433@nxp.com>
Message-ID: <ad07da3c-19c4-67cd-b819-63cf3746caf6@nxp.com>
Date: Wed, 15 Apr 2020 19:57:36 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <fd36d0ae-f3fa-6608-9179-3e7562068433@nxp.com>
Content-Language: en-US
X-ClientProxiedBy: AM0P190CA0005.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::15) To VI1PR0402MB3485.eurprd04.prod.outlook.com
 (2603:10a6:803:7::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.129] (84.117.251.185) by
 AM0P190CA0005.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.16 via Frontend Transport; Wed, 15 Apr 2020 16:57:38 +0000
X-Originating-IP: [84.117.251.185]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5913c546-319c-417f-d52a-08d7e15e1b79
X-MS-TrafficTypeDiagnostic: VI1PR0402MB2910:|VI1PR0402MB2910:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB29109A9D9D64EFBBD112F7B298DB0@VI1PR0402MB2910.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:826;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3485.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(376002)(346002)(396003)(16576012)(53546011)(966005)(478600001)(16526019)(26005)(7416002)(4326008)(81156014)(31686004)(36756003)(86362001)(8676002)(66556008)(6486002)(8936002)(66946007)(66476007)(5660300002)(2906002)(956004)(2616005)(6636002)(316002)(31696002)(54906003)(186003)(52116002)(110136005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r8rfUuqtdyQIwPzA6+bw+IMYavnOs1FssBjHp/b09AxxLDzOxjimnh5DiS/31cRGNIMEf/nwEKIf5LC/XBohe0hTZcbX7t0xalv0tWW1FL+JgxVgOwq75mQdk8Z1GCibTsm+bXSigOqAe1XyBSRBvl50PPNTzYpk6nqfm8MVpHMMzVEoeWXLVxW9+caYbhOUndZP2mmo2mkDMcMmFdNy2Hxsd/W8kp4alBRtSkJn4aBovdpvCACSLE4h7Ahm908xhUgsQFos3XB3ad13DWdbew5pPRi6WzPzMIGkfYBOj95uNr8QJZwBE09JyMMYYztbaYbu5wu9MRz85mPWYuETio/wW/bpmyaKF4+FHA82j5/DcTzIGgT2kX7V6fLytFHiBYRMQfl+aMSZZz8mw3aISgftxkGxx0g4nkcqjcqa4LSO1EjFyUhkeb//1R/p85mo+JbaH7ppJ3BqGoLejWsZsEbDbRjo4xWQWRmahiJAI3RE6IcEVIya9Ap4tjveSh4c4/XjgoGpCI9xNh/HIezwcw==
X-MS-Exchange-AntiSpam-MessageData: 04n3zeKF2X3sjudQLttXVQAMC9CIJmHsDn4222SluwsMvB8da/tpQt0hjmQD+zvyD+VyXW5XJPO+4+yaWkvJXhAooldyM/Zj81JG6Ri0VO0NFnFgqp9N+nZzf/fpz2tVAIqAK4A7kyiZ6UdzAghn7w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5913c546-319c-417f-d52a-08d7e15e1b79
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:57:40.4426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N/6yRHg1XJd/R2RMBwAWGvOfe6WO2jmfNZI1Xft2DYPKZ8JDpqoX22Zditk+5PMLfZIwA2AThE5AkRibqxwI2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2910
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_095745_810377_8637DE96 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.55 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.55 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVyYmVydCwgRG1pdHJ5LAoKT24gNC8xLzIwMjAgMTE6NTggQU0sIEhvcmlhIEdlYW50YSB3
cm90ZToKPiBPbiAzLzI4LzIwMjAgNTo0MyBBTSwgQWRhbSBGb3JkIHdyb3RlOgo+PiBPbiBNb24s
IE1hciAyLCAyMDIwIGF0IDM6MjIgQU0gSG9yaWEgR2VhbnRhIDxob3JpYS5nZWFudGFAbnhwLmNv
bT4gd3JvdGU6Cj4+Pgo+Pj4gT24gMi8yNS8yMDIwIDY6MTIgUE0sIEFuZHLDqSBEcmFzemlrIHdy
b3RlOgo+Pj4+IFRoZSBzbnZzX3B3cmtleSBzaGFyZXMgdGhlIFNOVlMgTFBTUiBzdGF0dXMgcmVn
aXN0ZXIgd2l0aCB0aGUgc252c19ydGMuCj4+Pj4KPj4+PiBUaGlzIGRyaXZlciBoZXJlIHNob3Vs
ZCBvbmx5IHJldHVybiBJUlFfSEFORExFRCBpZiB0aGUgc3RhdHVzIHJlZ2lzdGVyCj4+Pj4gaW5k
aWNhdGVzIHRoYXQgdGhlIGV2ZW50IHdlJ3JlIGhhbmRsaW5nIGluIHRoZSBpcnEgaGFuZGxlciB3
YXMgZ2VudWluZWx5Cj4+Pj4gaW50ZW5kZWQgZm9yIHRoaXMgZHJpdmVyLiBPdGhlcml3c2UgdGhl
IGludGVycnVwdCBzdWJzeXN0ZW0gd2lsbAo+Pj4+IGFzc3VtZSB0aGUgaW50ZXJydXB0IHdhcyBo
YW5kbGVkIHN1Y2Nlc3NmdWxseSBldmVuIHRob3VnaCBpdCB3YXNuJ3QKPj4+PiBhdCBhbGwuCj4+
Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyw6kgRHJhc3ppayA8Z2l0QGFuZHJlZC5uZXQ+Cj4+
Pj4gQ2M6ICJIb3JpYSBHZWFudMSDIiA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4+Pj4gQ2M6IEF5
bWVuIFNnaGFpZXIgPGF5bWVuLnNnaGFpZXJAbnhwLmNvbT4KPj4+PiBDYzogSGVyYmVydCBYdSA8
aGVyYmVydEBnb25kb3IuYXBhbmEub3JnLmF1Pgo+Pj4+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8
ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPj4+PiBDYzogUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2VybmVs
Lm9yZz4KPj4+PiBDYzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KPj4+PiBD
YzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPgo+Pj4+IENjOiBTYXNjaGEgSGF1ZXIg
PHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+Pj4gQ2M6IFBlbmd1dHJvbml4IEtlcm5lbCBUZWFt
IDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+Cj4+Pj4gQ2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFt
QGdtYWlsLmNvbT4KPj4+PiBDYzogTlhQIExpbnV4IFRlYW0gPGxpbnV4LWlteEBueHAuY29tPgo+
Pj4+IENjOiBEbWl0cnkgVG9yb2tob3YgPGRtaXRyeS50b3Jva2hvdkBnbWFpbC5jb20+Cj4+Pj4g
Q2M6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+Pj4+IENjOiBSb2JpbiBHb25n
IDx5aWJpbi5nb25nQG54cC5jb20+Cj4+Pj4gQ2M6IGxpbnV4LWNyeXB0b0B2Z2VyLmtlcm5lbC5v
cmcKPj4+PiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcKPj4+PiBDYzogbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4gQ2M6IGxpbnV4LWlucHV0QHZnZXIua2Vy
bmVsLm9yZwo+Pj4gRm9yIHBhdGNoZXMgMi02Ogo+Pj4gUmV2aWV3ZWQtYnk6IEhvcmlhIEdlYW50
xIMgPGhvcmlhLmdlYW50YUBueHAuY29tPgo+Pj4KPj4+IEFsc28gaW14OG1uLmR0c2kgYW5kIGlt
eDhtcC5kdHNpIHdpbGwgaGF2ZSB0byBiZSB1cGRhdGVkLgo+Pgo+PiBJcyB0aGVyZSBhbiB1cGRh
dGUgY29taW5nIGZvciB0aGUgOG1uIGZhbWlseT8gIEkgYW0gc2VlaW5nIGl0IG5vdCB3YWtlCj4+
IGZyb20gdGhlIHBvd2VyIGtleSwgYW5kIEkgd2FzIGhvcGluZyB0byByZXNvbHZlIHRoYXQgYmVm
b3JlIGkgbWFrZSBhCj4+IHB1c2ggdG8gc3VibWl0IGEgbmV3IDhNTiBib2FyZCBmb3IgcmV2aWV3
Lgo+Pgo+IFN0YXJ0aW5nIHdpdGggbGludXgtbmV4dCBuZXh0LTIwMjAwMzIwLCB0aGVyZSdzIGNv
bW1pdAo+IGFybTY0OiBkdHM6IGlteDhtbjogQWRkIHNudnMgY2xvY2sgdG8gcG93ZXJrZXkKPiAK
PiBDb3VsZCB5b3UgY29uZmlybSB5b3UndmUgdGVzdGVkIHdpdGggYSB0cmVlIGluY2x1ZGluZyBp
dD8KPiAKU2VlbXMgdGhhdCBmcm9tIHRoaXMgc2VyaWVzOgpodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1jcnlwdG8vMjAyMDAyMjUxNjEyMDEuMTk3NS01LWdpdEBhbmRyZWQubmV0L1QvCm9u
bHkgRFQgcGF0Y2hlcyAoMiwzLDQpIHdlcmUgYXBwbGllZC4KCldvdWxkIGl0IGJlIG9rIHRvIGdv
IHZpYSBjcnlwdG8gdHJlZSB3aXRoOgpbUEFUQ0ggdjIgMS82XSBkdC1iaW5kaW5nczogY3J5cHRv
OiBmc2wtc2VjNDogYWRkIHNudnMgY2xvY2sgdG8gcHdya2V5CgphbmQgdmlhIGlucHV0IHRyZWUg
d2l0aDoKW1BBVENIIHYyIDUvNl0gSW5wdXQ6IHNudnNfcHdya2V5IC0gZW5hYmxlIHNudnMgY2xv
Y2sgYXMgbmVlZGVkCltQQVRDSCB2MiA2LzZdIElucHV0OiBzbnZzX3B3cmtleSAtIG9ubHkgSVJR
X0hBTkRMRUQgZm9yIG91ciBvd24gZXZlbnRzCj8KClRoYW5rcywKSG9yaWEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
