Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AFD131436
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:58:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVtD+iHWV1W/BiYyTydQ787j3etxVEK+yigvp/RWKU8=; b=ji+UZXURLe5Ltr
	4GO2zeYtSbnltDxUkkK56YjB4uwqhl783oBqrrC3pkQHSl31gM6cL9oN2M5fwH9rLjRNeZ1v57dtO
	yBoXIUo2Y13qzuthjS0yfl7hVggMEjRmRWh0n3AzMBvEsMg2npzj0SqzWDJ7PjLhe7YoDeIHTeC5V
	thGTnixN/DV5kkaiczpjr5ENxfl2t1Y2THPS4apbW1YB4B7o59WkCIsFedVRDvh8Gfd4LMV8n3XKk
	aqnPIRwfqZ7JjfsxQlsNtihOcYCDvvHnVbhMui/1/YQOj6XIJciAaap6NwZXtyb6Dw1aje2gFyk1G
	W2gozD7I+Z7/c/lwIqmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTpJ-0005Yi-1X; Mon, 06 Jan 2020 14:57:53 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTpB-0005Y2-Bs
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:57:47 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 006EvXuO013821; Mon, 6 Jan 2020 15:57:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=mfTsSgC+nbIx5Cwy5kJoaiPuWHFCOTKUnbs7cW5AUkw=;
 b=fpqRVBvcgs6v2HPWaKCD0HnmaTPKFQaAR49Xi9p4ikiVRzM+TJZIPBmVMqajp1VR7zLr
 uWJhrtcsgXMK4bRA4eLWvqlxdyGY+s6LEaYtxxJfxmxPWrahJkQT3LHNlu3VIyGI1xmy
 Nu9NcaCp/AvIt6D2KMHvUdn6L1pJDSOz7u7ZZ7hziKrjdwL+EIE8JMkbhrsw0QVrfbtF
 TGx4AHSiexBSsusmHSuYd+WiADHYizL5EBtNf5Q3me6TTuozZZ0NN6bIopZn2DOETG8h
 d1l5D6eLe1sUbYqOq2FV548VRIfZS9/6K5lSVVJZ6NKZ/bREGUkEpgJmC7nXQZscOtap wQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm58j2y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jan 2020 15:57:40 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D0EEA100034;
 Mon,  6 Jan 2020 15:57:35 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C37672D3786;
 Mon,  6 Jan 2020 15:57:35 +0100 (CET)
Received: from [10.48.0.71] (10.75.127.44) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 6 Jan
 2020 15:57:33 +0100
Subject: Re: [PATCH] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <lee.jones@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20191217105240.25648-1-peter.ujfalusi@ti.com>
 <a9184949-94e0-97fb-5fa8-77693e71e99a@st.com>
 <bdfba9d1-d22b-fd55-2dce-1262017f1110@ti.com>
From: Fabrice Gasnier <fabrice.gasnier@st.com>
Message-ID: <f1aeb0de-5a1f-b162-e2f5-493551d12432@st.com>
Date: Mon, 6 Jan 2020 15:57:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <bdfba9d1-d22b-fd55-2dce-1262017f1110@ti.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG5NODE3.st.com
 (10.75.127.15)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-06_04:2020-01-06,2020-01-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_065745_703808_D3E54E2F 
X-CRM114-Status: GOOD (  25.08  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>, vkoul@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMjAvMTkgMTI6MzYgUE0sIFBldGVyIFVqZmFsdXNpIHdyb3RlOgo+IEhpIEZhYnJpY2Us
Cj4gCj4gT24gMjAvMTIvMjAxOSAxMC41NCwgRmFicmljZSBHYXNuaWVyIHdyb3RlOgo+PiBPbiAx
Mi8xNy8xOSAxMTo1MiBBTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+PiBkbWFfcmVxdWVzdF9z
bGF2ZV9jaGFubmVsKCkgaXMgYSB3cmFwcGVyIG9uIHRvcCBvZiBkbWFfcmVxdWVzdF9jaGFuKCkK
Pj4+IGVhdGluZyB1cCB0aGUgZXJyb3IgY29kZS4KPj4+Cj4+PiBCeSB1c2luZyBkbWFfcmVxdWVz
dF9jaGFuKCkgZGlyZWN0bHkgdGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+Pj4gcHJv
YmluZyBhZ2FpbnN0IERNQS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8
cGV0ZXIudWpmYWx1c2lAdGkuY29tPgo+Pj4gLS0tCj4+PiAgZHJpdmVycy9tZmQvc3RtMzItdGlt
ZXJzLmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4+PiAgMSBmaWxlIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWZkL3N0bTMyLXRpbWVycy5jIGIvZHJpdmVycy9tZmQvc3RtMzItdGltZXJz
LmMKPj4+IGluZGV4IGVmY2Q0Yjk4MGM5NC4uMzQ3NDdlOGE0YTQwIDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9tZmQvc3RtMzItdGltZXJzLmMKPj4+ICsrKyBiL2RyaXZlcnMvbWZkL3N0bTMyLXRp
bWVycy5jCj4+PiBAQCAtMTY3LDEwICsxNjcsMTEgQEAgc3RhdGljIHZvaWQgc3RtMzJfdGltZXJz
X2dldF9hcnJfc2l6ZShzdHJ1Y3Qgc3RtMzJfdGltZXJzICpkZGF0YSkKPj4+ICAJcmVnbWFwX3dy
aXRlKGRkYXRhLT5yZWdtYXAsIFRJTV9BUlIsIDB4MCk7Cj4+PiAgfQo+Pj4gIAo+Pj4gLXN0YXRp
YyB2b2lkIHN0bTMyX3RpbWVyc19kbWFfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LAo+Pj4gK3N0
YXRpYyBpbnQgc3RtMzJfdGltZXJzX2RtYV9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+PiAg
CQkJCSAgIHN0cnVjdCBzdG0zMl90aW1lcnMgKmRkYXRhKQo+Pj4gIHsKPj4+ICAJaW50IGk7Cj4+
PiArCWludCByZXQgPSAwOwo+Pj4gIAljaGFyIG5hbWVbNF07Cj4+PiAgCj4+PiAgCWluaXRfY29t
cGxldGlvbigmZGRhdGEtPmRtYS5jb21wbGV0aW9uKTsKPj4+IEBAIC0xNzksMTQgKzE4MCwyMiBA
QCBzdGF0aWMgdm9pZCBzdG0zMl90aW1lcnNfZG1hX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwK
Pj4+ICAJLyogT3B0aW9uYWwgRE1BIHN1cHBvcnQ6IGdldCB2YWxpZCBETUEgY2hhbm5lbChzKSBv
ciBOVUxMICovCj4+PiAgCWZvciAoaSA9IFNUTTMyX1RJTUVSU19ETUFfQ0gxOyBpIDw9IFNUTTMy
X1RJTUVSU19ETUFfQ0g0OyBpKyspIHsKPj4+ICAJCXNucHJpbnRmKG5hbWUsIEFSUkFZX1NJWkUo
bmFtZSksICJjaCUxZCIsIGkgKyAxKTsKPj4+IC0JCWRkYXRhLT5kbWEuY2hhbnNbaV0gPSBkbWFf
cmVxdWVzdF9zbGF2ZV9jaGFubmVsKGRldiwgbmFtZSk7Cj4+PiArCQlkZGF0YS0+ZG1hLmNoYW5z
W2ldID0gZG1hX3JlcXVlc3RfY2hhbihkZXYsIG5hbWUpOwo+Pj4gIAl9Cj4+PiAtCWRkYXRhLT5k
bWEuY2hhbnNbU1RNMzJfVElNRVJTX0RNQV9VUF0gPQo+Pj4gLQkJZG1hX3JlcXVlc3Rfc2xhdmVf
Y2hhbm5lbChkZXYsICJ1cCIpOwo+Pj4gLQlkZGF0YS0+ZG1hLmNoYW5zW1NUTTMyX1RJTUVSU19E
TUFfVFJJR10gPQo+Pj4gLQkJZG1hX3JlcXVlc3Rfc2xhdmVfY2hhbm5lbChkZXYsICJ0cmlnIik7
Cj4+PiAtCWRkYXRhLT5kbWEuY2hhbnNbU1RNMzJfVElNRVJTX0RNQV9DT01dID0KPj4+IC0JCWRt
YV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoZGV2LCAiY29tIik7Cj4+PiArCWRkYXRhLT5kbWEuY2hh
bnNbU1RNMzJfVElNRVJTX0RNQV9VUF0gPSBkbWFfcmVxdWVzdF9jaGFuKGRldiwgInVwIik7Cj4+
PiArCWRkYXRhLT5kbWEuY2hhbnNbU1RNMzJfVElNRVJTX0RNQV9UUklHXSA9IGRtYV9yZXF1ZXN0
X2NoYW4oZGV2LCAidHJpZyIpOwo+Pj4gKwlkZGF0YS0+ZG1hLmNoYW5zW1NUTTMyX1RJTUVSU19E
TUFfQ09NXSA9IGRtYV9yZXF1ZXN0X2NoYW4oZGV2LCAiY29tIik7Cj4+PiArCj4+PiArCWZvciAo
aSA9IFNUTTMyX1RJTUVSU19ETUFfQ0gxOyBpIDwgU1RNMzJfVElNRVJTX01BWF9ETUFTOyBpKysp
IHsKPj4+ICsJCWlmIChJU19FUlIoZGRhdGEtPmRtYS5jaGFuc1tpXSkpIHsKPj4+ICsJCQlpZiAo
UFRSX0VSUihkZGF0YS0+ZG1hLmNoYW5zW2ldKSA9PSAtRVBST0JFX0RFRkVSKT4gKwkJCQlyZXQg
PSAtRVBST0JFX0RFRkVSOwo+Pgo+PiBIaSBQZXRlciwKPj4KPj4gVGhhbmtzIGZvciB0aGUgcGF0
Y2gsCj4+Cj4+IEFzIHRoZSBETUEgaXMgb3B0aW9uYWwsIEknZCByYXRoZXIgcHJlZmVyIHRvIGNo
ZWNrIGV4cGxpY2l0bHkgdGhlcmUncyBubwo+PiBkZXZpY2UsIGFuZCByZXR1cm4gYW55IG90aGVy
IGVycm9yIGNhc2UsIGJhc2ljYWxseToKPj4KPj4gCQkJaWYgKFBUUl9FUlIoZGRhdGEtPmRtYS5j
aGFuc1tpXSkgIT0gLUVOT0RFVikKPj4gCQkJCXJldHVybiBQVFJfRVJSKGRkYXRhLT5kbWEuY2hh
bnNbaV0pOwo+IAo+IE15IGludGVudGlvbiB3YXMgdG8gc3BlY2lmaWNhbGx5IHBpY2sgYW5kIGhh
bmRsZSBFUFJPQkVfREVGRVIgd2hpbGUgbm90Cj4gY2hhbmdpbmcgaG93IHRoZSBkcml2ZXIgaGFu
ZGxlcyBvdGhlciBlcnJvcnMsIHdoZXRoZXIgaXQgYmVjYXVzZSB0aGVyZQo+IGlzIG5vIERNQSBj
aGFubmVsIHNwZWNpZmllZCBvciB0aGVyZSBpcyBhIGZhaWx1cmUgdG8gZ2V0IHRoZSBjaGFubmVs
Lgo+IAo+IEJ1dCBpZiB5b3UgcHJlZmVyIHRvIGlnbm9yZSBvbmx5IEVOT0RFViBhbmQgcmVwb3J0
IG90aGVyIGVycm9ycyB0aGVuIEkKPiBjYW4gc2VuZCB2Mi4KCkhpIFBldGVyLAoKU29ycnkgZm9y
IHRoZSBsYXRlIGFuc3dlci4KClllcywgSSdkIHByZWZlciB0aGlzIHBsZWFzZSwgbm90IHRvIGhp
ZGUgb3RoZXIgZXJyb3IgY2FzZSAoYXMgZGV0YWlsZWQKaW4gb3RoZXIgdGhyZWFkOiBodHRwczov
L2xrbWwub3JnL2xrbWwvMjAyMC8xLzYvMjA5KS4gVGhlIG9ubHkgZXhwZWN0ZWQKIm5vcm1hbCIg
ZXJyb3IgaGVyZSBpcyAtRU5PREVWLCBhcyB0aGUgRE1BIGlzIG9wdGlvbmFsLgoKPiBJdCBjb3Vs
ZCBleHBvc2Ugb3RoZXJ3aXNlIGlnbm9yZWQgY29uZmlndXJhdGlvbiBlcnJvciAoZnJvbSBEVD8p
IGFuZCB0aGUKPiBjaGFuZ2UgaW4gdGhlIGRyaXZlciB3aWxsIGJlIGJsYW1lZCBmb3IgdGhlIHJl
Z3Jlc3Npb24uCgpJIGNhbiBkbyBzb21lIHRlc3RpbmcgYXQgbXkgZW5kIGlmIG5lZWRlZCwgYnV0
IEkgZG9uJ3QgZXhwZWN0IHJlZ3Jlc3Npb24KaGVyZS4KClRoYW5rcywKRmFicmljZQoKPiAKPiBX
b3VsZCBpdCBtYWtlIHNlbnNlIHRvIGFkZCB0aGUgY2hhbmdlIHlvdSBzdWdnZXN0ZWQgYXMgYW4g
aXRlcmF0aW9uIG9uCj4gdG9wIG9mIHRoaXMgcGF0Y2g/Cj4gCj4+Cj4+PiArCj4+PiArCQkJZGRh
dGEtPmRtYS5jaGFuc1tpXSA9IE5VTEw7Cj4+PiArCQl9Cj4+PiArCX0KPj4+ICsKPj4+ICsJcmV0
dXJuIHJldDsKPj4KPj4gV2l0aCB0aGF0LCByZXR1cm4gMCBoZXJlLgo+Pgo+Pj4gIH0KPj4+ICAK
Pj4+ICBzdGF0aWMgdm9pZCBzdG0zMl90aW1lcnNfZG1hX3JlbW92ZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4+PiBAQCAtMjMwLDcgKzIzOSwxMSBAQCBzdGF0aWMgaW50IHN0bTMyX3RpbWVyc19wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gIAo+Pj4gIAlzdG0zMl90aW1lcnNf
Z2V0X2Fycl9zaXplKGRkYXRhKTsKPj4+ICAKPj4+IC0Jc3RtMzJfdGltZXJzX2RtYV9wcm9iZShk
ZXYsIGRkYXRhKTsKPj4+ICsJcmV0ID0gc3RtMzJfdGltZXJzX2RtYV9wcm9iZShkZXYsIGRkYXRh
KTsKPj4+ICsJaWYgKHJldCkgewo+Pj4gKwkJc3RtMzJfdGltZXJzX2RtYV9yZW1vdmUoZGV2LCBk
ZGF0YSk7Cj4+Cj4+IFdpdGggdGhhdCwgc3RtMzJfdGltZXJzX2RtYV9yZW1vdmUoKSBsaWtlbHkg
bmVlZCB0byBiZSB1cGRhdGVkOgo+Pgo+PiAtCQlpZiAoZGRhdGEtPmRtYS5jaGFuc1tpXSkKPj4g
KwkJaWYgKCFJU19FUlJfT1JfTlVMTChkZGF0YS0+ZG1hLmNoYW5zW2ldKSkKPj4gCQkJZG1hX3Jl
bGVhc2VfY2hhbm5lbChkZGF0YS0+ZG1hLmNoYW5zW2ldKTsKPj4KPj4gQmVzdCByZWdhcmRzLAo+
PiBGYWJyaWNlCj4+Cj4+PiArCQlyZXR1cm4gcmV0Owo+Pj4gKwl9Cj4+PiAgCj4+PiAgCXBsYXRm
b3JtX3NldF9kcnZkYXRhKHBkZXYsIGRkYXRhKTsKPj4+ICAKPj4+Cj4gCj4gS2luZCByZWdhcmRz
LAo+IC0gUMOpdGVyCj4gCj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFu
a2F0dSAyMiwgMDAxODAgSGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEt
NC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
