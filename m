Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ECA19A812
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zdWyJqDy2wnJg7aSoAGaHSOzGdK1PWwH9jPM2YbZRI=; b=rzjNvw5//s/Inp
	CCeLLwBVQDKqwBV/zK4v6sC+rhPC8A1A/c4/rAofGCZ+EEbXixYjFhudv+Vhn0ZCzzjFRvKUFaGGC
	SAJ6+SQkgGkFaSLt/D44Q0TG4M08Y/hZvpohg0oHMXbkP6pXK78jEUFZn0zgS6YxxpkIE3rY4mnSv
	kF5/G7SCTqoZv1jg/ysoYC9aSKe+EdRSirhFRQjXIhAT5Ho1AGG2m9Gvoag/hcSr1CgJ4jpKxNrIZ
	4KDOxCdGoPpJa2YleegYSXRq2CCihitxCeYCKcBbzzuMY8TnGSXVf9tYmYtFAWlMtfgnMJDzlRkf2
	Nig5LgFUMTqklC6h6ACA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJZDH-0003Zr-Ez; Wed, 01 Apr 2020 08:59:07 +0000
Received: from mail-eopbgr60081.outbound.protection.outlook.com ([40.107.6.81]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZDA-0003Z3-Fk
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:59:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AwxntRDI7TxZM+zpsLTtSepxEf2ahUXXNizTr2V8Nd+vKnU0HRtgGjlDCS8Xntz43a/VKRYb4Qd889zR3v0LysTCQr+yYseIcW/K6ze6xe1y57gloKfg/TdWpJNXEFVvgsXsjIFNDvdowC65iCGOcnVO11VUp2+PXSNHxUFUVxPI4M109ZUh+BkpBWOKi5gsBcwXrfNhK+ZyW4tEDTc3XyjeoN3PMz8gNFuEiHkxKU0D1o3C3LwRzQBkHTw0J9tG+dP02o+4mrb470MUPpKqVRRlnHTlMtcQac+eqG+B+56chxKw03y/K8DJZJ44O11tpD7sRfuCCUl2yKLaNuf5mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4dCXclmoe09oER1oJZd9I98HtlHBLiKLFEkdikmAuAY=;
 b=j3uBsamZDODSovvhELaCNYw+XFEINiBMMFiCvx9xEhcyfkyNBQWz3I+57MfTN6k6I0tcNrmddyOvNZpgK06I4V5jNWwsNb6VFuUqE7FqXUeUOlRnlEAVAR84ekL2N6GWIn4MzFMHcoPUIq2uTc6+R33V7f7aZyM9YXCHrzgtyhYLVpS38SSSGaW5f+R0DEI6kLQhqUE8ZBKtmqQyCfVT/F9yzaSgRgKzXyGxWLQBDs+GA1gwOHQia/GiDBdiUmzY1Eww+1XNWodjNBKCZbQTziTSbKm2H0JtDjStKowFz5Z7ZBQCFFn/JvFG44k9BDIh0qYmXyakrvIlAy5W/NWRZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4dCXclmoe09oER1oJZd9I98HtlHBLiKLFEkdikmAuAY=;
 b=QjJ6X4icK3kWqTAe992Ein8yi2zz+nKyXEwTl8kW7DIBeQaFyYm6HKuEXzJiIUXelFNWvX5ap7zSXm8E221gDMQDoHh7aKcn+vQ2rJtgMzwOl+U+Kz2JBfvNhT9GKVPdpolr98Relu17ppw6xAJXZJKA/W/myq4fhgRL4wAyebM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=horia.geanta@nxp.com; 
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com (52.134.3.153) by
 VI1PR0402MB3759.eurprd04.prod.outlook.com (52.134.15.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Wed, 1 Apr 2020 08:58:54 +0000
Received: from VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f]) by VI1PR0402MB3485.eurprd04.prod.outlook.com
 ([fe80::751e:7e8d:ed4:ef5f%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 08:58:54 +0000
Subject: Re: [PATCH v2 6/6] Input: snvs_pwrkey - only IRQ_HANDLED for our own
 events
To: Adam Ford <aford173@gmail.com>
References: <20200225161201.1975-1-git@andred.net>
 <20200225161201.1975-6-git@andred.net>
 <VI1PR0402MB3485A743C94442533B6840F298E70@VI1PR0402MB3485.eurprd04.prod.outlook.com>
 <CAHCN7x+NJLaKF9SfHw9sDpw6zDUGs_TuD_co7USjQ5hgFDeaHg@mail.gmail.com>
From: =?UTF-8?Q?Horia_Geant=c4=83?= <horia.geanta@nxp.com>
Message-ID: <fd36d0ae-f3fa-6608-9179-3e7562068433@nxp.com>
Date: Wed, 1 Apr 2020 11:58:49 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
In-Reply-To: <CAHCN7x+NJLaKF9SfHw9sDpw6zDUGs_TuD_co7USjQ5hgFDeaHg@mail.gmail.com>
Content-Language: en-US
X-ClientProxiedBy: AM0PR05CA0074.eurprd05.prod.outlook.com
 (2603:10a6:208:136::14) To VI1PR0402MB3485.eurprd04.prod.outlook.com
 (2603:10a6:803:7::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.129] (84.117.251.185) by
 AM0PR05CA0074.eurprd05.prod.outlook.com (2603:10a6:208:136::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Wed, 1 Apr 2020 08:58:51 +0000
X-Originating-IP: [84.117.251.185]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 27305df6-7ca2-470a-24c1-08d7d61ae760
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3759:|VI1PR0402MB3759:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB37592A16063B44B016E8B46598C90@VI1PR0402MB3759.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:635;
X-Forefront-PRVS: 03607C04F0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR0402MB3485.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(366004)(136003)(4326008)(186003)(16526019)(8936002)(81156014)(6486002)(26005)(31696002)(86362001)(53546011)(478600001)(6916009)(66946007)(66476007)(66556008)(31686004)(16576012)(7416002)(81166006)(2906002)(36756003)(316002)(52116002)(5660300002)(2616005)(54906003)(8676002)(956004);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JO6pIwXd0qdU6IzMGQtsgDwesKM3UxUCOLdQe0xqgbRIdr+sEEs6w5y1hVgVqJecOq9sGsQSK5BWyPaSMLu1tTWHdGsGcVtDJnKg8CTBloPmAI/ujln1edKRWFHfyjX857H+1EvPHqMazBuM5dfviu4KYMGmefLR8xcl3LUl9qxDc4eeyJ8Hzgazhz7ap+IljkyfNPU1wrsyQv+JCzhKfiA78KEvkMpnACgadIZln2yqG1dM68cS4BarUA9kgWCGy1rp4fvGPB3TwUtEArmCdRiZGfW/b/lqj8pK+Eorrc281O+Txi2jU20uYPtvu7T30/3gSnBvznP28lKpzfhTyiXrSgMN+gm0bCS3fN3flgFrGKTwR/+nPWCbbEpER4nrEoXd4VT2WGdCKzitaWOJtmf4jTWTANKYZJ2Qsg9Jn2dQICITmhA+rZCMysv1q5l4
X-MS-Exchange-AntiSpam-MessageData: fLfHbKW1xRbXVWKiTgFwa051hZJdfQ/fS0B8G+MqeGYa8W4MzN19imQnmb2g0rjCcnnEAydQmixvPQ5HwuaHZYlEnSjThnJE660FbYoBca5VzN1BVVZGWToy9pXb71tut5ZsHpN05MQ5g++rtZ10eg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27305df6-7ca2-470a-24c1-08d7d61ae760
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 08:58:54.0053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ROF+O8SaSxI/sFxwpD/QQWEHUmCECmlzsMKk5O+AXdhIVFlDbULwLLKIRB/ku5tuE+r7NJtkxu/BdKOSIPhLnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3759
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_015900_636767_D2C7DD91 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Aymen Sghaier <aymen.sghaier@nxp.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Anson Huang <anson.huang@nxp.com>,
 =?UTF-8?Q?Andr=c3=a9_Draszik?= <git@andred.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yOC8yMDIwIDU6NDMgQU0sIEFkYW0gRm9yZCB3cm90ZToKPiBPbiBNb24sIE1hciAyLCAy
MDIwIGF0IDM6MjIgQU0gSG9yaWEgR2VhbnRhIDxob3JpYS5nZWFudGFAbnhwLmNvbT4gd3JvdGU6
Cj4+Cj4+IE9uIDIvMjUvMjAyMCA2OjEyIFBNLCBBbmRyw6kgRHJhc3ppayB3cm90ZToKPj4+IFRo
ZSBzbnZzX3B3cmtleSBzaGFyZXMgdGhlIFNOVlMgTFBTUiBzdGF0dXMgcmVnaXN0ZXIgd2l0aCB0
aGUgc252c19ydGMuCj4+Pgo+Pj4gVGhpcyBkcml2ZXIgaGVyZSBzaG91bGQgb25seSByZXR1cm4g
SVJRX0hBTkRMRUQgaWYgdGhlIHN0YXR1cyByZWdpc3Rlcgo+Pj4gaW5kaWNhdGVzIHRoYXQgdGhl
IGV2ZW50IHdlJ3JlIGhhbmRsaW5nIGluIHRoZSBpcnEgaGFuZGxlciB3YXMgZ2VudWluZWx5Cj4+
PiBpbnRlbmRlZCBmb3IgdGhpcyBkcml2ZXIuIE90aGVyaXdzZSB0aGUgaW50ZXJydXB0IHN1YnN5
c3RlbSB3aWxsCj4+PiBhc3N1bWUgdGhlIGludGVycnVwdCB3YXMgaGFuZGxlZCBzdWNjZXNzZnVs
bHkgZXZlbiB0aG91Z2ggaXQgd2Fzbid0Cj4+PiBhdCBhbGwuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogQW5kcsOpIERyYXN6aWsgPGdpdEBhbmRyZWQubmV0Pgo+Pj4gQ2M6ICJIb3JpYSBHZWFudMSD
IiA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4+PiBDYzogQXltZW4gU2doYWllciA8YXltZW4uc2do
YWllckBueHAuY29tPgo+Pj4gQ2M6IEhlcmJlcnQgWHUgPGhlcmJlcnRAZ29uZG9yLmFwYW5hLm9y
Zy5hdT4KPj4+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD4KPj4+
IENjOiBSb2IgSGVycmluZyA8cm9iaCtkdEBrZXJuZWwub3JnPgo+Pj4gQ2M6IE1hcmsgUnV0bGFu
ZCA8bWFyay5ydXRsYW5kQGFybS5jb20+Cj4+PiBDYzogU2hhd24gR3VvIDxzaGF3bmd1b0BrZXJu
ZWwub3JnPgo+Pj4gQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPj4+
IENjOiBQZW5ndXRyb25peCBLZXJuZWwgVGVhbSA8a2VybmVsQHBlbmd1dHJvbml4LmRlPgo+Pj4g
Q2M6IEZhYmlvIEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4KPj4+IENjOiBOWFAgTGludXgg
VGVhbSA8bGludXgtaW14QG54cC5jb20+Cj4+PiBDYzogRG1pdHJ5IFRvcm9raG92IDxkbWl0cnku
dG9yb2tob3ZAZ21haWwuY29tPgo+Pj4gQ2M6IEFuc29uIEh1YW5nIDxBbnNvbi5IdWFuZ0BueHAu
Y29tPgo+Pj4gQ2M6IFJvYmluIEdvbmcgPHlpYmluLmdvbmdAbnhwLmNvbT4KPj4+IENjOiBsaW51
eC1jcnlwdG9Admdlci5rZXJuZWwub3JnCj4+PiBDYzogZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5v
cmcKPj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+IENjOiBs
aW51eC1pbnB1dEB2Z2VyLmtlcm5lbC5vcmcKPj4gRm9yIHBhdGNoZXMgMi02Ogo+PiBSZXZpZXdl
ZC1ieTogSG9yaWEgR2VhbnTEgyA8aG9yaWEuZ2VhbnRhQG54cC5jb20+Cj4+Cj4+IEFsc28gaW14
OG1uLmR0c2kgYW5kIGlteDhtcC5kdHNpIHdpbGwgaGF2ZSB0byBiZSB1cGRhdGVkLgo+IAo+IElz
IHRoZXJlIGFuIHVwZGF0ZSBjb21pbmcgZm9yIHRoZSA4bW4gZmFtaWx5PyAgSSBhbSBzZWVpbmcg
aXQgbm90IHdha2UKPiBmcm9tIHRoZSBwb3dlciBrZXksIGFuZCBJIHdhcyBob3BpbmcgdG8gcmVz
b2x2ZSB0aGF0IGJlZm9yZSBpIG1ha2UgYQo+IHB1c2ggdG8gc3VibWl0IGEgbmV3IDhNTiBib2Fy
ZCBmb3IgcmV2aWV3Lgo+IApTdGFydGluZyB3aXRoIGxpbnV4LW5leHQgbmV4dC0yMDIwMDMyMCwg
dGhlcmUncyBjb21taXQKYXJtNjQ6IGR0czogaW14OG1uOiBBZGQgc252cyBjbG9jayB0byBwb3dl
cmtleQoKQ291bGQgeW91IGNvbmZpcm0geW91J3ZlIHRlc3RlZCB3aXRoIGEgdHJlZSBpbmNsdWRp
bmcgaXQ/CgpUaGFua3MsCkhvcmlhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
