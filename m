Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A416167326
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 09:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqXcWKLVjjxqYas8xE0t/LNpYjKA+RvG/pOVzaO/Od8=; b=ltb9SuXqRoqCur
	v84pIxKxEJlD3CD8PanK6zYRDBUFkFwXbre5z2lihDMOL4cOBdwGNdhQuFDYlfDSnVzs161rH4nAh
	uGy+83nDO+jiCCZgLvfVWgnxxNHPvA/IMtoV5WJ/92E7yHfcr/a/C/NkjaKQGsQX6YfQw+uTEe0mn
	uY25X/zujoghRYOeBan80j1PYRgo8+HqCg70RXvJ64YgHKq43ZVdpoM/tos38aqK3G98rvFTqxyLl
	TVGgSTY079w+Bwlr9BHbmRrtru7QGYfGWHbnYYyLUds+8kBHXd07c2FoB28EqsMUyzo35fm2/nncC
	YFC5HsWHnxll5QXnVzMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j53Nb-0005MW-5g; Fri, 21 Feb 2020 08:09:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j53NO-0005Kv-Hm
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 08:09:37 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mkl@pengutronix.de>)
 id 1j53NH-0003OX-CY; Fri, 21 Feb 2020 09:09:27 +0100
Received: from [IPv6:2a03:f580:87bc:d400:6ccf:3365:1a9c:55ad] (unknown
 [IPv6:2a03:f580:87bc:d400:6ccf:3365:1a9c:55ad])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "mkl@blackshift.org",
 Issuer "StartCom Class 1 Client CA" (not verified))
 (Authenticated sender: mkl@blackshift.org)
 by smtp.blackshift.org (Postfix) with ESMTPSA id C89614BCCA9;
 Fri, 21 Feb 2020 08:09:24 +0000 (UTC)
Subject: Re: [PATCH v2 2/3] can: m_can: m_can_platform: Add support for
 enabling transceiver
To: Faiz Abbas <faiz_abbas@ti.com>, Dan Murphy <dmurphy@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, linux-can@vger.kernel.org
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-3-faiz_abbas@ti.com>
 <250f905a-33c3-dd17-15c9-e282299dd742@ti.com>
 <8885c00b-7b73-0448-7e9d-ecb19fe84adf@ti.com>
From: Marc Kleine-Budde <mkl@pengutronix.de>
Openpgp: preference=signencrypt
Autocrypt: addr=mkl@pengutronix.de; prefer-encrypt=mutual; keydata=
 mQINBFFVq30BEACtnSvtXHoeHJxG6nRULcvlkW6RuNwHKmrqoksispp43X8+nwqIFYgb8UaX
 zu8T6kZP2wEIpM9RjEL3jdBjZNCsjSS6x1qzpc2+2ivjdiJsqeaagIgvy2JWy7vUa4/PyGfx
 QyUeXOxdj59DvLwAx8I6hOgeHx2X/ntKAMUxwawYfPZpP3gwTNKc27dJWSomOLgp+gbmOmgc
 6U5KwhAxPTEb3CsT5RicsC+uQQFumdl5I6XS+pbeXZndXwnj5t84M+HEj7RN6bUfV2WZO/AB
 Xt5+qFkC/AVUcj/dcHvZwQJlGeZxoi4veCoOT2MYqfR0ax1MmN+LVRvKm29oSyD4Ts/97cbs
 XsZDRxnEG3z/7Winiv0ZanclA7v7CQwrzsbpCv+oj+zokGuKasofzKdpywkjAfSE1zTyF+8K
 nxBAmzwEqeQ3iKqBc3AcCseqSPX53mPqmwvNVS2GqBpnOfY7Mxr1AEmxdEcRYbhG6Xdn+ACq
 Dq0Db3A++3PhMSaOu125uIAIwMXRJIzCXYSqXo8NIeo9tobk0C/9w3fUfMTrBDtSviLHqlp8
 eQEP8+TDSmRP/CwmFHv36jd+XGmBHzW5I7qw0OORRwNFYBeEuiOIgxAfjjbLGHh9SRwEqXAL
 kw+WVTwh0MN1k7I9/CDVlGvc3yIKS0sA+wudYiselXzgLuP5cQARAQABtCZNYXJjIEtsZWlu
 ZS1CdWRkZSA8bWtsQHBlbmd1dHJvbml4LmRlPokCVAQTAQoAPgIbAwIeAQIXgAULCQgHAwUV
 CgkICwUWAgMBABYhBMFAC6CzmJ5vvH1bXCte4hHFiupUBQJcUsSbBQkM366zAAoJECte4hHF
 iupUgkAP/2RdxKPZ3GMqag33jKwKAbn/fRqAFWqUH9TCsRH3h6+/uEPnZdzhkL4a9p/6OeJn
 Z6NXqgsyRAOTZsSFcwlfxLNHVxBWm8pMwrBecdt4lzrjSt/3ws2GqxPsmza1Gs61lEdYvLST
 Ix2vPbB4FAfE0kizKAjRZzlwOyuHOr2ilujDsKTpFtd8lV1nBNNn6HBIBR5ShvJnwyUdzuby
 tOsSt7qJEvF1x3y49bHCy3uy+MmYuoEyG6zo9udUzhVsKe3hHYC2kfB16ZOBjFC3lH2U5An+
 yQYIIPZrSWXUeKjeMaKGvbg6W9Oi4XEtrwpzUGhbewxCZZCIrzAH2hz0dUhacxB201Y/faY6
 BdTS75SPs+zjTYo8yE9Y9eG7x/lB60nQjJiZVNvZ88QDfVuLl/heuIq+fyNajBbqbtBT5CWf
 mOP4Dh4xjm3Vwlz8imWW/drEVJZJrPYqv0HdPbY8jVMpqoe5jDloyVn3prfLdXSbKPexlJaW
 5tnPd4lj8rqOFShRnLFCibpeHWIumqrIqIkiRA9kFW3XMgtU6JkIrQzhJb6Tc6mZg2wuYW0d
 Wo2qvdziMgPkMFiWJpsxM9xPk9BBVwR+uojNq5LzdCsXQ2seG0dhaOTaaIDWVS8U/V8Nqjrl
 6bGG2quo5YzJuXKjtKjZ4R6k762pHJ3tnzI/jnlc1sXz
Message-ID: <8a001afe-dc97-fa1e-4e80-20da89eb2105@pengutronix.de>
Date: Fri, 21 Feb 2020 09:09:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8885c00b-7b73-0448-7e9d-ecb19fe84adf@ti.com>
Content-Language: en-GB
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_000934_590764_5938B258 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, sriram.dash@samsung.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org, wg@grandegger.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi8yMS8yMCA4OjU0IEFNLCBGYWl6IEFiYmFzIHdyb3RlOgo+IEhpIERhbiwKPiAKPiBPbiAx
Ny8wMi8yMCA4OjQwIHBtLCBEYW4gTXVycGh5IHdyb3RlOgo+PiBGYWl6Cj4+Cj4+IE9uIDIvMTcv
MjAgODoyOCBBTSwgRmFpeiBBYmJhcyB3cm90ZToKPj4+IENBTiB0cmFuc2NlaXZlcnMgb24gc29t
ZSBib2FyZHMgaGF2ZSBhIHN0YW5kYnkgbGluZSB3aGljaCBjYW4gYmUKPj4+IHRvZ2dsZWQgdG8g
ZW5hYmxlL2Rpc2FibGUgdGhlIHRyYW5zY2VpdmVyLiBNb2RlbCB0aGlzIGFzIGFuIG9wdGlvbmFs
Cj4+PiBmaXhlZCB4Y2VpdmVyIHJlZ3VsYXRvci4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBGYWl6
IEFiYmFzIDxmYWl6X2FiYmFzQHRpLmNvbT4KPj4+IEFja2VkLWJ5OiBTcmlyYW0gRGFzaCA8c3Jp
cmFtLmRhc2hAc2Ftc3VuZy5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZlcnMvbmV0L2Nhbi9tX2Nh
bi9tX2Nhbl9wbGF0Zm9ybS5jIHwgNiArKysrKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvY2FuL21fY2FuL21f
Y2FuX3BsYXRmb3JtLmMKPj4+IGIvZHJpdmVycy9uZXQvY2FuL21fY2FuL21fY2FuX3BsYXRmb3Jt
LmMKPj4+IGluZGV4IDM4ZWE1ZTYwMGZiOC4uNzE5NDY4ZmFiNTA3IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9uZXQvY2FuL21fY2FuL21fY2FuX3BsYXRmb3JtLmMKPj4+ICsrKyBiL2RyaXZlcnMv
bmV0L2Nhbi9tX2Nhbi9tX2Nhbl9wbGF0Zm9ybS5jCj4+PiBAQCAtNiw2ICs2LDcgQEAKPj4+IMKg
IC8vIENvcHlyaWdodCAoQykgMjAxOC0xOSBUZXhhcyBJbnN0cnVtZW50cyBJbmNvcnBvcmF0ZWQg
LQo+Pj4gaHR0cDovL3d3dy50aS5jb20vCj4+PiDCoCDCoCAjaW5jbHVkZSA8bGludXgvcGxhdGZv
cm1fZGV2aWNlLmg+Cj4+PiArI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+
Pj4gwqAgwqAgI2luY2x1ZGUgIm1fY2FuLmgiCj4+PiDCoCBAQCAtNTcsNiArNTgsNyBAQCBzdGF0
aWMgaW50IG1fY2FuX3BsYXRfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZQo+Pj4gKnBkZXYp
Cj4+PiDCoCB7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBtX2Nhbl9jbGFzc2RldiAqbWNhbl9jbGFz
czsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IG1fY2FuX3BsYXRfcHJpdiAqcHJpdjsKPj4+ICvCoMKg
wqAgc3RydWN0IHJlZ3VsYXRvciAqcmVnX3hjZWl2ZXI7Cj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBy
ZXNvdXJjZSAqcmVzOwo+Pj4gwqDCoMKgwqDCoCB2b2lkIF9faW9tZW0gKmFkZHI7Cj4+PiDCoMKg
wqDCoMKgIHZvaWQgX19pb21lbSAqbXJhbV9hZGRyOwo+Pj4gQEAgLTExMSw2ICsxMTMsMTAgQEAg
c3RhdGljIGludCBtX2Nhbl9wbGF0X3Byb2JlKHN0cnVjdAo+Pj4gcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+Pj4gwqAgwqDCoMKgwqDCoCBtX2Nhbl9pbml0X3JhbShtY2FuX2NsYXNzKTsKPj4+IMKg
ICvCoMKgwqAgcmVnX3hjZWl2ZXIgPSBkZXZtX3JlZ3VsYXRvcl9nZXRfb3B0aW9uYWwoJnBkZXYt
PmRldiwgInhjZWl2ZXIiKTsKPj4+ICvCoMKgwqAgaWYgKFBUUl9FUlIocmVnX3hjZWl2ZXIpID09
IC1FUFJPQkVfREVGRVIpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FUFJPQkVfREVGRVI7
Cj4+PiArCj4+Cj4+IFdoZXJlIGlzIHRoaXMgcmVndWxhdG9yIGVuYWJsZWQ/Cj4gCj4gSSBoYXZl
IHNldCByZWd1bGF0b3ItYm9vdC1vbiBmbGFnIGluIHRoZSBkdCBzbyB0aGlzIGRpZG4ndCByZXF1
aXJlIGFuCj4gZW5hYmxlLgoKUGxlYXNlIGRvbid0IGRvIHRoaXMsIHBsZWFzZSBoYW5kbGUgaXQg
cHJvcGVybHkuCgo+PiBTaG91bGRuJ3QgdGhlIHJlZ3VsYXRvciBiZSBtYW5hZ2VkIGJ5IHJ1bnRp
bWUgUE0gYXMgd2VsbD8KCklmIHNvLCB0aGVuIG1ha2UgdGhlIHJ1bnRpbWUgcG0ga2NvbmZpZyBv
cHRpb24gbWFuZGF0b3J5LgoKTWFyYwoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAg
ICAgIHwgTWFyYyBLbGVpbmUtQnVkZGUgICAgICAgICAgIHwKRW1iZWRkZWQgTGludXggICAgICAg
ICAgICAgICAgICAgfCBodHRwczovL3d3dy5wZW5ndXRyb25peC5kZSAgfApWZXJ0cmV0dW5nIFdl
c3QvRG9ydG11bmQgICAgICAgICB8IFBob25lOiArNDktMjMxLTI4MjYtOTI0ICAgICB8CkFtdHNn
ZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1
IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
