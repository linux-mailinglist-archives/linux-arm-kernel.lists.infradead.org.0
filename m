Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D16611356E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:31:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scEceEHZ6Y3lzFiN6Z+BrNs6SoBsqtuPIV6AO826y20=; b=Lxi031OIGblJoY
	NN3LrrFQCy2inXmGCiYha3aXfPCXiKE7OPiEeO/5+fniyPeqlOq951H5mD/UTU1juahWNRvTqJAYr
	M91tS2GYIdwXJrAVsGBohrE6r8PzFDvrY1sqzf/fBddmEtJbeYGkfDNcZQlOYExjDZa7Zwf++VotN
	lrog248+hfkX1mSIGor+ipEiRwXI6v/Or2KqpTu/Yl8Ac+niqiS4Qa6bDUE2VM7ZAKFjB8yo1wIiL
	ebVOTeuttoxy2tVxYZTB++O2pZwU2fCuY57HP38yLAqeJO525uKpmqajtp7No3pHBOltE32VsZ1tI
	IhdorYOFPiqD9yqRjKQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipV6Q-00084f-G9; Thu, 09 Jan 2020 10:31:46 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipV6I-00084L-I2
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:31:40 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 009AVYNC091024;
 Thu, 9 Jan 2020 04:31:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578565894;
 bh=vRdA7ZpngQM+5zB53J/t9D79iFD6d3CN4ckUSA2NKZU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kqfAtqYyVFSJwV7sAQM96ZsH51Cc8Qfcgjh49mQJZW+5wcv9MqpoyEgdaP2YFpDcb
 +2PxadaY9hVlfjIC/8oPqSWQkfi/UFY2Ko2xjxTcHFUwar0CUx/N7aNr3jborunuex
 KcLERc0GHTymkwpkF6fTlikayArqWYj+LJOBXOeg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 009AVYmK079645
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 9 Jan 2020 04:31:34 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Jan
 2020 04:31:32 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Jan 2020 04:31:32 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 009AVU9e033718;
 Thu, 9 Jan 2020 04:31:30 -0600
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <jic23@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200107114532.6697-1-peter.ujfalusi@ti.com>
 <eade6657-8470-0d70-b3c1-fcdddf891c6c@st.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <4c0b7e3e-cd98-860a-e931-c216f1bc6e7a@ti.com>
Date: Thu, 9 Jan 2020 12:32:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <eade6657-8470-0d70-b3c1-fcdddf891c6c@st.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_023138_677125_D88DE4E0 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Olivier MOYSAN <olivier.moysan@st.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwOS8wMS8yMDIwIDExLjEzLCBGYWJyaWNlIEdhc25pZXIgd3JvdGU6Cj4gT24gMS83LzIw
IDEyOjQ1IFBNLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gZG1hX3JlcXVlc3Rfc2xhdmVfY2hh
bm5lbCgpIGlzIGEgd3JhcHBlciBvbiB0b3Agb2YgZG1hX3JlcXVlc3RfY2hhbigpCj4+IGVhdGlu
ZyB1cCB0aGUgZXJyb3IgY29kZS4KPj4KPj4gQnkgdXNpbmcgZG1hX3JlcXVlc3RfY2hhbigpIGRp
cmVjdGx5IHRoZSBkcml2ZXIgY2FuIHN1cHBvcnQgZGVmZXJyZWQKPj4gcHJvYmluZyBhZ2FpbnN0
IERNQS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNp
QHRpLmNvbT4KPj4gLS0tCj4+IEhpLAo+Pgo+PiBDaGFuZ2VzIHNpbmNlIHYxOgo+PiAtIEZhbGwg
YmFjayB0byBJUlEgbW9kZSBmb3IgQURDIG9ubHkgaW4gY2FzZSBvZiBFTk9ERVYKPiAKPiBIaSBQ
ZXRlciwKPiAKPiBUaGFua3MgZm9yIHRoZSBwYXRjaCwKPiAKPiBQbGVhc2UgZmluZCBhIG1pbm9y
IGNvbW1lbnQgaGVyZSBhZnRlci4gQXBhcnQgZnJvbSB0aGF0LCB5b3UgY2FuIGFkZCBteToKPiAK
PiBBY2tlZC1ieTogRmFicmljZSBHYXNuaWVyIDxmYWJyaWNlLmdhc25pZXJAc3QuY29tPgo+IAo+
IAo+Pgo+PiBSZWdhcmRzLAo+PiBQZXRlcgo+Pgo+PiAgZHJpdmVycy9paW8vYWRjL3N0bTMyLWRm
c2RtLWFkYy5jIHwgMjEgKysrKysrKysrKysrKysrKystLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwg
MTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvaWlvL2FkYy9zdG0zMi1kZnNkbS1hZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9zdG0zMi1kZnNk
bS1hZGMuYwo+PiBpbmRleCBlNDkzMjQyYzI2NmUuLjc0YTIyMTFiZGZmNCAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9paW8vYWRjL3N0bTMyLWRmc2RtLWFkYy5jCj4+ICsrKyBiL2RyaXZlcnMvaWlv
L2FkYy9zdG0zMi1kZnNkbS1hZGMuYwo+PiBAQCAtMTM4Myw5ICsxMzgzLDEzIEBAIHN0YXRpYyBp
bnQgc3RtMzJfZGZzZG1fZG1hX3JlcXVlc3Qoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKPj4g
IHsKPj4gIAlzdHJ1Y3Qgc3RtMzJfZGZzZG1fYWRjICphZGMgPSBpaW9fcHJpdihpbmRpb19kZXYp
Owo+PiAgCj4+IC0JYWRjLT5kbWFfY2hhbiA9IGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoJmlu
ZGlvX2Rldi0+ZGV2LCAicngiKTsKPj4gLQlpZiAoIWFkYy0+ZG1hX2NoYW4pCj4+IC0JCXJldHVy
biAtRUlOVkFMOwo+PiArCWFkYy0+ZG1hX2NoYW4gPSBkbWFfcmVxdWVzdF9jaGFuKCZpbmRpb19k
ZXYtPmRldiwgInJ4Iik7Cj4+ICsJaWYgKElTX0VSUihhZGMtPmRtYV9jaGFuKSkgewo+PiArCQlp
bnQgcmV0ID0gUFRSX0VSUihhZGMtPmRtYV9jaGFuKTsKPj4gKwo+PiArCQlhZGMtPmRtYV9jaGFu
ID0gTlVMTDsKPj4gKwkJcmV0dXJuIHJldDsKPiAKPiBZb3UgbWF5ICJyZXR1cm4gUFRSX0VSUihh
ZGMtPmRtYV9jaGFuKTsiIGRpcmVjdGx5IGhlcmUuCgpJIGRvbid0IG1ha2UgZGVjaXNpb24gaGVy
ZSBvbiBiZWhhbGYgb2YgdGhlIGFkYyBwYXRoIG9uIHRvIGdvIGZvcndhcmQgdy8Kb3Igdy9vIERN
QSBzdXBwb3J0IGFuZCBpZiB3ZSBnbyBhaGVhZCB0aGUgc3RtMzJfZGZzZG1fZG1hX3JlbGVhc2Uo
KQpuZWVkcyB0aGUgZG1hX2NoYW4gdG8gYmUgTlVMTCBpbiBjYXNlIHdlIGRvbid0IHVzZSBETUEu
CgpJdCBpcyBtdWNoIGNsZWFuZXIgdG8gc2V0IGRtYV9jaGFuIHRvIE5VTEwgaGVyZSB0aGFuIGRv
aW5nIGl0IGluIG90aGVyCnBhdGhzLgoKPiAKPiBCZXN0IFJlZ2FyZHMsCj4gRmFicmljZQo+IAo+
PiArCX0KPj4gIAo+PiAgCWFkYy0+cnhfYnVmID0gZG1hX2FsbG9jX2NvaGVyZW50KGFkYy0+ZG1h
X2NoYW4tPmRldmljZS0+ZGV2LAo+PiAgCQkJCQkgREZTRE1fRE1BX0JVRkZFUl9TSVpFLAo+PiBA
QCAtMTUwOSw3ICsxNTEzLDE2IEBAIHN0YXRpYyBpbnQgc3RtMzJfZGZzZG1fYWRjX2luaXQoc3Ry
dWN0IGlpb19kZXYgKmluZGlvX2RldikKPj4gIAlpbml0X2NvbXBsZXRpb24oJmFkYy0+Y29tcGxl
dGlvbik7Cj4+ICAKPj4gIAkvKiBPcHRpb25hbGx5IHJlcXVlc3QgRE1BICovCj4+IC0JaWYgKHN0
bTMyX2Rmc2RtX2RtYV9yZXF1ZXN0KGluZGlvX2RldikpIHsKPj4gKwlyZXQgPSBzdG0zMl9kZnNk
bV9kbWFfcmVxdWVzdChpbmRpb19kZXYpOwo+PiArCWlmIChyZXQpIHsKPj4gKwkJaWYgKHJldCAh
PSAtRU5PREVWKSB7Cj4+ICsJCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCj4+ICsJCQkJZGV2
X2VycigmaW5kaW9fZGV2LT5kZXYsCj4+ICsJCQkJCSJETUEgY2hhbm5lbCByZXF1ZXN0IGZhaWxl
ZCB3aXRoICVkXG4iLAo+PiArCQkJCQlyZXQpOwo+PiArCQkJcmV0dXJuIHJldDsKPj4gKwkJfQo+
PiArCj4+ICAJCWRldl9kYmcoJmluZGlvX2Rldi0+ZGV2LCAiTm8gRE1BIHN1cHBvcnRcbiIpOwo+
PiAgCQlyZXR1cm4gMDsKPj4gIAl9Cj4+CgotIFDDqXRlcgoKVGV4YXMgSW5zdHJ1bWVudHMgRmlu
bGFuZCBPeSwgUG9ya2thbGFua2F0dSAyMiwgMDAxODAgSGVsc2lua2kuClktdHVubnVzL0J1c2lu
ZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
