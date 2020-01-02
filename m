Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EC312E747
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 15:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DZ+Ka/oSwv8C3kBaO6UJg5ncdatxMUXFv9RL5ReEds=; b=DSe4WFdEsXSV5n
	rs8NQJHL83A++dH9SkcK16QYZ9vVvmOX0Itl5M4jkO2+0j/FtdTDw4yD19zkcysytYPrIFYRADBfm
	gdO2OoqNtbNFjQx9WL+1W4uATOY+Upx+6RqrWBeIOcFhmx2GcRq2veKZaFZWbQqlbgsRvn+P8xL6v
	xvTrho9+WsM4mN9pcmilJjHopM/6ynR79fgA+fiefrt00WuC3LEHzj0petztSToNpiM/tHo5bqT5y
	PxpSuyGdioZzaJBxuJw47ykiaM/Ap9SWqfc8iphGZONpnBAxOncFrtbwasoPm0sQgalMEHc4UKE//
	wmDHiQ3RNOv6+fBm/NPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in1Yl-0003Nh-IR; Thu, 02 Jan 2020 14:34:47 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1in1Ye-0003H3-Ba; Thu, 02 Jan 2020 14:34:42 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 002EYVv4015378,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS11.realtek.com.tw[172.21.6.12])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 002EYVv4015378
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 2 Jan 2020 22:34:31 +0800
Received: from RTEXMB01.realtek.com.tw (172.21.6.94) by
 RTITCAS11.realtek.com.tw (172.21.6.12) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Thu, 2 Jan 2020 22:34:31 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB01.realtek.com.tw (172.21.6.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 2 Jan 2020 22:34:31 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Thu, 2 Jan 2020 22:34:31 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: RE: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Thread-Topic: [RFC 03/11] arm64: dts: realtek: rtd129x: Add chip info node
Thread-Index: AQHVkedK7O6Ji1Cvt0Gs/gwTj0NGGKfXzt6A
Date: Thu, 2 Jan 2020 14:34:31 +0000
Message-ID: <0d6dc451122d48bc9bf52d6147b0211d@realtek.com>
References: <20191103013645.9856-1-afaerber@suse.de>
 <20191103013645.9856-4-afaerber@suse.de>
In-Reply-To: <20191103013645.9856-4-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [114.37.143.250]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_063440_524729_E8452EDB 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
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

PiBBZGQgYSBEVCBub2RlIGZvciBjaGlwIGlkZW50aWZpY2F0aW9uLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPg0KPiAtLS0NCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgfCA1ICsrKysrDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVh
bHRlay9ydGQxMjl4LmR0c2kNCj4gaW5kZXggNDQzMzExNDQ3NmY1Li4xNWE3YzI0OTE1NWQgMTAw
NjQ0DQo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kNCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOXguZHRzaQ0KPiBAQCAtODQs
NiArODQsMTEgQEANCj4gIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICAJCX07DQo+IA0KPiAr
CQljaGlwLWluZm9AOTgwMWEyMDAgew0KPiArCQkJY29tcGF0aWJsZSA9ICJyZWFsdGVrLHJ0ZDEx
OTUtY2hpcCI7DQo+ICsJCQlyZWcgPSA8MHg5ODAxYTIwMCAweDg+Ow0KPiArCQl9Ow0KPiArDQo+
ICAJCXVhcnQxOiBzZXJpYWxAOTgwMWIyMDAgew0KPiAgCQkJY29tcGF0aWJsZSA9ICJzbnBzLGR3
LWFwYi11YXJ0IjsNCj4gIAkJCXJlZyA9IDwweDk4MDFiMjAwIDB4MTAwPjsNCj4gLS0NCj4gMi4x
Ni40DQo+DQpBY2tlZC1ieTogSmFtZXMgVGFpIDxqYW1lcy50YWlAcmVhbHRlay5jb20+DQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
