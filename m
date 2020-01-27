Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E9014A4D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 14:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IPLIpLZqgbP51hvnIcqyPVZP3S+P6ZmsPwQhb/Lk9+M=; b=E+SuRUW4QOLckA+Lof3l+KI+X
	oTuiv7cEuFxt1pKhRCe3+2rxElqfnCleM0MrMh3YIXyRnw6m7idSpEoA9JdoViwG5Q34WSGvkL1PX
	duUrqUW0fAv22wGW/njsTNB5iK8EMjNfvOq1QpBKesbBD/c5aG9BcuigJHzCTx3a9Ga+U1zuBrrk3
	sN4nUFOfSNl9TmInRBXn5E6D40sP0rqm0uwTCC9tqJ/0xBSfXiTEddH1KapGCNc1PQNOg7op/VKXi
	mjN3eVBNZOzt3dqiWYx/zsagGkBVu1wU+aXYAjnkChm+9Bq0QN1Ptutm8msu+PeNnE58LWsgKqyFf
	XSm50fgaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4Kd-0008EG-FV; Mon, 27 Jan 2020 13:21:35 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4KS-0008Dt-Uu
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 13:21:26 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00RDHIgu030114; Mon, 27 Jan 2020 14:21:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=Ynyg3l3bCZvEHYJP9ooaKE6qoJny3AOLT9lZG+35P+Y=;
 b=Oa8/ux9a8wVQREI/DQEGek7/L3+KZ11oy/8M8Wqb4ntcZzz9NkaGBk5eii18tdyUP/2l
 o48/s6ku5LYMkcHRk6Lgt0qo3vx5GKdMVv6/T6QRdFjo5anu80ZlWhDz655ISyMDzeFz
 0LYci8ICQasSli1cJBR6qOx4SNXgOR5WZHkb+EbpYTDPSchmJszbbgMoowblruWO5uih
 UQdNCd7/Ejq20XtRXAJaWWNILoj9IV65o3cnL+SAx29HZi+2dYVwaO3aeaOF9KKgDKUQ
 P7S41DkRid9Omm/WBjysgy/UEsDxuDAjBMKVCJ34qprTLZ9utI6nffWfUnBNQZtWU88Y +A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpas72t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 27 Jan 2020 14:21:20 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0DA4D10002A;
 Mon, 27 Jan 2020 14:21:20 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id ECEE62B1871;
 Mon, 27 Jan 2020 14:21:19 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.49) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 27 Jan
 2020 14:21:18 +0100
Subject: Re: [PATCH 7/9] mmc: mmci: add volt_switch callbacks
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-8-ludovic.barre@st.com>
 <CAPDyKFqt6SuQh8V1_2-2HzBixR2HTKM+1FKgYuNA1zytc22W7g@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <1b8e1428-c1b6-86e4-8d21-4257bcc16a90@st.com>
Date: Mon, 27 Jan 2020 14:21:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqt6SuQh8V1_2-2HzBixR2HTKM+1FKgYuNA1zytc22W7g@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG1NODE2.st.com (10.75.127.2) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-27_02:2020-01-24,
 2020-01-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_052125_278146_5ED1163D 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpMZSAxLzI0LzIwIMOgIDI6MTIgUE0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4g
T24gRnJpLCAxMCBKYW4gMjAyMCBhdCAxNDo0OSwgTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+IHdyb3RlOgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgMiB2b2x0YWdlIHN3aXRjaCBj
YWxsYmFja3MgaW4gbW1jaV9ob3N0X29wczoKPj4gLXByZXBfdm9sdF9zd2l0Y2ggYWxsb3dzIHRv
IHByZXBhcmUgdm9sdGFnZSBzd2l0Y2ggYmVmb3JlIHRvCj4+ICAgc2VudCB0aGUgU0RfU1dJVENI
X1ZPTFRBR0UgY29tbWFuZCAoY21kMTEpLgo+PiAtdm9sdF9zd2l0Y2ggY2FsbGJhY2sgYWxsb3dz
IHRvIGRlZmluZSBzcGVjaWZpYyBhY3Rpb24gYWZ0ZXIKPj4gICByZWd1bGF0b3Igc2V0IHZvbHRh
Z2UuCj4gCj4gSSBhbSBmaW5lIHdpdGggYWRkaW5nIHRoZXNlIGNhbGxiYWNrcywgaG93ZXZlciBJ
IHN0cm9uZ2x5IHN1Z2dlc3QgdG8KPiBoYXZlIGEgcmVmZXJlbmNlIHRvICJzaWduYWwgdm9sdGFn
ZSIgaW4gdGhlIG5hbWUgb2YgdGhlIGNhbGxiYWNrcy4gQXMKPiB0byBhdm9pZCBjb25mdXNpb24g
Zm9yIHdoYXQgdGhlcmUgYXJlIHVzZWQgZm9yLgo+IAo+IFBlcmhhcHMgLT5wb3N0X3NpZ192b2x0
X3N3aXRjaCgpIGFuZCAtPnByZV9zaWdfdm9sdF9zd2l0Y2goKSBjYW4gd29yaz8KPiAKCnN1cmUs
IEkgY2hhbmdlIHRvIHBvc3Rfc2lnX3ZvbHRfc3dpdGNoIGFuZCBwcmVfc2lnX3ZvbHRfc3dpdGNo
LgoKPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJyZUBzdC5j
b20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIHwgOCArKysrKysrKwo+PiAg
IGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5oIHwgMiArKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMTAg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMg
Yi9kcml2ZXJzL21tYy9ob3N0L21tY2kuYwo+PiBpbmRleCAwMGI0NzNmNTcwNDcuLmQ3NmE1OWMw
NmNiMCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPj4gKysrIGIvZHJp
dmVycy9tbWMvaG9zdC9tbWNpLmMKPj4gQEAgLTIyLDYgKzIyLDcgQEAKPj4gICAjaW5jbHVkZSA8
bGludXgvbW1jL3BtLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L21tYy9ob3N0Lmg+Cj4+ICAgI2lu
Y2x1ZGUgPGxpbnV4L21tYy9jYXJkLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvbW1jL3NkLmg+Cj4+
ICAgI2luY2x1ZGUgPGxpbnV4L21tYy9zbG90LWdwaW8uaD4KPj4gICAjaW5jbHVkZSA8bGludXgv
YW1iYS9idXMuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4+IEBAIC0xMjA3LDYgKzEy
MDgsOSBAQCBtbWNpX3N0YXJ0X2NvbW1hbmQoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCwgc3RydWN0
IG1tY19jb21tYW5kICpjbWQsIHUzMiBjKQo+PiAgICAgICAgICAgICAgICAgIHdyaXRlbF9yZWxh
eGVkKGNsa3MsIGhvc3QtPmJhc2UgKyBNTUNJREFUQVRJTUVSKTsKPj4gICAgICAgICAgfQo+Pgo+
PiArICAgICAgIGlmIChob3N0LT5vcHMtPnByZXBfdm9sdF9zd2l0Y2ggJiYgY21kLT5vcGNvZGUg
PT0gU0RfU1dJVENIX1ZPTFRBR0UpCj4+ICsgICAgICAgICAgICAgICBob3N0LT5vcHMtPnByZXBf
dm9sdF9zd2l0Y2goaG9zdCk7Cj4+ICsKPj4gICAgICAgICAgaWYgKC8qaW50ZXJydXB0Ki8wKQo+
PiAgICAgICAgICAgICAgICAgIGMgfD0gTUNJX0NQU01fSU5URVJSVVBUOwo+Pgo+PiBAQCAtMTgy
MCw2ICsxODI0LDcgQEAgc3RhdGljIGludCBtbWNpX2dldF9jZChzdHJ1Y3QgbW1jX2hvc3QgKm1t
YykKPj4KPj4gICBzdGF0aWMgaW50IG1tY2lfc2lnX3ZvbHRfc3dpdGNoKHN0cnVjdCBtbWNfaG9z
dCAqbW1jLCBzdHJ1Y3QgbW1jX2lvcyAqaW9zKQo+PiAgIHsKPj4gKyAgICAgICBzdHJ1Y3QgbW1j
aV9ob3N0ICpob3N0ID0gbW1jX3ByaXYobW1jKTsKPj4gICAgICAgICAgaW50IHJldCA9IDA7Cj4+
Cj4+ICAgICAgICAgIGlmICghSVNfRVJSKG1tYy0+c3VwcGx5LnZxbW1jKSkgewo+PiBAQCAtMTgz
OSw2ICsxODQ0LDkgQEAgc3RhdGljIGludCBtbWNpX3NpZ192b2x0X3N3aXRjaChzdHJ1Y3QgbW1j
X2hvc3QgKm1tYywgc3RydWN0IG1tY19pb3MgKmlvcykKPj4gICAgICAgICAgICAgICAgICAgICAg
ICAgIGJyZWFrOwo+PiAgICAgICAgICAgICAgICAgIH0KPj4KPj4gKyAgICAgICAgICAgICAgIGlm
ICghcmV0ICYmIGhvc3QtPm9wcyAmJiBob3N0LT5vcHMtPnZvbHRfc3dpdGNoKQo+PiArICAgICAg
ICAgICAgICAgICAgICAgICByZXQgPSBob3N0LT5vcHMtPnZvbHRfc3dpdGNoKGhvc3QsIGlvcyk7
Cj4+ICsKPj4gICAgICAgICAgICAgICAgICBpZiAocmV0KQo+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X3dhcm4obW1jX2RldihtbWMpLCAiVm9sdGFnZSBzd2l0Y2ggZmFpbGVkXG4iKTsK
Pj4gICAgICAgICAgfQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmggYi9k
cml2ZXJzL21tYy9ob3N0L21tY2kuaAo+PiBpbmRleCBkZGNkZmI4Mjc5OTYuLmMwNGExNDQyNTlh
MiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmgKPj4gKysrIGIvZHJpdmVy
cy9tbWMvaG9zdC9tbWNpLmgKPj4gQEAgLTM3Nyw2ICszNzcsOCBAQCBzdHJ1Y3QgbW1jaV9ob3N0
X29wcyB7Cj4+ICAgICAgICAgIHZvaWQgKCpzZXRfY2xrcmVnKShzdHJ1Y3QgbW1jaV9ob3N0ICpo
b3N0LCB1bnNpZ25lZCBpbnQgZGVzaXJlZCk7Cj4+ICAgICAgICAgIHZvaWQgKCpzZXRfcHdycmVn
KShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCB1bnNpZ25lZCBpbnQgcHdyKTsKPj4gICAgICAgICAg
Ym9vbCAoKmJ1c3lfY29tcGxldGUpKHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QsIHUzMiBzdGF0dXMs
IHUzMiBlcnJfbXNrKTsKPj4gKyAgICAgICB2b2lkICgqcHJlcF92b2x0X3N3aXRjaCkoc3RydWN0
IG1tY2lfaG9zdCAqaG9zdCk7Cj4+ICsgICAgICAgaW50ICgqdm9sdF9zd2l0Y2gpKHN0cnVjdCBt
bWNpX2hvc3QgKmhvc3QsIHN0cnVjdCBtbWNfaW9zICppb3MpOwo+PiAgIH07Cj4+Cj4+ICAgc3Ry
dWN0IG1tY2lfaG9zdCB7Cj4+IC0tCj4+IDIuMTcuMQo+Pgo+IAo+IEtpbmQgcmVnYXJkcwo+IFVm
ZmUKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
