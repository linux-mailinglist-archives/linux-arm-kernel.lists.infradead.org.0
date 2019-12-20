Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBDA127A11
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8NZqLe+ok3rLhXcDWjgcXWmZTANx/Fh6A1Q2N4CN3c=; b=tvaGccoU1rmyJA
	oJvoNPKOCMpPklBNCR6NyBB9A1PwGB1iXm84K1PCOTGffsfLIIQPVw06S7kEywHq+W7fEW6PHcZIn
	vYhAZU+uPgjttxnLVuAN2jcIE/GokD6jO8IvpXEjytqifCzb21J/33iP/kRb18zTKJVld22a707SZ
	tUoMhRL5aQh+moWpZcNYpAUAJZs36xehYWojniDHric4AXT5/nxGtfNx0q4VySKkowtIZqaTJ2DOo
	4hqCfEzudy+9291UBciKJIoJVuUdPUXn2PIolPtTFwOqScXxIhiIeiBzYLIVUO7hRqLrrF4JZ33EZ
	6ECuvAAyklFXyuNfSKLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGa2-0003Cl-Um; Fri, 20 Dec 2019 11:36:26 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGZq-0003CJ-My
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:36:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKBaCQX082593;
 Fri, 20 Dec 2019 05:36:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576841772;
 bh=d8cyfo8OyAOfShKNXXpATI8DY9tGfXH5dt3KHImZgQo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hifFTbq4sjEBmMAUIuWwMNBNnNHRQNMbU0UdtVxaAT26c7HteBIB0mpHju8nnuYH2
 0B5jqJokNyHQVqX4YugMm6/fKRXQkLBPpp25VIIU/aME5FFpBBoJjCyFGeacy8SgH5
 YYplNFnVZ3cWCkO0A5I4xo5a30BYv5O6u2/QL2m0=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBaBE3079658;
 Fri, 20 Dec 2019 05:36:11 -0600
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 05:36:10 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 05:36:08 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBa64o011347;
 Fri, 20 Dec 2019 05:36:06 -0600
Subject: Re: [PATCH] mfd: stm32-timers: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <lee.jones@linaro.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20191217105240.25648-1-peter.ujfalusi@ti.com>
 <a9184949-94e0-97fb-5fa8-77693e71e99a@st.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <bdfba9d1-d22b-fd55-2dce-1262017f1110@ti.com>
Date: Fri, 20 Dec 2019 13:36:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <a9184949-94e0-97fb-5fa8-77693e71e99a@st.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_033614_826638_47A044E8 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin GAIGNARD <benjamin.gaignard@st.com>, vkoul@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRmFicmljZSwKCk9uIDIwLzEyLzIwMTkgMTAuNTQsIEZhYnJpY2UgR2FzbmllciB3cm90ZToK
PiBPbiAxMi8xNy8xOSAxMTo1MiBBTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IGRtYV9yZXF1
ZXN0X3NsYXZlX2NoYW5uZWwoKSBpcyBhIHdyYXBwZXIgb24gdG9wIG9mIGRtYV9yZXF1ZXN0X2No
YW4oKQo+PiBlYXRpbmcgdXAgdGhlIGVycm9yIGNvZGUuCj4+Cj4+IEJ5IHVzaW5nIGRtYV9yZXF1
ZXN0X2NoYW4oKSBkaXJlY3RseSB0aGUgZHJpdmVyIGNhbiBzdXBwb3J0IGRlZmVycmVkCj4+IHBy
b2JpbmcgYWdhaW5zdCBETUEuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxw
ZXRlci51amZhbHVzaUB0aS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9tZmQvc3RtMzItdGltZXJz
LmMgfCAzMSArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMjIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbWZkL3N0bTMyLXRpbWVycy5jIGIvZHJpdmVycy9tZmQvc3RtMzItdGltZXJzLmMKPj4g
aW5kZXggZWZjZDRiOTgwYzk0Li4zNDc0N2U4YTRhNDAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
bWZkL3N0bTMyLXRpbWVycy5jCj4+ICsrKyBiL2RyaXZlcnMvbWZkL3N0bTMyLXRpbWVycy5jCj4+
IEBAIC0xNjcsMTAgKzE2NywxMSBAQCBzdGF0aWMgdm9pZCBzdG0zMl90aW1lcnNfZ2V0X2Fycl9z
aXplKHN0cnVjdCBzdG0zMl90aW1lcnMgKmRkYXRhKQo+PiAgCXJlZ21hcF93cml0ZShkZGF0YS0+
cmVnbWFwLCBUSU1fQVJSLCAweDApOwo+PiAgfQo+PiAgCj4+IC1zdGF0aWMgdm9pZCBzdG0zMl90
aW1lcnNfZG1hX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4gK3N0YXRpYyBpbnQgc3RtMzJf
dGltZXJzX2RtYV9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAJCQkJICAgc3RydWN0IHN0
bTMyX3RpbWVycyAqZGRhdGEpCj4+ICB7Cj4+ICAJaW50IGk7Cj4+ICsJaW50IHJldCA9IDA7Cj4+
ICAJY2hhciBuYW1lWzRdOwo+PiAgCj4+ICAJaW5pdF9jb21wbGV0aW9uKCZkZGF0YS0+ZG1hLmNv
bXBsZXRpb24pOwo+PiBAQCAtMTc5LDE0ICsxODAsMjIgQEAgc3RhdGljIHZvaWQgc3RtMzJfdGlt
ZXJzX2RtYV9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsCj4+ICAJLyogT3B0aW9uYWwgRE1BIHN1
cHBvcnQ6IGdldCB2YWxpZCBETUEgY2hhbm5lbChzKSBvciBOVUxMICovCj4+ICAJZm9yIChpID0g
U1RNMzJfVElNRVJTX0RNQV9DSDE7IGkgPD0gU1RNMzJfVElNRVJTX0RNQV9DSDQ7IGkrKykgewo+
PiAgCQlzbnByaW50ZihuYW1lLCBBUlJBWV9TSVpFKG5hbWUpLCAiY2glMWQiLCBpICsgMSk7Cj4+
IC0JCWRkYXRhLT5kbWEuY2hhbnNbaV0gPSBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKGRldiwg
bmFtZSk7Cj4+ICsJCWRkYXRhLT5kbWEuY2hhbnNbaV0gPSBkbWFfcmVxdWVzdF9jaGFuKGRldiwg
bmFtZSk7Cj4+ICAJfQo+PiAtCWRkYXRhLT5kbWEuY2hhbnNbU1RNMzJfVElNRVJTX0RNQV9VUF0g
PQo+PiAtCQlkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKGRldiwgInVwIik7Cj4+IC0JZGRhdGEt
PmRtYS5jaGFuc1tTVE0zMl9USU1FUlNfRE1BX1RSSUddID0KPj4gLQkJZG1hX3JlcXVlc3Rfc2xh
dmVfY2hhbm5lbChkZXYsICJ0cmlnIik7Cj4+IC0JZGRhdGEtPmRtYS5jaGFuc1tTVE0zMl9USU1F
UlNfRE1BX0NPTV0gPQo+PiAtCQlkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKGRldiwgImNvbSIp
Owo+PiArCWRkYXRhLT5kbWEuY2hhbnNbU1RNMzJfVElNRVJTX0RNQV9VUF0gPSBkbWFfcmVxdWVz
dF9jaGFuKGRldiwgInVwIik7Cj4+ICsJZGRhdGEtPmRtYS5jaGFuc1tTVE0zMl9USU1FUlNfRE1B
X1RSSUddID0gZG1hX3JlcXVlc3RfY2hhbihkZXYsICJ0cmlnIik7Cj4+ICsJZGRhdGEtPmRtYS5j
aGFuc1tTVE0zMl9USU1FUlNfRE1BX0NPTV0gPSBkbWFfcmVxdWVzdF9jaGFuKGRldiwgImNvbSIp
Owo+PiArCj4+ICsJZm9yIChpID0gU1RNMzJfVElNRVJTX0RNQV9DSDE7IGkgPCBTVE0zMl9USU1F
UlNfTUFYX0RNQVM7IGkrKykgewo+PiArCQlpZiAoSVNfRVJSKGRkYXRhLT5kbWEuY2hhbnNbaV0p
KSB7Cj4+ICsJCQlpZiAoUFRSX0VSUihkZGF0YS0+ZG1hLmNoYW5zW2ldKSA9PSAtRVBST0JFX0RF
RkVSKT4gKwkJCQlyZXQgPSAtRVBST0JFX0RFRkVSOwo+IAo+IEhpIFBldGVyLAo+IAo+IFRoYW5r
cyBmb3IgdGhlIHBhdGNoLAo+IAo+IEFzIHRoZSBETUEgaXMgb3B0aW9uYWwsIEknZCByYXRoZXIg
cHJlZmVyIHRvIGNoZWNrIGV4cGxpY2l0bHkgdGhlcmUncyBubwo+IGRldmljZSwgYW5kIHJldHVy
biBhbnkgb3RoZXIgZXJyb3IgY2FzZSwgYmFzaWNhbGx5Ogo+IAo+IAkJCWlmIChQVFJfRVJSKGRk
YXRhLT5kbWEuY2hhbnNbaV0pICE9IC1FTk9ERVYpCj4gCQkJCXJldHVybiBQVFJfRVJSKGRkYXRh
LT5kbWEuY2hhbnNbaV0pOwoKTXkgaW50ZW50aW9uIHdhcyB0byBzcGVjaWZpY2FsbHkgcGljayBh
bmQgaGFuZGxlIEVQUk9CRV9ERUZFUiB3aGlsZSBub3QKY2hhbmdpbmcgaG93IHRoZSBkcml2ZXIg
aGFuZGxlcyBvdGhlciBlcnJvcnMsIHdoZXRoZXIgaXQgYmVjYXVzZSB0aGVyZQppcyBubyBETUEg
Y2hhbm5lbCBzcGVjaWZpZWQgb3IgdGhlcmUgaXMgYSBmYWlsdXJlIHRvIGdldCB0aGUgY2hhbm5l
bC4KCkJ1dCBpZiB5b3UgcHJlZmVyIHRvIGlnbm9yZSBvbmx5IEVOT0RFViBhbmQgcmVwb3J0IG90
aGVyIGVycm9ycyB0aGVuIEkKY2FuIHNlbmQgdjIuCkl0IGNvdWxkIGV4cG9zZSBvdGhlcndpc2Ug
aWdub3JlZCBjb25maWd1cmF0aW9uIGVycm9yIChmcm9tIERUPykgYW5kIHRoZQpjaGFuZ2UgaW4g
dGhlIGRyaXZlciB3aWxsIGJlIGJsYW1lZCBmb3IgdGhlIHJlZ3Jlc3Npb24uCgpXb3VsZCBpdCBt
YWtlIHNlbnNlIHRvIGFkZCB0aGUgY2hhbmdlIHlvdSBzdWdnZXN0ZWQgYXMgYW4gaXRlcmF0aW9u
IG9uCnRvcCBvZiB0aGlzIHBhdGNoPwoKPiAKPj4gKwo+PiArCQkJZGRhdGEtPmRtYS5jaGFuc1tp
XSA9IE5VTEw7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4gcmV0Owo+IAo+IFdpdGgg
dGhhdCwgcmV0dXJuIDAgaGVyZS4KPiAKPj4gIH0KPj4gIAo+PiAgc3RhdGljIHZvaWQgc3RtMzJf
dGltZXJzX2RtYV9yZW1vdmUoc3RydWN0IGRldmljZSAqZGV2LAo+PiBAQCAtMjMwLDcgKzIzOSwx
MSBAQCBzdGF0aWMgaW50IHN0bTMyX3RpbWVyc19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+PiAgCj4+ICAJc3RtMzJfdGltZXJzX2dldF9hcnJfc2l6ZShkZGF0YSk7Cj4+ICAK
Pj4gLQlzdG0zMl90aW1lcnNfZG1hX3Byb2JlKGRldiwgZGRhdGEpOwo+PiArCXJldCA9IHN0bTMy
X3RpbWVyc19kbWFfcHJvYmUoZGV2LCBkZGF0YSk7Cj4+ICsJaWYgKHJldCkgewo+PiArCQlzdG0z
Ml90aW1lcnNfZG1hX3JlbW92ZShkZXYsIGRkYXRhKTsKPiAKPiBXaXRoIHRoYXQsIHN0bTMyX3Rp
bWVyc19kbWFfcmVtb3ZlKCkgbGlrZWx5IG5lZWQgdG8gYmUgdXBkYXRlZDoKPiAKPiAtCQlpZiAo
ZGRhdGEtPmRtYS5jaGFuc1tpXSkKPiArCQlpZiAoIUlTX0VSUl9PUl9OVUxMKGRkYXRhLT5kbWEu
Y2hhbnNbaV0pKQo+IAkJCWRtYV9yZWxlYXNlX2NoYW5uZWwoZGRhdGEtPmRtYS5jaGFuc1tpXSk7
Cj4gCj4gQmVzdCByZWdhcmRzLAo+IEZhYnJpY2UKPiAKPj4gKwkJcmV0dXJuIHJldDsKPj4gKwl9
Cj4+ICAKPj4gIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBkZGF0YSk7Cj4+ICAKPj4KCktp
bmQgcmVnYXJkcywKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtr
YWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUy
MS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
