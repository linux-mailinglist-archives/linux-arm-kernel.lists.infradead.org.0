Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267661644CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mkwy9onEIUXdHFyKXR1FYWO16e/llon4EnlXSXKgFaM=; b=m1Pw8XGHBs+/ssjcDFIqpTh4k
	gvPZPP1NW1hV7qGhx3MufzwH0f/rlIAf3n5l4i5SJ5GQ/Z31rThdSAqLkoqnd76E78JNfypjjpIxe
	jNppLZFz18qS7h72gUc5IVVw1TFtPaJPV3b6GzVpkJ16t0FlTtUb9aezOVxP+MeOIuybzEiZyZ4fd
	HVX5nEjrZSIvHtGHnWHHnpLoeEtTr7KsSHNJHMGh2uZPMylQs7ltiRUejg7Q/47LbaQx7tcFHGo/l
	2A4mf189O2U2DqAMjOF5MsveNYei2tAaNQMNzVkNtW26j3x5rvS0d8kBREUBOlVfsgua1dZ0plMpK
	VCeBwtmgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ox1-0007xD-LQ; Wed, 19 Feb 2020 12:59:39 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Owo-0007we-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:59:28 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01JCw4eG013934; Wed, 19 Feb 2020 13:59:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=zmFujj4GRkDX21u9JhxLYgA8qquOsAzgNuffylBkA5Y=;
 b=zc0TBCvI9hx4wVsnzA+zEna0RyYPH/dYUkaTniwEQI+PD4fXC99ehXvGQ7N1xZ7uaXf7
 tASiileNImaCcyZd3FfVE61xSB3OiyLuimc+TPXRrCMOfGqqk3HJL2eH91XuPIUEVxwA
 fH2C2zMnT8qdZgShwujfENaEb7FGxwqVc1lLM6oaM5g37gKnyhxJ0NDzyKoLT6rFHPzD
 R2zArrSEQoJ/wnmlpmaleCx8pbtPqNx+Pujf/NRThiUt4Q18uvIzdYJJXcoSStgxWzJf
 CyJODsTbKFZmguulXUEbe9kqzETdwPgc4HPFUclJwwH4vWic6cPo1sEMB2BhrtZU+99E KQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5k4a8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 19 Feb 2020 13:59:12 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 941BD10002A;
 Wed, 19 Feb 2020 13:59:10 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7A2D92B7373;
 Wed, 19 Feb 2020 13:59:10 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.45) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 19 Feb
 2020 13:59:09 +0100
Subject: Re: [PATCH v2 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
To: Marc Zyngier <maz@kernel.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <20200218131218.10789-3-alexandre.torgue@st.com>
 <f82caf02-5a47-ce3e-ec85-313712ef6de0@st.com>
 <53f72a8b241da3032a42b80c86b7c6ab@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <2ac7037f-a29e-afb2-ef6d-27eac9817e3c@st.com>
Date: Wed, 19 Feb 2020 13:59:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <53f72a8b241da3032a42b80c86b7c6ab@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-19_03:2020-02-19,
 2020-02-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_045927_158803_927F42F7 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marex@denx.de, Jason Cooper <jason@lakedaemon.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYwoKT24gMi8xOS8yMCAxOjA3IFBNLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24gMjAy
MC0wMi0xOSAxMTozNCwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4gRml4IE1hcmMgZW1haWwg
YWRkcmVzcy4KPj4KPj4gT24gMi8xOC8yMCAyOjEyIFBNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3Rl
Ogo+Pj4gVGhpcyBwYXRjaCBhZGRzIGxldmVsIGludGVycnVwdCBzdXBwb3J0IHRvIGdwaW8gaXJx
IGNoaXAuCj4gCj4gQSBjb21taXQgbWVzc2FnZSBzaG91bGQgbm90IGNvbnRhaW4gInRoaXMgcGF0
Y2giLgoKT2sgSSdsbCBjaGFuZ2UgaW4gdjMKCj4gCj4+Pgo+Pj4gR1BJTyBoYXJkd2FyZSBibG9j
ayBpcyBkaXJlY3RseSBsaW5rZWQgdG8gRVhUSSBibG9jayBidXQgRVhUSSBoYW5kbGVzCj4+PiBl
eHRlcm5hbCBpbnRlcnJ1cHRzIG9ubHkgb24gZWRnZS4gVG8gYmUgYWJsZSB0byBoYW5kbGUgR1BJ
TyBpbnRlcnJ1cHQgb24KPj4+IGxldmVsIGEgImhhY2siIGlzIGRvbmUgaW4gZ3BpbyBpcnEgY2hp
cDogcGFyZW50IGludGVycnVwdCAoZXh0aSBpcnEgCj4+PiBjaGlwKQo+Pj4gaXMgcmV0cmlnZ2Vy
ZWQgZm9sbG93aW5nIGludGVycnVwdCB0eXBlIGFuZCBncGlvIGxpbmUgdmFsdWUuCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+
Cj4+PiBUZXN0ZWQtYnk6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+Pj4KPj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvc3RtMzIvcGluY3RybC1zdG0zMi5jIAo+Pj4gYi9kcml2
ZXJzL3BpbmN0cmwvc3RtMzIvcGluY3RybC1zdG0zMi5jCj4+PiBpbmRleCAyZDVlMDQzNWFmMGEu
LmRhZTIzNjU2MjU0MyAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9zdG0zMi9waW5j
dHJsLXN0bTMyLmMKPj4+ICsrKyBiL2RyaXZlcnMvcGluY3RybC9zdG0zMi9waW5jdHJsLXN0bTMy
LmMKPj4+IEBAIC05Miw2ICs5Miw3IEBAIHN0cnVjdCBzdG0zMl9ncGlvX2Jhbmsgewo+Pj4gwqDC
oMKgwqDCoCB1MzIgYmFua19ucjsKPj4+IMKgwqDCoMKgwqAgdTMyIGJhbmtfaW9wb3J0X25yOwo+
Pj4gwqDCoMKgwqDCoCB1MzIgcGluX2JhY2t1cFtTVE0zMl9HUElPX1BJTlNfUEVSX0JBTktdOwo+
Pj4gK8KgwqDCoCB1MzIgaXJxX3R5cGVbU1RNMzJfR1BJT19QSU5TX1BFUl9CQU5LXTsKPiAKPiBE
byB5b3UgcmVhbGx5IG5lZWQgYSB1MzIgaGVyZT8gYW4gYXJyYXkgb2YgdTggc2VlbXMgZW5vdWdo
LiBBZnRlciBhbGwsCj4geW91IG9ubHkgbmVlZCB0d28gYml0cyBvZiBpbmZvcm1hdGlvbiBwZXIg
aW50ZXJydXB0cyAobGV2ZWwgb3Igbm90LAo+IGxvdyBvciBoaWdoKS4KCkkgYWdyZWUuIE5vIG5l
ZWQgdG8gaGF2ZSB1MzIuCgo+IAo+Pj4gwqAgfTsKPj4+IMKgwqDCoCBzdHJ1Y3Qgc3RtMzJfcGlu
Y3RybCB7Cj4+PiBAQCAtMzAzLDYgKzMwNCw0NiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGdwaW9f
Y2hpcCAKPj4+IHN0bTMyX2dwaW9fdGVtcGxhdGUgPSB7Cj4+PiDCoMKgwqDCoMKgIC5nZXRfZGly
ZWN0aW9uwqDCoMKgwqDCoMKgwqAgPSBzdG0zMl9ncGlvX2dldF9kaXJlY3Rpb24sCj4+PiDCoCB9
Owo+Pj4gwqAgK3ZvaWQgc3RtMzJfZ3Bpb19pcnFfZW9pKHN0cnVjdCBpcnFfZGF0YSAqZCkKPj4+
ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBzdG0zMl9ncGlvX2JhbmsgKmJhbmsgPSBkLT5kb21haW4t
Pmhvc3RfZGF0YTsKPj4+ICvCoMKgwqAgaW50IGxpbmU7Cj4+PiArCj4+PiArwqDCoMKgIGlycV9j
aGlwX2VvaV9wYXJlbnQoZCk7Cj4+PiArCj4+PiArwqDCoMKgIC8qIElmIGxldmVsIGludGVycnVw
dCB0eXBlIHRoZW4gcmV0cmlnICovCj4+PiArwqDCoMKgIGxpbmUgPSBzdG0zMl9ncGlvX2dldCgm
YmFuay0+Z3Bpb19jaGlwLCBkLT5od2lycSk7Cj4+PiArwqDCoMKgIGlmICgobGluZSA9PSAwICYm
IGJhbmstPmlycV90eXBlW2QtPmh3aXJxXSA9PSAKPj4+IElSUV9UWVBFX0xFVkVMX0xPVykgfHwK
Pj4+ICvCoMKgwqDCoMKgwqDCoCAobGluZSA9PSAxICYmIGJhbmstPmlycV90eXBlW2QtPmh3aXJx
XSA9PSBJUlFfVFlQRV9MRVZFTF9ISUdIKSkKPj4+ICvCoMKgwqDCoMKgwqDCoCBpcnFfY2hpcF9y
ZXRyaWdnZXJfaGllcmFyY2h5KGQpOwo+IAo+IHMvbGluZS9sZXZlbC8KPiAKCmNvcnJlY3QKCj4+
PiArfTsKPj4+ICsKPj4+ICtzdGF0aWMgaW50IHN0bTMyX2dwaW9fc2V0X3R5cGUoc3RydWN0IGly
cV9kYXRhICpkLCB1bnNpZ25lZCBpbnQgdHlwZSkKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBz
dG0zMl9ncGlvX2JhbmsgKmJhbmsgPSBkLT5kb21haW4tPmhvc3RfZGF0YTsKPj4+ICvCoMKgwqAg
dTMyIHBhcmVudF90eXBlOwo+Pj4gKwo+Pj4gK8KgwqDCoCBiYW5rLT5pcnFfdHlwZVtkLT5od2ly
cV0gPSB0eXBlOwo+IAo+IEl0IHdvdWxkIG1ha2UgbW9yZSBzZW5zZSBpZiB0aGlzIHRoaXMgYXNz
aWdubWVudCB3YXMgZG9uZSAqYWZ0ZXIqCj4gc2FuaXRpemluZyB0aGUgdHlwZSB2YWx1ZS4KCk9r
LgoKPiAKPj4+ICsKPj4+ICvCoMKgwqAgc3dpdGNoICh0eXBlKSB7Cj4+PiArwqDCoMKgIGNhc2Ug
SVJRX1RZUEVfRURHRV9SSVNJTkc6Cj4+PiArwqDCoMKgIGNhc2UgSVJRX1RZUEVfRURHRV9GQUxM
SU5HOgo+Pj4gK8KgwqDCoCBjYXNlIElSUV9UWVBFX0VER0VfQk9USDoKPj4+ICvCoMKgwqDCoMKg
wqDCoCBwYXJlbnRfdHlwZSA9IHR5cGU7Cj4+PiArwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+PiAr
wqDCoMKgIGNhc2UgSVJRX1RZUEVfTEVWRUxfSElHSDoKPj4+ICvCoMKgwqDCoMKgwqDCoCBwYXJl
bnRfdHlwZSA9IElSUV9UWVBFX0VER0VfUklTSU5HOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGJyZWFr
Owo+Pj4gK8KgwqDCoCBjYXNlIElSUV9UWVBFX0xFVkVMX0xPVzoKPj4+ICvCoMKgwqDCoMKgwqDC
oCBwYXJlbnRfdHlwZSA9IElSUV9UWVBFX0VER0VfRkFMTElORzsKPj4+ICvCoMKgwqDCoMKgwqDC
oCBicmVhazsKPj4+ICvCoMKgwqAgZGVmYXVsdDoKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
LUVJTlZBTDsKPj4+ICvCoMKgwqAgfQo+Pj4gKwo+Pj4gK8KgwqDCoCByZXR1cm4gaXJxX2NoaXBf
c2V0X3R5cGVfcGFyZW50KGQsIHBhcmVudF90eXBlKTsKPj4+ICt9Owo+Pj4gKwo+Pj4gwqAgc3Rh
dGljIGludCBzdG0zMl9ncGlvX2lycV9yZXF1ZXN0X3Jlc291cmNlcyhzdHJ1Y3QgaXJxX2RhdGEg
KmlycV9kYXRhKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3Qgc3RtMzJfZ3Bpb19iYW5r
ICpiYW5rID0gaXJxX2RhdGEtPmRvbWFpbi0+aG9zdF9kYXRhOwo+Pj4gQEAgLTMzMiwxMSArMzcz
LDExIEBAIHN0YXRpYyB2b2lkIAo+Pj4gc3RtMzJfZ3Bpb19pcnFfcmVsZWFzZV9yZXNvdXJjZXMo
c3RydWN0IGlycV9kYXRhICppcnFfZGF0YSkKPj4+IMKgwqDCoCBzdGF0aWMgc3RydWN0IGlycV9j
aGlwIHN0bTMyX2dwaW9faXJxX2NoaXAgPSB7Cj4+PiDCoMKgwqDCoMKgIC5uYW1lwqDCoMKgwqDC
oMKgwqAgPSAic3RtMzJncGlvIiwKPj4+IC3CoMKgwqAgLmlycV9lb2nCoMKgwqAgPSBpcnFfY2hp
cF9lb2lfcGFyZW50LAo+Pj4gK8KgwqDCoCAuaXJxX2VvacKgwqDCoCA9IHN0bTMyX2dwaW9faXJx
X2VvaSwKPj4+IMKgwqDCoMKgwqAgLmlycV9hY2vCoMKgwqAgPSBpcnFfY2hpcF9hY2tfcGFyZW50
LAo+Pj4gwqDCoMKgwqDCoCAuaXJxX21hc2vCoMKgwqAgPSBpcnFfY2hpcF9tYXNrX3BhcmVudCwK
Pj4+IMKgwqDCoMKgwqAgLmlycV91bm1hc2vCoMKgwqAgPSBpcnFfY2hpcF91bm1hc2tfcGFyZW50
LAo+Pj4gLcKgwqDCoCAuaXJxX3NldF90eXBlwqDCoMKgID0gaXJxX2NoaXBfc2V0X3R5cGVfcGFy
ZW50LAo+Pj4gK8KgwqDCoCAuaXJxX3NldF90eXBlwqDCoMKgID0gc3RtMzJfZ3Bpb19zZXRfdHlw
ZSwKPj4+IMKgwqDCoMKgwqAgLmlycV9zZXRfd2FrZcKgwqDCoCA9IGlycV9jaGlwX3NldF93YWtl
X3BhcmVudCwKPj4+IMKgwqDCoMKgwqAgLmlycV9yZXF1ZXN0X3Jlc291cmNlcyA9IHN0bTMyX2dw
aW9faXJxX3JlcXVlc3RfcmVzb3VyY2VzLAo+Pj4gwqDCoMKgwqDCoCAuaXJxX3JlbGVhc2VfcmVz
b3VyY2VzID0gc3RtMzJfZ3Bpb19pcnFfcmVsZWFzZV9yZXNvdXJjZXMsCj4+Pgo+IAo+IFRoYW5r
cywKPiAKPiAgwqDCoMKgwqDCoMKgwqAgTS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
