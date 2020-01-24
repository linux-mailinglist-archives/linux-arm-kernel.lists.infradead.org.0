Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7F3147A9C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 10:35:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+0AkPPFKFtWC1MGxWnhJXXxrGXxYFguIXmlL0JF70A=; b=DpuyMey25HjYEas+SnScwS0P9
	Xt4kyWchDesvWRlFC5SroHBuO8nlHdQ5HCKumX4pbdKEGT7anDk3OxQS6LHRB4I8xflv+Gnj0nB27
	zRaH9aEvEWh0FaxPDbZo6WBWXH6rrU4bGWjYesWkFXO6BHcP7ZTaooXxblOWK6WI5rlymC9UFyjmu
	g51l7MXCX1vXXw0Zp76eK/h9xK2MGITOJYAcL/HijaiI5ru+8DM/UN9IhO/yeiHSTUaixHujrTFoP
	fylmhf7+m1j6kfLSC2rQnNRd4afEv694VC5rb/pGOQfYozJ9YrIVCoOItYLmUgl6kYZoRm5Pbt7Ic
	9lQJ0ngwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuvNH-0003fN-49; Fri, 24 Jan 2020 09:35:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuvN5-0003es-Dg
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 09:35:25 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00O9XorX004886; Fri, 24 Jan 2020 10:35:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=s+F14br8eyIzGB54Dp63KbMSAuCDWiM+rIRBUDJYcdg=;
 b=czZXrnyLZUYYqseuxYhzy0IZFrMstkY/oz0R1IM9DQ7QTnJE5ht8yBFYgm0hpYIOvqyc
 liHAWCP2jxwhTIDrm9KouqrMraN7WCPsVscnitAI7GmmnwtxHG6DLhYrL2QqjaioVrxt
 i7CC0bxuMOUgJDlsrb0PLZAwAxLtk0nAx9nFqrZM96xUAPpr4/o7DkE1fNtdhTZ98dy9
 9cWVu+MlRhHgjwlcaEjRx24XobdGkxcmQ0oPILF1jLgDPwALf3V/mWvOSfVdNy8PK4ez
 QWrwOG8KLCUKKzi6VKvU+D4Ar1/5+czdH7d4bOyuLbz35t1htPNVb9kRj46ZS5M2mH80 FA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xksspestc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Jan 2020 10:35:18 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CC442100034;
 Fri, 24 Jan 2020 10:35:13 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BAC8021E5DB;
 Fri, 24 Jan 2020 10:35:13 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 Jan
 2020 10:35:13 +0100
Subject: Re: STM32MP1 level triggered interrupts
To: Marc Zyngier <maz@kernel.org>, Marek Vasut <marex@denx.de>
References: <20bb72d0-8258-abc0-e729-4d3d5a75c41c@denx.de>
 <d6e02817-2464-51b9-246a-7720b607b8d6@st.com>
 <65a1c5b2-c1b9-322f-338c-e6ff6379d8d1@denx.de>
 <129d04a0-c846-506d-5726-4a1024d977a6@st.com>
 <80db762c-3b3d-f007-2f9b-dadbffd95782@denx.de>
 <360b1adc-32f1-7993-c463-e52c7a5a8a67@st.com>
 <c4f08f59acd31951527ef1d6e9409e6f@kernel.org>
 <20200123101225.nscpc5t4nmlarbw2@pengutronix.de>
 <03fd1cb7b5985b3221f66c6b0058adc8@kernel.org>
 <20200123105214.ru4j76xbisjtbtgw@pengutronix.de>
 <cf98f4fd257ba4f34c75fe1656bd341b@kernel.org>
 <e1fffd57-4814-ec36-68b4-4207e3d4ae5d@denx.de>
 <53873228b5357a29a8405db55cff7392@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <1ce74566-9ac2-c7ff-f263-71a86a03ef89@st.com>
Date: Fri, 24 Jan 2020 10:35:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <53873228b5357a29a8405db55cff7392@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_02:2020-01-24,
 2020-01-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_013523_905235_ACE28BD4 
X-CRM114-Status: GOOD (  30.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxLzI0LzIwIDEwOjIxIEFNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAyMC0wMS0y
MyAyMjoyMSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDEvMjMvMjAgMTI6MTggUE0sIE1hcmMg
WnluZ2llciB3cm90ZToKPj4+IE9uIDIwMjAtMDEtMjMgMTA6NTIsIFV3ZSBLbGVpbmUtS8O2bmln
IHdyb3RlOgo+Pj4+IE9uIFRodSwgSmFuIDIzLCAyMDIwIGF0IDEwOjQ0OjAzQU0gKzAwMDAsIE1h
cmMgWnluZ2llciB3cm90ZToKPj4+Pj4gT24gMjAyMC0wMS0yMyAxMDoxMiwgVXdlIEtsZWluZS1L
w7ZuaWcgd3JvdGU6Cj4+Pj4+ID4gT24gVGh1LCBKYW4gMjMsIDIwMjAgYXQgMDk6MjI6NDhBTSAr
MDAwMCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+PiA+ID4gT24gMjAyMC0wMS0yMyAwODoyNywg
QWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Pj4gPiA+ID4gT24gMS8yMi8yMCA4OjI5IFBNLCBN
YXJlayBWYXN1dCB3cm90ZToKPj4+Pj4gPiA+ID4gPiBPbiAxLzIyLzIwIDY6MTkgUE0sIEFsZXhh
bmRyZSBUb3JndWUgd3JvdGU6Cj4+Pj4+ID4gPiA+ID4KPj4+Pj4gPiA+ID4gPiBIaSwKPj4+Pj4g
PiA+ID4gPgo+Pj4+PiA+ID4gPiA+IFsuLi5dCj4+Pj4+ID4gPiA+ID4KPj4+Pj4gPiA+ID4gPiA+
ID4gPiBDb25jZXJuaW5nLCB5b3VyIHF1ZXN0aW9uOgo+Pj4+PiA+ID4gPiA+ID4gPiA+Cj4+Pj4+
ID4gPiA+ID4gPiA+ID4gU2V0dGluZyB5b3VyIGdwaW9DIGludGVycnVwdGlvbiBhcyAiZmFsbGlu
ZyBlZGdlIiBzaG91bGQKPj4+Pj4gPiA+ID4gPiA+ID4gPiBiZSBlbm91Z2guIE9uCj4+Pj4+ID4g
PiA+ID4gPiA+ID4gZ3Bpb0N4IGZhbGxpbmcgZWRnZSwgYSBoaWdoLWxldmVsIHNpZ25hbCBpcyBn
ZW5lcmF0ZWQgYnkKPj4+Pj4gPiA+ID4gPiA+ID4gPiBleHRpIGFuZCBzZW50Cj4+Pj4+ID4gPiA+
ID4gPiA+ID4gdG8gR0lDICh3aGljaCB0cmlnZ2VycyBHSUMgaW50ZXJydXB0KS4gVGhpcyBzaWdu
YWwKPj4+Pj4gPiA+ID4gPiA+ID4gPiByZW1haW5zIGhpZ2ggdW50aWwKPj4+Pj4gPiA+ID4gPiA+
ID4gPiBzdG0zMl9pcnFfYWNrIGlzIGNhbGxlZC4KPj4+Pj4gPiA+ID4gPiA+ID4gPgo+Pj4+PiA+
ID4gPiA+ID4gPiA+IFNvIHlvdSBvbmx5IG5lZWQ6IChleCBmb3IgZ3Bpb2MgMSkuCj4+Pj4+ID4g
PiA+ID4gPiA+ID4KPj4+Pj4gPiA+ID4gPiA+ID4gPiBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlv
Yz47Cj4+Pj4+ID4gPiA+ID4gPiA+ID4gaW50ZXJydXB0cyA9IDwxIElSUV9UWVBFX0VER0VfRkFM
TElORz47Cj4+Pj4+ID4gPiA+ID4gPiA+Cj4+Pj4+ID4gPiA+ID4gPiA+IEhvdyBkb2VzIHRoaXMg
ZGVhbCB3aXRoIHRoZSBjYXNlIHdoZXJlIHRoZSBkZXZpY2UgaG9sZHMgCj4+Pj4+IHRoZQo+Pj4+
PiA+ID4gPiA+ID4gPiBpbnRlcnJ1cHQKPj4+Pj4gPiA+ID4gPiA+ID4gbGluZSBsb3cgKHNpbmNl
IGl0J3MgbGV2ZWwtc2Vuc2l0aXZlLCBhY3RpdmUgbG93KSBhZnRlcgo+Pj4+PiB0aGUgZHJpdmVy
Cj4+Pj4+ID4gPiA+ID4gPiA+IGludGVycnVwdCBoYW5kbGVyIGZpbmlzaGVzID8gRG9lcyBzdWNo
IGNvbmRpdGlvbiBnZW5lcmF0ZQo+Pj4+PiBhbm90aGVyCj4+Pj4+ID4gPiA+ID4gPiA+IGludGVy
cnVwdCBhbmQgY2FsbCB0aGUgZHJpdmVyIGludGVycnVwdCBoYW5kbGVyIGFnYWluID8gSQo+Pj4+
PiA+ID4gPiA+ID4gPiB3b3VsZCBleHBlY3QKPj4+Pj4gPiA+ID4gPiA+ID4gdGhlIGFuc3dlciBp
cyBubywgYmVjYXVzZSB0aGUgaW50ZXJydXB0IGlzIGVkZ2UtdHJpZ2dlcmVkCj4+Pj4+ID4gPiA+
ID4gPiA+IGFuZCB0aGVyZSBpcwo+Pj4+PiA+ID4gPiA+ID4gPiBubyBlZGdlLgo+Pj4+PiA+ID4g
PiA+ID4KPj4+Pj4gPiA+ID4gPiA+IFlvdXIgYXNzdW1wdGlvbiBpcyBnb29kLiBJZiB5b3VyIGRl
dmljZSBjb250aW51ZSB0byBob2xkIHRoZQo+Pj4+PiA+ID4gPiA+ID4gbGluZSB0byBsb3cKPj4+
Pj4gPiA+ID4gPiA+IGF0IHRoZSBlbmQgb2YgeW91ciBpbnRlcnJ1cHQgaGFuZGxlciwgbm8gbW9y
ZSBpbnRlcnJ1cHQKPj4+Pj4gd2lsbCBiZQo+Pj4+PiA+ID4gPiA+ID4gZ2VuZXJhdGVkLgo+Pj4+
PiA+ID4gPiA+Cj4+Pj4+ID4gPiA+ID4gQnV0IGRvZXMgdGhhdCBiYXNpY2FsbHkgbWVhbiB0aGF0
IHN1Y2ggYSBkZXZpY2UgY2Fubm90IGJlCj4+Pj4+IHVzZWQgd2l0aAo+Pj4+PiA+ID4gPiA+IFNU
TTMyTVAxIG9yIGFtIEkgZnVuZGFtZW50YWxseSBtaXN0YWtlbiBhbmQgZG9uJ3QgdW5kZXJzdGFu
ZAo+Pj4+PiBob3cgYQo+Pj4+PiA+ID4gPiA+IGxldmVsLXRyaWdnZXJlZCBpbnRlcnJ1cHQgd29y
a3MgPyA6KQo+Pj4+PiA+ID4gPgo+Pj4+PiA+ID4gPiBZb3UgbmVlZCB0byByZWxlYXNlIHRoZSBs
aW5lIGluIHlvdXIgZGV2aWNlIGludGVycnVwdCBoYW5kbGVyLgo+Pj4+PiBJZiBub3QsCj4+Pj4+
ID4gPiA+IHllcywgeW91IHdpbGwgbWlzcyBpbnRlcnJ1cHRzIDokCj4+Pj4+ID4gPgo+Pj4+PiA+
ID4gU28gdG8gc3VtIGl0IHVwLCB0aGlzIFNvQyBkb2Vzbid0IHN1cHBvcnQgZXh0ZXJuYWwgbGV2
ZWwgCj4+Pj4+IGludGVycnVwdHMKPj4+Pj4gPiA+IG9uIGl0cyBvd24sIGZ1bGwgc3RvcC4gWW91
J2QgbmVlZCBzb21lIGFkZGl0aW9uYWwgZXh0ZXJuYWwgCj4+Pj4+IHNhbXBsaW5nCj4+Pj4+ID4g
PiBIVyB0byByZXRyaWdnZXIgYW4gZWRnZSBvbiBFT0kuCj4+Pj4+ID4KPj4+Pj4gPiBPciB5b3Ug
bmVlZCBzb2Z0d2FyZSBzdXBwb3J0IHRoYXQgbWFya3MgdGhlIGlycSBwZW5kaW5nIGFnYWluIGlm
IG9uCj4+Pj4+ID4gdW5tYXNrIHRoZSBpcnEgbGluZSBpcyBzdGlsbCBhY3RpdmUuCj4+Pj4+Cj4+
Pj4+IEFzc3VtaW5nIHlvdSBjYW4gYWN0dWFsbHkgb2JzZXJ2ZSB0aGUgc3RhdGUgb2YgdGhlIGxp
bmUgZGlyZWN0bHksCj4+Pj4+IHdpdGhvdXQgaGF2aW5nIHRvIGFkZCBzcGVjaWZpYyBrbm93bGVk
Z2Ugb2YgdGhlIGdlbmVyYXRpbmcgZGV2aWNlLgo+Pj4+Cj4+Pj4gQWNrLCB5b3Ugd29uJ3Qgd2Fu
dCB0byBsb29rIGludG8gdGhlIHJlZ2lzdGVycyBvZiB0aGUgaXJxIGdlbmVyYXRpbmcKPj4+PiBk
ZXZpY2UgZm9yIHRoYXQuIEkgYXNzdW1lZCB0aGUgbGluZSdzIHN0YXRlIGlzIG9ic2VydmFibGUg
aW4gYW4KPj4+PiBpcnEtY29udHJvbGxlciBzcGVjaWZpYyB3YXkuCj4+Pgo+Pj4gVW5mb3J0dW5h
dGVseSwgdGhhdCdzIG5vdCBhbHdheXMgdGhlIGNhc2UuIEFuZCBpZiB0aGUgbXV4IGhhcyBiZWVu
Cj4+PiBkZXNpZ25lZCBmb3IgZWRnZS1zaWduYWxsaW5nIG9ubHksIHRoaXMgcGFydGljdWxhciBm
ZWF0dXJlIGlzIHVubGlrZWx5Cj4+PiB0byBleGlzdCBiZWNhdXNlIGl0IG1ha2VzIGxpdHRsZSBz
ZW5zZSBpbiB0aGlzIGNvbnRleHQgKHRoZSBpbnB1dAo+Pj4gZXZlbnRzIGFyZSBvbmx5IHRyYW5z
aWVudCwgc28geW91IHdvdWxkbid0IG9ic2VydmUgbXVjaCkuIEluc3RlYWQsIHlvdQo+Pj4gd291
bGQgaW1wbGVtZW50IGEgc2V0IG9mIGxhdGNoZXMuCj4+Pgo+Pj4gQnV0IHdobyBrbm93cywgbWF5
YmUgYXMgYSBkZWJ1ZyBmZWF0dXJlIChhbHRob3VnaCBsb29raW5nIGF0IHRoZSBUUk0KPj4+IGRp
ZG4ndCBsZWFkIHRvIGFueXRoaW5nIHVzZWZ1bCkuLi4KPj4+Cj4+Pj4+IERvaW5nIHRoaXMga2lu
ZCBvZiB0cmlja3MgaW4gMjAyMCBpcyBwcmV0dHkgcG9vciBmb3IgYSBtb2Rlcm4gU29DLgo+Pj4+
Cj4+Pj4gV2l0aCB0aGUgYWJvdmUgYXNzdW1wdGlvbiBnaXZlbiwgSSB0aGluayB0aGF0IGlzIG9r
IGV2ZW4gaW4gMjAyMC4gCj4+Pj4gKEJ1dCBJCj4+Pj4gd29uZGVyIGFib3V0IFNvQ3MgaW4gMjAy
MCBub3QgYmVpbmcgYWJsZSB0byBoYW5kbGUgbGV2ZWwgc2Vuc2l0aXZlIGlycXMKPj4+PiA6LSkK
Pj4+Cj4+PiBRdWl0ZS4gU2VlbXMgaW5jcmVkaWJseSByZXN0cmljdGl2ZSwgYW5kIHZlcnkgdW5m
b3J0dW5hdGUuCj4+Cj4+IFNvIEkgd29uZGVyLCB0aGUgRVhUSSBzaG91bGQgYmUgYWJsZSB0byBy
ZWFkIHRoZSBHUElPIGxpbmUgd2hpY2ggY2F1c2VkCj4+IHRoZSBpbnRlcnJ1cHQgd2hlbiB0aGUg
aW50ZXJydXB0IGhhbmRsZXIgcmV0dXJucywgYW5kIHRyaWdnZXIgdGhlCj4+IGludGVycnVwdCBh
Z2FpbiBpZiB0aGUgbGluZSBpcyBzdGlsbCBsb3cuIFRoaXMgbWlnaHQgbmVlZCBzb21lIHBoYW5k
bGUKPj4gZnJvbSB0aGUgRVhUSSB0byBHUElPIGJhbmsgaW4gRFQsIGJ1dCBzaG91bGQgYmUgZ2Vu
ZXJhbGx5IGRvYWJsZSwgbm8gPwo+PiBJdCdzIGEgY3J1dGNoIGFsbCByaWdodC4KPiAKPiBUaGF0
IGlzIGV4YWN0bHkgd2hhdCBVd2Ugd2FzIHN1Z2dlc3RpbmcgYWJvdmUgKGRvaW5nIHRoZSByZXNh
bXBsaW5nIGFuZAo+IHJldHJpZ2dlcmluZyBpbiBTVykuIEl0IHJlbWFpbnMgdG8gYmUgc2VlbiB3
aGV0aGVyIHRoZSBHUElPIGJsb2NrIG9mZmVycwo+IGEgd2F5IHRvIHRvIHJlYWQgdGhlIHJhdyBz
dGF0ZSBvZiB0aGUgd2lyZS4KPiAKPj4gQnV0IEkgc3RpbGwgd29uZGVyLCB3aGF0IGlzIHRoZSBw
dXJwb3NlIG9mIHRoZSBFWFRJbXV4IGluIHRoYXQgU29DPwo+PiBTaG91bGRuJ3QgdGhhdCBwZXJt
aXQgcm91dGluZyBHUElPcyBkaXJlY3RseSBpbnRvIEdJQyBTUElzLCB3aGljaCB3b3VsZAo+PiB0
aGVuIHBlcm1pdCBkZXRlY3RpbmcgYXQgbGVhc3QgbGV2ZWwtaGlnaCBpbnRlcnJ1cHRzID8KPiAK
PiBUaGVzZSB0aGluZ3MgYXJlIHVzdWFsbHkgY2FyZ28tY3VsdGVkIGZyb20gb25lIFNvQyB0byBh
bm90aGVyLiBJJ20gcHJldHR5Cj4gc3VyZSB0aGlzIHN0YXJ0ZWQgYXMgYSB3YXkgdG8gaGFuZGxl
IGVkZ2UgaW50ZXJydXB0cyBvbiBhIHNtYWxsZXIgc3lzdGVtLAo+IGFuZCBlbmRlZCB1cCBiZWlu
ZyBjb3B5L3Bhc3RlZCBpbiB0aGUgbmV3ZXIgZGVzaWduLgoKWW91IGFyZSByaWdodC4KCj4gCj4g
T24gbW9kZXJuIHN5c3RlbXMsIGludGVycnVwdCBNVVhzIGFyZSBqdXN0IGEgZGlzYXN0ZXI6IHlv
dSBjYW4ndCBiYWxhbmNlCj4gaW50ZXJydXB0cyBhY3Jvc3MgQ1BVcywgYW5kIHRoZXkgY29zdCBj
eWNsZXMgdG8gaGFuZGxlLiBUaGUgb25seSBiZW5lZml0Cj4gaXMgdGhhdCB5b3UgZG9uJ3QgaGF2
ZSB0byByb3V0ZSBhbGwgR0lDIGlucHV0IHNpZ25hbHMgdG8gdGhlIEdQSU8gYmxvY2suCj4gWW91
IGp1c3Qgcm91dGUgYSBzaW5nbGUgb25lLCBhbmQgc2xhcCB0aGUgbXV4IG5leHQgdG8gaXQuCj4g
Cj4gQnV0IGhleSwgdG9vIGxhdGUuIEhvcGVmdWxseSBzb21lb25lIGF0IFNUIGlzIHJlYWRpbmcg
dGhpcyBhbmQgd2lsbCBmZWVkCj4gYmFjayB0byB0aGUgZGVzaWduIHRlYW1zLgoKRG9uZS4KCj4g
Cj4gIMKgwqDCoMKgwqDCoMKgIE0uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
