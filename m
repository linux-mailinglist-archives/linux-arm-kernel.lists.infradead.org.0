Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFD5CE61C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1Gf4NZ2AxTNvr6tLz62XDfV6u6rOSIkIWM13EV77q4g=; b=ZUA3GCN/UVaRxlpGkqu9URuNu
	1DrA2jXDKlXPgA5L5aDMzKmiCEeOWIcBFX5GhrVvNvvMohZdMoJs3yqjelcSTIvbMywQPC8OxQVte
	Mjb8HuhzjSqPhnftyo6m9nHZp8K1/xHTS3IIHEEg6VSGpvv709aPOEo9VnbxnuhtHcICIV1Y30Awj
	GvEtZ++epKnEiK+F5mVSwfTefAXvMIudkNOnxkSVbKcQmh7HvRKI7TL5FDHMVgLTpSKxCc8ZlTz6l
	DFY93JIFrtwdaALDPFg/XEct8nw6VRpwygg7hQoWAzB1vlEibgychOxT3aQcgGlyo4l175QmJwFk4
	WAyFfHvHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUO3-0006ny-Bj; Mon, 07 Oct 2019 14:53:23 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUNw-0006na-3n
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:53:17 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97Eke9C003277; Mon, 7 Oct 2019 16:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=BHdMjWZVBOApScvksxR8joV5keqKZpJ60rXE2ibEO8g=;
 b=fpejq/z7supoEWxe+slx8u6VsoOpWCsVfD19jaAqZhI0pGQbGv+uJOtfLP7w1ByISxdX
 CYK7sCHsQVt2L31c2fYrKMxsnwZkc5uqOwdxtWgmUwK4BOb+whM+iCemw6GeF4p6MVWk
 IXbLeZ59vIWWv/VQE9UIHvcuEaZF8D9W7TowMUWX7m7dLpCMq1WbpTZPTk/6EyEwci6u
 Y2UjuqSbPnsaON8A9D+I9S8LNdbmRJbtGk4kPlB31EpsXVzBf669j3K+9gHsp4WsF/pI
 5/5T32y1goOidFIYn5kiV9QGm+44s5OKMQa5D1xGw4nwtE0FwzFpIUw1UpYMsCuzbzjp vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vegaguahy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:53:11 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 83456100034;
 Mon,  7 Oct 2019 16:53:10 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 76D982ACFE5;
 Mon,  7 Oct 2019 16:53:10 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct
 2019 16:53:09 +0200
Subject: Re: [PATCH 1/1] pinctrl: stmfx: add irq_request/release_resources
 callbacks
To: Linus Walleij <linus.walleij@linaro.org>
References: <20191004122923.22674-1-amelie.delaunay@st.com>
 <CACRpkda6CyYCt-s-VkaK856Jt3TxQg+HVDz-5Ww9T9KNHHAjaQ@mail.gmail.com>
From: Amelie DELAUNAY <amelie.delaunay@st.com>
Message-ID: <8eb2090a-e50e-2e4f-982b-073ad24e553c@st.com>
Date: Mon, 7 Oct 2019 16:53:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACRpkda6CyYCt-s-VkaK856Jt3TxQg+HVDz-5Ww9T9KNHHAjaQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_075316_506533_5919DA8A 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTGludXMsCgpPbiAxMC81LzE5IDY6NDkgUE0sIExpbnVzIFdhbGxlaWogd3JvdGU6Cj4gT24g
RnJpLCBPY3QgNCwgMjAxOSBhdCAyOjI5IFBNIEFtZWxpZSBEZWxhdW5heSA8YW1lbGllLmRlbGF1
bmF5QHN0LmNvbT4gCj4gd3JvdGU6Cj4gCj4+IFdoZW4gYW4gU1RNRlggSU8gaXMgdXNlZCBhcyBp
bnRlcnJ1cHQgdGhyb3VnaCB0aGUgaW50ZXJydXB0LWNvbnRyb2xsZXIKPj4gYmluZGluZywgdGhl
IFNUTUZYIGRyaXZlciBzaG91bGQgY29uZmlndXJlIHRoaXMgSU8gYXMgaW5wdXQuIERlZmF1bHQK
Pj4gdmFsdWUgb2YgU1RNRlggSU8gZGlyZWN0aW9uIGlzIGlucHV0LCBidXQgaWYgdGhlIElPIGlz
IHVzZWQgYXMgb3V0cHV0Cj4+IGJlZm9yZSB0aGUgaW50ZXJydXB0IHVzZSwgaXQgd2lsbCBub3Qg
d29yayB3aXRob3V0IHRoZXNlIGNhbGxiYWNrcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQW1lbGll
IERlbGF1bmF5IDxhbWVsaWUuZGVsYXVuYXlAc3QuY29tPgo+IAo+IE9LIEkgc2VlIHdoYXQgeW91
IHdhbnQgdG8gYWNoaWV2ZS4KPiAKPj4gK3N0YXRpYyBpbnQgc3RtZnhfZ3Bpb19pcnFfcmVxdWVz
dF9yZXNvdXJjZXMoc3RydWN0IGlycV9kYXRhICpkYXRhKQo+PiArewo+PiArwqDCoMKgwqDCoMKg
IHN0cnVjdCBncGlvX2NoaXAgKmdwaW9fY2hpcCA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRh
KGRhdGEpOwo+PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBzdG1meF9waW5jdHJsICpwY3RsID0gZ3Bp
b2NoaXBfZ2V0X2RhdGEoZ3Bpb19jaGlwKTsKPj4gK8KgwqDCoMKgwqDCoCBpbnQgcmV0Owo+PiAr
Cj4+ICvCoMKgwqDCoMKgwqAgcmV0ID0gc3RtZnhfZ3Bpb19kaXJlY3Rpb25faW5wdXQoJnBjdGwt
PmdwaW9fY2hpcCwgZGF0YS0+aHdpcnEpOwo+PiArwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiByZXQ7Cj4+ICsKPj4gK8KgwqDCoMKg
wqDCoCByZXQgPSBncGlvY2hpcF9sb2NrX2FzX2lycSgmcGN0bC0+Z3Bpb19jaGlwLCBkYXRhLT5o
d2lycSk7Cj4+ICvCoMKgwqDCoMKgwqAgaWYgKHJldCkgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBkZXZfZXJyKHBjdGwtPmRldiwgIlVuYWJsZSB0byBsb2NrIGdwaW8gJWx1IGFz
IElSUTogJWRcbiIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBkYXRhLT5od2lycSwgcmV0KTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIHJldDsKPj4gK8KgwqDCoMKgwqDCoCB9Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoCByZXR1
cm4gMDsKPj4gK30KPiAKPiBKdXN0IGNhbGwgZ3Bpb2NoaXBfcmVxcmVzX2lycSgpIGluc3RlYWQg
b2YgY2FsbGluZyB0aGUgbG9jayBldGMKPiBleHBsaWNpdGx5Lgo+IAo+PiArc3RhdGljIHZvaWQg
c3RtZnhfZ3Bpb19pcnFfcmVsZWFzZV9yZXNvdXJjZXMoc3RydWN0IGlycV9kYXRhICpkYXRhKQo+
PiArewo+PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBncGlvX2NoaXAgKmdwaW9fY2hpcCA9IGlycV9k
YXRhX2dldF9pcnFfY2hpcF9kYXRhKGRhdGEpOwo+PiArwqDCoMKgwqDCoMKgIHN0cnVjdCBzdG1m
eF9waW5jdHJsICpwY3RsID0gZ3Bpb2NoaXBfZ2V0X2RhdGEoZ3Bpb19jaGlwKTsKPj4gKwo+PiAr
wqDCoMKgwqDCoMKgIGdwaW9jaGlwX3VubG9ja19hc19pcnEoJnBjdGwtPmdwaW9fY2hpcCwgZGF0
YS0+aHdpcnEpOwo+PiArfQo+IAo+IEp1c3QgY2FsbCBncGlvY2hpcF9yZWxyZXNfaXJxKCkKPiAK
PiBCdXQgYWxsIHRoaXMgZHVwbGljYXRlZCBhIGxvdCBvZiBjb2RlIGZyb20gdGhlIGNvcmUgd2hp
Y2ggaXMgbm90IHNvIG5pY2UuCj4gCj4+IEBAIC02NzgsNiArNzA2LDggQEAgc3RhdGljIGludCBz
dG1meF9waW5jdHJsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+wqDCoMKg
wqDCoMKgwqDCoCBwY3RsLT5pcnFfY2hpcC5pcnFfc2V0X3R5cGUgPSBzdG1meF9waW5jdHJsX2ly
cV9zZXRfdHlwZTsKPj7CoMKgwqDCoMKgwqDCoMKgIHBjdGwtPmlycV9jaGlwLmlycV9idXNfbG9j
ayA9IHN0bWZ4X3BpbmN0cmxfaXJxX2J1c19sb2NrOwo+PsKgwqDCoMKgwqDCoMKgwqAgcGN0bC0+
aXJxX2NoaXAuaXJxX2J1c19zeW5jX3VubG9jayA9IHN0bWZ4X3BpbmN0cmxfaXJxX2J1c19zeW5j
X3VubG9jazsKPj4gK8KgwqDCoMKgwqDCoCBwY3RsLT5pcnFfY2hpcC5pcnFfcmVxdWVzdF9yZXNv
dXJjZXMgPSBzdG1meF9ncGlvX2lycV9yZXF1ZXN0X3Jlc291cmNlczsKPj4gK8KgwqDCoMKgwqDC
oCBwY3RsLT5pcnFfY2hpcC5pcnFfcmVsZWFzZV9yZXNvdXJjZXMgPSBzdG1meF9ncGlvX2lycV9y
ZWxlYXNlX3Jlc291cmNlczsKPiAKPiBXaGF0IGFib3V0IGp1c3QgYWRkaW5nCj4gCj4gcGN0bC0+
aXJxX2NoaXAuaXJxX2VuYWJsZSBhbmQgZG8gc3RtZnhfZ3Bpb19kaXJlY3Rpb25faW5wdXQoKQo+
IGluIHRoYXQgY2FsbGJhY2sgaW5zdGVhZD8gZ3Bpb2xpYiB3aWxsIGhlbHBmdWxseSB3cmFwIGl0
LgoKVGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dCB0byBtZS4KCkkgY2FuJ3QgdXNlIC5pcnFf
ZW5hYmxlIGJlY2F1c2Ugb2YgSTJDIHRyYW5zZmVyIHRvIHNldCBncGlvIGRpcmVjdGlvbiAKKHNj
aGVkdWxpbmcgd2hpbGUgYXRvbWljIEJVRyBvY2N1cnMgaW4gdGhpcyBjYXNlKS4gSW5kZWVkLCAu
aXJxX2VuYWJsZSAKaXMgY2FsbGVkIHVuZGVyIHJhd19zcGluX2xvY2tfaXJxc2F2ZSBpbiBfX3Nl
dHVwX2lycSgpIHdoaWxlIAppcnFfcmVxdWVzdF9yZXNvdXJjZXMgaXMgY2FsbGVkIGJlZm9yZS4K
CkkgY291bGQgYXBwbHkgZ3BpbyBkaXJlY3Rpb24gaW4gc3RtZnhfcGluY3RybF9pcnFfYnVzX3N5
bmNfdW5sb2NrIApkZXBlbmRpbmcgb24gcGN0bC0+aXJxX2dwaV9zcmNbXSAoY2hlY2tpbmcgd2hp
Y2ggb25lIGlzIHNldCwgdG8gc2V0IAppbnB1dCBkaXJlY3Rpb24pLCBidXQgdGhpcyB3aWxsIGJl
IGFwcGxpZWQgZWFjaCB0aW1lIGEgY29uc3VtZXIgcmVxdWVzdHMgCmEgc3RtZnggZ3BpbyBpcnEu
CgpJTUhPLCBrZWVwaW5nIC5pcnFfcmVxdWVzdC9yZWxlYXNlX3Jlc291cmNlcyBjYWxsYmFja3Mg
YW5kIHVzaW5nIApncGlvY2hpcF9yZXFyZXNfaXJxKCkvZ3Bpb2NoaXBfcmVscmVzX2lycSgpIHNl
ZW1zIHRvIGJlIHRoZSBiZXN0IGNvbXByb21pc2UuCgpSZWdhcmRzLApBbWVsaWUKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
