Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844F2184579
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:04:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJSfEJn1xKwQW6UyON7EHxi8baj92qMGw0D0R2Ip32M=; b=o1uwgMLvCPR+Rk
	MzAHxNGtW2zt8xxKWJttXrvW3D7AWcPgY7zb1xXVjjPFtr+vp6yQo7wnidd9eApqGJY66v4fxAzcD
	dQEw2yCvq0h1i+Aq6SGPrpHi2T/9AOyRbeJeFvX9A6vd1kPJ8jGtwnMvnCtiW2GsVq/Lft+tRFP0g
	7q9IiUqERNEO0ibyI5LEuGEC4pyto69U7fqMRFuX2Yxkk7MX/qgjEa2gwO/qTe4hLiVQ8f8+LW+us
	KruriClGNe5zbEmfxjOoG5DwsKhmar+sA1BJF7lDvNNk6oCI2gPt7Qqln6Yw0KbfRO32mQQwG23h0
	aYXngYuR2CUzFI6slm2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi6q-0001Di-Sx; Fri, 13 Mar 2020 11:04:08 +0000
Received: from mail-bn8nam12on2109.outbound.protection.outlook.com
 ([40.107.237.109] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi6d-0001Bs-2A; Fri, 13 Mar 2020 11:04:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fLTbJC8MhC6oEGWFL5+j+iteNbC1bqX8Z26N0mybcC6x5dkFxWr/Mstt4moMo6Q7Ta8HT2PSPIWamxE0B4dPmBTpy4jBkMDZR9KEd1+ZL72B3LD+pG/7e1ATX6Rqxhv5HrLgsYH6ontkuO3tcxDLRw1PA94Rs/wGpVoOd0Imi/zcrR3HVBn9RGwtywxDaBXMDvZOaWp6gym9Hgijw+xpTTBOxdUEBk5f+soZKm4Lteii9OWrYlZrfjhyFXD8o5iP6Pz2cdDkSMR4Jvsrz+aMUSA3J7nMc9hGKQ94cc/xZb3ceca0PcRqOeAmp0tswoiRqrgCJ/ePNN95FVr1DFAlWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Od+NrTrql0tkVgx2dHy7tXk6otgJpPhWVCxqjf5FEQ=;
 b=O+dd6lwo+615A2lVNdnkGAj64erhm6kvh0r32G3WE8R4fh2l4zc422vO27kS+2az81kfb4wRmIC9YO+zMk8eHXwjtmj769UgV6duSjVj2EjAGgm4StWJpBb/ET18JCaRt/iaAkbRFSa4XCiDPVGSBBLTd3I5DVzqotL2bSzxZeiuM6F6US8XgrTY0Kqpwft3RXcCkaIcQN/carqhbnC0hr3iAyqehkJCmSmqA8gy2frgNt9AtFBcvMZbkyhuxAKuWfwzPSTOfQc72hAJfNKXAnZs9T59aZpsLi6fodOpLdChNrmtDccrSi60J6EGtqGPhltdewqzi491vV+V3P3D6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cypress.com; dmarc=pass action=none header.from=cypress.com;
 dkim=pass header.d=cypress.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cypress.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1Od+NrTrql0tkVgx2dHy7tXk6otgJpPhWVCxqjf5FEQ=;
 b=IwGNtYvFiKskGeYIScsNEvv4JP0IpRVCH13kV4/dNS0fO2guZeErcfuDlDDCR3D2ab40Xa6LhPJ3zwDc/pUGqPatQr3Jlva6hOX37CO6jDVTKv+XKQYZRoUIcGTvxEhJXlmhlq52B/Ei6U/mtiXPbfoQ0CtMHuIR1Abe48TNFt8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Chi-Hsien.Lin@cypress.com; 
Received: from BYAPR06MB4901.namprd06.prod.outlook.com (2603:10b6:a03:7a::30)
 by BYAPR06MB5352.namprd06.prod.outlook.com (2603:10b6:a03:ab::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Fri, 13 Mar
 2020 11:03:50 +0000
Received: from BYAPR06MB4901.namprd06.prod.outlook.com
 ([fe80::3cc3:7b1a:bd7b:a0a9]) by BYAPR06MB4901.namprd06.prod.outlook.com
 ([fe80::3cc3:7b1a:bd7b:a0a9%5]) with mapi id 15.20.2793.021; Fri, 13 Mar 2020
 11:03:50 +0000
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Soeren Moch <smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
 <1daadfe0-5964-db9b-818c-6e4c75ac6a69@web.de>
 <22526722-1ae8-a018-0e24-81d7ad7512dd@web.de> <2685733.IzV8dBlDb2@diego>
From: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
Message-ID: <d7b05a6c-dfba-c8e0-b5fb-f6f7f5a6c1b7@cypress.com>
Date: Fri, 13 Mar 2020 19:03:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
In-Reply-To: <2685733.IzV8dBlDb2@diego>
Content-Language: en-US
X-ClientProxiedBy: BYAPR21CA0007.namprd21.prod.outlook.com
 (2603:10b6:a03:114::17) To BYAPR06MB4901.namprd06.prod.outlook.com
 (2603:10b6:a03:7a::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.9.112.143] (61.222.14.99) by
 BYAPR21CA0007.namprd21.prod.outlook.com (2603:10b6:a03:114::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.6 via Frontend
 Transport; Fri, 13 Mar 2020 11:03:48 +0000
X-Originating-IP: [61.222.14.99]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 62396984-5167-4363-aa3b-08d7c73e35ed
X-MS-TrafficTypeDiagnostic: BYAPR06MB5352:|BYAPR06MB5352:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR06MB5352298F01774CF10B92EBCFBBFA0@BYAPR06MB5352.namprd06.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(136003)(366004)(376002)(39860400002)(346002)(396003)(199004)(5660300002)(86362001)(956004)(81166006)(52116002)(6666004)(31696002)(81156014)(8676002)(53546011)(2616005)(186003)(66574012)(26005)(16526019)(8936002)(3450700001)(36756003)(31686004)(2906002)(4326008)(478600001)(6486002)(66556008)(316002)(66476007)(66946007)(110136005)(16576012)(55004002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR06MB5352;
 H:BYAPR06MB4901.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: cypress.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eGiO0gzk4t7r6kvIeuU4WEULq2+RBBElmtOciU4hDrWj8PnVoXBrUJJIK4kBYuKuhj30ryX0OwqGnCq8SXCqDE1SDXI6B+TXb+JWSc8o9sJF3MVORyQs9n3S0bPvwXmn+Cc1yq0Es2FCIgS6QFCiVktB9Szsy6P2TLLbFXX/8OOr49CsUdHic7AXA3/yYQtKpliVlqKdZDnIeiaJtuOkJJTzdFU6Rqr23KGwwYQD1m/xmDT5+kE0YtGMMNW2PPLUD9o19FKtlq8T1qBsEIxkojn+N/FS9EVVA6KLApdTd0jJadcu5mBDmVO2RKiAgF9eGcFx8y8RzWLznX9cMlQ6seBZF/9dl0AESX1ewBUjCKO+ga1/Yi9Pb5c9khKZeOlZbj9cOFoyA9rIblK9AVP2+pniSOkqfz1+ibV8gQaZEnBuccFVjgwpXtSeNRCbZ+My2HX8kygrlyLFJzprsGYB2HOkI2IDmyaNbnPPGQNJd5qsAxnU617moKYTvKXnG6LI
X-MS-Exchange-AntiSpam-MessageData: jS/uIX4ame7sv/RcBvFv51Mbk/N9GufyJlubKi2gXzfNz4brHfHmA3jJufFNe+XRh0H+uQ4J52Pr/e0DAv/z/a9xo8GHiwzOqc+cUS1Z46h5zd7OZt6AZomHDlPj6WL9j9P+pjvfJ6h8HSK7GQ94rQ==
X-OriginatorOrg: cypress.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62396984-5167-4363-aa3b-08d7c73e35ed
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 11:03:50.7359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 011addfc-2c09-450d-8938-e0bbc2dd2376
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 538WHKl5SCZhcVyaaHXJ5euGqVJ8NU7PshdF/NjhCFR/ZjGw9Wml+kpWwJT3JN+uPWSeZYGJMQ0XiPiqFpL58w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB5352
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040359_974323_1EA02E1E 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Reply-To: chi-hsien.lin@cypress.com
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi8xNi8yMDE5IDc6NDMsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIFNvZXJlbiwK
PiAKPiBBbSBTb25udGFnLCAxNS4gRGV6ZW1iZXIgMjAxOSwgMjI6MjQ6MTAgQ0VUIHNjaHJpZWIg
U29lcmVuIE1vY2g6Cj4+IE9uIDEyLjEyLjE5IDExOjU5LCBTb2VyZW4gTW9jaCB3cm90ZToKPj4+
IE9uIDEyLjEyLjE5IDEwOjQyLCBLYWxsZSBWYWxvIHdyb3RlOgo+Pj4+IFNvZXJlbiBNb2NoIDxz
bW9jaEB3ZWIuZGU+IHdyaXRlczoKPj4+Pgo+Pj4+PiBBZGQgc3VwcG9ydCBmb3IgdGhlIEJDTTQz
NTkgY2hpcHNldCB3aXRoIFNESU8gaW50ZXJmYWNlIGFuZCBSU0RCIHN1cHBvcnQKPj4+Pj4gdG8g
dGhlIGJyY21mbWFjIHdpcmVsZXNzIG5ldHdvcmsgZHJpdmVyIGluIHBhdGNoZXMgMS03Lgo+Pj4+
Pgo+Pj4+PiBFbmhhbmNlIGRldmljZXRyZWUgb2YgdGhlIFJvY2tQcm82NCBhcm02NC9yb2NrY2hp
cCBib2FyZCB0byB1c2UgYW4KPj4+Pj4gQVA2MzU5U0EgYmFzZWQgd2lmaS9idCBjb21ibyBtb2R1
bGUgd2l0aCB0aGlzIGNoaXBzZXQgaW4gcGF0Y2hlcyA4LTkuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IENo
dW5nLUhzaWVuIEhzdSAoMSk6Cj4+Pj4+ICAgIGJyY21mbWFjOiBzZXQgRjIgYmxvY2tzaXplIGFu
ZCB3YXRlcm1hcmsgZm9yIDQzNTkKPj4+Pj4KPj4+Pj4gU29lcmVuIE1vY2ggKDUpOgo+Pj4+PiAg
ICBicmNtZm1hYzogZml4IHJhbWJhc2UgZm9yIDQzNTkvOQo+Pj4+PiAgICBicmNtZm1hYzogbWFr
ZSBlcnJvcnMgd2hlbiBzZXR0aW5nIHJvYW1pbmcgcGFyYW1ldGVycyBub24tZmF0YWwKPj4+Pj4g
ICAgYnJjbWZtYWM6IGFkZCBzdXBwb3J0IGZvciBCQ000MzU5IFNESU8gY2hpcHNldAo+Pj4+PiAg
ICBhcm02NDogZHRzOiByb2NrY2hpcDogUm9ja1BybzY0OiBlbmFibGUgd2lmaSBtb2R1bGUgYXQg
c2RpbzAKPj4+Pj4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IFJvY2tQcm82NDogaG9vayB1cCBi
bHVldG9vdGggYXQgdWFydDAKPj4+Pj4KPj4+Pj4gV3JpZ2h0IEZlbmcgKDMpOgo+Pj4+PiAgICBi
cmNtZm1hYzogcmVzZXQgdHdvIEQxMSBjb3JlcyBpZiBjaGlwIGhhcyB0d28gRDExIGNvcmVzCj4+
Pj4+ICAgIGJyY21mbWFjOiBhZGQgUlNEQiBjb25kaXRpb24gd2hlbiBzZXR0aW5nIGludGVyZmFj
ZSBjb21iaW5hdGlvbnMKPj4+Pj4gICAgYnJjbWZtYWM6IG5vdCBzZXQgbWJzcyBpbiB2aWYgaWYg
ZmlybXdhcmUgZG9lcyBub3Qgc3VwcG9ydCBNQlNTCj4+Pj4+Cj4+Pj4+ICAgLi4uL2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzICAgIHwgNTAgKysrKysrKysrKystLS0KPj4+
Pj4gICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5jICAgICAgfCAgOCAr
Ky0KPj4+Pj4gICAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2NmZzgwMjExLmMgICAg
fCA2OCArKysrKysrKysrKysrKystLS0tCj4+Pj4+ICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9i
cmNtZm1hYy9jaGlwLmMgICAgICAgIHwgNTQgKysrKysrKysrKysrKystCj4+Pj4+ICAgLi4uL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9jaGlwLmggICAgICAgIHwgIDEgKwo+Pj4+PiAgIC4u
Li9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvcGNpZS5jICAgICAgICB8ICAyICstCj4+Pj4+
ICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9zZGlvLmMgICAgICAgIHwgMTcgKysr
KysKPj4+Pj4gICBpbmNsdWRlL2xpbnV4L21tYy9zZGlvX2lkcy5oICAgICAgICAgICAgICAgICAg
fCAgMiArCj4+Pj4+ICAgOCBmaWxlcyBjaGFuZ2VkLCAxNzYgaW5zZXJ0aW9ucygrKSwgMjYgZGVs
ZXRpb25zKC0pCj4+Pj4gSnVzdCB0byBtYWtlIHN1cmUgd2UgYXJlIG9uIHRoZSBzYW1lIHBhZ2Us
IEkgd2lsbCBhcHBseSBwYXRjaGVzIDEtNyB0bwo+Pj4+IHdpcmVsZXNzLWRyaXZlcnMtbmV4dCBh
bmQgcGF0Y2hlcyA4LTkgZ28gdG8gc29tZSBvdGhlciB0cmVlPyBBbmQgdGhlcmUKPj4+PiBhcmUg
bm8gZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhlIGJyY21mbWFjIHBhdGNoZXMgYW5kIGR0cyBwYXRj
aGVzPwo+Pj4+Cj4+PiBZZXMsIHRoaXMgYWxzbyBpcyBteSB1bmRlcnN0YW5kaW5nLiBJJ20gZ2xh
ZCBpZiB5b3UgYXJlIGZpbmUgd2l0aAo+Pj4gcGF0Y2hlcyAxLTcuCj4+PiBIZWlrbyB3aWxsIHBp
Y2sgdXAgcGF0Y2hlcyA4LTkgbGF0ZXIgZm9yIGxpbnV4LXJvY2tjaGlwIGluZGVwZW5kZW50bHku
Cj4+PiBBbmQgaWYgd2UgbmVlZCBhbm90aGVyIHJvdW5kIG9mIHJldmlldyBmb3IgcGF0Y2hlcyA4
LTksIEkgdGhpbmsgd2UgZG9uJ3QKPj4+IG5lZWQgdG8gYm90aGVyIGxpbnV4LXdpcmVsZXNzIHdp
dGggdGhpcy4KPj4KPj4gSGVpa28sCj4+Cj4+IGlzIHRoaXMgT0sgZm9yIHlvdSB3aGVuIHBhdGNo
ZXMgMS03IGFyZSBtZXJnZWQgbm93IGluIHdpcmVsZXNzLWRyaXZlcnMsCj4+IGFuZCB0aGVuIEkg
c2VuZCBhIHYzIGZvciBwYXRjaGVzIDgtOSBvbmx5IGZvciB5b3UgdG8gbWVyZ2UgaW4KPj4gbGlu
dXgtcm9ja2NoaXAgbGF0ZXI/IE9yIGRvIHlvdSBwcmVmZXIgYSBmdWxsIHYzIGZvciB0aGUgd2hv
bGUgc2VyaWVzCj4+IHdpdGggb25seSB0aGlzIHBlbmRpbmcgY2xvY2sgbmFtZSB1cGRhdGUgaW4g
cGF0Y2ggOT8KPiAKPiBOb3BlLCBtZXJnaW5nIDEtNyBmcm9tIHRoaXMgdjIgYW5kIHRoZW4gZ2V0
dGluZyBhIHYzIHdpdGggb25seSB0aGUgZHRzCj4gc3R1ZmYgaXMgcGVyZmVjdGx5IGZpbmUgOi0p
CgpTb2VyZW4sCgpJIHN1cHBvc2UgcGF0Y2ggMS03IGZyb20gdGhpcyBzZXJpb3VzIGFyZSBhbGwg
Z29vZCBmb3IgbWVyZ2luZy4gSXMgdGhhdCAKcmlnaHQ/IElmIHNvLCBjb3VsZCB5b3UgcGxlYXNl
IGNyZWF0ZSBhIHJlYmFzZWQgVjM/CgoKUmVnYXJkcywKQ2hpLWhzaWVuIExpbgoKPiAKPiBIZWlr
bwo+IAo+IAo+IC4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
