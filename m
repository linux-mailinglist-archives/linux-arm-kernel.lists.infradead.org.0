Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D9B81338
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 09:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P7KhOoAB/aWb1tQPfwux1Nku9SNG4GTv99yHpoy71SM=; b=p2YhQ5w3KYufzvfNTC/qpe/pH
	F5Naaon+sBErZ/UPDJWghylUVtM4ysDTu7y/uqG0MKE8uTYFWeRVrrWRisCLHw7D+WRmn2EU2Mkve
	OP+p7WZX0PaQ993QcvOIaMfCFn6Uw8UgM+sNPi/7mmKysKC2ASd5XUg+200yCf3gQXJR0J0nV71Z+
	ianohGLyqomMxaideSTr/vA98NpR7axY6cU9hfOqp3/OVjcLCkUR4Eut0w3G+n2fwkmzhxy5l2nja
	Fk/xk5H9Br0VUqiJ+A0JSIpPeb0+He0H9OPoinw6iW7pb4r3A1KJ0vekv+29/b9J8u2qLO3RXZvEZ
	PTp+rWPSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huXV8-0002Aj-NX; Mon, 05 Aug 2019 07:33:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huXUt-0002AA-Sx
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 07:33:38 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x757WDuS007598; Mon, 5 Aug 2019 09:33:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : from : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=ELEd8ZxDb7OfiConavdH3VksFxUv47PrkLTaOF/CEmU=;
 b=cJK9+0cPWxphMfTR2X7N0k4Qd/pJTWpyQP7xmPodbFYsZY4TukHFk29x34sHuBTfMBri
 EYIGFX/AjpB0Z0ta1UUx+m0ftLoLbppExROO6Lszg1eHPuZ3o29EAXleZgw/cyJCTRHX
 mvOO7PsQl5kiYqcuZVIP9Tqp31q6Q7KcgC8+gxTYiACHMkuH7Q6HEDxtGaaSHQMjOiFA
 SMIygIB/l/Q1JXzdouWm7IfpDnXOv898XHAo1O/KJ6NHtDtXX8ucXaQ2CJxgpBihBuOb
 ROpea/o9zOxBzMaanx9ZJVd7Ls7bPsKsnMJ3UIvxn4ESe2oDwMf99KWipwPvQlFtOCj5 zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u5sd1d4jg-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 05 Aug 2019 09:33:27 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DF36249;
 Mon,  5 Aug 2019 07:33:24 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CC0DB2C35BB;
 Mon,  5 Aug 2019 09:33:24 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 5 Aug 2019
 09:33:24 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 5 Aug 2019
 09:33:24 +0200
Subject: Re: [Linux-stm32] [PATCH V3 1/3] mmc: mmci: fix read status for busy
 detect
From: Ludovic BARRE <ludovic.barre@st.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
References: <1559577325-19266-1-git-send-email-ludovic.Barre@st.com>
 <1559577325-19266-2-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFpJPbpTnfA2cynFURyxFY_YCm7MRXw3m2nQyU+z=ZWsFA@mail.gmail.com>
 <dd5c1e86-f0b1-cdfa-1b91-486f99d4e50c@st.com>
Message-ID: <7eed2ec4-30db-ae26-f07d-6a8ace7fce12@st.com>
Date: Mon, 5 Aug 2019 09:33:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <dd5c1e86-f0b1-cdfa-1b91-486f99d4e50c@st.com>
Content-Language: en-US
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-05_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_003336_397811_F30C81B1 
X-CRM114-Status: GOOD (  38.15  )
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
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Srinivas
 Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

aGkgVWxmCgpPbiA3LzI2LzE5IDExOjQxIEFNLCBMdWRvdmljIEJBUlJFIHdyb3RlOgo+IGhpIFVs
Zgo+IAo+IFRoYW5rcyB0byB5b3VyICJDbGFyaWZ5IGNvbW1lbnRzIC4uLiIgY29tbWl0LCBsaWtl
IGlzIGNsb3Nlcwo+IEkgcmVzdW1lZCB1cHN0cmVhbSBvZiB0aGlzIHNlcmllcy4KPiAKPiBPbiA3
LzE1LzE5IDY6MzEgUE0sIFVsZiBIYW5zc29uIHdyb3RlOgo+PiBPbiBNb24sIDMgSnVuIDIwMTkg
YXQgMTc6NTUsIEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuQmFycmVAc3QuY29tPiB3cm90ZToKPj4+
Cj4+PiBGcm9tOiBMdWRvdmljIEJhcnJlIDxsdWRvdmljLmJhcnJlQHN0LmNvbT4KPj4+Cj4+PiAi
YnVzeV9kZXRlY3RfZmxhZyIgaXMgdXNlZCB0byByZWFkICYgY2xlYXIgYnVzeSB2YWx1ZSBvZiBt
bWNpIHN0YXR1cy4KPj4+ICJidXN5X2RldGVjdF9tYXNrIiBpcyB1c2VkIHRvIG1hbmFnZSBidXN5
IGlycSBvZiBtbWNpIG1hc2suCj4+PiBTbyB0byByZWFkIG1tY2kgc3RhdHVzIHRoZSBidXN5X2Rl
dGVjdF9mbGFnIG11c3QgYmUgdGFrZSBhY2NvdW50Lgo+Pj4gaWYgdGhlIHZhcmlhbnQgZG9lcyBu
b3Qgc3VwcG9ydCBidXN5IGRldGVjdCBmZWF0dXJlIHRoZSBmbGFnIGlzIG51bGwKPj4+IGFuZCB0
aGVyZSBpcyBubyBpbXBhY3QuCj4+Cj4+IEJ5IHJlYWRpbmcgdGhlIGNoYW5nZWxvZywgaXQgZG9l
c24ndCB0ZWxsIG1lIHRoZSBwdXJwb3NlIG9mIHRoaXMKPj4gY2hhbmdlLiBXaGVuIGdvaW5nIGZv
cndhcmQsIHBsZWFzZSB3b3JrIGhhcmRlciBvbiB5b3VyIGNoYW5nZWxvZ3MuCj4+Cj4+IE1ha2Ug
c3VyZSB0byBhbnN3ZXIgdGhlIHF1ZXN0aW9ucywgKndoeSogaXMgdGhpcyBjaGFuZ2UgbmVlZGVk
LAo+PiAqd2hhdC9ob3cqIGRvZXMgdGhlIGNoYW5nZSBkby4KPiAKPiBPaywgSSB3aWxsIGV4cGxh
aW4gdGhlIGRpZmZlcmVuY2VzIHdpdGggdGhlIGxlZ2FjeSBhbmQgdGhlIG5lZWRzIG9mIAo+IHNk
bW1jIHZhcmlhbnQgYWJvdXQgYnVzeSBkZXRlY3Rpb24uCj4gCj4+Cj4+Pgo+Pj4gTm90IG5lZWQg
dG8gcmUtcmVhZCB0aGUgc3RhdHVzIHJlZ2lzdGVyIGluIG1tY2lfY21kX2lycSwgdGhlCj4+PiBz
dGF0dXMgcGFyYW1ldGVyIGNhbiBiZSB1c2VkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEx1ZG92
aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL21t
Yy9ob3N0L21tY2kuYyB8IDUgKysrLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hv
c3QvbW1jaS5jIGIvZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPj4+IGluZGV4IDM1NjgzM2EuLjVi
NWNjNDUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L21tY2kuYwo+Pj4gKysrIGIv
ZHJpdmVycy9tbWMvaG9zdC9tbWNpLmMKPj4+IEBAIC0xMjQwLDcgKzEyNDAsNyBAQCBtbWNpX2Nt
ZF9pcnEoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCwgc3RydWN0IAo+Pj4gbW1jX2NvbW1hbmQgKmNt
ZCwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghaG9zdC0+YnVzeV9zdGF0dXMgJiYKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIShzdGF0dXMgJiAoTUNJX0NN
RENSQ0ZBSUx8TUNJX0NNRFRJTUVPVVQpKSAmJgo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAocmVhZGwoYmFzZSArIE1NQ0lTVEFUVVMpICYgCj4+PiBob3N0LT52YXJp
YW50LT5idXN5X2RldGVjdF9mbGFnKSkgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAoc3RhdHVzICYgaG9zdC0+dmFyaWFudC0+YnVzeV9kZXRlY3RfZmxhZykpIHsK
Pj4KPj4gSSBzdWdnZXN0ZWQgeW91IHRvIGRvIHRoaXMgY2hhbmdlIHRocm91Z2ggc29tZSBvZiBt
eSBlYXJsaWVyIGNvbW1lbnRzLAo+PiBob3dldmVyIEkgdGhpbmsgaXQgc2hvdWxkIGJlIG1hZGUg
YXMgYSBzdGFuZCBhbG9uZSBjaGFuZ2UuCj4+Cj4+IEFueXdheSwgd2hlbiBsb29raW5nIGF0IHRo
ZSBkZXRhaWxzIGluIHlvdXIgc2VyaWVzLCBJIGRlY2lkZWQgdG8gdHJ5Cj4+IHRvIGhlbHAgb3V0
IGEgYml0LCBzbyBJIGhhdmUgcHJlcGFyZWQgYSBjb3VwbGUgb2YgcmVsYXRlZCBwYXRjaGVzIGZv
cgo+PiBjbGVhbmluZyB1cCBhbmQgY2xhcmlmeWluZyB0aGUgYnVzeSBkZXRlY3Rpb24gY29kZS9j
b21tZW50cyBpbiBtbWNpLiBJCj4+IGhhdmUgaW5jb3Jwb3JhdGVkIHRoZSBhYm92ZSBjaGFuZ2Us
IHNvIGxldCBtZSBwb3N0IHRoZW0gYXNhcC4KPj4KPj4+Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogQ2xlYXIgdGhlIGJ1c3kgc3RhcnQgSVJR
ICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
d3JpdGVsKGhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X21hc2ssCj4+PiBAQCAtMTUxNyw3ICsx
NTE3LDggQEAgc3RhdGljIGlycXJldHVybl90IG1tY2lfaXJxKGludCBpcnEsIHZvaWQgKmRldl9p
ZCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB0byBtYWtlIHN1cmUg
dGhhdCBib3RoIHN0YXJ0IGFuZCBlbmQgaW50ZXJydXB0cyAKPj4+IGFyZSBhbHdheXMKPj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBjbGVhcmVkIG9uZSBhZnRlciB0aGUg
b3RoZXIuCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgJj0gcmVhZGwoaG9zdC0+YmFzZSArIE1N
Q0lNQVNLMCk7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgJj0gcmVh
ZGwoaG9zdC0+YmFzZSArIE1NQ0lNQVNLMCkgfAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0X2ZsYWc7Cj4+
Cj4+IEFzIEkgdG9sZCBlYXJsaWVyIGluIHRoZSByZXZpZXcsIHRoaXMgbG9va3Mgd3JvbmcgdG8g
bWUuCj4+Cj4+IEl0IG1lYW5zIHRoYXQgeW91IHdpbGwgYWRkIHRoZSBiaXQgZm9yIHRoZSAtPmJ1
c3lfZGV0ZWN0X2ZsYWcgdG8gdGhlCj4+IHN0YXR1cyBmaWVsZCB3ZSBoYXZlIGp1c3QgcmVhZCBm
cm9tIHRoZSBNTUNJU1RBVFVTIHJlZ2lzdGVyLiBUaGF0Cj4+IG1lYW5zIHRoZSBidXN5IHN0YXR1
cyBtYXkgYmUgc2V0IHdoZW4gaXQgc2hvdWxkbid0Lgo+Pgo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgaWYgKGhvc3QtPnZhcmlhbnQtPmJ1c3lfZGV0ZWN0KQo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHdyaXRlbChzdGF0dXMg
JiAKPj4+IH5ob3N0LT52YXJpYW50LT5idXN5X2RldGVjdF9tYXNrLAo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaG9zdC0+
YmFzZSArIE1NQ0lDTEVBUik7Cj4+PiAtLSAKPj4+IDIuNy40Cj4+Pgo+Pgo+PiBCeSBsb29raW5n
IGF0IHRoZSBvdGhlciBjaGFuZ2VzIGluIHRoZSBzZXJpZXMsIEkgYXNzdW1lIEBzdWJqZWN0IHBh
dGNoCj4+IGlzIGludGVuZGVkIHRvIHByZXBhcmUgZm9yIHRoZSBvdGhlciBjaGFuZ2VzIG9uIHRv
cC4gQnV0IGl0J3Mgbm90Cj4+IHJlYWxseSBjbGVhci4KPj4KPj4gQW55d2F5LCBpbiB0aGF0IHJl
Z2FyZHMsIHRoZSBiZWxvdyBpcyBteSBvYnNlcnZhdGlvbnMgb2Ygd2hhdCBzZWVtcyB0bwo+PiBi
ZSBpbXBvcnRhbnQgcGFydCwgd2hlbiBzdXBwb3J0aW5nIGJ1c3kgZGV0ZWN0aW9uIGZvciB0aGUg
c3RtMzIgc2RtbWMKPj4gdmFyaWFudCAoZXhjZXB0IHRoZSB0aW1lb3V0IHRoaW5ncyBpbiBwYXRj
aDIsIHdoaWNoIEkgaW50ZW5kIHRvCj4+IGNvbW1lbnQgc2VwYXJhdGVseSBvbikuCj4+Cj4+IEkg
ZmlndXJlZCwgdGhlc2UgYXJlIHRoZSBpbnZvbHZlZCByZWdpc3RlciBiaXRzL21hc2tzOgo+Pgo+
PiBNTUNJU1RBVFVTOgo+PiBNQ0lfU1RNMzJfQlVTWUQwIEJJVCgyMCkKPj4gTUNJX1NUTTMyX0JV
U1lEMEVORCBCSVQoMjEpCj4+Cj4+IE1NQ0lNQVNLMDoKPj4gTUNJX1NUTTMyX0JVU1lEMEVORE1B
U0sgQklUKDIxKQo+IAo+IGl0J3MgZXhhY3Q6Cj4gTUNJX1NUTTMyX0JVU1lEMCBCSVQoMjApOiBU
aGlzIGlzIGEgaGFyZHdhcmUgc3RhdHVzIGZsYWcgb25seSAoaW52ZXJ0ZWQgCj4gdmFsdWUgb2Yg
ZDAgbGluZSksIGl0IGRvZXMgbm90IGdlbmVyYXRlIGFuIGludGVycnVwdCwgYW5kIHNvIG5vIG1h
c2sKPiBiaXQuCj4gCj4gTUNJX1NUTTMyX0JVU1lEMEVORE1BU0sgQklUKDIxKTogVGhpcyBpbmRp
Y2F0ZXMgb25seSBlbmQgb2YgYnVzeQo+IGZvbGxvd2luZyBhIENNRCByZXNwb25zZS4gT24gYnVz
eSB0byBOb3QgYnVzeSBjaGFuZ2VzLCBhbiBpbnRlcnJ1cHQKPiBpcyBnZW5lcmF0ZWQgKGlmIHVu
bWFzaykgYW5kIEJVU1lEMEVORCBzdGF0dXMgZmxhZyBpcyBzZXQuCj4gc3RhdHVzIGZsYWcgaXMg
Y2xlYXJlZCBieSB3cml0aW5nIGNvcnJlc3BvbmRpbmcgaW50ZXJydXB0IGNsZWFyIGJpdCBpbiAK
PiBNTUNJQ0xFQVIuCj4gCj4+Cj4+IEZvciB0aGUgbGVnYWN5IFNUIHZhcmlhbnQsIHRoZXJlIGlz
IG9ubHkgb25lIHJlZ2lzdGVyIGJpdCBpbgo+PiBNTUNJU1RBVFVTIHRoYXQgaXMgdXNlZCBmb3Ig
aW5kaWNhdGluZyBidXN5IChNQ0lfU1RfQ0FSREJVU1kgQklUKDI0KSkuCj4+IFRoZXJlIGlzIG5v
IGRlZGljYXRlZCBidXN5LWVuZCBiaXQgZm9yIHRoZSBidXN5LWVuZCBJUlEsIHdoaWNoIEkKPj4g
YmVsaWV2ZSBpcyB0aGUgcmVhc29uIHRvIHdoeSB0aGUgY3VycmVudCBjb2RlIGFsc28gaXMgYml0
IG1lc3N5Lgo+IAo+IHllcwo+IAo+Pgo+PiBJdCBzZWVtcyBsaWtlIHRoZSBzdG0zMiBzZG1tYyB2
YXJpYW50IGhhdmUgYSBzZXBhcmF0ZSBzdGF0dXMgYml0IGZvcgo+PiB0aGUgYnVzeS1lbmQgSVJR
LCBjb3JyZWN0Pwo+IAo+IHllcwo+IAo+Pgo+PiBJZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5IGJ5
IGxvb2tpbmcgYXQgcGF0Y2gzLCB5b3UgZG9uJ3QgdXNlIHRoZQo+PiBkZWRpY2F0ZWQgYnVzeS1l
bmQgc3RhdHVzIGJpdCAoTUNJX1NUTTMyX0JVU1lEMEVORCksIHJpZ2h0PyBUaGVuIHdoeQo+PiBu
b3Q/Cj4gCj4gbGlrZSB5b3VyIGFyZSBjbGFyaWZ5IGluIHByZXZpb3VzIHNlcmllcywgdGhlIGJ1
c3kgZGV0ZWN0aW9uIGlzIGRvbmUKPiBpbiAzIHN0ZXBzLgo+IAo+IGlmIEkgdXNlOgo+IC5idXN5
X2RldGVjdF9mbGFnwqDCoMKgID0gTUNJX1NUTTMyX0JVU1lEMEVORE1BU0ssCj4gLmJ1c3lfZGV0
ZWN0X21hc2vCoMKgwqAgPSBNQ0lfU1RNMzJfQlVTWUQwRU5ETUFTSywKPiAKPiB0aGUgc2RtbWMg
cmVxdWVzdCB3aWxsIGJlIG5vdCBjb3JyZWN0bHkgY29tcGxldGVkLCBiZWNhdXNlIHRoZSB0aGly
ZCAKPiBzdGVwIGNhbid0IGJlIGhhcHBlbi4KPiAKPiBjaHJvbm9sb2dpZXM6Cj4gc3RlcDE6IHdo
ZW4gYnVzeWQwZW5kIGNoYW5nZSB0byAxCj4gIMKgPT4gYnVzeWQwZW5kIGludGVycnVwdCBpcyB1
bm1hc2tlZAo+ICDCoD0+IGJ1c3lfc3RhdHVzID0gY21kX3NlbnQgfCByZXNwZW5kCj4gIMKgPT4g
cmV0dXJuIHRvIG1tY2lfaXJxCj4gc3RlcDI6IGJ1c3lkMGVuZCBpcyB5ZXQgdG8gMQo+ICDCoD0+
IGNsZWFyIHRoZSBidXN5ZDBlbmQgaW50ZXJydXB0Cj4gIMKgwqDCoMKgPT4gdGhlIGhhcmR3YXJl
IGNsZWFyIGJ1c3lkMGVuZCBzdGF0dXMgZmxhZyBvbiBpbnRlcnJ1cHQgY2xlYXIKPiAgwqA9PiBy
ZXR1cm4gdG8gbW1jaV9pcnEKPiAKPiBsaWtlIE1DSV9TVE0zMl9CVVNZRDBFTkQgaW50ZXJydXB0
IGlzIGdlbmVyYXRlZCBvbmx5IG9uIGNoYW5nZQo+IGJ1c3kgdG8gbm90IGJ1c3ksIHdoZW4gdGhl
IGludGVycnVwdCBpcyBjbGVhcmVkIChzdGF0dXMgaXMgMCkKPiB0aGUgc3RlcCAzIGNhbid0IGhh
cHBlbiAobm8gaXJxIHBlbmRpbmcgdG8gcmUtZW50ZXIgaW4gbW1jaV9jbWRfaXJxKS4KPiBzZG1t
YyBjYW4ndCBjb21wbGV0ZSB0aGUgcmVxdWVzdC4KPiAKPiBJZiBJIHVzZToKPiAuYnVzeV9kZXRl
Y3RfZmxhZ8KgwqDCoCA9IE1DSV9TVE0zMl9CVVNZRDAsCj4gLmJ1c3lfZGV0ZWN0X21hc2vCoMKg
wqAgPSBNQ0lfU1RNMzJfQlVTWUQwRU5ETUFTSywKPiAKPiBMaWtlIHRoZXJlIGlzIG5vIE1DSV9T
VE0zMl9CVVNZRDAgaXJxIG1hc2ssIHRoZSBzdGF0dXMgcmVhZCBpbiBtbWNpX2lycQo+ICJzdGF0
dXMgJj0gcmVhZGwoaG9zdC0+YmFzZSArIE1NQ0lNQVNLMCkiIGNhbid0IHRha2UgYWNjb3VudCB0
aGUgCj4gYnVzeV9kZXRlY3RfZmxhZyAoZm9yIHNkbW1jKS4gU28gdGhlwqAgc3RlcCAyIGNhbid0
IGJlIHBhc3NlZC4KPiBIb3dldmVyIHdlIGNvdWxkIHNoYXJlIHJlLXJlYWQgYmV0d2VlbiBzdGVw
IDEgYW5kIHN0ZXAgMi4KPiAKPiBwcm9wb3NhbDoKPiAKPiArCj4gK8KgwqDCoMKgwqDCoMKgIHUz
MiBidXN5X3ZhbCA9IHJlYWRsKGJhc2UgKyBNTUNJU1RBVFVTKSAmCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaG9zdC0+dmFyaWFudC0+YnVzeV9kZXRlY3RfZmxhZzsKPiArCj4gIMKgwqDCoMKg
wqDCoMKgwqAgaWYgKCFob3N0LT5idXN5X3N0YXR1cyAmJgo+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICEoc3RhdHVzICYgKE1DSV9DTURDUkNGQUlMfE1DSV9DTURUSU1FT1VUKSkgJiYKPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAocmVhZGwoYmFzZSArIE1NQ0lTVEFUVVMpICYgCj4gaG9zdC0+
dmFyaWFudC0+YnVzeV9kZXRlY3RfZmxhZykpIHsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAh
KHN0YXR1cyAmIChNQ0lfQ01EQ1JDRkFJTHxNQ0lfQ01EVElNRU9VVCkpICYmIGJ1c3lfdmFsKSB7
Cj4gCj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3cml0ZWwocmVhZGwoYmFzZSArIE1NQ0lN
QVNLMCkgfAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBob3N0LT52
YXJpYW50LT5idXN5X2RldGVjdF9tYXNrLAo+IEBAIC0xMjYyLDggKzEyNjUsNyBAQCBtbWNpX2Nt
ZF9pcnEoc3RydWN0IG1tY2lfaG9zdCAqaG9zdCwgc3RydWN0IAo+IG1tY19jb21tYW5kICpjbWQs
Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoCAqIGJvdGggdGhlIHN0YXJ0IGFuZCB0aGUgZW5kIGludGVy
cnVwdHMgbmVlZHMgdG8gYmUgY2xlYXJlZCwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgICogb25lIGFm
dGVyIHRoZSBvdGhlci4gU28sIGNsZWFyIHRoZSBidXN5IHN0YXJ0IElSUSBoZXJlLgo+ICDCoMKg
wqDCoMKgwqDCoMKgwqAgKi8KPiAtwqDCoMKgwqDCoMKgwqAgaWYgKGhvc3QtPmJ1c3lfc3RhdHVz
ICYmCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKHN0YXR1cyAmIGhvc3QtPnZhcmlhbnQtPmJ1
c3lfZGV0ZWN0X2ZsYWcpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgIGlmIChob3N0LT5idXN5X3N0YXR1
cyAmJiBidXN5X3ZhbCkgewo+IAo+IAo+IHdoYXQgZG8geW91IHRoaW5rIGFib3V0IGl0ID8KPiAK
CkkgZ2l2ZSB1cCB0aGlzIHByb3Bvc2FsIGZvciBhIG5ldyB2ZXJzaW9uIGJhc2VkIG9uIG1tY2lf
aG9zdF9vcHMKY2FsbGJhY2sgdG8gZG9uZSB0aGUgYnVzeSBjb21wbGV0aW9uLgoKPj4KPj4gVGhv
dWdodHM/Cj4+Cj4+IEtpbmQgcmVnYXJkcwo+PiBVZmZlCj4+Cj4gCj4gUmVnYXJkcwo+IEx1ZG8K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4
LXN0bTMyIG1haWxpbmcgbGlzdAo+IExpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBs
eS5jb20KPiBodHRwczovL3N0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20vbWFpbG1hbi9saXN0
aW5mby9saW51eC1zdG0zMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
