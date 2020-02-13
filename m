Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CB915B9DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 08:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7hqGgTzGeOHkuB5TsV/TmvO3YYD7QbdYqlPnzmZshgg=; b=MS/jbXPXqwVMhu
	m/2OZSTvXeDsT/gz8qSpP9jxZYMjT2tkUhLN3J015ev7siCruYUkA6+Kt84BpDGaPZ4IVPA4PTCca
	RjxvFHoJej6Ko2dKqVhUIV5gHewrQj5pIsz5gqm/hE1gZeJvl8ZMgLr6M7AgNOVT90BLfNfjX8hJY
	17wCrUBoRHLFLd2X3zROP7ehF1DyNBTdoOidDqVI05RZFMgNpA4zTyXB5RZVyQUB4iQU0Pa4G3PO2
	8sS8WRUEjUkomHLlEuPJVDuvkd/6IYrsQ2AuLtjuYrEfsGqr7Kqmgw2jWRBvqSYdNSP+Qq8/pYAVO
	hh0HhqFZAyJVQqk7nPhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j28XH-0006oT-Ew; Thu, 13 Feb 2020 07:03:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j28XA-0006ni-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 07:03:38 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01D72dkA002664; Thu, 13 Feb 2020 08:03:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Qyy1L07BH1L5Cv6RE/nYDx0PsDCpdtrPRXQEdj+m4fE=;
 b=o09ULSGD+CcV+4iKCcMhTcL7Ep4ROC0d06xhuD3NVK7lyYdDeIQmVTnLVWp1sltstFxx
 UvuKWy5gjqwdLL87rd2YpzObmqFNXEIjDMEnSM8cAp9sY9LpvNcywHEqmWYj8mLb01W7
 U7SRs6tdQwQzZFSxKz15bJQdIqsANeeuPWQxwcXTT7O+Lad9vcykvyeLOFUDhnbxHUFN
 jMw/r9IrKBWZ9/QgWOPSKxkmRC1F0iJcC3hv4FWtnDtBlzKbR3ZEhUv/ExFi85rQxtky
 dv2aZ4Uq20saaF2yXmBpNASRNsyJMfOSh/6gYNrEvKB61NfIsHxCGTYEyJ/5l2HD0rkE 6w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ufhka9d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 13 Feb 2020 08:03:29 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id BC795100038;
 Thu, 13 Feb 2020 08:03:28 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag4node1.st.com [10.75.127.10])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 78ED821FE84;
 Thu, 13 Feb 2020 08:03:28 +0100 (CET)
Received: from SFHDAG5NODE3.st.com (10.75.127.15) by SFHDAG4NODE1.st.com
 (10.75.127.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 13 Feb
 2020 08:03:27 +0100
Received: from SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47]) by
 SFHDAG5NODE3.st.com ([fe80::7c09:5d6b:d2c7:5f47%20]) with mapi id
 15.00.1473.003; Thu, 13 Feb 2020 08:03:27 +0100
From: Christophe ROULLIER <christophe.roullier@st.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH 1/1] net: ethernet: stmmac: simplify phy modes management
 for stm32
Thread-Topic: [PATCH 1/1] net: ethernet: stmmac: simplify phy modes management
 for stm32
Thread-Index: AQHV1pIW1y791lwjMUusjpFyRZvewKgDJNKAgBWUnwA=
Date: Thu, 13 Feb 2020 07:03:27 +0000
Message-ID: <643e23a7-131f-f801-d3e7-280f211589dd@st.com>
References: <20200128083942.17823-1-christophe.roullier@st.com>
 <20200129.115131.1101786807458791369.davem@davemloft.net>
 <05adc7cc-19cb-7e6e-f6df-07ec8f5e841f@st.com>
In-Reply-To: <05adc7cc-19cb-7e6e-f6df-07ec8f5e841f@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <A7CFD59FA7949A47B1C3DAC66BD19033@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-13_01:2020-02-12,
 2020-02-13 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_230336_728351_228E1666 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Peppe CAVALLARO <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R2VudGxlIHJlbWluZGVyDQoNClRoYW5rcw0KDQpPbiAxLzMwLzIwIDI6MjkgUE0sIENocmlzdG9w
aGUgUk9VTExJRVIgd3JvdGU6DQo+IE9uIDEvMjkvMjAgMTE6NTEgQU0sIERhdmlkIE1pbGxlciB3
cm90ZToNCj4+IEZyb206IENocmlzdG9waGUgUm91bGxpZXIgPGNocmlzdG9waGUucm91bGxpZXJA
c3QuY29tPg0KPj4gRGF0ZTogVHVlLCAyOCBKYW4gMjAyMCAwOTozOTo0MiArMDEwMA0KPj4NCj4+
PiBObyBuZXcgZmVhdHVyZSwganVzdCB0byBzaW1wbGlmeSBzdG0zMiBwYXJ0IHRvIGJlIGVhc2ll
ciB0byB1c2UuDQo+Pj4gQWRkIGJ5IGRlZmF1bHQgYWxsIEV0aGVybmV0IGNsb2NrcyBpbiBEVCwg
YW5kIGFjdGl2YXRlIG9yIG5vdCBpbiANCj4+PiBmdW5jdGlvbg0KPj4+IG9mIHBoeSBtb2RlLCBj
bG9jayBmcmVxdWVuY3ksIGlmIHByb3BlcnR5ICJzdCxleHQtcGh5Y2xrIiBpcyBzZXQgb3IgDQo+
Pj4gbm90Lg0KPj4+IEtlZXAgYmFja3dhcmQgY29tcGF0aWJpbGl0eQ0KPj4+IC0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQo+Pj4gfFBIWV9NT0RFIHwgTm9ybWFsIHwgUEhZIHdvIGNyeXN0YWx8wqDCoCBQSFkgd28g
Y3J5c3RhbMKgwqAgfMKgIE5vIDEyNU1oesKgIHwNCj4+PiB8wqDCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgwqDCoMKgwqAgfMKgwqDCoMKgwqAgMjVNSHrCoMKgwqAgfMKgwqDCoMKgwqDCoMKgIDUwTUh6
wqDCoMKgwqDCoMKgIHwgZnJvbSBQSFnCoMKgIHwNCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4+IHzC
oCBNSUnCoMKgwqAgfMKgwqDCoMKgIC3CoMKgwqAgfMKgwqDCoMKgIGV0aC1ja8KgwqDCoCB8wqDC
oMKgwqDCoMKgIG4vYSB8wqDCoMKgwqDCoMKgwqAgbi9hwqAgfA0KPj4+IHzCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgwqDCoMKgwqDCoCB8IHN0LGV4dC1waHljbGsgfCB8wqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHwNCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPj4+IHzCoCBHTUlJwqDCoCB8wqDCoMKgwqAg
LcKgwqDCoCB8wqDCoMKgwqAgZXRoLWNrwqDCoMKgIHzCoMKgwqDCoMKgwqAgbi9hIHzCoMKgwqDC
oMKgwqDCoCBuL2HCoCB8DQo+Pj4gfMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgIHwg
c3QsZXh0LXBoeWNsayB8IHzCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPj4+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQo+Pj4gfCBSR01JScKgwqAgfMKgwqDCoMKgIC3CoMKgwqAgfMKgwqDCoMKgIGV0aC1j
a8KgwqDCoCB8wqDCoMKgwqDCoMKgIG4vYSB8wqDCoMKgwqDCoCBldGgtY2vCoCB8DQo+Pj4gfMKg
wqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgIHwgc3QsZXh0LXBoeWNsayB8IHxzdCxldGgt
Y2xrLXNlbHwNCj4+PiB8wqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqAgfMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCB8wqDCoMKgwqDCoMKgIG9ywqDCoMKgwqAgfA0KPj4+IHzC
oMKgwqDCoMKgwqDCoMKgIHzCoMKgwqDCoMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCANCj4+PiBzdCxl
eHQtcGh5Y2xrfA0KPj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSANCj4+Pg0KPj4+IHwgUk1JScKgwqDCoCB8
wqDCoMKgwqAgLcKgwqDCoCB8wqDCoMKgwqAgZXRoLWNrwqDCoMKgIHzCoMKgwqDCoMKgIGV0aC1j
ayB8wqDCoMKgwqDCoMKgwqDCoCBuL2HCoCB8DQo+Pj4gfMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDC
oMKgwqDCoMKgIHwgc3QsZXh0LXBoeWNsayB8IHN0LGV0aC1yZWYtY2xrLXNlbCANCj4+PiB8wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfA0KPj4+IHzCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqDC
oMKgwqDCoCB8wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IG9yIHN0LGV4dC1waHljbGsg
fMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwNCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gDQo+Pj4N
Cj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waGUgUm91bGxpZXIgPGNocmlzdG9waGUu
cm91bGxpZXJAc3QuY29tPg0KPj4gSWYgYW55dGhpbmcsIHRoaXMgaXMgbW9yZSBvZiBhIGNsZWFu
dXAsIGFuZCB0aGVyZWZvcmUgb25seSANCj4+IGFwcHJvcHJpYXRlIGZvcg0KPj4gbmV0LW5leHQg
d2hlbiBpdCBvcGVucyBiYWNrIHVwLg0KPiBUaGFua3MgRGF2aWQsIEl0IGlzIG5vdCB1cmdlbnQs
IGRvIHlvdSB3YW50IHRoYXQgSSByZS1wdXNoIGl0IHdpdGggDQo+ICJQQVRDSCBuZXQgbmV4dCIg
PwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
