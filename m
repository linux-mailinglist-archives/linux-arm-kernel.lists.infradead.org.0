Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106DD135830
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:40:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPEfBte/WmQHAGmyHSaFwLK236vbs63ew+aFtk4sEa4=; b=TrxoxlpI/uys1+
	9bdUAN6dj2wyN0xNlM2ioQY7E7ixpGj4wQaBnjoFNS/pFtEBdPHoi5oxTYYn9VawFes1YQlRpF57f
	RMdPeLcY48i4lxhK4Zx0VkKJ7FHnlgc1fs2EMWWCjUsaZv3fjXoQxFKHAkaWY2OQuvbebFWnzsN+5
	tS84YwcuxhFhsnXEesRDIHxMNfPfRBG37SoEgJSozLbIQmXP0nnp6d9r1meWV0/jnCGC52elXdPRl
	CJA3gFvbkhug3usbyB37CjPoRtB0oB9MAxbEC2ydlvFARA+VecpiBChpIjLpOcol2f/IuCbGjPhwm
	HSzBLy8DIAMrm9FQ09gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWAr-0002tm-0m; Thu, 09 Jan 2020 11:40:25 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWAh-0002sr-2f
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:40:16 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 009BeADg130591;
 Thu, 9 Jan 2020 05:40:10 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578570010;
 bh=Cu4eyh0A9jxWfcjHOeLDmeCMBzCRubt5Z+/kuTU79Ps=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OUi6OecaQFvcx95eewNrsUrydDelMSKwWkYa9Wro3ArlLEG+THkF5kHvNkgK9Kz3q
 BjX3yWzjPydHC7L4DG+dqWXW5szKEuLWh35Vhp/PzKvgRlEVFe5fuOSEZ9M6T7Rmwm
 blwlgEgJ6st6E07eiC6qv8oFvrgia0j789jB+nQE=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 009BeAlk120926;
 Thu, 9 Jan 2020 05:40:10 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 9 Jan
 2020 05:40:08 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 9 Jan 2020 05:40:08 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 009Be6Kp019653;
 Thu, 9 Jan 2020 05:40:06 -0600
Subject: Re: [PATCH v2] iio: adc: stm32-dfsdm: Use dma_request_chan() instead
 dma_request_slave_channel()
To: Fabrice Gasnier <fabrice.gasnier@st.com>, <jic23@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
References: <20200107114532.6697-1-peter.ujfalusi@ti.com>
 <eade6657-8470-0d70-b3c1-fcdddf891c6c@st.com>
 <4c0b7e3e-cd98-860a-e931-c216f1bc6e7a@ti.com>
 <698d9dec-4486-f70a-b8e0-dfd6b4bb907f@st.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <45195b31-70fa-39c9-e109-eeb33d6a2663@ti.com>
Date: Thu, 9 Jan 2020 13:40:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <698d9dec-4486-f70a-b8e0-dfd6b4bb907f@st.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_034015_216243_679D446B 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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

CgpPbiAwOS8wMS8yMDIwIDEzLjI5LCBGYWJyaWNlIEdhc25pZXIgd3JvdGU6Cj4gT24gMS85LzIw
IDExOjMyIEFNLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4KPj4KPj4gT24gMDkvMDEvMjAyMCAx
MS4xMywgRmFicmljZSBHYXNuaWVyIHdyb3RlOgo+Pj4gT24gMS83LzIwIDEyOjQ1IFBNLCBQZXRl
ciBVamZhbHVzaSB3cm90ZToKPj4+PiBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCkgaXMgYSB3
cmFwcGVyIG9uIHRvcCBvZiBkbWFfcmVxdWVzdF9jaGFuKCkKPj4+PiBlYXRpbmcgdXAgdGhlIGVy
cm9yIGNvZGUuCj4+Pj4KPj4+PiBCeSB1c2luZyBkbWFfcmVxdWVzdF9jaGFuKCkgZGlyZWN0bHkg
dGhlIGRyaXZlciBjYW4gc3VwcG9ydCBkZWZlcnJlZAo+Pj4+IHByb2JpbmcgYWdhaW5zdCBETUEu
Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBVamZhbHVzaSA8cGV0ZXIudWpmYWx1c2lA
dGkuY29tPgo+Pj4+IC0tLQo+Pj4+IEhpLAo+Pj4+Cj4+Pj4gQ2hhbmdlcyBzaW5jZSB2MToKPj4+
PiAtIEZhbGwgYmFjayB0byBJUlEgbW9kZSBmb3IgQURDIG9ubHkgaW4gY2FzZSBvZiBFTk9ERVYK
Pj4+Cj4+PiBIaSBQZXRlciwKPj4+Cj4+PiBUaGFua3MgZm9yIHRoZSBwYXRjaCwKPj4+Cj4+PiBQ
bGVhc2UgZmluZCBhIG1pbm9yIGNvbW1lbnQgaGVyZSBhZnRlci4gQXBhcnQgZnJvbSB0aGF0LCB5
b3UgY2FuIGFkZCBteToKPj4+Cj4+PiBBY2tlZC1ieTogRmFicmljZSBHYXNuaWVyIDxmYWJyaWNl
Lmdhc25pZXJAc3QuY29tPgo+Pj4KPj4+Cj4+Pj4KPj4+PiBSZWdhcmRzLAo+Pj4+IFBldGVyCj4+
Pj4KPj4+PiAgZHJpdmVycy9paW8vYWRjL3N0bTMyLWRmc2RtLWFkYy5jIHwgMjEgKysrKysrKysr
KysrKysrKystLS0tCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9zdG0zMi1k
ZnNkbS1hZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9zdG0zMi1kZnNkbS1hZGMuYwo+Pj4+IGluZGV4
IGU0OTMyNDJjMjY2ZS4uNzRhMjIxMWJkZmY0IDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvaWlv
L2FkYy9zdG0zMi1kZnNkbS1hZGMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvaWlvL2FkYy9zdG0zMi1k
ZnNkbS1hZGMuYwo+Pj4+IEBAIC0xMzgzLDkgKzEzODMsMTMgQEAgc3RhdGljIGludCBzdG0zMl9k
ZnNkbV9kbWFfcmVxdWVzdChzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KQo+Pj4+ICB7Cj4+Pj4g
IAlzdHJ1Y3Qgc3RtMzJfZGZzZG1fYWRjICphZGMgPSBpaW9fcHJpdihpbmRpb19kZXYpOwo+Pj4+
ICAKPj4+PiAtCWFkYy0+ZG1hX2NoYW4gPSBkbWFfcmVxdWVzdF9zbGF2ZV9jaGFubmVsKCZpbmRp
b19kZXYtPmRldiwgInJ4Iik7Cj4+Pj4gLQlpZiAoIWFkYy0+ZG1hX2NoYW4pCj4+Pj4gLQkJcmV0
dXJuIC1FSU5WQUw7Cj4+Pj4gKwlhZGMtPmRtYV9jaGFuID0gZG1hX3JlcXVlc3RfY2hhbigmaW5k
aW9fZGV2LT5kZXYsICJyeCIpOwo+Pj4+ICsJaWYgKElTX0VSUihhZGMtPmRtYV9jaGFuKSkgewo+
Pj4+ICsJCWludCByZXQgPSBQVFJfRVJSKGFkYy0+ZG1hX2NoYW4pOwo+Pj4+ICsKPj4+PiArCQlh
ZGMtPmRtYV9jaGFuID0gTlVMTDsKPj4+PiArCQlyZXR1cm4gcmV0Owo+Pj4KPj4+IFlvdSBtYXkg
InJldHVybiBQVFJfRVJSKGFkYy0+ZG1hX2NoYW4pOyIgZGlyZWN0bHkgaGVyZS4KPj4KPj4gSSBk
b24ndCBtYWtlIGRlY2lzaW9uIGhlcmUgb24gYmVoYWxmIG9mIHRoZSBhZGMgcGF0aCBvbiB0byBn
byBmb3J3YXJkIHcvCj4+IG9yIHcvbyBETUEgc3VwcG9ydCBhbmQgaWYgd2UgZ28gYWhlYWQgdGhl
IHN0bTMyX2Rmc2RtX2RtYV9yZWxlYXNlKCkKPj4gbmVlZHMgdGhlIGRtYV9jaGFuIHRvIGJlIE5V
TEwgaW4gY2FzZSB3ZSBkb24ndCB1c2UgRE1BLgo+Pgo+PiBJdCBpcyBtdWNoIGNsZWFuZXIgdG8g
c2V0IGRtYV9jaGFuIHRvIE5VTEwgaGVyZSB0aGFuIGRvaW5nIGl0IGluIG90aGVyCj4+IHBhdGhz
Lgo+IAo+IEhpIFBldGVyLAoKSGkgRmFicmljZSwKCj4gU29ycnkgSSB3YXNuJ3QgY2xlYXIgZW5v
dWdoLiBJIGFncmVlIHdpdGggeW91LiBJIHdhcyBzdWdnZXN0aW5nIG9ubHksCj4gdGFsa2luZyBh
Ym91dCB0aGUgJ3JldCcgdmFyaWFibGUuIEl0IG1heSBiZSByZW1vdmVkIHRvIHNwYXJlIGEgZmV3
IGxpbmVzCj4gOi0pLgo+IAlpZiAoSVNfRVJSKGFkYy0+ZG1hX2NoYW4pKSB7Cj4gCQlhZGMtPmRt
YV9jaGFuID0gTlVMTDsKPiAJCXJldHVybiBQVFJfRVJSKGFkYy0+ZG1hX2NoYW4pOwo+IAl9Cj4g
SSdtIG9rYXkgYm90aCB3YXlzLgoKUFRSX0VSUihOVUxMKTsgd2lsbCByZXR1cm4gMApJIG5lZWQg
dG8gcmV0cmlldmUgdGhlIGFjdHVhbCBlcnJvciBjb2RlIGJlZm9yZSBOVUxMaW5nIGRtYV9jaGFu
LgoKPiAKPj4KPj4+Cj4+PiBCZXN0IFJlZ2FyZHMsCj4+PiBGYWJyaWNlCj4+Pgo+Pj4+ICsJfQo+
Pj4+ICAKPj4+PiAgCWFkYy0+cnhfYnVmID0gZG1hX2FsbG9jX2NvaGVyZW50KGFkYy0+ZG1hX2No
YW4tPmRldmljZS0+ZGV2LAo+Pj4+ICAJCQkJCSBERlNETV9ETUFfQlVGRkVSX1NJWkUsCj4+Pj4g
QEAgLTE1MDksNyArMTUxMywxNiBAQCBzdGF0aWMgaW50IHN0bTMyX2Rmc2RtX2FkY19pbml0KHN0
cnVjdCBpaW9fZGV2ICppbmRpb19kZXYpCj4+Pj4gIAlpbml0X2NvbXBsZXRpb24oJmFkYy0+Y29t
cGxldGlvbik7Cj4+Pj4gIAo+Pj4+ICAJLyogT3B0aW9uYWxseSByZXF1ZXN0IERNQSAqLwo+Pj4+
IC0JaWYgKHN0bTMyX2Rmc2RtX2RtYV9yZXF1ZXN0KGluZGlvX2RldikpIHsKPj4+PiArCXJldCA9
IHN0bTMyX2Rmc2RtX2RtYV9yZXF1ZXN0KGluZGlvX2Rldik7Cj4+Pj4gKwlpZiAocmV0KSB7Cj4+
Pj4gKwkJaWYgKHJldCAhPSAtRU5PREVWKSB7Cj4+Pj4gKwkJCWlmIChyZXQgIT0gLUVQUk9CRV9E
RUZFUikKPj4+PiArCQkJCWRldl9lcnIoJmluZGlvX2Rldi0+ZGV2LAo+Pj4+ICsJCQkJCSJETUEg
Y2hhbm5lbCByZXF1ZXN0IGZhaWxlZCB3aXRoICVkXG4iLAo+Pj4+ICsJCQkJCXJldCk7Cj4+Pj4g
KwkJCXJldHVybiByZXQ7Cj4+Pj4gKwkJfQo+Pj4+ICsKPj4+PiAgCQlkZXZfZGJnKCZpbmRpb19k
ZXYtPmRldiwgIk5vIERNQSBzdXBwb3J0XG4iKTsKPj4+PiAgCQlyZXR1cm4gMDsKPj4+PiAgCX0K
Pj4+Pgo+Pgo+PiAtIFDDqXRlcgo+Pgo+PiBUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQ
b3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KPj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6
IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPj4KCi0gUMOpdGVyCgpU
ZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxz
aW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2ls
ZTogSGVsc2lua2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
