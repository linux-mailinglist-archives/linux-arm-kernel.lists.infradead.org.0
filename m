Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5E5FE0BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 16:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9hFirswhdv2vxVg7hBvwyiqNktsfF4oK+knUD9Evm/g=; b=JN/KlBaIOPvjpBmEt/eBkF3ed
	9X4+pteMhCy4yulJKIJP1cr7QLcnuaMVEYpH4XcQ744X9vr/Psr42IStwHOKY3pv3wWsj4Ti3VI90
	i5ZAgL2NVUHwqMXk3zM19I8RRErhCwOvdJHQ9xQqAbVuHpIu/t2AJ4SQ2IZew2ekw4c9wElclJOxR
	SC577vTJeBPTt1bix7D0md18H5FknwMUry1GnLDL7F5OW87teU2irEiSsNBa8DCXaH/INrMrdp3mW
	wqKdCvWtC7JRLFmW7mR4KmTLeHVoDXPtd/lSdPUQyYT3TS70Ka14+sqNO9BEcxplzDNWl2ILNRGUH
	gkFTYVCZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVd58-0004hx-Em; Fri, 15 Nov 2019 15:00:18 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVd4m-0004Yj-BG
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 14:59:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFEv8bs026219; Fri, 15 Nov 2019 15:59:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=FTENcbU0iOl2dVpbEg+JvzJowB9OWl4cNDXi2mw6WWo=;
 b=nAUkjJLXKxbDA8uIfdGOiOIF0d7KgGGJTa6azZxY44JITDPC2BQk54SL8iCLFlUgjmuH
 Sg9YA18N55HrzFzkdmVpp6sw2PeRqTCeGIepmzx8FSMHTvdx3TdDRh4S7Sby0TOTYfu0
 wX2POVYXPb6yF8rETrfBcyvQ7C83Pmv+T9oTqr4P8Vvo4F6t8O9VKWXQyucpGqGosSSM
 YlKttm9HmdBRTcFfysHIJpD5RtvL8eJXXcBUUDA6x0sNHHV2biXPBkOLttViOVfvPxC8
 2wvpgmRY6J+GvXNPrdC2zpqzl4kAT4zzxCu0MH848WqO/qFN/o2AjpajdO4RKDg2Vql5 2w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w7psfmxbv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 15:59:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 22C56100034;
 Fri, 15 Nov 2019 15:59:49 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0F6C82C01FD;
 Fri, 15 Nov 2019 15:59:49 +0100 (CET)
Received: from lmecxl0923.lme.st.com (10.75.127.50) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 15 Nov
 2019 15:59:47 +0100
Subject: Re: [PATCH 1/1] mmc: mmci: add threaded irq to abort DPSM of
 non-functional state
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <20191113172514.19052-1-ludovic.Barre@st.com>
 <CAPDyKFooSJUn6UCE6QkFmJOCovm00ehz_nAPbiNQM3AcJT_bJQ@mail.gmail.com>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <c8311933-d129-4618-b81b-aa627b7b6de0@st.com>
Date: Fri, 15 Nov 2019 15:59:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFooSJUn6UCE6QkFmJOCovm00ehz_nAPbiNQM3AcJT_bJQ@mail.gmail.com>
Content-Language: fr
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_04:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_065956_696928_1845C1A7 
X-CRM114-Status: GOOD (  30.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

aGkgVWxmCgpMZSAxMS8xNC8xOSDDoCA0OjA5IFBNLCBVbGYgSGFuc3NvbiBhIMOpY3JpdMKgOgo+
IE9uIFdlZCwgMTMgTm92IDIwMTkgYXQgMTg6MjUsIEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuQmFy
cmVAc3QuY29tPiB3cm90ZToKPj4KPj4gRnJvbTogTHVkb3ZpYyBCYXJyZSA8bHVkb3ZpYy5iYXJy
ZUBzdC5jb20+Cj4+Cj4+IElmIGRhdGF0aW1lb3V0IG9jY3VycyBvbiBSMUIgcmVxdWVzdCwgdGhl
IERhdGEgUGF0aCBTdGF0ZSBNYWNoaW5lIHN0YXlzCj4+IGluIGJ1c3kgYW5kIGlzIG5vbi1mdW5j
dGlvbmFsLiBPbmx5IGEgcmVzZXQgYWJvcnRzIHRoZSBEUFNNLgo+IAo+IFBsZWFzZSBjbGFyaWZ5
L2V4dGVuZCB0aGlzIGluZm9ybWF0aW9uIHRvIHRlbGwgdGhhdCB0aGlzIGlzIGZvciB0aGUKPiB2
YXJpYW50LCB0aGF0IGtlZXBzIERQU00gZW5hYmxlZCBhbmQgdXNlcyB0aGUgZGF0YSB0aW1lciB3
aGlsZSBzZW5kaW5nCj4gYSBDTUQxMi4gT3Igc29tZXRoaW5nIGFsb25nIHRob3NlIGxpbmVzLgo+
Cgp5ZXMsIG9mIGNvdXJzZS4KCj4+Cj4+IExpa2UgYSByZXNldCBtdXN0IGJlIG91dHNpZGUgb2Yg
Y3JpdGljYWwgc2VjdGlvbiwgdGhpcyBwYXRjaCBhZGRzCj4gCj4gL3MvY3JpdGljYWwgc2VjdGlv
bi9hdG9taWMgY29udGV4dAoKT0ssIHRoYW5rcwoKPiAKPj4gdGhyZWFkZWQgaXJxIGZ1bmN0aW9u
IHRvIHJlbGVhc2Ugc3RhdGUgbWFjaGluZS4gSW4gdGhpcyBjYXNlLAo+PiB0aGUgbW1jX3JlcXVl
c3RfZG9uZSBpcyBjYWxsZWQgYXQgdGhlIGVuZCBvZiB0aHJlYWRlZCBpcnEgYW5kCj4+IHNraXBw
ZWQgaW50byBpcnEgaGFuZGxlci4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVkb3ZpYyBCYXJyZSA8
bHVkb3ZpYy5iYXJyZUBzdC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbW1jL2hvc3QvbW1jaS5j
IHwgNDQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0KPj4gICBkcml2
ZXJzL21tYy9ob3N0L21tY2kuaCB8ICAxICsKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDQwIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9o
b3N0L21tY2kuYyBiL2RyaXZlcnMvbW1jL2hvc3QvbW1jaS5jCj4+IGluZGV4IDQwZTcyYzMwZWE4
NC4uZWM2ZTI0OWM4N2NhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L21tY2kuYwo+
PiArKysgYi9kcml2ZXJzL21tYy9ob3N0L21tY2kuYwo+PiBAQCAtNTU2LDYgKzU1Niw5IEBAIHN0
YXRpYyB2b2lkIG1tY2lfZG1hX2Vycm9yKHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QpCj4+ICAgc3Rh
dGljIHZvaWQKPj4gICBtbWNpX3JlcXVlc3RfZW5kKHN0cnVjdCBtbWNpX2hvc3QgKmhvc3QsIHN0
cnVjdCBtbWNfcmVxdWVzdCAqbXJxKQo+PiAgIHsKPj4gKyAgICAgICBpZiAoaG9zdC0+aXJxX2Fj
dGlvbiA9PSBJUlFfV0FLRV9USFJFQUQpCj4+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4+ICsK
Pj4gICAgICAgICAgd3JpdGVsKDAsIGhvc3QtPmJhc2UgKyBNTUNJQ09NTUFORCk7Cj4+Cj4+ICAg
ICAgICAgIEJVR19PTihob3N0LT5kYXRhKTsKPj4gQEAgLTEzMjEsNiArMTMyNCw3IEBAIG1tY2lf
Y21kX2lycShzdHJ1Y3QgbW1jaV9ob3N0ICpob3N0LCBzdHJ1Y3QgbW1jX2NvbW1hbmQgKmNtZCwK
Pj4gICAgICAgICAgfSBlbHNlIGlmIChob3N0LT52YXJpYW50LT5idXN5X3RpbWVvdXQgJiYgYnVz
eV9yZXNwICYmCj4+ICAgICAgICAgICAgICAgICAgICAgc3RhdHVzICYgTUNJX0RBVEFUSU1FT1VU
KSB7Cj4+ICAgICAgICAgICAgICAgICAgY21kLT5lcnJvciA9IC1FVElNRURPVVQ7Cj4+ICsgICAg
ICAgICAgICAgICBob3N0LT5pcnFfYWN0aW9uID0gSVJRX1dBS0VfVEhSRUFEOwo+PiAgICAgICAg
ICB9IGVsc2Ugewo+PiAgICAgICAgICAgICAgICAgIGNtZC0+cmVzcFswXSA9IHJlYWRsKGJhc2Ug
KyBNTUNJUkVTUE9OU0UwKTsKPj4gICAgICAgICAgICAgICAgICBjbWQtPnJlc3BbMV0gPSByZWFk
bChiYXNlICsgTU1DSVJFU1BPTlNFMSk7Cj4+IEBAIC0xNTMyLDkgKzE1MzYsOSBAQCBzdGF0aWMg
aXJxcmV0dXJuX3QgbW1jaV9pcnEoaW50IGlycSwgdm9pZCAqZGV2X2lkKQo+PiAgIHsKPj4gICAg
ICAgICAgc3RydWN0IG1tY2lfaG9zdCAqaG9zdCA9IGRldl9pZDsKPj4gICAgICAgICAgdTMyIHN0
YXR1czsKPj4gLSAgICAgICBpbnQgcmV0ID0gMDsKPj4KPj4gICAgICAgICAgc3Bpbl9sb2NrKCZo
b3N0LT5sb2NrKTsKPj4gKyAgICAgICBob3N0LT5pcnFfYWN0aW9uID0gSVJRX0hBTkRMRUQ7Cj4+
Cj4+ICAgICAgICAgIGRvIHsKPj4gICAgICAgICAgICAgICAgICBzdGF0dXMgPSByZWFkbChob3N0
LT5iYXNlICsgTU1DSVNUQVRVUyk7Cj4+IEBAIC0xNTc0LDEyICsxNTc4LDQxIEBAIHN0YXRpYyBp
cnFyZXR1cm5fdCBtbWNpX2lycShpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4+ICAgICAgICAgICAg
ICAgICAgaWYgKGhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X2ZsYWcpCj4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdGF0dXMgJj0gfmhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X2ZsYWc7
Cj4+Cj4+IC0gICAgICAgICAgICAgICByZXQgPSAxOwo+PiAgICAgICAgICB9IHdoaWxlIChzdGF0
dXMpOwo+Pgo+PiAgICAgICAgICBzcGluX3VubG9jaygmaG9zdC0+bG9jayk7Cj4+Cj4+IC0gICAg
ICAgcmV0dXJuIElSUV9SRVRWQUwocmV0KTsKPj4gKyAgICAgICByZXR1cm4gaG9zdC0+aXJxX2Fj
dGlvbjsKPj4gK30KPj4gKwo+PiArLyoKPj4gKyAqIG1tY2lfaXJxX3RocmVhZGVkIGlzIGNhbGwg
aWYgdGhlIG1tY2kgaG9zdCBuZWVkIHRvIHJlbGVhc2Ugc3RhdGUgbWFjaGluZXMKPj4gKyAqIGJl
Zm9yZSB0byB0ZXJtaW5hdGUgdGhlIHJlcXVlc3QuCj4+ICsgKiBJZiBkYXRhdGltZW91dCBvY2N1
cnMgb24gUjFCIHJlcXVlc3QsIHRoZSBEYXRhIFBhdGggU3RhdGUgTWFjaGluZSBzdGF5cwo+PiAr
ICogaW4gYnVzeSBhbmQgaXMgbm9uLWZ1bmN0aW9uYWwuIE9ubHkgYSByZXNldCBjYW4gdG8gYWJv
cnQgdGhlIERQU00uCj4+ICsgKi8KPj4gK3N0YXRpYyBpcnFyZXR1cm5fdCBtbWNpX2lycV90aHJl
YWRlZChpbnQgaXJxLCB2b2lkICpkZXZfaWQpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IG1tY2lf
aG9zdCAqaG9zdCA9IGRldl9pZDsKPj4gKyAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+PiAr
Cj4+ICsgICAgICAgaWYgKGhvc3QtPnJzdCkgewo+PiArICAgICAgICAgICAgICAgcmVzZXRfY29u
dHJvbF9hc3NlcnQoaG9zdC0+cnN0KTsKPj4gKyAgICAgICAgICAgICAgIHVkZWxheSgyKTsKPj4g
KyAgICAgICAgICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaG9zdC0+cnN0KTsKPj4gKyAg
ICAgICB9Cj4+ICsKPj4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmaG9zdC0+bG9jaywgZmxh
Z3MpOwo+PiArICAgICAgIHdyaXRlbChob3N0LT5jbGtfcmVnLCBob3N0LT5iYXNlICsgTU1DSUNM
T0NLKTsKPj4gKyAgICAgICB3cml0ZWwoaG9zdC0+cHdyX3JlZywgaG9zdC0+YmFzZSArIE1NQ0lQ
T1dFUik7Cj4+ICsgICAgICAgd3JpdGVsKE1DSV9JUlFFTkFCTEUgfCBob3N0LT52YXJpYW50LT5z
dGFydF9lcnIsCj4+ICsgICAgICAgICAgICAgIGhvc3QtPmJhc2UgKyBNTUNJTUFTSzApOwo+PiAr
Cj4+ICsgICAgICAgaG9zdC0+aXJxX2FjdGlvbiA9IElSUV9IQU5ETEVEOwo+PiArICAgICAgIG1t
Y2lfcmVxdWVzdF9lbmQoaG9zdCwgaG9zdC0+bXJxKTsKPj4gKyAgICAgICBzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZob3N0LT5sb2NrLCBmbGFncyk7Cj4+ICsKPj4gKyAgICAgICByZXR1cm4gaG9z
dC0+aXJxX2FjdGlvbjsKPj4gICB9Cj4+Cj4+ICAgc3RhdGljIHZvaWQgbW1jaV9yZXF1ZXN0KHN0
cnVjdCBtbWNfaG9zdCAqbW1jLCBzdHJ1Y3QgbW1jX3JlcXVlc3QgKm1ycSkKPj4gQEAgLTIwNzEs
OCArMjEwNCw5IEBAIHN0YXRpYyBpbnQgbW1jaV9wcm9iZShzdHJ1Y3QgYW1iYV9kZXZpY2UgKmRl
diwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gY2xrX2Rpc2FibGU7Cj4+ICAgICAg
ICAgIH0KPj4KPj4gLSAgICAgICByZXQgPSBkZXZtX3JlcXVlc3RfaXJxKCZkZXYtPmRldiwgZGV2
LT5pcnFbMF0sIG1tY2lfaXJxLCBJUlFGX1NIQVJFRCwKPj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgRFJJVkVSX05BTUUgIiAoY21kKSIsIGhvc3QpOwo+PiArICAgICAgIHJldCA9IGRldm1fcmVx
dWVzdF90aHJlYWRlZF9pcnEoJmRldi0+ZGV2LCBkZXYtPmlycVswXSwgbW1jaV9pcnEsCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtbWNpX2lycV90aHJlYWRlZCwg
SVJRRl9TSEFSRUQsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBE
UklWRVJfTkFNRSAiIChjbWQpIiwgaG9zdCk7Cj4gCj4gSW4gZ2VuZXJhbCBpdCdzIGEgZ29vZCBp
ZGVhIHRvIG1vdmUgZHJpdmVycyBpbnRvIHVzaW5nIGEgdGhyZWFkZWQgSVJRIGhhbmRsZXIuCj4g
Cj4gSG93ZXZlciwgdGhlIHJlYXNvbiB0aGlzIGhhc24ndCBiZWVuIGRvbmUgZm9yIG1tY2kgYmVm
b3JlLCBpcyBiZWNhdXNlCj4gdGhlcmUgYXJlIHNvbWUgbGVnYWN5IHZhcmlhbnRzLCB0aGF0IGRv
ZXNuJ3Qgc3VwcG9ydCBIVyBmbG93IGNvbnRyb2wuCgpXaXRoIHRoaXMgcGF0Y2gsIHRoZSBtbWNp
X2lycV90aHJlYWRlZCBpcyBjYWxsZWQgb25seSB3aGVuCmEgZGF0YXRpbWVvdXQgb2NjdXJzIG9u
IFIxQiByZXF1ZXN0IGVsc2UgdGhlIG1tY2lfaXJxIHJldHVybiBJUlFfSEFORExFRAphbmQgdGhl
IHRocmVhZGVkIGlycSBpcyBub3QgY2FsbGVkLgpTbyBub3JtYWxseSwgdGhlcmUgaXMgbm8gaW1w
YWN0IGZvciBsZWdhY3kgdmFyaWFudHMuCgo+IAo+IFVubGVzcyBJIGFtIG1pc3Rha2VuLCB0aGF0
IG1lYW5zIHdoZW4gdGhlIGZpZm8gZ2V0cyBmdWxsIGR1cmluZyBkYXRhCj4gdHJhbnNmZXJzIC0g
aXQncyB0b28gbGF0ZSB0byBhY3QuIEluIG90aGVyIHdvcmRzLCBydW5uaW5nIHRoZSBoYW5kbGVy
Cj4gaW4gaGFyZCBJUlEgY29udGV4dCwgc2hvdWxkIGluY3JlYXNlIHRoZSBwcm9iYWJpbGl0eSBv
ZiBub3QgbWlzc2luZwo+IHRoZSBkZWFkbGluZS4KPiAKPiBJZiBhIHRocmVhZGVkIElSUSBoYW5k
bGVyIGFsc28gaXMgc3VmZmljaWVudCBmb3IgdGhlc2UgbGVnYWN5Cj4gdmFyaWFudHMsIG9ubHkg
dGVzdHMgY2FuIHRlbGwuCj4gCj4gQW4gb3B0aW9uLCB3b3VsZCBiZSB0byB1c2UgYSB0aHJlYWRl
ZCBoYW5kbGVyIGZvciB0aG9zZSB2YXJpYW50cyB0aGF0Cj4gc3VwcG9ydHMgSFcgZmxvdyBjb250
cm9sLiBOb3Qgc3VyZSBob3cgbWVzc3kgdGhlIGNvZGUgd291bGQgYmUgd2l0aAo+IHRoaXMgb3B0
aW9uLCBwZXJoYXBzIHlvdSBjYW4gZ2l2ZSB0aGlzIGEgdHJ5PwpGb3IgYWxsIHRoZXNlIHJlYXNv
bnMgeW91IG1lbnRpb25lZCBhYm92ZSwgSSdtIG5vdCBzdXJlIGl0J3Mgc2FmZSB0byAKZXh0ZW5k
IHRoZSB0aHJlYWQgbWFuYWdlciB0byBhbnl0aGluZyBvdGhlciB0aGFuICJhYm9ydGluZyB0aGUg
RFBTTSIgb24KUjFCIGRhdGF0aWVtb3V0ID8gd2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgdGhhdD8K
CkkgcHJlZmVyIGp1c3QgdXNlZCB0aGUgaXJxIHRocmVhZGVkIGZvciBzcGVjaWZpYyBlcnJvcnMg
Y2FzZSB3aGljaCBuZWVkCmJlIG91dHNpZGUgb2YgYXRvbWljIGNvbnRleHQuCgo+IAo+IAo+PiAg
ICAgICAgICBpZiAocmV0KQo+PiAgICAgICAgICAgICAgICAgIGdvdG8gY2xrX2Rpc2FibGU7Cj4+
Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L21tY2kuaCBiL2RyaXZlcnMvbW1jL2hv
c3QvbW1jaS5oCj4+IGluZGV4IDE1OGUxMjMxYWEyMy4uNWU2M2MwNTk2MzY0IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL21tYy9ob3N0L21tY2kuaAo+PiArKysgYi9kcml2ZXJzL21tYy9ob3N0L21t
Y2kuaAo+PiBAQCAtNDEyLDYgKzQxMiw3IEBAIHN0cnVjdCBtbWNpX2hvc3Qgewo+Pgo+PiAgICAg
ICAgICBzdHJ1Y3QgdGltZXJfbGlzdCAgICAgICB0aW1lcjsKPj4gICAgICAgICAgdW5zaWduZWQg
aW50ICAgICAgICAgICAgb2xkc3RhdDsKPj4gKyAgICAgICB1MzIgICAgICAgICAgICAgICAgICAg
ICBpcnFfYWN0aW9uOwo+Pgo+PiAgICAgICAgICAvKiBwaW8gc3R1ZmYgKi8KPj4gICAgICAgICAg
c3RydWN0IHNnX21hcHBpbmdfaXRlciAgc2dfbWl0ZXI7Cj4+IC0tCj4+IDIuMTcuMQo+Pgo+IAo+
IEtpbmQgcmVnYXJkcwo+IFVmZmUKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
