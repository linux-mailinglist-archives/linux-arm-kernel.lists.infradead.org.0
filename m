Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E7F118A59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sB261Wl/2I5ZUVYisoISG8WpxZRv5iLmHlOkgUZt0G8=; b=OhY1OG5bVEIKQeWKb7+sKgOQH
	yRXWzJcN6daKyQwmlML6eoZoS781vQr8tBJQ7IPR9/Rxietm6PUG7yNVnNaAYPu5fYkkYPeInJT4D
	MhkwVRPVq/vIif1qXptXHlQL9E9z0zFPFCl5wnwGdul2v4bDDrNwcEgQgHwvv1ddWDCcmMAv+FElr
	JctktMfieI3YRYod17sNXqANIKDOXQqumm+RrmxLQZU3xM23TJg2H5oj1f962CMoiJTDcIyhIKvwB
	yhNPp7XLYtp5T0hAmYUBw+YUiOi12rtqar9DpJ8CDdzzdV1MIJgMvsl7liUAPIDTU3zVegUs3D1/E
	3K2SVLU9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieg7E-0004wK-EI; Tue, 10 Dec 2019 14:03:52 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieg77-0004vo-2a
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:03:46 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBAE3Wsi012011; Tue, 10 Dec 2019 15:03:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=N8+PdFVjbmmTn2I/xjA82hSahC5K+ZEGZOWc06jsdSY=;
 b=MUQzmcaWPIYcSTlCzircMy1rPaaNiXBKIacp8SocnyDqAKPN7Z6dONkspE43CLAWPuxn
 MuhY7GGaTL3JH06njZs7ClppQ5+O8T7WrcrMbdTTQkTs8tNnpbwhYUoqZwH7iX83doNo
 sEZiXhumdCk9xi1hE+P304zPUqOIAVrEGOURZw3y7a6oL6IEGq5vWSuEzvLeEV0xf7rd
 r/ayH/N7mh7TdKlQKS0Tew9NuXH4aIL14zSuX7vO6peXhQll1/WdDlbMK6JfBupHMusY
 +IwBIx4jMvin82oJ4JihyvzDFNMfruaYLHntijqA0T/5j6NfRd82NJqYoYxxSHY2VPzR fA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wrbrfcuhe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 10 Dec 2019 15:03:33 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6FC4610003A;
 Tue, 10 Dec 2019 15:03:16 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5AD3E2BC7B8;
 Tue, 10 Dec 2019 15:03:16 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.47) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 10 Dec
 2019 15:03:14 +0100
Subject: Re: [PATCH 1/1] mmc: mmci: add threaded irq to abort DPSM of
 non-functional state
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20191113172514.19052-1-ludovic.Barre@st.com>
 <CAPDyKFrZxOCkw9U05UZPRSGz2CqmhOq944z8MEVox8Y_UEYC4A@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <2e5639cd-0dea-8cc1-d1aa-721025d66bac@st.com>
Date: Tue, 10 Dec 2019 15:03:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFrZxOCkw9U05UZPRSGz2CqmhOq944z8MEVox8Y_UEYC4A@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-10_03:2019-12-10,2019-12-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_060345_481623_869BFE43 
X-CRM114-Status: GOOD (  24.64  )
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

aGkgVWxmCgpMZSAxMi8xMC8xOSDDoCAxOjMwIFBNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+
IE9uIFdlZCwgMTMgTm92IDIwMTkgYXQgMTg6MjUsIEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuQmFy
cmVAc3QuY29tPiB3cm90ZToKPj4KPj4gRnJvbTogTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+Cj4+Cj4+IElmIGRhdGF0aW1lb3V0IG9jY3VycyBvbiBSMUIgcmVxdWVzdCwgdGhl
IERhdGEgUGF0aCBTdGF0ZSBNYWNoaW5lIHN0YXlzCj4+IGluIGJ1c3kgYW5kIGlzIG5vbi1mdW5j
dGlvbmFsLiBPbmx5IGEgcmVzZXQgYWJvcnRzIHRoZSBEUFNNLgo+Pgo+PiBMaWtlIGEgcmVzZXQg
bXVzdCBiZSBvdXRzaWRlIG9mIGNyaXRpY2FsIHNlY3Rpb24sIHRoaXMgcGF0Y2ggYWRkcwo+PiB0
aHJlYWRlZCBpcnEgZnVuY3Rpb24gdG8gcmVsZWFzZSBzdGF0ZSBtYWNoaW5lLiBJbiB0aGlzIGNh
c2UsCj4+IHRoZSBtbWNfcmVxdWVzdF9kb25lIGlzIGNhbGxlZCBhdCB0aGUgZW5kIG9mIHRocmVh
ZGVkIGlycSBhbmQKPj4gc2tpcHBlZCBpbnRvIGlycSBoYW5kbGVyLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPj4gLS0tCj4+ICAgZHJp
dmVycy9tbWMvaG9zdC9tbWNpLmMgfCA0NCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKystLS0tLQo+PiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5oIHwgIDEgKwo+PiAgIDIgZmls
ZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMK
Pj4gaW5kZXggNDBlNzJjMzBlYTg0Li5lYzZlMjQ5Yzg3Y2EgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvbW1jL2hvc3QvbW1jaS5jCj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+IEBA
IC01NTYsNiArNTU2LDkgQEAgc3RhdGljIHZvaWQgbW1jaV9kbWFfZXJyb3Ioc3RydWN0IG1tY2lf
aG9zdCAqaG9zdCkKPj4gICBzdGF0aWMgdm9pZAo+PiAgIG1tY2lfcmVxdWVzdF9lbmQoc3RydWN0
IG1tY2lfaG9zdCAqaG9zdCwgc3RydWN0IG1tY19yZXF1ZXN0ICptcnEpCj4+ICAgewo+PiArICAg
ICAgIGlmIChob3N0LT5pcnFfYWN0aW9uID09IElSUV9XQUtFX1RIUkVBRCkKPj4gKyAgICAgICAg
ICAgICAgIHJldHVybjsKPj4gKwo+IAo+IEl0IHNlZW1zIGEgYml0IHVubmVjZXNzYXJ5IHRvIGNo
ZWNrIHRoaXMgZXZlcnkgdGltZSBtbWNpX3JlcXVlc3RfZW5kKCkKPiBpcyBjYWxsZWQuCj4gCj4g
SG93IGFib3V0IGF2b2lkaW5nIHRvIGNhbGwgbW1jaV9yZXF1ZXN0X2VuZCgpIGZvciB0aGUgb25l
IHNwZWNpZmljCj4gY29uZGl0aW9uIGluc3RlYWQ/IFNlZSBtb3JlIGJlbG93Lgo+IAo+PiAgICAg
ICAgICB3cml0ZWwoMCwgaG9zdC0+YmFzZSArIE1NQ0lDT01NQU5EKTsKPj4KPj4gICAgICAgICAg
QlVHX09OKGhvc3QtPmRhdGEpOwo+PiBAQCAtMTMyMSw2ICsxMzI0LDcgQEAgbW1jaV9jbWRfaXJx
KHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QsIHN0cnVjdCBtbWNfY29tbWFuZCAqY21kLAo+PiAgICAg
ICAgICB9IGVsc2UgaWYgKGhvc3QtPnZhcmlhbnQtPmJ1c3lfdGltZW91dCAmJiBidXN5X3Jlc3Ag
JiYKPj4gICAgICAgICAgICAgICAgICAgICBzdGF0dXMgJiBNQ0lfREFUQVRJTUVPVVQpIHsKPj4g
ICAgICAgICAgICAgICAgICBjbWQtPmVycm9yID0gLUVUSU1FRE9VVDsKPj4gKyAgICAgICAgICAg
ICAgIGhvc3QtPmlycV9hY3Rpb24gPSBJUlFfV0FLRV9USFJFQUQ7Cj4gCj4gWW91IGNvdWxkIGNo
ZWNrIHRoaXMgZmxhZyBhIGZldyBsaW5lcyBiZWxvdyBhbmQgaWYgaXQncyBzZXQgdG8KPiBJUlFf
V0FLRV9USFJFQUQsIGF2b2lkIHRvIGNhbGwgbW1jaV9yZXF1ZXN0X2VuZCgpLgoKeWVzLCBpdCB3
YXMgbXkgZmlyc3QgaW1wbGVtZW50YXRpb24uIGFmdGVyLCBJIHdhbnRlZCB0byBjZW50cmFsaXpl
IHRoaXMsCmlmIHRoZSBpcnEgdGhyZWFkZWQgd291bGQgYmUgZXh0ZW5kLgpCdXQgeW91IGFyZSBy
aWdodCwgaXQncyBub3QgdGhlIGdvYWwgb2YgdGhpcyBjb21taXQuCgpJIHJlc2VuZCBhIHYyCgo+
IAo+PiAgICAgICAgICB9IGVsc2Ugewo+PiAgICAgICAgICAgICAgICAgIGNtZC0+cmVzcFswXSA9
IHJlYWRsKGJhc2UgKyBNTUNJUkVTUE9OU0UwKTsKPj4gICAgICAgICAgICAgICAgICBjbWQtPnJl
c3BbMV0gPSByZWFkbChiYXNlICsgTU1DSVJFU1BPTlNFMSk7Cj4+IEBAIC0xNTMyLDkgKzE1MzYs
OSBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgbW1jaV9pcnEoaW50IGlycSwgdm9pZCAqZGV2X2lkKQo+
PiAgIHsKPj4gICAgICAgICAgc3RydWN0IG1tY2lfaG9zdCAqaG9zdCA9IGRldl9pZDsKPj4gICAg
ICAgICAgdTMyIHN0YXR1czsKPj4gLSAgICAgICBpbnQgcmV0ID0gMDsKPj4KPj4gICAgICAgICAg
c3Bpbl9sb2NrKCZob3N0LT5sb2NrKTsKPj4gKyAgICAgICBob3N0LT5pcnFfYWN0aW9uID0gSVJR
X0hBTkRMRUQ7Cj4+Cj4+ICAgICAgICAgIGRvIHsKPj4gICAgICAgICAgICAgICAgICBzdGF0dXMg
PSByZWFkbChob3N0LT5iYXNlICsgTU1DSVNUQVRVUyk7Cj4+IEBAIC0xNTc0LDEyICsxNTc4LDQx
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBtbWNpX2lycShpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4+
ICAgICAgICAgICAgICAgICAgaWYgKGhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X2ZsYWcpCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgJj0gfmhvc3QtPnZhcmlhbnQtPmJ1c3lf
ZGV0ZWN0X2ZsYWc7Cj4+Cj4+IC0gICAgICAgICAgICAgICByZXQgPSAxOwo+PiAgICAgICAgICB9
IHdoaWxlIChzdGF0dXMpOwo+Pgo+PiAgICAgICAgICBzcGluX3VubG9jaygmaG9zdC0+bG9jayk7
Cj4+Cj4+IC0gICAgICAgcmV0dXJuIElSUV9SRVRWQUwocmV0KTsKPj4gKyAgICAgICByZXR1cm4g
aG9zdC0+aXJxX2FjdGlvbjsKPj4gK30KPj4gKwo+PiArLyoKPj4gKyAqIG1tY2lfaXJxX3RocmVh
ZGVkIGlzIGNhbGwgaWYgdGhlIG1tY2kgaG9zdCBuZWVkIHRvIHJlbGVhc2Ugc3RhdGUgbWFjaGlu
ZXMKPj4gKyAqIGJlZm9yZSB0byB0ZXJtaW5hdGUgdGhlIHJlcXVlc3QuCj4+ICsgKiBJZiBkYXRh
dGltZW91dCBvY2N1cnMgb24gUjFCIHJlcXVlc3QsIHRoZSBEYXRhIFBhdGggU3RhdGUgTWFjaGlu
ZSBzdGF5cwo+PiArICogaW4gYnVzeSBhbmQgaXMgbm9uLWZ1bmN0aW9uYWwuIE9ubHkgYSByZXNl
dCBjYW4gdG8gYWJvcnQgdGhlIERQU00uCj4+ICsgKi8KPj4gK3N0YXRpYyBpcnFyZXR1cm5fdCBt
bWNpX2lycV90aHJlYWRlZChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4+ICt7Cj4+ICsgICAgICAg
c3RydWN0IG1tY2lfaG9zdCAqaG9zdCA9IGRldl9pZDsKPj4gKyAgICAgICB1bnNpZ25lZCBsb25n
IGZsYWdzOwo+PiArCj4+ICsgICAgICAgaWYgKGhvc3QtPnJzdCkgewo+PiArICAgICAgICAgICAg
ICAgcmVzZXRfY29udHJvbF9hc3NlcnQoaG9zdC0+cnN0KTsKPj4gKyAgICAgICAgICAgICAgIHVk
ZWxheSgyKTsKPj4gKyAgICAgICAgICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaG9zdC0+
cnN0KTsKPj4gKyAgICAgICB9Cj4+ICsKPj4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmaG9z
dC0+bG9jaywgZmxhZ3MpOwo+PiArICAgICAgIHdyaXRlbChob3N0LT5jbGtfcmVnLCBob3N0LT5i
YXNlICsgTU1DSUNMT0NLKTsKPj4gKyAgICAgICB3cml0ZWwoaG9zdC0+cHdyX3JlZywgaG9zdC0+
YmFzZSArIE1NQ0lQT1dFUik7Cj4+ICsgICAgICAgd3JpdGVsKE1DSV9JUlFFTkFCTEUgfCBob3N0
LT52YXJpYW50LT5zdGFydF9lcnIsCj4+ICsgICAgICAgICAgICAgIGhvc3QtPmJhc2UgKyBNTUNJ
TUFTSzApOwo+PiArCj4+ICsgICAgICAgaG9zdC0+aXJxX2FjdGlvbiA9IElSUV9IQU5ETEVEOwo+
PiArICAgICAgIG1tY2lfcmVxdWVzdF9lbmQoaG9zdCwgaG9zdC0+bXJxKTsKPj4gKyAgICAgICBz
cGluX3VubG9ja19pcnFyZXN0b3JlKCZob3N0LT5sb2NrLCBmbGFncyk7Cj4+ICsKPj4gKyAgICAg
ICByZXR1cm4gaG9zdC0+aXJxX2FjdGlvbjsKPj4gICB9Cj4+Cj4+ICAgc3RhdGljIHZvaWQgbW1j
aV9yZXF1ZXN0KHN0cnVjdCBtbWNfaG9zdCAqbW1jLCBzdHJ1Y3QgbW1jX3JlcXVlc3QgKm1ycSkK
Pj4gQEAgLTIwNzEsOCArMjEwNCw5IEBAIHN0YXRpYyBpbnQgbW1jaV9wcm9iZShzdHJ1Y3QgYW1i
YV9kZXZpY2UgKmRldiwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gY2xrX2Rpc2Fi
bGU7Cj4+ICAgICAgICAgIH0KPj4KPj4gLSAgICAgICByZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZk
ZXYtPmRldiwgZGV2LT5pcnFbMF0sIG1tY2lfaXJxLCBJUlFGX1NIQVJFRCwKPj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgRFJJVkVSX05BTUUgIiAoY21kKSIsIGhvc3QpOwo+PiArICAgICAgIHJl
dCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoJmRldi0+ZGV2LCBkZXYtPmlycVswXSwgbW1j
aV9pcnEsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtbWNpX2ly
cV90aHJlYWRlZCwgSVJRRl9TSEFSRUQsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBEUklWRVJfTkFNRSAiIChjbWQpIiwgaG9zdCk7Cj4+ICAgICAgICAgIGlmIChy
ZXQpCj4+ICAgICAgICAgICAgICAgICAgZ290byBjbGtfZGlzYWJsZTsKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmgKPj4g
aW5kZXggMTU4ZTEyMzFhYTIzLi41ZTYzYzA1OTYzNjQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bW1jL2hvc3QvbW1jaS5oCj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oCj4+IEBAIC00
MTIsNiArNDEyLDcgQEAgc3RydWN0IG1tY2lfaG9zdCB7Cj4+Cj4+ICAgICAgICAgIHN0cnVjdCB0
aW1lcl9saXN0ICAgICAgIHRpbWVyOwo+PiAgICAgICAgICB1bnNpZ25lZCBpbnQgICAgICAgICAg
ICBvbGRzdGF0Owo+PiArICAgICAgIHUzMiAgICAgICAgICAgICAgICAgICAgIGlycV9hY3Rpb247
Cj4+Cj4+ICAgICAgICAgIC8qIHBpbyBzdHVmZiAqLwo+PiAgICAgICAgICBzdHJ1Y3Qgc2dfbWFw
cGluZ19pdGVyICBzZ19taXRlcjsKPj4gLS0KPj4gMi4xNy4xCj4+Cj4gCj4gT3RoZXJ3aXNlIHRo
aXMgbG9va3MgZ29vZCwgYmVzaWRlcyBteSBvdGhlciBlYXJsaWVyIGNvbW1lbnRzLCBvZiBjb3Vy
c2UuCj4gCj4gS2luZCByZWdhcmRzCj4gVWZmZQo+IAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
