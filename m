Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF571323CD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:38:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wr56Vp1rE4qgmZAlFZrMwP9vPB5y1OtMLMF956u//a8=; b=Hf+qPEcJw+/aGB
	bPFfNpqcIcr64mUCBEXpiQnjukpWJOTrl6Unf1ccJ1q27ABB97FO1wHXFa/2IXfw4gEQ9QOb72gfE
	znlo166CICmQ0qfWCbtGFI2PWDTdn1+GdgEkzOXmSMHCrGVgLhjr7ge8/Vf7HopLGMJ+cjOi+1TR3
	CZv7i7Zk+rCw0ay3l6D47EPJg4DdbYYFoYwnBxOw7Uj/L2Sxo+cCwDn6Hu1U3PB+YAtsDFO6a122w
	24y2Zq3tvhGAmqEZ6m71wyFt1pdkzzqPGBGSzVHz+tvprqTV8L6FPm82XitT9RsQ8Jaap2lF2+kud
	APPD1SvdytwjfmmEgK/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomFy-0005dw-LN; Tue, 07 Jan 2020 10:38:38 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomFs-0005dU-3K
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:38:33 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 007AcTBQ052064;
 Tue, 7 Jan 2020 04:38:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578393509;
 bh=BSpms8vYzmAl/YFEGgI8wzX4uGpMNJOd+zSnFgxFaP0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=MKjc8aAF40U5qjbdM4l/1SABZ0JniIFWxtHuneoS4v0G7TPEk0yLjiPYPP36egmvR
 ja1LaMDtkIm4jF81pIDJpn4/wHbw8TX78YJZ+w0Jr3G+t6LIusO81C2Iy7/mxq0ewj
 tCHIdn1VvkIz+qwHIec8EhRlRho2N/kIyP3sfgm4=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 007AcTZo112928
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Jan 2020 04:38:29 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 04:38:28 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 04:38:28 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 007AcPAU005113;
 Tue, 7 Jan 2020 04:38:27 -0600
Subject: Re: [PATCH] media: stm32-dcmi: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Hugues FRUCHET <hugues.fruchet@st.com>, "mchehab@kernel.org"
 <mchehab@kernel.org>, "mcoquelin.stm32@gmail.com"
 <mcoquelin.stm32@gmail.com>, Alexandre TORGUE <alexandre.torgue@st.com>
References: <20191217104135.23554-1-peter.ujfalusi@ti.com>
 <84946ffd-8e90-7b6a-6667-a10e27d31655@st.com>
 <8229c7ed-b513-6bf8-5684-60d87a92d41f@st.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <a4682783-e966-6176-4ab5-cc9345e3508f@ti.com>
Date: Tue, 7 Jan 2020 12:38:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8229c7ed-b513-6bf8-5684-60d87a92d41f@st.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_023832_285979_EF1AF77B 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSHVndWVzLAoKT24gMDcvMDEvMjAyMCAxMS40NiwgSHVndWVzIEZSVUNIRVQgd3JvdGU6Cj4g
SGkgUGV0ZXIsCj4gCj4gSWYgbm90IHRvbyBsYXRlLCBjb3VsZCB5b3UgY2hhbmdlIHRyYWNlIHRv
IG9ubHkgdHJpZyBlcnJvciB0cmFjZSB3aGVuCj4gZXJyb3IgaXMgbm90ICJwcm9iZSBkZWZlcmVk
IiA/IFNlZSBiZWxvdzoKPiAKPiAtCWNoYW4gPSBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCZw
ZGV2LT5kZXYsICJ0eCIpOwo+IC0JaWYgKCFjaGFuKSB7Cj4gLQkJZGV2X2luZm8oJnBkZXYtPmRl
diwgIlVuYWJsZSB0byByZXF1ZXN0IERNQSBjaGFubmVsLCBkZWZlciBwcm9iaW5nXG4iKTsKPiAt
CQlyZXR1cm4gLUVQUk9CRV9ERUZFUjsKPiArCWNoYW4gPSBkbWFfcmVxdWVzdF9jaGFuKCZwZGV2
LT5kZXYsICJ0eCIpOwo+ICsJaWYgKElTX0VSUihjaGFuKSkgewo+ICsJCWlmIChQVFJfRVJSKGNo
YW4pICE9IC1FUFJPQkVfREVGRVIpCj4gKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgIlVuYWJsZSB0
byByZXF1ZXN0IERNQSBjaGFubmVsXG4iKTsKPiArCQlyZXR1cm4gUFRSX0VSUihjaGFuKTsKClN1
cmUsIEkgZG9uJ3Qga25vdyBob3cgSSBtaXNzZWQgaXQuCgpSZWdhcmRzLAotIFDDqXRlcgoKPiAK
PiBCZXN0IHJlZ2FyZHMsCj4gSHVndWVzLgo+IAo+IE9uIDEyLzE4LzE5IDExOjUyIEFNLCBIdWd1
ZXMgRlJVQ0hFVCB3cm90ZToKPj4gVGhhbmtzIGZvciBwYXRjaGluZyBQZXRlciwKPj4KPj4gTm8g
cmVncmVzc2lvbiBvYnNlcnZlZCBvbiBteSBzaWRlLgo+Pgo+PiBBY2tlZC1ieTogSHVndWVzIEZy
dWNoZXQgPGh1Z3Vlcy5mcnVjaGV0QHN0LmNvbT4KPj4KPj4gQmVzdCByZWdhcmRzLAo+PiBIdWd1
ZXMuCj4+Cj4+IE9uIDEyLzE3LzE5IDExOjQxIEFNLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4+
IGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoKSBpcyBhIHdyYXBwZXIgb24gdG9wIG9mIGRtYV9y
ZXF1ZXN0X2NoYW4oKQo+Pj4gZWF0aW5nIHVwIHRoZSBlcnJvciBjb2RlLgo+Pj4KPj4+IEJ5IHVz
aW5nIGRtYV9yZXF1ZXN0X2NoYW4oKSBkaXJlY3RseSB0aGUgZHJpdmVyIGNhbiBzdXBwb3J0IGRl
ZmVycmVkCj4+PiBwcm9iaW5nIGFnYWluc3QgRE1BLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFBl
dGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jIHwgNiArKystLS0KPj4+IMKgIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3RtMzIvc3RtMzItZGNtaS5jIAo+Pj4g
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N0bTMyL3N0bTMyLWRjbWkuYwo+Pj4gaW5kZXggOTM5
MmUzNDA5ZmJhLi41NTM1MTg3MmIwYzcgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3N0bTMyL3N0bTMyLWRjbWkuYwo+Pj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9zdG0zMi9zdG0zMi1kY21pLmMKPj4+IEBAIC0xOTEwLDEwICsxOTEwLDEwIEBAIHN0YXRpYyBp
bnQgZGNtaV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlIAo+Pj4gKnBkZXYpCj4+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIobWNsayk7Cj4+PiDCoMKgwqDCoMKgIH0KPj4+
IC3CoMKgwqAgY2hhbiA9IGRtYV9yZXF1ZXN0X3NsYXZlX2NoYW5uZWwoJnBkZXYtPmRldiwgInR4
Iik7Cj4+PiAtwqDCoMKgIGlmICghY2hhbikgewo+Pj4gK8KgwqDCoCBjaGFuID0gZG1hX3JlcXVl
c3RfY2hhbigmcGRldi0+ZGV2LCAidHgiKTsKPj4+ICvCoMKgwqAgaWYgKElTX0VSUihjaGFuKSkg
ewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9pbmZvKCZwZGV2LT5kZXYsICJVbmFibGUgdG8g
cmVxdWVzdCBETUEgY2hhbm5lbCwgZGVmZXIgCj4+PiBwcm9iaW5nXG4iKTsKPj4+IC3CoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVQUk9CRV9ERUZFUjsKPj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4g
UFRSX0VSUihjaGFuKTsKPj4+IMKgwqDCoMKgwqAgfQo+Pj4gwqDCoMKgwqDCoCBzcGluX2xvY2tf
aW5pdCgmZGNtaS0+aXJxbG9jayk7Cj4+ID4KCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95
LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6
IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
