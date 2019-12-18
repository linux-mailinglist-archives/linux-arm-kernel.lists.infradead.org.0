Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC46124B74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 16:20:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+a9wC7XiK14O/2x7ObEYsFFrTlGDVQeuWkMrckRF+9M=; b=W8NTG11Vy85y10Qy3Vo19pVbc
	srxSQgPibzAkZoIfDubElllI+pQrc6wsFnxrDdP54jOKVD7pcZ3Gr3TZW0SwHOFynO+BKXRK0kdq7
	tJIk3uJh+/anNd8mJ4V+ihRP4jiSAel9UWUwEgeTWdN5fZwGMd8PL060sBkJQezuSBSOW/GbLaPj5
	/Lk6AzmyWZExJCMQRmV1uQMJjVlql8C0kvXfLhjgNaAo2o89lwAshvsX54M5bpZJt5OGwRR14Z1QN
	Fpe5TZ64hy/0zz3pTpUHJ3QWOd2y8qtCOnNWfm1Ac/LTN256pO+qDIBdb5YiTnw6f9Acrkd+P4Ooy
	P+EV49QEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihb7Z-0004QI-Lf; Wed, 18 Dec 2019 15:20:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihb7K-0003vx-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 15:20:03 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBIFISIS017156; Wed, 18 Dec 2019 16:19:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=WneSex7HLvk1knfWmC+iWo4b9iXA1aE+DZZb+Ph0YE0=;
 b=nT0CjEqdbNCGAEn8ad4RksgAUyfA4q5u1qVfyaiaiXV9YAkDPApm47cmN8PUcWYpBm1q
 BWx03o7gK2FmI3+EChRlvi70Ru79DJ0pC4LcIsPRC+mLP1qFHl7DamP0vYxAJPZGmlxh
 M7y8vhoZ2QYT04uUbKyO0OMoasjPP6CdO5f/ESlebwgjAszJNvHFhIm/lANHzilnj83W
 R93vTVwKKxBeflkxarvyBuwcQe3KP5gD9g8x0RD2wdV6/bZhODqMaYh3onmq6M1/HgC0
 5IvTstSQBVlMWFuilPsYv/xfW3m1+w8Gs1mVUlxliu6azrck1/SbHzpNEZ0fdvGjzOQo Cw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1n0dd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 16:19:48 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 22D8C100038;
 Wed, 18 Dec 2019 16:19:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0E9792B220D;
 Wed, 18 Dec 2019 16:19:44 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.49) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 18 Dec
 2019 16:19:42 +0100
Subject: Re: [PATCH V2] mmc: mmci: add threaded irq to abort DPSM of
 non-functional state
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20191211133934.16932-1-ludovic.Barre@st.com>
 <CAPDyKFpoqEXO1JvjF=0hX97PiwP=2c1eWORsacb8QvZM=1Tvjw@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <7019a4b8-e7a4-0e3a-4c42-0d46c80e5126@st.com>
Date: Wed, 18 Dec 2019 16:19:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFpoqEXO1JvjF=0hX97PiwP=2c1eWORsacb8QvZM=1Tvjw@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_04:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_072002_539972_917EFF2A 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

aGkgdWxmCgpMZSAxMi8xOC8xOSDDoCAzOjAxIFBNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+
IE9uIFdlZCwgMTEgRGVjIDIwMTkgYXQgMTQ6NDAsIEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuQmFy
cmVAc3QuY29tPiB3cm90ZToKPj4KPj4gRnJvbTogTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+Cj4+Cj4+IElmIGRhdGF0aW1lb3V0IG9jY3VycyBvbiBSMUIgcmVxdWVzdCwgdGhl
IERhdGEgUGF0aCBTdGF0ZSBNYWNoaW5lIHN0YXlzCj4+IGluIGJ1c3kgYW5kIGlzIG5vbi1mdW5j
dGlvbmFsLiBPbmx5IGEgcmVzZXQgYWJvcnRzIHRoZSBEUFNNLgo+Pgo+PiBMaWtlIGEgcmVzZXQg
bXVzdCBiZSBvdXRzaWRlIG9mIGNyaXRpY2FsIHNlY3Rpb24sIHRoaXMgcGF0Y2ggYWRkcwo+PiB0
aHJlYWRlZCBpcnEgZnVuY3Rpb24gdG8gcmVsZWFzZSBzdGF0ZSBtYWNoaW5lLiBJbiB0aGlzIGNh
c2UsCj4+IHRoZSBtbWNfcmVxdWVzdF9kb25lIGlzIGNhbGxlZCBhdCB0aGUgZW5kIG9mIHRocmVh
ZGVkIGlycSBhbmQKPj4gc2tpcHBlZCBpbnRvIGlycSBoYW5kbGVyLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPiAKPiBBcHBsaWVkIGZv
ciBuZXh0LCB0aGFua3MhCj4gCj4gSSB0b29rIHRoZSBsaWJlcnR5IG9mIGRvaW5nIHNvbWUgbWlu
b3IgdXBkYXRlcyAoY2hhbmdlbG9nL2NvbW1lbnQpLAo+IHBsZWFzZSBoYXZlIGEgbG9vayBhbmQg
bGV0IG1lIGtub3cgaWYgdGhlcmUgaXMgc29tZXRoaW5nIHlvdSB3YW50IG1lCj4gdG8gY2hhbmdl
Lgo+IAoKSSByZWFkIHRoZSBtb2RpZmljYXRpb25zIChjaGFuZ2Vsb2cgYW5kIGNvbW1lbnQgZnVu
Y3Rpb24pLAphbmQgaXQncyBvayBmb3IgbWUuCgp0aGFua3MKTHVkbwoKPiBBbmQgYWdhaW4sIGFw
b2xvZ2l6ZSBmb3IgdGhlIGRlbGF5cyEKPiAKPiBLaW5kIHJlZ2FyZHMKPiBVZmZlCj4gCj4gCj4+
IC0tLQo+PiBjaGFuZ2UgVjI6Cj4+ICAgLWNoZWNrIElSUV9XQUtFX1RIUkVBRCBvbmx5IGluIG1t
Y2lfY21kX2lycSBlcnJvciBwYXJ0LAo+PiAgICB0byBhdm9pZCB0aGlzIHRlc3QgaW4gbW1jaV9y
ZXF1ZXN0X2VuZC4KPj4KPj4gLS0tCj4+ICAgZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMgfCA0NiAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLQo+PiAgIGRyaXZlcnMvbW1j
L2hvc3QvbW1jaS5oIHwgIDEgKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1j
aS5jIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPj4gaW5kZXggNDBlNzJjMzBlYTg0Li4yYjkx
NzU3ZTNlODQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+ICsrKyBi
L2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+IEBAIC0xMzIxLDYgKzEzMjEsNyBAQCBtbWNpX2Nt
ZF9pcnEoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCwgc3RydWN0IG1tY19jb21tYW5kICpjbWQsCj4+
ICAgICAgICAgIH0gZWxzZSBpZiAoaG9zdC0+dmFyaWFudC0+YnVzeV90aW1lb3V0ICYmIGJ1c3lf
cmVzcCAmJgo+PiAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyAmIE1DSV9EQVRBVElNRU9VVCkg
ewo+PiAgICAgICAgICAgICAgICAgIGNtZC0+ZXJyb3IgPSAtRVRJTUVET1VUOwo+PiArICAgICAg
ICAgICAgICAgaG9zdC0+aXJxX2FjdGlvbiA9IElSUV9XQUtFX1RIUkVBRDsKPj4gICAgICAgICAg
fSBlbHNlIHsKPj4gICAgICAgICAgICAgICAgICBjbWQtPnJlc3BbMF0gPSByZWFkbChiYXNlICsg
TU1DSVJFU1BPTlNFMCk7Cj4+ICAgICAgICAgICAgICAgICAgY21kLT5yZXNwWzFdID0gcmVhZGwo
YmFzZSArIE1NQ0lSRVNQT05TRTEpOwo+PiBAQCAtMTMzOSw3ICsxMzQwLDEwIEBAIG1tY2lfY21k
X2lycShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCBzdHJ1Y3QgbW1jX2NvbW1hbmQgKmNtZCwKPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+PiAgICAgICAgICAgICAg
ICAgICAgICAgICAgfQo+PiAgICAgICAgICAgICAgICAgIH0KPj4gLSAgICAgICAgICAgICAgIG1t
Y2lfcmVxdWVzdF9lbmQoaG9zdCwgaG9zdC0+bXJxKTsKPj4gKwo+PiArICAgICAgICAgICAgICAg
aWYgKGhvc3QtPmlycV9hY3Rpb24gIT0gSVJRX1dBS0VfVEhSRUFEKQo+PiArICAgICAgICAgICAg
ICAgICAgICAgICBtbWNpX3JlcXVlc3RfZW5kKGhvc3QsIGhvc3QtPm1ycSk7Cj4+ICsKPj4gICAg
ICAgICAgfSBlbHNlIGlmIChzYmMpIHsKPj4gICAgICAgICAgICAgICAgICBtbWNpX3N0YXJ0X2Nv
bW1hbmQoaG9zdCwgaG9zdC0+bXJxLT5jbWQsIDApOwo+PiAgICAgICAgICB9IGVsc2UgaWYgKCFo
b3N0LT52YXJpYW50LT5kYXRhY3RybF9maXJzdCAmJgo+PiBAQCAtMTUzMiw5ICsxNTM2LDkgQEAg
c3RhdGljIGlycXJldHVybl90IG1tY2lfaXJxKGludCBpcnEsIHZvaWQgKmRldl9pZCkKPj4gICB7
Cj4+ICAgICAgICAgIHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QgPSBkZXZfaWQ7Cj4+ICAgICAgICAg
IHUzMiBzdGF0dXM7Cj4+IC0gICAgICAgaW50IHJldCA9IDA7Cj4+Cj4+ICAgICAgICAgIHNwaW5f
bG9jaygmaG9zdC0+bG9jayk7Cj4+ICsgICAgICAgaG9zdC0+aXJxX2FjdGlvbiA9IElSUV9IQU5E
TEVEOwo+Pgo+PiAgICAgICAgICBkbyB7Cj4+ICAgICAgICAgICAgICAgICAgc3RhdHVzID0gcmVh
ZGwoaG9zdC0+YmFzZSArIE1NQ0lTVEFUVVMpOwo+PiBAQCAtMTU3NCwxMiArMTU3OCw0MSBAQCBz
dGF0aWMgaXJxcmV0dXJuX3QgbW1jaV9pcnEoaW50IGlycSwgdm9pZCAqZGV2X2lkKQo+PiAgICAg
ICAgICAgICAgICAgIGlmIChob3N0LT52YXJpYW50LT5idXN5X2RldGVjdF9mbGFnKQo+PiAgICAg
ICAgICAgICAgICAgICAgICAgICAgc3RhdHVzICY9IH5ob3N0LT52YXJpYW50LT5idXN5X2RldGVj
dF9mbGFnOwo+Pgo+PiAtICAgICAgICAgICAgICAgcmV0ID0gMTsKPj4gICAgICAgICAgfSB3aGls
ZSAoc3RhdHVzKTsKPj4KPj4gICAgICAgICAgc3Bpbl91bmxvY2soJmhvc3QtPmxvY2spOwo+Pgo+
PiAtICAgICAgIHJldHVybiBJUlFfUkVUVkFMKHJldCk7Cj4+ICsgICAgICAgcmV0dXJuIGhvc3Qt
PmlycV9hY3Rpb247Cj4+ICt9Cj4+ICsKPj4gKy8qCj4+ICsgKiBtbWNpX2lycV90aHJlYWRlZCBp
cyBjYWxsIGlmIHRoZSBtbWNpIGhvc3QgbmVlZCB0byByZWxlYXNlIHN0YXRlIG1hY2hpbmVzCj4+
ICsgKiBiZWZvcmUgdG8gdGVybWluYXRlIHRoZSByZXF1ZXN0Lgo+PiArICogSWYgZGF0YXRpbWVv
dXQgb2NjdXJzIG9uIFIxQiByZXF1ZXN0LCB0aGUgRGF0YSBQYXRoIFN0YXRlIE1hY2hpbmUgc3Rh
eXMKPj4gKyAqIGluIGJ1c3kgYW5kIGlzIG5vbi1mdW5jdGlvbmFsLiBPbmx5IGEgcmVzZXQgY2Fu
IHRvIGFib3J0IHRoZSBEUFNNLgo+PiArICovCj4+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbW1jaV9p
cnFfdGhyZWFkZWQoaW50IGlycSwgdm9pZCAqZGV2X2lkKQo+PiArewo+PiArICAgICAgIHN0cnVj
dCBtbWNpX2hvc3QgKmhvc3QgPSBkZXZfaWQ7Cj4+ICsgICAgICAgdW5zaWduZWQgbG9uZyBmbGFn
czsKPj4gKwo+PiArICAgICAgIGlmIChob3N0LT5yc3QpIHsKPj4gKyAgICAgICAgICAgICAgIHJl
c2V0X2NvbnRyb2xfYXNzZXJ0KGhvc3QtPnJzdCk7Cj4+ICsgICAgICAgICAgICAgICB1ZGVsYXko
Mik7Cj4+ICsgICAgICAgICAgICAgICByZXNldF9jb250cm9sX2RlYXNzZXJ0KGhvc3QtPnJzdCk7
Cj4+ICsgICAgICAgfQo+PiArCj4+ICsgICAgICAgc3Bpbl9sb2NrX2lycXNhdmUoJmhvc3QtPmxv
Y2ssIGZsYWdzKTsKPj4gKyAgICAgICB3cml0ZWwoaG9zdC0+Y2xrX3JlZywgaG9zdC0+YmFzZSAr
IE1NQ0lDTE9DSyk7Cj4+ICsgICAgICAgd3JpdGVsKGhvc3QtPnB3cl9yZWcsIGhvc3QtPmJhc2Ug
KyBNTUNJUE9XRVIpOwo+PiArICAgICAgIHdyaXRlbChNQ0lfSVJRRU5BQkxFIHwgaG9zdC0+dmFy
aWFudC0+c3RhcnRfZXJyLAo+PiArICAgICAgICAgICAgICBob3N0LT5iYXNlICsgTU1DSU1BU0sw
KTsKPj4gKwo+PiArICAgICAgIGhvc3QtPmlycV9hY3Rpb24gPSBJUlFfSEFORExFRDsKPj4gKyAg
ICAgICBtbWNpX3JlcXVlc3RfZW5kKGhvc3QsIGhvc3QtPm1ycSk7Cj4+ICsgICAgICAgc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmaG9zdC0+bG9jaywgZmxhZ3MpOwo+PiArCj4+ICsgICAgICAgcmV0
dXJuIGhvc3QtPmlycV9hY3Rpb247Cj4+ICAgfQo+Pgo+PiAgIHN0YXRpYyB2b2lkIG1tY2lfcmVx
dWVzdChzdHJ1Y3QgbW1jX2hvc3QgKm1tYywgc3RydWN0IG1tY19yZXF1ZXN0ICptcnEpCj4+IEBA
IC0yMDcxLDggKzIxMDQsOSBAQCBzdGF0aWMgaW50IG1tY2lfcHJvYmUoc3RydWN0IGFtYmFfZGV2
aWNlICpkZXYsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGNsa19kaXNhYmxlOwo+
PiAgICAgICAgICB9Cj4+Cj4+IC0gICAgICAgcmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgmZGV2LT5k
ZXYsIGRldi0+aXJxWzBdLCBtbWNpX2lycSwgSVJRRl9TSEFSRUQsCj4+IC0gICAgICAgICAgICAg
ICAgICAgICAgIERSSVZFUl9OQU1FICIgKGNtZCkiLCBob3N0KTsKPj4gKyAgICAgICByZXQgPSBk
ZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKCZkZXYtPmRldiwgZGV2LT5pcnFbMF0sIG1tY2lfaXJx
LAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbW1jaV9pcnFfdGhy
ZWFkZWQsIElSUUZfU0hBUkVELAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgRFJJVkVSX05BTUUgIiAoY21kKSIsIGhvc3QpOwo+PiAgICAgICAgICBpZiAocmV0KQo+
PiAgICAgICAgICAgICAgICAgIGdvdG8gY2xrX2Rpc2FibGU7Cj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21tYy9ob3N0L21tY2kuaCBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oCj4+IGluZGV4
IDE1OGUxMjMxYWEyMy4uNWU2M2MwNTk2MzY0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21tYy9o
b3N0L21tY2kuaAo+PiArKysgYi9kcml2ZXJzL21tYy9ob3N0L21tY2kuaAo+PiBAQCAtNDEyLDYg
KzQxMiw3IEBAIHN0cnVjdCBtbWNpX2hvc3Qgewo+Pgo+PiAgICAgICAgICBzdHJ1Y3QgdGltZXJf
bGlzdCAgICAgICB0aW1lcjsKPj4gICAgICAgICAgdW5zaWduZWQgaW50ICAgICAgICAgICAgb2xk
c3RhdDsKPj4gKyAgICAgICB1MzIgICAgICAgICAgICAgICAgICAgICBpcnFfYWN0aW9uOwo+Pgo+
PiAgICAgICAgICAvKiBwaW8gc3R1ZmYgKi8KPj4gICAgICAgICAgc3RydWN0IHNnX21hcHBpbmdf
aXRlciAgc2dfbWl0ZXI7Cj4+IC0tCj4+IDIuMTcuMQo+PgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
