Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF6BFA6EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 03:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNbYnmOtfKuCR/B8zm/67zDAzKfC7jHV2Fe/6/Zzw+0=; b=ivjSPwH5YsSVP1
	DCaZ2BdGofgZK65bwAeG6lqOOQC5xtQgRJ2ft6G1MZnmtps6Ni+R6NgO4J3/OIK65hCtwQ7bYUCm3
	viPh9lLsxHpW7vkuh9ht41ThYKqd5Va4PGJemAtrgE9T3UAi7CWB+ZwgtaERDR1NfYSWmwDtpAaJr
	MdDqmKm5Wee1iV/sNdgI1S10fDInF5lMrwqFcp11TLaNKDZ1D4FdGJstLbEJnDGlqq7LmRgIT5rFt
	R8a2NFsrULnp6JhFel2cHPJt3edz2zpMVTlM75awqUkjzaH2cT7sFIB53dH2w1poi6cTSqurQQME+
	MD0Wx6qvE+klMQh5guXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUiqu-00040r-05; Wed, 13 Nov 2019 02:57:52 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iUiql-00040S-3B; Wed, 13 Nov 2019 02:57:44 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAD2vVB1014710,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV02.realtek.com.tw[172.21.6.19])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAD2vVB1014710
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 13 Nov 2019 10:57:32 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTITCASV02.realtek.com.tw (172.21.6.19) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Wed, 13 Nov 2019 10:57:31 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB04.realtek.com.tw (172.21.6.97) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 13 Nov 2019 10:57:30 +0800
Received: from RTEXMB03.realtek.com.tw ([::1]) by RTEXMB03.realtek.com.tw
 ([fe80::3d7d:f7db:e1fb:307b%12]) with mapi id 15.01.1779.005; Wed, 13 Nov
 2019 10:57:30 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [PATCH 7/7] arm64: dts: realtek: Add RTD1395 and BPi-M4
Thread-Topic: [PATCH 7/7] arm64: dts: realtek: Add RTD1395 and BPi-M4
Thread-Index: AQHVmD0Zjtr/ttyrCU29swF/t1P59aeIat+w
Date: Wed, 13 Nov 2019 02:57:30 +0000
Message-ID: <c0dfa7d415ed4883ade0a903547270b3@realtek.com>
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-8-afaerber@suse.de>
In-Reply-To: <20191111030434.29977-8-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_185743_429632_65D707AE 
X-CRM114-Status: UNSURE (   7.39  )
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

SGkgQW5kcmVhcywNCg0KPiArCXNvYyB7DQo+ICsJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7
DQo+ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Ow0KPiArCQkjc2l6ZS1jZWxscyA9IDwxPjsNCj4g
KwkJcmFuZ2VzID0gPDB4OTgwMDAwMDAgMHgwIDB4OTgwMDAwMDAgMHg2ODAwMDAwMD47DQo+ICsN
Cj4gKwkJcmJ1czogci1idXNAOTgwMDAwMDAgew0KPiArCQkJY29tcGF0aWJsZSA9ICJzaW1wbGUt
YnVzIjsNCj4gKwkJCXJlZyA9IDwweDk4MDAwMDAwIDB4MTAwMDAwPjsNCj4gKwkJCSNhZGRyZXNz
LWNlbGxzID0gPDE+Ow0KPiArCQkJI3NpemUtY2VsbHMgPSA8MT47DQo+ICsJCQlyYW5nZXMgPSA8
MHgwIDB4OTgwMDAwMDAgMHgxMDAwMDA+Ow0KDQpUaGUgci1idXMgc2l6ZSBvZiBSVEQxMzk1IGlz
IDB4MjAwMDAw4oCsLg0KDQpSZWdhcmRzLA0KSmFtZXMNCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
