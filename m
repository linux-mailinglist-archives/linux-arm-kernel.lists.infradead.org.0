Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F0910CA1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:06:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xA0xcqj8AmsbL7WqdXc0hjIUQeZnWhB1ckJMt5w2Ys0=; b=tUN6YF9eIu5CwjXslhXZGsOK2
	WdKWy9v0hH1IugwTX+EZ2jsKK/vs4orvBKbDvjR+7vvQ8L9gHnhdT+IJhFGeZcPoih8gAY91lecfI
	0LH9o+8mc3PRtqhzv35OS05Z8gmR/hCvZjiaG3buqLlCRQG6S55nYUUicrat2B4oc7pOri9sh2TrZ
	z1MWm+3brRd4f/F1Zkii++6QDqpBfmOtMz7D5FQ9HHUTGBk03FjOrx81Tdz2JK5R0lk4ZhiDHdX7u
	IoYcTw/hG5Ik8hOLzQ4+0geCQXE6qmw1IQFQ6HsaFSXP9Jm4bu6TcP7BK7/Jsug+7YzIzaulzPt6j
	Jy7PZV+1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaKRR-0004s7-2a; Thu, 28 Nov 2019 14:06:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaKRF-0004rT-Uu
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:06:36 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xASDwESB019195; Thu, 28 Nov 2019 15:06:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : from : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=6O/j6MGqOKMtgKJfgVAZVQ2jgcvQt1zJuaK51nFnaBA=;
 b=vIJ88MNdBALWDygbA9SUOPFIiE/2WtzdEE95ym1KKkwpLiPQl/zmuCgATWMDjnuvfw80
 FzentWNZOMquoYHvacn6P1LuF0I1StXh+SjVFe3mw+LM48kqWjEyD8Hxyy8qbMWVI3da
 q9c93eY2cD7c4Ducgg1vM+mCYbE0isicKDS9i1HJoQ9jXBtkyBjIoHqgiRF/OeKVChNY
 7xrjzuGgOMJIIC1KGoeIAjer0Z9xlQGulxCTaOKNlUAFWhFVsQe4tcEY32LAVccHeVev
 7C+NT5vdDdQKXJCEGNqXbv8xM1cF9sv/T+JrdhK7DEYoHiuU9PxEUNNO1F27I/pwHQCF OQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2whcxyjg0p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 Nov 2019 15:06:26 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A82E010002A;
 Thu, 28 Nov 2019 15:06:25 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8D4C42B9F87;
 Thu, 28 Nov 2019 15:06:25 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.45) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 Nov
 2019 15:06:24 +0100
Subject: Re: [Linux-stm32] [PATCH 1/1] mmc: mmci: add threaded irq to abort
 DPSM of non-functional state
From: Ludovic BARRE <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20191113172514.19052-1-ludovic.Barre@st.com>
 <CAPDyKFooSJUn6UCE6QkFmJOCovm00ehz_nAPbiNQM3AcJT_bJQ@mail.gmail.com>
 <c8311933-d129-4618-b81b-aa627b7b6de0@st.com>
Message-ID: <e80f76d3-0414-4f65-c2eb-4b09aaba3840@st.com>
Date: Thu, 28 Nov 2019 15:06:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <c8311933-d129-4618-b81b-aa627b7b6de0@st.com>
Content-Language: fr
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-28_03:2019-11-28,2019-11-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_060634_469312_794AC90E 
X-CRM114-Status: GOOD (  31.48  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

aGkgVWxmCgpqdXN0IGEgZ2VudGxlbWFuIHBpbmcgYWJvdXQgdGhpcyB0aHJlYWQuCgpzbWFsbCBz
dW1tYXJpemU6ClRoaXMgcGF0Y2ggcmV0dXJuIGFuIElSUV9XQUtFX1RIUkVBRCBvbmx5IHdoZW4g
dGhlIHZhcmlhbnQgaXMKYnVzeV90aW1lb3V0IGNhcGFibGUgYW5kIGEgZGF0YXRpbWVvdXQgb2Nj
dXJzIG9uIFIxQiByZXF1ZXN0LgoKU28gdGhlIHRocmVhZGVkIGlycSBpcyBjYWxsZWQgb25seSB0
byB0cmVhdCB0aGlzIHNwZWNpZmljIGVycm9yLgpOb3JtYWxseSwgdGhlcmUgaXMgbm8gaW1wYWN0
IG9uIEhXIGZsb3cgY29udHJvbCBvciBmb3IgbGVnYWN5IHZhcmlhbnRzLgoKSW4geW91ciBwcmV2
aW91cyBtZXNzYWdlLCB5b3Ugc2VlbSB0byBzdWdnZXN0IHVzaW5nIHRocmVhZGVkIGlycSB0bwpt
YW5hZ2UgSFcgZmxvdyBjb250cm9sIChwaW8gbW9kZSkuIEJ1dCBMaWtlIHlvdSBtZW50aW9uIGJl
bG93LCB0aGUgbW1jaQpsZWdhY3kgY291bGQgdGltaW5nIHNlbnNpdGl2ZS4KCkZvciB0aGUgbW9t
ZW50LCBJIHByZWZlciB0byB1c2UgdGhlIHRocmVhZGVkIGlycSBqdXN0IHRvIG1hbmFnZSB0aGlz
CmVycm9yLiBJZiBuZWVkZWQsIHRoZSBpcnEgdGhyZWFkZSBjb3VsZCBiZSBleHRlbmRlZCBsYXRl
ci4KCldoYXQgZG8geW91IHRoaW5rIGFib3V0IHRoYXQ/CgpLaW5kIHJlZ2FyZHMKTHVkbwoKTGUg
MTEvMTUvMTkgw6AgMzo1OSBQTSwgTHVkb3ZpYyBCQVJSRSBhIMOpY3JpdMKgOgo+IGhpIFVsZgo+
IAo+IExlIDExLzE0LzE5IMOgIDQ6MDkgUE0sIFVsZiBIYW5zc29uIGEgw6ljcml0wqA6Cj4+IE9u
IFdlZCwgMTMgTm92IDIwMTkgYXQgMTg6MjUsIEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuQmFycmVA
c3QuY29tPiB3cm90ZToKPj4+Cj4+PiBGcm9tOiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJl
QHN0LmNvbT4KPj4+Cj4+PiBJZiBkYXRhdGltZW91dCBvY2N1cnMgb24gUjFCIHJlcXVlc3QsIHRo
ZSBEYXRhIFBhdGggU3RhdGUgTWFjaGluZSBzdGF5cwo+Pj4gaW4gYnVzeSBhbmQgaXMgbm9uLWZ1
bmN0aW9uYWwuIE9ubHkgYSByZXNldCBhYm9ydHMgdGhlIERQU00uCj4+Cj4+IFBsZWFzZSBjbGFy
aWZ5L2V4dGVuZCB0aGlzIGluZm9ybWF0aW9uIHRvIHRlbGwgdGhhdCB0aGlzIGlzIGZvciB0aGUK
Pj4gdmFyaWFudCwgdGhhdCBrZWVwcyBEUFNNIGVuYWJsZWQgYW5kIHVzZXMgdGhlIGRhdGEgdGlt
ZXIgd2hpbGUgc2VuZGluZwo+PiBhIENNRDEyLiBPciBzb21ldGhpbmcgYWxvbmcgdGhvc2UgbGlu
ZXMuCj4+Cj4gCj4geWVzLCBvZiBjb3Vyc2UuCj4gCj4+Pgo+Pj4gTGlrZSBhIHJlc2V0IG11c3Qg
YmUgb3V0c2lkZSBvZiBjcml0aWNhbCBzZWN0aW9uLCB0aGlzIHBhdGNoIGFkZHMKPj4KPj4gL3Mv
Y3JpdGljYWwgc2VjdGlvbi9hdG9taWMgY29udGV4dAo+IAo+IE9LLCB0aGFua3MKPiAKPj4KPj4+
IHRocmVhZGVkIGlycSBmdW5jdGlvbiB0byByZWxlYXNlIHN0YXRlIG1hY2hpbmUuIEluIHRoaXMg
Y2FzZSwKPj4+IHRoZSBtbWNfcmVxdWVzdF9kb25lIGlzIGNhbGxlZCBhdCB0aGUgZW5kIG9mIHRo
cmVhZGVkIGlycSBhbmQKPj4+IHNraXBwZWQgaW50byBpcnEgaGFuZGxlci4KPj4+Cj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPj4+IC0tLQo+
Pj4gwqAgZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMgfCA0NCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLQo+Pj4gwqAgZHJpdmVycy9tbWMvaG9zdC9tbWNpLmggfMKgIDEg
Kwo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L21tY2kuYyBiL2RyaXZlcnMv
bW1jL2hvc3QvbW1jaS5jCj4+PiBpbmRleCA0MGU3MmMzMGVhODQuLmVjNmUyNDljODdjYSAxMDA2
NDQKPj4+IC0tLSBhL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+PiArKysgYi9kcml2ZXJzL21t
Yy9ob3N0L21tY2kuYwo+Pj4gQEAgLTU1Niw2ICs1NTYsOSBAQCBzdGF0aWMgdm9pZCBtbWNpX2Rt
YV9lcnJvcihzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0KQo+Pj4gwqAgc3RhdGljIHZvaWQKPj4+IMKg
IG1tY2lfcmVxdWVzdF9lbmQoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCwgc3RydWN0IG1tY19yZXF1
ZXN0ICptcnEpCj4+PiDCoCB7Cj4+PiArwqDCoMKgwqDCoMKgIGlmIChob3N0LT5pcnFfYWN0aW9u
ID09IElSUV9XQUtFX1RIUkVBRCkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJl
dHVybjsKPj4+ICsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgd3JpdGVsKDAsIGhvc3QtPmJhc2UgKyBN
TUNJQ09NTUFORCk7Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBCVUdfT04oaG9zdC0+ZGF0YSk7
Cj4+PiBAQCAtMTMyMSw2ICsxMzI0LDcgQEAgbW1jaV9jbWRfaXJxKHN0cnVjdCBtbWNpX2hvc3Qg
Kmhvc3QsIHN0cnVjdCAKPj4+IG1tY19jb21tYW5kICpjbWQsCj4+PiDCoMKgwqDCoMKgwqDCoMKg
IH0gZWxzZSBpZiAoaG9zdC0+dmFyaWFudC0+YnVzeV90aW1lb3V0ICYmIGJ1c3lfcmVzcCAmJgo+
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzICYgTUNJX0RB
VEFUSU1FT1VUKSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbWQtPmVy
cm9yID0gLUVUSU1FRE9VVDsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhvc3Qt
PmlycV9hY3Rpb24gPSBJUlFfV0FLRV9USFJFQUQ7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIH0gZWxz
ZSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbWQtPnJlc3BbMF0gPSBy
ZWFkbChiYXNlICsgTU1DSVJFU1BPTlNFMCk7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbWQtPnJlc3BbMV0gPSByZWFkbChiYXNlICsgTU1DSVJFU1BPTlNFMSk7Cj4+PiBA
QCAtMTUzMiw5ICsxNTM2LDkgQEAgc3RhdGljIGlycXJldHVybl90IG1tY2lfaXJxKGludCBpcnEs
IHZvaWQgKmRldl9pZCkKPj4+IMKgIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IG1tY2lf
aG9zdCAqaG9zdCA9IGRldl9pZDsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgdTMyIHN0YXR1czsKPj4+
IC3CoMKgwqDCoMKgwqAgaW50IHJldCA9IDA7Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBzcGlu
X2xvY2soJmhvc3QtPmxvY2spOwo+Pj4gK8KgwqDCoMKgwqDCoCBob3N0LT5pcnFfYWN0aW9uID0g
SVJRX0hBTkRMRUQ7Cj4+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoCBkbyB7Cj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSByZWFkbChob3N0LT5iYXNlICsgTU1DSVNU
QVRVUyk7Cj4+PiBAQCAtMTU3NCwxMiArMTU3OCw0MSBAQCBzdGF0aWMgaXJxcmV0dXJuX3QgbW1j
aV9pcnEoaW50IGlycSwgdm9pZCAKPj4+ICpkZXZfaWQpCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoaG9zdC0+dmFyaWFudC0+YnVzeV9kZXRlY3RfZmxhZykKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgJj0g
fmhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X2ZsYWc7Cj4+Pgo+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0ID0gMTsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgfSB3aGlsZSAoc3Rh
dHVzKTsKPj4+Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2NrKCZob3N0LT5sb2NrKTsK
Pj4+Cj4+PiAtwqDCoMKgwqDCoMKgIHJldHVybiBJUlFfUkVUVkFMKHJldCk7Cj4+PiArwqDCoMKg
wqDCoMKgIHJldHVybiBob3N0LT5pcnFfYWN0aW9uOwo+Pj4gK30KPj4+ICsKPj4+ICsvKgo+Pj4g
KyAqIG1tY2lfaXJxX3RocmVhZGVkIGlzIGNhbGwgaWYgdGhlIG1tY2kgaG9zdCBuZWVkIHRvIHJl
bGVhc2Ugc3RhdGUgCj4+PiBtYWNoaW5lcwo+Pj4gKyAqIGJlZm9yZSB0byB0ZXJtaW5hdGUgdGhl
IHJlcXVlc3QuCj4+PiArICogSWYgZGF0YXRpbWVvdXQgb2NjdXJzIG9uIFIxQiByZXF1ZXN0LCB0
aGUgRGF0YSBQYXRoIFN0YXRlIE1hY2hpbmUgCj4+PiBzdGF5cwo+Pj4gKyAqIGluIGJ1c3kgYW5k
IGlzIG5vbi1mdW5jdGlvbmFsLiBPbmx5IGEgcmVzZXQgY2FuIHRvIGFib3J0IHRoZSBEUFNNLgo+
Pj4gKyAqLwo+Pj4gK3N0YXRpYyBpcnFyZXR1cm5fdCBtbWNpX2lycV90aHJlYWRlZChpbnQgaXJx
LCB2b2lkICpkZXZfaWQpCj4+PiArewo+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgbW1jaV9ob3N0
ICpob3N0ID0gZGV2X2lkOwo+Pj4gK8KgwqDCoMKgwqDCoCB1bnNpZ25lZCBsb25nIGZsYWdzOwo+
Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoCBpZiAoaG9zdC0+cnN0KSB7Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZXNldF9jb250cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdWRlbGF5KDIpOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmVzZXRfY29udHJvbF9kZWFzc2VydChob3N0LT5yc3QpOwo+Pj4gK8Kg
wqDCoMKgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgIHNwaW5fbG9ja19pcnFzYXZlKCZo
b3N0LT5sb2NrLCBmbGFncyk7Cj4+PiArwqDCoMKgwqDCoMKgIHdyaXRlbChob3N0LT5jbGtfcmVn
LCBob3N0LT5iYXNlICsgTU1DSUNMT0NLKTsKPj4+ICvCoMKgwqDCoMKgwqAgd3JpdGVsKGhvc3Qt
PnB3cl9yZWcsIGhvc3QtPmJhc2UgKyBNTUNJUE9XRVIpOwo+Pj4gK8KgwqDCoMKgwqDCoCB3cml0
ZWwoTUNJX0lSUUVOQUJMRSB8IGhvc3QtPnZhcmlhbnQtPnN0YXJ0X2VyciwKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBob3N0LT5iYXNlICsgTU1DSU1BU0swKTsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqAgaG9zdC0+aXJxX2FjdGlvbiA9IElSUV9IQU5ETEVEOwo+Pj4gK8KgwqDCoMKg
wqDCoCBtbWNpX3JlcXVlc3RfZW5kKGhvc3QsIGhvc3QtPm1ycSk7Cj4+PiArwqDCoMKgwqDCoMKg
IHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmhvc3QtPmxvY2ssIGZsYWdzKTsKPj4+ICsKPj4+ICvC
oMKgwqDCoMKgwqAgcmV0dXJuIGhvc3QtPmlycV9hY3Rpb247Cj4+PiDCoCB9Cj4+Pgo+Pj4gwqAg
c3RhdGljIHZvaWQgbW1jaV9yZXF1ZXN0KHN0cnVjdCBtbWNfaG9zdCAqbW1jLCBzdHJ1Y3QgbW1j
X3JlcXVlc3QgCj4+PiAqbXJxKQo+Pj4gQEAgLTIwNzEsOCArMjEwNCw5IEBAIHN0YXRpYyBpbnQg
bW1jaV9wcm9iZShzdHJ1Y3QgYW1iYV9kZXZpY2UgKmRldiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnb3RvIGNsa19kaXNhYmxlOwo+Pj4gwqDC
oMKgwqDCoMKgwqDCoCB9Cj4+Pgo+Pj4gLcKgwqDCoMKgwqDCoCByZXQgPSBkZXZtX3JlcXVlc3Rf
aXJxKCZkZXYtPmRldiwgZGV2LT5pcnFbMF0sIG1tY2lfaXJxLCAKPj4+IElSUUZfU0hBUkVELAo+
Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERSSVZFUl9O
QU1FICIgKGNtZCkiLCBob3N0KTsKPj4+ICvCoMKgwqDCoMKgwqAgcmV0ID0gZGV2bV9yZXF1ZXN0
X3RocmVhZGVkX2lycSgmZGV2LT5kZXYsIGRldi0+aXJxWzBdLCAKPj4+IG1tY2lfaXJxLAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgbW1jaV9pcnFfdGhyZWFkZWQsIElSUUZfU0hBUkVELAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJJVkVSX05BTUUgIiAoY21kKSIsIGhvc3QpOwo+Pgo+PiBJ
biBnZW5lcmFsIGl0J3MgYSBnb29kIGlkZWEgdG8gbW92ZSBkcml2ZXJzIGludG8gdXNpbmcgYSB0
aHJlYWRlZCBJUlEgCj4+IGhhbmRsZXIuCj4+Cj4+IEhvd2V2ZXIsIHRoZSByZWFzb24gdGhpcyBo
YXNuJ3QgYmVlbiBkb25lIGZvciBtbWNpIGJlZm9yZSwgaXMgYmVjYXVzZQo+PiB0aGVyZSBhcmUg
c29tZSBsZWdhY3kgdmFyaWFudHMsIHRoYXQgZG9lc24ndCBzdXBwb3J0IEhXIGZsb3cgY29udHJv
bC4KPiAKPiBXaXRoIHRoaXMgcGF0Y2gsIHRoZSBtbWNpX2lycV90aHJlYWRlZCBpcyBjYWxsZWQg
b25seSB3aGVuCj4gYSBkYXRhdGltZW91dCBvY2N1cnMgb24gUjFCIHJlcXVlc3QgZWxzZSB0aGUg
bW1jaV9pcnEgcmV0dXJuIElSUV9IQU5ETEVECj4gYW5kIHRoZSB0aHJlYWRlZCBpcnEgaXMgbm90
IGNhbGxlZC4KPiBTbyBub3JtYWxseSwgdGhlcmUgaXMgbm8gaW1wYWN0IGZvciBsZWdhY3kgdmFy
aWFudHMuCj4gCj4+Cj4+IFVubGVzcyBJIGFtIG1pc3Rha2VuLCB0aGF0IG1lYW5zIHdoZW4gdGhl
IGZpZm8gZ2V0cyBmdWxsIGR1cmluZyBkYXRhCj4+IHRyYW5zZmVycyAtIGl0J3MgdG9vIGxhdGUg
dG8gYWN0LiBJbiBvdGhlciB3b3JkcywgcnVubmluZyB0aGUgaGFuZGxlcgo+PiBpbiBoYXJkIElS
USBjb250ZXh0LCBzaG91bGQgaW5jcmVhc2UgdGhlIHByb2JhYmlsaXR5IG9mIG5vdCBtaXNzaW5n
Cj4+IHRoZSBkZWFkbGluZS4KPj4KPj4gSWYgYSB0aHJlYWRlZCBJUlEgaGFuZGxlciBhbHNvIGlz
IHN1ZmZpY2llbnQgZm9yIHRoZXNlIGxlZ2FjeQo+PiB2YXJpYW50cywgb25seSB0ZXN0cyBjYW4g
dGVsbC4KPj4KPj4gQW4gb3B0aW9uLCB3b3VsZCBiZSB0byB1c2UgYSB0aHJlYWRlZCBoYW5kbGVy
IGZvciB0aG9zZSB2YXJpYW50cyB0aGF0Cj4+IHN1cHBvcnRzIEhXIGZsb3cgY29udHJvbC4gTm90
IHN1cmUgaG93IG1lc3N5IHRoZSBjb2RlIHdvdWxkIGJlIHdpdGgKPj4gdGhpcyBvcHRpb24sIHBl
cmhhcHMgeW91IGNhbiBnaXZlIHRoaXMgYSB0cnk/Cj4gRm9yIGFsbCB0aGVzZSByZWFzb25zIHlv
dSBtZW50aW9uZWQgYWJvdmUsIEknbSBub3Qgc3VyZSBpdCdzIHNhZmUgdG8gCj4gZXh0ZW5kIHRo
ZSB0aHJlYWQgbWFuYWdlciB0byBhbnl0aGluZyBvdGhlciB0aGFuICJhYm9ydGluZyB0aGUgRFBT
TSIgb24KPiBSMUIgZGF0YXRpZW1vdXQgPyB3aGF0IGRvIHlvdSB0aGluayBhYm91dCB0aGF0Pwo+
IAo+IEkgcHJlZmVyIGp1c3QgdXNlZCB0aGUgaXJxIHRocmVhZGVkIGZvciBzcGVjaWZpYyBlcnJv
cnMgY2FzZSB3aGljaCBuZWVkCj4gYmUgb3V0c2lkZSBvZiBhdG9taWMgY29udGV4dC4KPiAKPj4K
Pj4KPj4+IMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGdvdG8gY2xrX2Rpc2FibGU7Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbW1jL2hvc3QvbW1jaS5oIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmgKPj4+IGluZGV4IDE1
OGUxMjMxYWEyMy4uNWU2M2MwNTk2MzY0IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9tbWMvaG9z
dC9tbWNpLmgKPj4+ICsrKyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5oCj4+PiBAQCAtNDEyLDYg
KzQxMiw3IEBAIHN0cnVjdCBtbWNpX2hvc3Qgewo+Pj4KPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3Ry
dWN0IHRpbWVyX2xpc3TCoMKgwqDCoMKgwqAgdGltZXI7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHVu
c2lnbmVkIGludMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2xkc3RhdDsKPj4+ICvCoMKgwqDCoMKg
wqAgdTMywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcnFfYWN0aW9u
Owo+Pj4KPj4+IMKgwqDCoMKgwqDCoMKgwqAgLyogcGlvIHN0dWZmICovCj4+PiDCoMKgwqDCoMKg
wqDCoMKgIHN0cnVjdCBzZ19tYXBwaW5nX2l0ZXLCoCBzZ19taXRlcjsKPj4+IC0tIAo+Pj4gMi4x
Ny4xCj4+Pgo+Pgo+PiBLaW5kIHJlZ2FyZHMKPj4gVWZmZQo+Pgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtc3RtMzIgbWFpbGluZyBsaXN0
Cj4gTGludXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+IGh0dHBzOi8vc3Qt
bWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXN0bTMyCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
