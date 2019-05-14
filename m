Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC2A1C786
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 13:15:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m53RB5Q2O2SUhMm8LIvtyvVNXIgQF3iIUivqc/1Fk58=; b=Q4ezCtsxWtt7FY
	IhjCd1Xnn7V3f09OROLc6E+PuxTCaDC8VxH4555qaGw7Hsw8IOnuoRpqYSj95Bhta47IygoB/eh5D
	mOqcHGD4qS9RD8TYEbiq2BdQLeOLylnxJEXMq0BxLX8FL9j6V3bAfx/CloWCSuGkxITYAWHhJFxMp
	PWJLUpivy9SM1RMNqnOWfUAS9XxgSOAuRATi3b53xsEDh03MgDNqyNjusy+s/KiviEwg5MucGfWQp
	h3mA/Nn1mpyh8pwhisa25pNFgeiQ29uHPZWtfqfdnVabl9DHMoyuUsFCETWmNnGSxCy4HjdlWrkJo
	cVbNGG/vke0ICQL9joIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQVOW-00083w-UO; Tue, 14 May 2019 11:14:52 +0000
Received: from mail-eopbgr680083.outbound.protection.outlook.com
 ([40.107.68.83] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQVOO-00082i-SI; Tue, 14 May 2019 11:14:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wWUfG+yAeWpIFHiQEbJVRsPaIxYbgu/1bYUNwfjWNc=;
 b=cW3cWlmR7dgMo+7MY58sWZivCbBf66xJ+LfHXurYYJ2i9nI0RfA3Pj6Kxa+QO3Ax2/R6RIU2NMFAqIwBq+yNRudxo/XKY9jYLrGb88OWPOX3QagNa1AF9C8tPiaV7URldi6O0Luo5HpGuDgTsR7qgcz3wWVIQqKI16THKgGhJzs=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.31.141) by
 BN7PR08MB5684.namprd08.prod.outlook.com (20.176.31.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.25; Tue, 14 May 2019 11:14:40 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::8d6c:f350:4859:e532]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::8d6c:f350:4859:e532%4]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 11:14:40 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: RE: [EXT] [PATCH v1 2/3] scsi: ufs: add error handling of auto-hibern8
Thread-Topic: [EXT] [PATCH v1 2/3] scsi: ufs: add error handling of
 auto-hibern8
Thread-Index: AQHVCZlJG8f+B7maOUSAPf/KvWjoI6ZpV6KQgADaAQCAAED50A==
Date: Tue, 14 May 2019 11:14:40 +0000
Message-ID: <BN7PR08MB56840A3CD3BA7C107D0230CADB080@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
 <1557758186-18706-3-git-send-email-stanley.chu@mediatek.com>
 <BN7PR08MB568438668FC7C90A1284F53DDB0F0@BN7PR08MB5684.namprd08.prod.outlook.com>
 <1557817102.24427.20.camel@mtkswgap22>
In-Reply-To: <1557817102.24427.20.camel@mtkswgap22>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.81.36]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 359215b4-ebbf-4aaa-4e38-08d6d85d5c0e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:BN7PR08MB5684; 
x-ms-traffictypediagnostic: BN7PR08MB5684:|BN7PR08MB5684:
x-microsoft-antispam-prvs: <BN7PR08MB56848A42E54F204CF4384BA1DB080@BN7PR08MB5684.namprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(189003)(478600001)(8676002)(52536014)(476003)(446003)(11346002)(8936002)(316002)(81156014)(68736007)(14454004)(6916009)(81166006)(26005)(486006)(55236004)(186003)(33656002)(76116006)(25786009)(256004)(14444005)(6506007)(74316002)(99286004)(229853002)(2906002)(7736002)(5660300002)(305945005)(4326008)(7416002)(54906003)(53936002)(6246003)(6116002)(6436002)(66946007)(7696005)(66066001)(3846002)(71190400001)(86362001)(71200400001)(76176011)(73956011)(66476007)(64756008)(66446008)(66556008)(102836004)(55016002)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB5684;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PzzDM+60VU+0uOwycelaIADFrAmStbNfOQCHLYkHAhxjjHyrlZr6cqNj5mfscUrSFq0K15iKTS5ourXfuN83lkpdVoLs+9uid4COrSolyCPQxMD6ntUqKEG8Qwsd9PMyprL25Zh3BA4vY6w/IGULVSyVKGKYOIJkV4qLCiIvBN/8G34rrxywK4o9rPk1DO5p+w+sPGz5LedxcgGzlfM9NWTL0cActHC6fA8auLIt8bgPGpsjzz7c5qLKh9/bTcGR+iC2td1vN510IiJhK/mszw1XOeO/1tRVG+S8qzTAWsLMNn9IODRZbpFSJiCMZGTzkdSn7gQqu23CEu/t+k3nhVqu9pn8rZq95YynD9N1vjx4JLbKjxvd4P5bJAwQLxjTFgvRh6h0X3FwfSmYsIGQia5Bn6a/MlpYDKRCtMdyL80=
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 359215b4-ebbf-4aaa-4e38-08d6d85d5c0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 11:14:40.5674 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB5684
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_041444_975793_09C91C80 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [165.225.81.36 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "evgreen@chromium.org" <evgreen@chromium.org>,
 "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
 "subhashj@codeaurora.org" <subhashj@codeaurora.org>,
 "sayalil@codeaurora.org" <sayalil@codeaurora.org>,
 "pedrom.sousa@synopsys.com" <pedrom.sousa@synopsys.com>,
 "vivek.gautam@codeaurora.org" <vivek.gautam@codeaurora.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFN0YW5sZXkNClRoYW5rcyBmb3IgcmVwbHkuDQoNCj4NCj5PbiBNb24sIDIwMTktMDUtMTMg
YXQgMTg6MjEgKzAwMDAsIEJlYW4gSHVvIChiZWFuaHVvKSB3cm90ZToNCj4+IEhpLCBTdGFubGV5
DQo+Pg0KPj4gPisNCj4+ID4rc3RhdGljIGlubGluZSBib29sIHVmc2hjZF9pc19hdXRvX2hpYmVy
bjhfZXJyb3Ioc3RydWN0IHVmc19oYmEgKmhiYSwNCj4+ID4rCQkJCQkJdTMyIGludHJfbWFzaykN
Cj4+ID4rew0KPj4gPisJcmV0dXJuICh1ZnNoY2RfaXNfYXV0b19oaWJlcm44X3N1cHBvcnRlZCho
YmEpICYmDQo+PiA+KwkJIWhiYS0+dWljX2FzeW5jX2RvbmUgJiYNCj4+DQo+PiBIZXJlIGNoZWNr
IGlmIHVpY19hc3luY19kb25lIGlzIE5VTEwsIG5vIGJpZyBwcm9ibGVtIHNvIGZhciwgYnV0IG5v
dCBzYWZlDQo+ZW5vdWdoLg0KPj4gSG93IGFib3V0IHNldHRpbmcgYSBmbGFnIGluIHVmc2hjZF9h
dXRvX2hpYmVybjhfZW5hYmxlKCksDQo+DQo+Pg0KPj4gSSBjb25jZXJuIGFib3V0IGhvdyB0byBj
b21wYXRpYmxlIHdpdGggYXV0b19oaWJlcm44IGRpc2FibGVkIGNvbmRpdGlvbi4NCj4NCj5DdXJy
ZW50bHkgYXV0by1oaWJlcm44IGRpc2FibGluZyBtZXRob2QgaXMgbm90IGltcGxlbWVudGVkIGlu
IG1haW5zdHJlYW0sDQo+c28gYW4gImVuYWJsaW5nIiBmbGFnIG1heSBsb29rcyByZWR1bmRhbnQg
dW5sZXNzIGRpc2FibGluZyBwYXRoIGlzIHJlYWxseQ0KPmV4aXN0ZWQuDQo+DQpEaWQgeW91IHRy
eSB0byB1cGRhdGUgQXV0by1IaWJlcm5hdGUgSWRsZSBUaW1lciB3aXRoIDAgdGhyb3VnaCAnL3N5
cycgIChzY3NpOiB1ZnM6IEFkZCBzdXBwb3J0IGZvciBBdXRvLUhpYmVybmF0ZSBJZGxlIFRpbWVy
KT8gDQpJIGRvbid0IGtub3cgaWYgdGhpcyB3aWxsIGRpc2FibGUgeW91ciBVRlMgY29udHJvbGxl
ciBBdXRvLUhpYmVybmF0ZS4NCklmIGhhdmluZyBhIGxvb2sgYXQgVUZTIGhvc3QgU3BlYywgc29m
dHdhcmUgd3JpdGVzIOKAnDDigJ0gdG8gZGlzYWJsZSBBdXRvLUhpYmVybmF0ZSBJZGxlIFRpbWVy
Lg0KU29ycnkgSSBjYW5ub3QgdmVyaWZ5IHRoaXMgb24gbXkgcGxhdGZvcm0gc2luY2UgaXQgZG9l
c24ndCBzdXBwb3J0IGF1dG8taGliZXJuYXRlLg0KDQoNCj5JIGFncmVlIHRoYXQgY2hlY2tpbmcg
aGJhLT51aWNfYXN5bmNfZG9uZSBoZXJlIGRvZXMgbm90IGxvb2sgc28gaW50dWl0aXZlLg0KPkhv
d2V2ZXIgZXZlbiBpZiBhdXRvLWhpYmVybjggaXMgZGlzYWJsZWQsIHRoZXNlIGNoZWNrcyBjb3Vs
ZCBiZSBzYWZlIGVub3VnaA0KPmJlY2F1c2UgYm90aCAiVUlDX0hJQkVSTkFURV9FTlRFUiIgYW5k
ICJVSUNfSElCRVJOQVRFX0VYSVQiIGFyZQ0KPnJhaXNlZCBvbmx5IGlmICJtYW51YWwtaGliZXJu
YXRlIiBpcyBwZXJmb3JtZWQsIGFuZCBpbiB0aGlzIGNhc2UgaGJhLQ0KPj51aWNfYXN5bmNfZG9u
ZSBzaGFsbCBiZSB0cnVlLg0KPg0KWWVzLCBtb3N0IG9mIGNhc2VzICx0aGlzIGlzIG5vIHByb2Js
ZW0uDQoNCj5Bbnl0aGluZyBlbHNlIG9yIGNvcm5lciBjYXNlIEkgbWlzc2VkPw0KPg0KVGhlIG90
aGVycyBhcmUgZmluZS4gSSBvbmx5IGNvbmNlcm4gY2hlY2tpbmcgaGJhLT51aWNfYXN5bmNfZG9u
ZS4NCg0KLy9CZWFuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
