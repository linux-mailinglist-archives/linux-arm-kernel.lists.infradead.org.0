Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5A875090
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=04HQEJPdm7AeWf2Fk1dzxbc+uI0XHze2pcPk80HYL8w=; b=DcCgMql81Sl/OY
	vJfoKMX7AkzS9y37K0Ds/IkgIy0aaAtWXlUl6GlPr535Kcgn3U+Xy20F83gycBgiYxKXSBnkO6sfp
	05poGpwNmXcR5JRGeT6i7eBmN0mVKaAS3YW2KiArcAECJWd8tYG2Mw+gYz0Q6uGCVX5PGMl2rUzy3
	cpwfHVC+5kJluQ+AEu1qBTLkpudopF6z9Ar5706OxXLXvGzEYtXnU91+KJwOtRasDrNPTblm/Aknm
	o8Ls4kQEDZBH3HPTpetF21pJFSsuBGFLt/b5DAkKl0DB3jM+xwqFanDS6h0L2wRtVF2KTsVtGTfFy
	DU1WyOyLHOsLYf0Xn37w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeP0-0001Aj-5I; Thu, 25 Jul 2019 14:07:26 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeOn-0001AA-KG
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:07:15 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6PE75p4076998;
 Thu, 25 Jul 2019 09:07:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564063625;
 bh=xTCyFL18QoJz/yKwkuGtxisb1zU+8DWUFzU/mhQoyE4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kh6qCVT5hxaYFJON1weN5or59OFUwE7NCa/KduHaUzTI7EhbWwoGI47fVBvUThwNq
 NZOnFgv2XLk7veJIns2vw6M6YnAG1UrT2GNUKhA6r7VORepkdSL2Qrz/NcNkKNWK4s
 U170M0FOALjxdWNzP16uCBa3EtkiH8/xMc91wqog=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6PE75g8076586
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 25 Jul 2019 09:07:05 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 25
 Jul 2019 09:07:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 25 Jul 2019 09:07:05 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6PE727U029938;
 Thu, 25 Jul 2019 09:07:03 -0500
Subject: Re: [PATCH v2 2/2] dmaengine: ti: omap-dma: Improved memcpy polling
 support
To: Vinod Koul <vkoul@kernel.org>
References: <20190716082459.1222-1-peter.ujfalusi@ti.com>
 <20190716082459.1222-3-peter.ujfalusi@ti.com>
 <20190725133748.GX12733@vkoul-mobl.Dlink>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <59794775-95e6-04c3-2660-9344c89df9a1@ti.com>
Date: Thu, 25 Jul 2019 17:07:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725133748.GX12733@vkoul-mobl.Dlink>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_070713_752369_FC9B9C50 
X-CRM114-Status: GOOD (  19.60  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyNS8wNy8yMDE5IDE2LjM3LCBWaW5vZCBLb3VsIHdyb3RlOgo+IE9uIDE2LTA3LTE5LCAx
MToyNCwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+IFdoZW4gYSBETUEgY2xpZW50IGRyaXZlciBk
b2VzIG5vdCBzZXQgdGhlIERNQV9QUkVQX0lOVEVSUlVQVCBiZWNhdXNlIGl0Cj4+IGRvZXMgbm90
IHdhbnQgdG8gdXNlIGludGVycnVwdHMgZm9yIERNQSBjb21wbGV0aW9uIG9yIGJlY2F1c2UgaXQg
Y2FuIG5vdAo+PiByZWx5IG9uIERNQSBpbnRlcnJ1cHRzIGR1ZSB0byBleGVjdXRpbmcgdGhlIG1l
bWNweSB3aGVuIGludGVycnVwdHMgYXJlCj4+IGRpc2FibGVkIGl0IHdpbGwgcG9sbCB0aGUgc3Rh
dHVzIG9mIHRoZSB0cmFuc2Zlci4KPj4KPj4gSWYgdGhlIGludGVycnVwdHMgYXJlIGVuYWJsZWQg
dGhlbiB0aGUgY29va2llIHdpbGwgYmUgc2V0IGNvbXBsZXRlZCBpbiB0aGUKPj4gaW50ZXJydXB0
IGhhbmRsZXIgc28gb25seSBjaGVjayBpbiBIVyBjb21wbGV0aW9uIHdoZW4gdGhlIHBvbGxpbmcg
aXMgcmVhbGx5Cj4+IG5lZWRlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kg
PHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2RtYS90aS9vbWFwLWRt
YS5jIHwgNDQgKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4+ICAxIGZp
bGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2RtYS90aS9vbWFwLWRtYS5jIGIvZHJpdmVycy9kbWEvdGkvb21hcC1k
bWEuYwo+PiBpbmRleCAwMjljMGJkNTUwZDUuLjk2NmQ4ZjAzMjNiNSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9kbWEvdGkvb21hcC1kbWEuYwo+PiArKysgYi9kcml2ZXJzL2RtYS90aS9vbWFwLWRt
YS5jCj4+IEBAIC05MSw2ICs5MSw3IEBAIHN0cnVjdCBvbWFwX2Rlc2Mgewo+PiAgCWJvb2wgdXNp
bmdfbGw7Cj4+ICAJZW51bSBkbWFfdHJhbnNmZXJfZGlyZWN0aW9uIGRpcjsKPj4gIAlkbWFfYWRk
cl90IGRldl9hZGRyOwo+PiArCWJvb2wgcG9sbGVkOwo+PiAgCj4+ICAJaW50MzJfdCBmaTsJCS8q
IGZvciBPTUFQX0RNQV9TWU5DX1BBQ0tFVCAvIGRvdWJsZSBpbmRleGluZyAqLwo+PiAgCWludDE2
X3QgZWk7CQkvKiBmb3IgZG91YmxlIGluZGV4aW5nICovCj4+IEBAIC04MTUsMjYgKzgxNiwyMCBA
QCBzdGF0aWMgZW51bSBkbWFfc3RhdHVzIG9tYXBfZG1hX3R4X3N0YXR1cyhzdHJ1Y3QgZG1hX2No
YW4gKmNoYW4sCj4+ICAJc3RydWN0IHZpcnRfZG1hX2Rlc2MgKnZkOwo+PiAgCWVudW0gZG1hX3N0
YXR1cyByZXQ7Cj4+ICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gKwlzdHJ1Y3Qgb21hcF9kZXNj
ICpkID0gTlVMTDsKPj4gIAo+PiAgCXJldCA9IGRtYV9jb29raWVfc3RhdHVzKGNoYW4sIGNvb2tp
ZSwgdHhzdGF0ZSk7Cj4+IC0KPj4gLQlpZiAoIWMtPnBhdXNlZCAmJiBjLT5ydW5uaW5nKSB7Cj4+
IC0JCXVpbnQzMl90IGNjciA9IG9tYXBfZG1hX2NoYW5fcmVhZChjLCBDQ1IpOwo+PiAtCQkvKgo+
PiAtCQkgKiBUaGUgY2hhbm5lbCBpcyBubyBsb25nZXIgYWN0aXZlLCBzZXQgdGhlIHJldHVybiB2
YWx1ZQo+PiAtCQkgKiBhY2NvcmRpbmdseQo+PiAtCQkgKi8KPj4gLQkJaWYgKCEoY2NyICYgQ0NS
X0VOQUJMRSkpCj4+IC0JCQlyZXQgPSBETUFfQ09NUExFVEU7Cj4+IC0JfQo+PiAtCj4+IC0JaWYg
KHJldCA9PSBETUFfQ09NUExFVEUgfHwgIXR4c3RhdGUpCj4+ICsJaWYgKHJldCA9PSBETUFfQ09N
UExFVEUpCj4gCj4gd2h5IGRvIHlvdSB3YW50IHRvIGNvbnRpbnVlIGZvciB0eHN0YXRlIGJlaW5n
IG51bGw/CgpUaGUgY2FsbGVyIGNvdWxkIG9wdCB0byBub3QgcHJvdmlkZSB0eHN0YXRlIGFuZCBJ
IHN0aWxsIG5lZWQgdG8gY2hlY2sgaWYKdGhlIG5vbiBjb21wbGV0ZWQgdHJhbnNmZXIgaXMgYWN0
dWFsbHkgZG9uZSBieSB0aGUgSFcgb3Igbm90LgoKPiBBbHNvIGl0IHdvdWxkIGxlYWQgdG8gTlVM
TCBwdHIgZGVyZWYgZm9yIHR4c3RhdGUKClRoZXJlIGlzIGEgIXR4c3RhdGUgY2hlY2sgdG8gYXZv
aWQgdGhhdC4KCj4gCj4+ICAJCXJldHVybiByZXQ7Cj4+ICAKPj4gIAlzcGluX2xvY2tfaXJxc2F2
ZSgmYy0+dmMubG9jaywgZmxhZ3MpOwo+PiArCWlmIChjLT5kZXNjICYmIGMtPmRlc2MtPnZkLnR4
LmNvb2tpZSA9PSBjb29raWUpCj4+ICsJCWQgPSBjLT5kZXNjOwo+PiArCj4+ICsJaWYgKCF0eHN0
YXRlKQo+PiArCQlnb3RvIG91dDsKPj4gIAo+PiAtCWlmIChjLT5kZXNjICYmIGMtPmRlc2MtPnZk
LnR4LmNvb2tpZSA9PSBjb29raWUpIHsKPj4gLQkJc3RydWN0IG9tYXBfZGVzYyAqZCA9IGMtPmRl
c2M7Cj4+ICsJaWYgKGQpIHsKPj4gIAkJZG1hX2FkZHJfdCBwb3M7Cj4+ICAKPj4gIAkJaWYgKGQt
PmRpciA9PSBETUFfTUVNX1RPX0RFVikKPj4gQEAgLTg1MSw4ICs4NDYsMjIgQEAgc3RhdGljIGVu
dW0gZG1hX3N0YXR1cyBvbWFwX2RtYV90eF9zdGF0dXMoc3RydWN0IGRtYV9jaGFuICpjaGFuLAo+
PiAgCQl0eHN0YXRlLT5yZXNpZHVlID0gMDsKPj4gIAl9Cj4+ICAKPj4gLQlpZiAocmV0ID09IERN
QV9JTl9QUk9HUkVTUyAmJiBjLT5wYXVzZWQpCj4+ICtvdXQ6Cj4+ICsJaWYgKHJldCA9PSBETUFf
SU5fUFJPR1JFU1MgJiYgYy0+cGF1c2VkKSB7Cj4+ICAJCXJldCA9IERNQV9QQVVTRUQ7Cj4+ICsJ
fSBlbHNlIGlmIChkICYmIGQtPnBvbGxlZCAmJiBjLT5ydW5uaW5nKSB7Cj4+ICsJCXVpbnQzMl90
IGNjciA9IG9tYXBfZG1hX2NoYW5fcmVhZChjLCBDQ1IpOwo+PiArCQkvKgo+PiArCQkgKiBUaGUg
Y2hhbm5lbCBpcyBubyBsb25nZXIgYWN0aXZlLCBzZXQgdGhlIHJldHVybiB2YWx1ZQo+PiArCQkg
KiBhY2NvcmRpbmdseSBhbmQgbWFyayBpdCBhcyBjb21wbGV0ZWQKPj4gKwkJICovCj4+ICsJCWlm
ICghKGNjciAmIENDUl9FTkFCTEUpKSB7Cj4+ICsJCQlzdHJ1Y3Qgb21hcF9kZXNjICpkID0gYy0+
ZGVzYzsKPj4gKwkJCXJldCA9IERNQV9DT01QTEVURTsKPj4gKwkJCW9tYXBfZG1hX3N0YXJ0X2Rl
c2MoYyk7Cj4+ICsJCQl2Y2hhbl9jb29raWVfY29tcGxldGUoJmQtPnZkKTsKPj4gKwkJfQo+PiAr
CX0KPj4gIAo+PiAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmMtPnZjLmxvY2ssIGZsYWdzKTsK
Pj4gIAo+PiBAQCAtMTE4MCw3ICsxMTg5LDEwIEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2FzeW5jX3R4
X2Rlc2NyaXB0b3IgKm9tYXBfZG1hX3ByZXBfZG1hX21lbWNweSgKPj4gIAlkLT5jY3IgPSBjLT5j
Y3I7Cj4+ICAJZC0+Y2NyIHw9IENDUl9EU1RfQU1PREVfUE9TVElOQyB8IENDUl9TUkNfQU1PREVf
UE9TVElOQzsKPj4gIAo+PiAtCWQtPmNpY3IgPSBDSUNSX0RST1BfSUUgfCBDSUNSX0ZSQU1FX0lF
Owo+PiArCWlmICh0eF9mbGFncyAmIERNQV9QUkVQX0lOVEVSUlVQVCkKPj4gKwkJZC0+Y2ljciB8
PSBDSUNSX0ZSQU1FX0lFOwo+PiArCWVsc2UKPj4gKwkJZC0+cG9sbGVkID0gdHJ1ZTsKPj4gIAo+
PiAgCWQtPmNzZHAgPSBkYXRhX3R5cGU7Cj4+ICAKPj4gLS0gCj4+IFBldGVyCj4+Cj4+IFRleGFz
IEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtp
Lgo+PiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxl
OiBIZWxzaW5raQo+IAoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBv
cmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYx
NTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
