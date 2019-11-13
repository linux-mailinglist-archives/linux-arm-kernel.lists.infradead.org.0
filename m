Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D81FA6E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:54:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnAHigmgCW5GcQWcfxVVn6dNbMv8pgmcOcQLxKbAZo8=; b=tUpWVFw5627t6Y
	qaiO1MXKQ9m3EclAQLoGDZ9QX9ymJQzmq4qhkIOvM8iZWcO1VOrO696/FMe5BlAbZSzhDdCTGwUkQ
	ZfD2+mBuHV7mjiNyrxNTeqI4dY/oWsWl3YZMiexN36e4CTyNp2cKdRyUieza0k6jrcP2ueH7j6n0f
	RPt/1GtJUWkbkapBus0pAqvtUzVoCHabmTfNz8FhyzxusZN9UT9FmV8REum+qBpHCC9bJmU1GI7kz
	gdLieUaVlk6X5CwpKjJZMIeZD0iUmDhLpf7R4It4JE7ZKnsKrtM+NC1Wfl+hxFOTBbEtzX6h7GLVC
	bZXX6lv5fkpJ5vf+BEIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUinT-00023H-43; Wed, 13 Nov 2019 02:54:19 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUinM-00022X-5J; Wed, 13 Nov 2019 02:54:13 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAD2s1OK011829,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAD2s1OK011829
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 13 Nov 2019 10:54:01 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 13 Nov 2019 10:54:01 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 13 Nov 2019 10:53:56 +0800
Received: from RTEXMB03.realtek.com.tw ([::1]) by RTEXMB03.realtek.com.tw
 ([fe80::3d7d:f7db:e1fb:307b%12]) with mapi id 15.01.1779.005; Wed, 13 Nov
 2019 10:53:56 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Thread-Topic: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
Thread-Index: AQHVmD0XE9qksqLMuUeBNyO+ccQCh6eIaL1A
Date: Wed, 13 Nov 2019 02:53:55 +0000
Message-ID: <a43d184d74c34e269714858b2635c35e@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
In-Reply-To: <20191111030434.29977-6-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_185412_468055_DB03CD62 
X-CRM114-Status: UNSURE (   6.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Rob Herring <robh+dt@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5kcmVhcywNCg0KPiArCQlyYnVzOiByLWJ1c0AxODAwMDAwMCB7DQo+ICsJCQljb21wYXRp
YmxlID0gInNpbXBsZS1idXMiOw0KPiArCQkJcmVnID0gPDB4MTgwMDAwMDAgMHgxMDAwMDA+Ow0K
PiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47DQo+ICsJCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4g
KwkJCXJhbmdlcyA9IDwweDAgMHgxODAwMDAwMCAweDEwMDAwMD47DQo+ICsNCg0KVGhlIHItYnVz
IHNpemUgb2YgUlREMTE5NSBpcyAweDcwMDAw4oCsLg0KDQpSZWdhcmRzLA0KSmFtZXMNCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
