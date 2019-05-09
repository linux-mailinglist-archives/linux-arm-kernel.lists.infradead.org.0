Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D81C018643
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 09:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKZTGgpCqzX6akFiHyTTobuP08e40fonrANywYSmRDE=; b=KBvlk/N2JfrjwP
	IGy8ux5UHcynTntUaIVF3aC0VxqJbID37tw0Pq0tZz8/Ctj1uNGWnm3UDh2rCYmCxBz8bJIpkJFB9
	c/fHA1X6CMWdbaqUu/b425ngO9s6x33OvXcb7XSnX9k+7WQ0tXZOv6vXP0G3FjqvuJn31goHu4bXo
	C1c8MfmZDwOEBe0nLM5bCHkgklt7B4L8DdEtLg93KtVNn0TcK8kzLvFbRYJe1+940E9SG7jIzT0Nr
	nMofm0II98rakgYOQs7PtmlO8YTVFcw9fgmqlrB/elz8N739YFZN5zYoI58IAywYvhHyjxTAzRzIM
	zKcAI5eCTVMWRmm++U3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOdfX-00050r-Ue; Thu, 09 May 2019 07:40:44 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOdfH-00050E-MW
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 07:40:29 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x497aplJ008618; Thu, 9 May 2019 09:40:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=sqNpP69L58AngmIqsKX38wmvLOxCSntjhIdSEkZAi8g=;
 b=jwEB7KhJEy+0Bn4pLlcxZ4JJRVqCaMQhypzCNZC5POQUwQCOiYHGKSTPOJOZqP57BPaT
 OuOfyzHm6n4o5ZcC04hKiy6Kn1Z1qAvTNwzNihgxs6IxhhQPNe0wVTMmLt28qabvvie6
 6ib/VRlY+Ox4yvlLBrjFAIjem9+Q2O9R8+PTGAzQZfoLA4SUPk1YQbgtckZ8+8WiQ/Rm
 Ht9hvU7jUDwc3/qe5FKgOswbnv07QtVoLEebmYo4DxHBqOXfM/rogcVp+tEp7RBUGq6X
 1clzep2LLQye4hK1yglkuqkQTbvoImGXhNGcZ33iRLxMkJZKgxQ+tLUyxbdufFbcYQUU Bw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2scdjp0rhx-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 09 May 2019 09:40:18 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3AD5342;
 Thu,  9 May 2019 07:40:16 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1355B1394;
 Thu,  9 May 2019 07:40:16 +0000 (GMT)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 May
 2019 09:40:15 +0200
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Thu, 9 May 2019 09:40:15 +0200
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: William Breathitt Gray <vilhelm.gray@gmail.com>, Benjamin Gaignard
 <benjamin.gaignard@linaro.org>
Subject: Re: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Thread-Topic: [PATCH] IIO: stm32: Remove quadrature related functions from
 trigger driver
Thread-Index: AQHVBLUCz+/gAEZUoUqVHnsxvwgdIqZfUXyAgAAmvICAAT3NAIABk+oA
Date: Thu, 9 May 2019 07:40:15 +0000
Message-ID: <e515e57d-697d-8d4b-3873-645aed53d394@st.com>
References: <20190507091224.17781-1-benjamin.gaignard@st.com>
 <20190507101729.GA3420@icarus>
 <CA+M3ks4LhOFTeArnh3d=C02qLJWj_u6tWDDOhD8kZnJPRkXC8w@mail.gmail.com>
 <20190508073434.GA3277@icarus>
In-Reply-To: <20190508073434.GA3277@icarus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <D844A18717961F469DF8736CA5405E54@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_004028_202581_52D399EC 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan Cameron <jic23@kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiA1LzgvMTkgOTozNCBBTSwgV2lsbGlhbSBCcmVhdGhpdHQgR3JheSB3cm90ZToNCj4gT24g
VHVlLCBNYXkgMDcsIDIwMTkgYXQgMDI6Mzc6MDdQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQg
d3JvdGU6DQo+PiBMZSBtYXIuIDcgbWFpIDIwMTkgw6AgMTI6MTksIFdpbGxpYW0gQnJlYXRoaXR0
IEdyYXkNCj4+IDx2aWxoZWxtLmdyYXlAZ21haWwuY29tPiBhIMOpY3JpdCA6DQo+Pj4gT24gVHVl
LCBNYXkgMDcsIDIwMTkgYXQgMTE6MTI6MjRBTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6DQo+Pj4+IFF1YWRyYXR1cmUgZmVhdHVyZSBpcyBub3cgaG9zdGVkIG9uIGl0IG93biBmcmFt
ZXdvcmsuDQo+Pj4+IFJlbW92ZSBxdWFkcmF0dXJlIHJlbGF0ZWQgY29kZSBmcm9tIHN0bTMyLXRy
aWdnZXIgZHJpdmVyIHRvIGF2b2lkDQo+Pj4+IGNvZGUgZHVwbGljYXRpb24gYW5kIHNpbXBsaWZ5
IHRoZSBBQkkuDQo+Pj4+DQo+Pj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBzdC5jb20+DQo+Pj4gQWx0aG91Z2ggdGhpcyBmdW5jdGlvbmFsaXR5
IGlzIG5vdyBwcm92aWRlZCBieSB0aGUgQ291bnRlciBzdWJzeXN0ZW0sIHdlDQo+Pj4gc2hvdWxk
IGtlZXAgdGhlIElJTyBDb3VudGVyIGludGVyZmFjZSBmb3IgdGhpcyBkcml2ZXIgaW50YWN0IHNp
bmNlDQo+Pj4gZXhpc3RpbmcgdXNlciBhcHBsaWNhdGlvbnMgbWF5IGRlcGVuZCBvbiBpdDsgdGhp
cyBpcyB0aGUgc2FtZSByZWFzb24gd2h5DQo+Pj4gdGhlIElJTyBDb3VudGVyIGNvZGUgaW4gdGhl
IDEwNC1RVUFELTggZGV2aWNlIGRyaXZlciB3YXMgbm90IHJlbW92ZWQNCj4+PiBkZXNwaXRlIG1v
dmluZyB0byB0aGUgQ291bnRlciBzdWJzeXN0ZW0uDQo+Pj4NCj4+PiBPbmNlIHVzZXIgYXBwbGlj
YXRpb25zIGhhdmUgaGFkIGVub3VnaCB0aW1lIHRvIG1pZ3JhdGUgdG8gdGhlIEdlbmVyaWMNCj4+
PiBDb3VudGVyIGludGVyZmFjZSwgd2UgY2FuIGNvbnNpZGVyIHJlbW92aW5nIHRoZSBkZXByZWNh
dGVkIElJTyBDb3VudGVyDQo+Pj4gaW50ZXJmYWNlLg0KPj4gSGkgV2lsbGlhbSwNCj4+DQo+PiBU
aGlzIFNvQyBpcyBub3QgeWV0IGluIHByb2R1Y3Rpb24gc28gdGhlaXIgaXMgbm8gbGVnYWN5IG9u
IHRoZSBvbGQgaW50ZXJmYWNlDQo+PiBhbmQgSSB3b3VsZCBsaWtlIHRvIGF2b2lkIHRvIGNyZWF0
ZSBvbmUuDQo+Pg0KPj4gQmVuamFtaW4NCj4gQWgsIEkgc2VlIHdoYXQgeW91IG1lYW4sIHRoaXMg
ZHJpdmVyIGlzIGZvciBmdXR1cmUgZGV2aWNlcy4gRG8gdGhlDQo+IGVhcmxpZXIgU1RNMzIgSDcg
c2VyaWVzIGRldmljZXMgaGF2ZSBhIHF1YWRyYXR1cmUgZmVhdHVyZSBhcyB3ZWxsLCBvciBpcw0K
PiB0aGlzIGZ1bmN0aW9uYWxpdHkgb25seSBhdmFpbGFibGUgd2l0aCB0aGUgbmV3IGRldmljZXM/
DQoNCkl0IGlzIGF2YWlsYWJsZSBvbiBTVE0zMiBINyBidXQgSSBoYXZlIG5ldmVyIHNlZSBhbnkg
TGludXggcHJvZHVjdCBvbiANCnRob3NlIFNPQw0KDQphbmQgZXZlbiBsZXNzIHVzaW5nIHF1YWRy
YXRpYyBlbmNvZGVyIDstKQ0KDQpCZW5qYW1pbg0KDQo+DQo+IFdpbGxpYW0gQnJlYXRoaXR0IEdy
YXkNCj4NCj4+PiBXaWxsaWFtIEJyZWF0aGl0dCBHcmF5DQo+Pj4NCj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPj4+IGxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0DQo+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+
Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
