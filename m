Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC34CBB90
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:21:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/8EugwBl+qE42bVYRqECn7wpwAPfpXqeJCjrDEjm60=; b=fm4TVhsyitoCZC
	PJF01UWPHEbkbZK1iAp0WAtMcbfzY3f8EwYuWD0l557eZRKglECdHyOmDTdJ4kPi1bijQFXUUNipr
	B2B8zwwjs1mNpaWak4RbSOnamNSOz/f6ENGt5F/B/U55lvTmVcMPF9GSnlQcn2KVErpO/rxJftz2N
	6lptxbUcwcx530YsDqns+VnQdSnQE4XaV5Jz/GJdu+l2IVrpmQ1f6FMaMzTzFP0xZyLLv0hEnkcFa
	PsVdzgPlwSWfw6DFSwHKvbLW5Jdiw+HmuIjP/SrWsXd/TjL/rCgRlI7c2xiTYt9ztvMamfknjxgKK
	L7CGDWziN0K5vsyIp/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNWS-0001EP-8u; Fri, 04 Oct 2019 13:21:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNWG-0001DR-V2
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:21:18 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94DBlJE007922; Fri, 4 Oct 2019 15:21:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=zPT5XSsvq3IZ+80vg/tNiZbBVy6TRNZhxTZhUzlTBYQ=;
 b=PlvxkLcVKtYfOaYygeygBhn+dt/bRebUse7Kccj58eYXut5B6PkpBJyvgoLCJ6BaKc0f
 Ug4UtR1GLv7Z0RzVxgh+w64a8Qe7rVV1Jnsq4BewhzfaigMSn+L/bd13YlYg18dfPFFy
 btsLqIm6+U82GR2uLVuRSxChIjrebxADN2NY0oetXavrAK+FWuzer72W5HlbIUeCYLHr
 zsBXg88hBIpiWCzckNZb8i710kH6u25F1UxvEhjPadcKwyTMT7mx7K0OeAtEquzHKLET
 NYmVGnZr2BR2Okj9NRhlEip/W6pU6YCO32DI6/kNdiMfSBxnUYeUvDD/cnHTP5Py5UdM ZA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9xdhau3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 15:21:06 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6FDC810002A;
 Fri,  4 Oct 2019 15:21:05 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 582952C434C;
 Fri,  4 Oct 2019 15:21:05 +0200 (CEST)
Received: from SFHDAG6NODE1.st.com (10.75.127.16) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 4 Oct
 2019 15:21:05 +0200
Received: from SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27]) by
 SFHDAG6NODE1.st.com ([fe80::8d96:4406:44e3:eb27%20]) with mapi id
 15.00.1473.003; Fri, 4 Oct 2019 15:21:04 +0200
From: Yannick FERTRE <yannick.fertre@st.com>
To: Alexandre TORGUE <alexandre.torgue@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Philippe CORNU <philippe.cornu@st.com>, Fabrice GASNIER
 <fabrice.gasnier@st.com>
Subject: Re: [PATCH] ARM: dts: stm32: add focaltech touchscreen on
 stm32mp157c-dk2 board
Thread-Topic: [PATCH] ARM: dts: stm32: add focaltech touchscreen on
 stm32mp157c-dk2 board
Thread-Index: AQHVd53CIB3DqxmynEav+OSBcf3IRqdIm3SAgAHA7gA=
Date: Fri, 4 Oct 2019 13:21:04 +0000
Message-ID: <c0d6de33-38fa-b55e-20cb-e5b680a35dfb@st.com>
References: <1569854751-22337-1-git-send-email-yannick.fertre@st.com>
 <09ad1310-ebc5-7a41-7af6-cdef79f20802@st.com>
In-Reply-To: <09ad1310-ebc5-7a41-7af6-cdef79f20802@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <E1C14224D31F7F4CB405055AA2070060@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_06:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_062117_353615_AF95573E 
X-CRM114-Status: GOOD (  21.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleCwNCg0Kb2ssIGknbGwgcHVzaCBvbmx5IHRoZSBkdCBwYXRjaCBsaW5rIHRvIHRoZSBs
YXN0IHZlcnNpb24gb2YgZHJpdmVyIA0KdG91Y2hzY3JlZW4gb24gZGlzcGxheSBib2FyZCBNQjE0
MDcuDQoNCkJSDQoNCllhbm5pY2sgRmVydHLDqQ0KDQoNCk9uIDEwLzMvMTkgMTI6MzQgUE0sIEFs
ZXhhbmRyZSBUb3JndWUgd3JvdGU6DQo+IEhpIFlhbm5pY2sNCj4NCj4gT24gOS8zMC8xOSA0OjQ1
IFBNLCBZYW5uaWNrIEZlcnRyw6kgd3JvdGU6DQo+PiBFbmFibGUgZm9jYWx0ZWNoIGZ0NjIzNiB0
b3VjaHNjcmVlbiBvbiBTVE0zMk1QMTU3Qy1ESzIgYm9hcmQuDQo+PiBUaGlzIGRldmljZSBzdXBw
b3J0cyAyIGRpZmZlcmVudCBhZGRyZXNzZXMgKDB4MmEgYW5kIDB4MzgpDQo+PiBkZXBlbmRpbmcg
b24gdGhlIGRpc3BsYXnCoCBib2FyZCB2ZXJzaW9uIChNQjE0MDcpLg0KPj4NCj4+IFNpZ25lZC1v
ZmYtYnk6IFlhbm5pY2sgRmVydHLDqSA8eWFubmljay5mZXJ0cmVAc3QuY29tPg0KPj4gLS0tDQo+
PiDCoCBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIuZHRzIHwgMjMgKysrKysrKysr
KysrKysrKysrKysrKysNCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspDQo+
Pg0KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5kdHMg
DQo+PiBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdjLWRrMi5kdHMNCj4+IGluZGV4IDIw
ZWE2MDEuLjUyN2JiNzUgMTAwNjQ0DQo+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1w
MTU3Yy1kazIuZHRzDQo+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3Yy1kazIu
ZHRzDQo+PiBAQCAtNjEsNiArNjEsMjkgQEANCj4+IMKgwqDCoMKgwqAgfTsNCj4+IMKgIH07DQo+
PiDCoCArJmkyYzEgew0KPj4gK8KgwqDCoCB0b3VjaHNjcmVlbkAyYSB7DQo+PiArwqDCoMKgwqDC
oMKgwqAgY29tcGF0aWJsZSA9ICJmb2NhbHRlY2gsZnQ2MjM2IjsNCj4+ICvCoMKgwqDCoMKgwqDC
oCByZWcgPSA8MHgyYT47DQo+PiArwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDwyIDI+Ow0K
Pj4gK8KgwqDCoMKgwqDCoMKgIGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW9mPjsNCj4+ICvCoMKg
wqDCoMKgwqDCoCBpbnRlcnJ1cHQtY29udHJvbGxlcjsNCj4+ICvCoMKgwqDCoMKgwqDCoCB0b3Vj
aHNjcmVlbi1zaXplLXggPSA8NDgwPjsNCj4+ICvCoMKgwqDCoMKgwqDCoCB0b3VjaHNjcmVlbi1z
aXplLXkgPSA8ODAwPjsNCj4+ICvCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7DQo+PiAr
wqDCoMKgIH07DQo+PiArwqDCoMKgIHRvdWNoc2NyZWVuQDM4IHsNCj4+ICvCoMKgwqDCoMKgwqDC
oCBjb21wYXRpYmxlID0gImZvY2FsdGVjaCxmdDYyMzYiOw0KPj4gK8KgwqDCoMKgwqDCoMKgIHJl
ZyA9IDwweDM4PjsNCj4+ICvCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPDIgMj47DQo+PiAr
wqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3Bpb2Y+Ow0KPj4gK8KgwqDCoMKg
wqDCoMKgIGludGVycnVwdC1jb250cm9sbGVyOw0KPj4gK8KgwqDCoMKgwqDCoMKgIHRvdWNoc2Ny
ZWVuLXNpemUteCA9IDw0ODA+Ow0KPj4gK8KgwqDCoMKgwqDCoMKgIHRvdWNoc2NyZWVuLXNpemUt
eSA9IDw4MDA+Ow0KPj4gK8KgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsNCj4+ICvCoMKg
wqAgfTsNCj4+ICt9Ow0KPg0KPiBJJ20gbm90IGNvbmZpZGVudCBieSB0aGlzIGR1cGxpY2F0aW9u
LiBXZSBzaG91bGQgb25seSBzdXBwb3J0IHRoZSANCj4gbGF0ZXN0IHJldmlzaW9uIG9mIHRoZSBN
QjE0MDcuIEkgdW5kZXJzdGFuZCB0aGUgbmVlZCBidXQgbXkgZmVhciBpcyB0byANCj4gZHVwbGlj
YXRlIHRoaXMgbm9kZSBlYWNoIHRpbWUgd2UgaGF2ZSBhIG5ldyByZXZpc2lvbiAoYW5kIGltYWdp
bmUgaWYgDQo+IHdlIGRvIHRoYXQgZm9yIGFsbCBpMmMgZGV2aWNlcykuDQo+DQo+IHJlZ2FyZHMN
Cj4gYWxleA0KPg0KPg0KPj4gwqAgJmx0ZGMgew0KPj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2th
eSI7IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
