Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B833D6F55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 07:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2R+rcCb7H3xwVdfjWF4XsgozUw95spthQ8CrGHdNTw=; b=iZSh4ANHgeiUyy
	eHfUVVB+sJzqDcUHUbtnFtf1Ge+dSGsbuQ0pxLe1ciAVaXQ1P39BhzV9b6qUghrgfbksMAV0D1KBP
	EZN70jOr/TgjgAlRvB09Vf4n2tJpHKBNCHtZ9eQ1iaamWFvDVq4g/4RUL34CGhy5m+uaLhG2q5uKr
	5L7P6qLQUuS13vJe6sqCvKvzWBnQCJ0SCvO2vOu8T7AopO640lY4NWb7oguF3D9Kdn1Qdc4YgCe3o
	Js7PdHzRY3cFSEm+hoyVQLjsMg7e0tisKljLfJc+VYtF0LMG9f0EKKPeLUsXzOvprgO24gAKaFKPb
	mKpdB7hj7TVtz54c6Oew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKFjf-0004Dd-QM; Tue, 15 Oct 2019 05:51:07 +0000
Received: from mail-eopbgr50074.outbound.protection.outlook.com ([40.107.5.74]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKFjX-0004CZ-HR
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 05:51:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELY57xr4yMUOlNEOd55lrSTnLP+CE1iPJ0oA1jpi56WYxPum2cShYZtdTGfOU4QbXQlLHy5SjNG/dbfyPzW65DPq1L57dut8Prz0UjABv5uzTEkg3Bk7CcKC324rG0nyyAu1WzZUqZ69lZnTf9yGM9DRL+elK6DnaxBkOZLiWuxmNgYxJoZlD5LyDjbnqNDFAvgj4HPhllb1jjK3PmqFCVJJNdnRrbUVPM8hocLRYfzmHSYlf5cceVyVFvNF1kpKTe+zetDVN1dp465Ir0b4vBe3/viI6JdK4aMDUQnmsnVr71cFWMDLtpvbt3H7Vi2p/zuHREy8jDqpVK1Z4E6q7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WjzFNTHCG23SlbeJl0H44Z+zJGpZV2SGgKGWxjZmLdk=;
 b=Hw/UBx5XZXMmmeG/uJro/25KUWCYXPzPOU+gzGUQbKxkYlLeIyAF1dm5AgszK0CZAA9xgPLrCFk4aG9jAD4Q+ffOC7rrVlmKLWzJeCb3f/IneJpGl86n0KyagxLM5aL7pdeaxRJf5AKad6yf8fQ/EVmz1BhqbDJExVIIk8rj5PfjNeZvA5Offoi5XdmF/ZfXMBy9aEj6KrAFcGY50UsJ7BpM+Un0CoGf3ibWODP9yTGw3MT2leRnFFjg/V9evZWATI07MARu56cnkd4E1qKtnVPf0zkgsNWk5vjAIEEbHrqGRGmYWY88LhzItSjJSx5cEBsAYpf3wdVOkzmCCHXZQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WjzFNTHCG23SlbeJl0H44Z+zJGpZV2SGgKGWxjZmLdk=;
 b=X8nT/XO1PfCFYPQ6JU+1J0Mdgk7FiwEZLgOcLEhFSQgr/S/2Ew+c1jZicgKRvORVz3nV8awqnRpZfBTIYdBP3VNFzWyZI//FEufs9KPsxdYDf/Ieo2uemyPIsJuk2iCmJuDFjS0wD4y8ejqe7aAxwHO6rTQixh+lbCbIOMviAWU=
Received: from VI1PR04MB6237.eurprd04.prod.outlook.com (20.179.24.74) by
 VI1PR04MB3312.eurprd04.prod.outlook.com (10.170.228.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.17; Tue, 15 Oct 2019 05:50:54 +0000
Received: from VI1PR04MB6237.eurprd04.prod.outlook.com
 ([fe80::79d2:e4fd:999e:51d2]) by VI1PR04MB6237.eurprd04.prod.outlook.com
 ([fe80::79d2:e4fd:999e:51d2%5]) with mapi id 15.20.2347.023; Tue, 15 Oct 2019
 05:50:54 +0000
From: Laurentiu Palcu <laurentiu.palcu@nxp.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: Re: Re: [PATCH v2 4/5] dt-bindings: display: imx: add bindings
 for DCSS
Thread-Topic: Re: Re: [PATCH v2 4/5] dt-bindings: display: imx: add bindings
 for DCSS
Thread-Index: AQHVgxyBUXlZiNASZka8wKs20g3JQw==
Date: Tue, 15 Oct 2019 05:50:53 +0000
Message-ID: <20191015055052.GC14065@fsr-ub1664-121>
References: <1570025100-5634-1-git-send-email-laurentiu.palcu@nxp.com>
 <1570025100-5634-5-git-send-email-laurentiu.palcu@nxp.com>
 <20191011145042.GA15680@bogus> <20191014080327.GB14065@fsr-ub1664-121>
 <CAL_JsqJZHq=jDoK66bTHK+oqSvdrFh9x5a_cNe1hkFdALfs8vw@mail.gmail.com>
In-Reply-To: <CAL_JsqJZHq=jDoK66bTHK+oqSvdrFh9x5a_cNe1hkFdALfs8vw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.palcu@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d26cc2f-ee70-479e-d529-08d75133a46f
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB3312:|VI1PR04MB3312:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB33129D0523297C5207D2471CFF930@VI1PR04MB3312.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:655;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(346002)(396003)(136003)(366004)(376002)(39860400002)(189003)(199004)(5660300002)(4744005)(102836004)(446003)(11346002)(305945005)(476003)(1076003)(6916009)(44832011)(26005)(186003)(486006)(6116002)(3846002)(7416002)(316002)(54906003)(6512007)(9686003)(33716001)(229853002)(6436002)(6486002)(86362001)(7736002)(2906002)(33656002)(66066001)(76176011)(99286004)(4326008)(25786009)(6246003)(14454004)(53546011)(6506007)(478600001)(8936002)(8676002)(81156014)(81166006)(71190400001)(71200400001)(66446008)(64756008)(256004)(66946007)(66556008)(66476007)(91956017)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3312;
 H:VI1PR04MB6237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AFihUvc/61t9AzaMQn9gWN6VkriSOoXvruI8M82kzB7ldwzy60zcqSKOWCrOOtYiAHyAQELrWWUS2CFmMjdPsK9GPmyBcQTEuuyzqCKQfmMJvlfQOoAkq48er7BZ6/zeTNRN1FXNu0xmsruZuiQkQIsUFG8TDPNV88QfMDUELLFEesKgVtatMQapdMBcWsKm+t/dNogpt9XpZvg0lA4YHW03J5qOfxGfrOhH1Jcqlyz8VRNGZ0sMu1L+JJYfft3sRwJPC5+3DJTHxQ0P72u7Vi4uHauAWsKYFs1QNDLrlzv95aZTqI5lXjTHZxNTVjIzHAZHeGCERVxK4kibmiOeoS5Rz2XgCrtTBq4IpNwJnfp0DDq0dYVgIzKyI/pPMRZSoQrsrDIbtUnuZyfzgCiYPytK4V3sbDxc2ToKbZDZeB8=
Content-ID: <6BC6007A97DA9349A753B4E9FAA529AB@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d26cc2f-ee70-479e-d529-08d75133a46f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 05:50:53.9469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JAkTkge+ikPFISRJD77jeYUKqTVBMm7m6FFyGmoEqPL6Cvosc92iaqNaHNTxiRH7m3V3mAtRpSVuTFJVNPK3Cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3312
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_225059_659835_10C302E5 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLA0KDQpPbiBNb24sIE9jdCAxNCwgMjAxOSBhdCAwODoyMzo1MUFNIC0wNTAwLCBSb2Ig
SGVycmluZyB3cm90ZToNCj4gT24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMzowMyBBTSBMYXVyZW50
aXUgUGFsY3UgPGxhdXJlbnRpdS5wYWxjdUBueHAuY29tPiB3cm90ZToNCj4gPg0KPiA+IEhpIFJv
YiwNCj4gPg0KPiA+IE9uIEZyaSwgT2N0IDExLCAyMDE5IGF0IDA5OjUwOjQyQU0gLTA1MDAsIFJv
YiBIZXJyaW5nIHdyb3RlOg0KPiA+ID4gOnU/d2M/P201P14/456+P300LT8/entiPz8/cj8rP9eA
dT8/P9inPz8/PyMgPz8gPz9layA/Pz8/P1c/Sj8/Pz9ePyg/Pz9ofT8/LT8/entiPz8/cj9aPz8/
Pys/alcuPyBcP2/bindiPyA/dispPz8/P2wgPyBiPyAmPz8sPyY/P86+Pz8/Pz8/Pz8/Pz8/Pz8/
P1c/Pz8hanggd86iP8erPyonPz8reT9ePz9eP006Pz8/cumentatPz8/dT8/cT9reT/bindiPyA/
dispPz8/P2wgPyBiPyAmPz8sPyY/PyA/Pz8gdT8/Pz/erj8/Pz8gP0c/Pz9oDQo+ID4NCj4gPiBP
ayEgTm90IHN1cmUgaG93IHRvIGFkZHJlc3MgdGhpcyB0aG91Z2guLi4gOikNCj4gDQo+IFlvdXIg
bWFpbCB3YXMgYmFzZTY0IHdoaWNoIGlkZWFsbHkgc2hvdWxkIGJlIGF2b2lkZWQgb24gbWFpbGxp
c3RzLiBNeQ0KPiBzY3JpcHRpbmcgdHJpZXMgdG8gZGVhbCB3aXRoIGl0LCBidXQgZmFpbGVkIG9i
dmlvdXNseS4NCg0KU29ycnkgYWJvdXQgdGhhdC4uLiA6LyBXZSd2ZSBoYWQgdGhpcyBpc3N1ZSBm
b3IgYSB3aGlsZSBub3cgYW5kIEkNCnRob3VnaHQgaXQgZ290IGZpeGVkLiBPdXIgZW1haWwgc2Vy
dmVyIGJlaW5nIHRvbyAic21hcnQiLi4uDQoNClRoYW5rcywNCkxhdXJlbnRpdQ0KDQo+IFdoYXQg
SSBzYWlkDQo+IHdhczoNCj4gDQo+IFJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
