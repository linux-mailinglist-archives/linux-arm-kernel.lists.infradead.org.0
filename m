Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7852EAA9C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 07:21:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVohWIs3/o69SyCPJvixYD+autR944v0pCEgLVcT6Aw=; b=Lqccn696nNPI8h
	8JOa3ZOn3hsDy3Z0FzTK0Cj/UCCXrwxNGTKybl8yi8+e2bIJMGABZPxp17M1FEfX02D33feopF++c
	AhnhbJypZj4CQ6/O/CJGW6QsmffaXZQ4XyTphTb4DKTOwkzahpSoteTnreCZNH9aCPwmqiYM3FO68
	bdfHiyFtNSkaLPOTbQ85tz2tWZksAj451jDQLI6NzM3tRkVVdDxJtIyZHU2DML/bdf36hZFaIevIo
	DaUjO9WZHGYPxvyhKFcsrfoVOF9nZifBWSAbbNR44YrA+Ed0fROIX+0RKLkTQaOWYSqzo+j5xAM5t
	YU8msDZmLz/ExmBaROqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ3pM-0002cB-R7; Thu, 31 Oct 2019 06:21:00 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ3pD-0002aF-I5
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 06:20:54 +0000
Received: from [10.192.1.204] (unknown [178.18.58.186])
 by mail.holtmann.org (Postfix) with ESMTPSA id 0FA90CECF4;
 Thu, 31 Oct 2019 07:29:47 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH v2 2/3] Bluetooth: hci_h5: Add DT support for rtl8723bs
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191030224333.70241-3-bonstra@bonstra.fr.eu.org>
Date: Thu, 31 Oct 2019 07:20:44 +0100
Message-Id: <3E21484D-1E78-47AA-8118-42A3AFD45624@holtmann.org>
References: <20191030224333.70241-1-bonstra@bonstra.fr.eu.org>
 <20191030224333.70241-3-bonstra@bonstra.fr.eu.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
X-Mailer: Apple Mail (2.3594.4.19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_232051_746535_B93D9E79 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSHVnbywKCj4gVGhlIGhjaV9oNSBhbHJlYWR5IHN1cHBvcnRzIFJlYWx0ZWsgY29udHJvbGxl
cnMgZGlzY292ZXJlZCB2aWEgQUNQSS4gVGhpcwo+IGNvbW1pdCBhZGRzIHN1cHBvcnQgZm9yIGRp
c2NvdmVyaW5nIHZpYSBkZXZpY2UgdHJlZSBmb3IgQUNQSS1sZXNzCj4gcGxhdGZvcm1zLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IEh1Z28gR3Jvc3RhYnVzc2lhdCA8Ym9uc3RyYUBib25zdHJhLmZyLmV1
Lm9yZz4KPiAtLS0KPiBkcml2ZXJzL2JsdWV0b290aC9LY29uZmlnICB8ICAyICstCj4gZHJpdmVy
cy9ibHVldG9vdGgvaGNpX2g1LmMgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KystLS0tLQo+IDIgZmlsZXMgY2hhbmdlZCwgMzYgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvS2NvbmZpZyBiL2RyaXZlcnMv
Ymx1ZXRvb3RoL0tjb25maWcKPiBpbmRleCBhYWU2NjVhM2EyNTQuLjQ4YzlhMDA0YjAzMyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2JsdWV0b290aC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9ibHVl
dG9vdGgvS2NvbmZpZwo+IEBAIC0yMTEsNyArMjExLDcgQEAgY29uZmlnIEJUX0hDSVVBUlRfUlRM
Cj4gCWRlcGVuZHMgb24gQlRfSENJVUFSVAo+IAlkZXBlbmRzIG9uIEJUX0hDSVVBUlRfU0VSREVW
Cj4gCWRlcGVuZHMgb24gR1BJT0xJQgo+IC0JZGVwZW5kcyBvbiBBQ1BJCj4gKwlkZXBlbmRzIG9u
IChBQ1BJIHx8IE9GKQo+IAlzZWxlY3QgQlRfSENJVUFSVF8zV0lSRQo+IAlzZWxlY3QgQlRfUlRM
Cj4gCWhlbHAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvaGNpX2g1LmMgYi9kcml2
ZXJzL2JsdWV0b290aC9oY2lfaDUuYwo+IGluZGV4IGRhY2YyOTdiYWY1OS4uZDRhY2VkZGFhYWIy
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYmx1ZXRvb3RoL2hjaV9oNS5jCj4gKysrIGIvZHJpdmVy
cy9ibHVldG9vdGgvaGNpX2g1LmMKPiBAQCAtMTEsNiArMTEsNyBAQAo+ICNpbmNsdWRlIDxsaW51
eC9ncGlvL2NvbnN1bWVyLmg+Cj4gI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+ICNpbmNsdWRl
IDxsaW51eC9tb2RfZGV2aWNldGFibGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5o
Pgo+ICNpbmNsdWRlIDxsaW51eC9zZXJkZXYuaD4KPiAjaW5jbHVkZSA8bGludXgvc2tidWZmLmg+
Cj4gCj4gQEAgLTc4Miw3ICs3ODMsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhjaV91YXJ0X3By
b3RvIGg1cCA9IHsKPiAKPiBzdGF0aWMgaW50IGg1X3NlcmRldl9wcm9iZShzdHJ1Y3Qgc2VyZGV2
X2RldmljZSAqc2VyZGV2KQo+IHsKPiAtCWNvbnN0IHN0cnVjdCBhY3BpX2RldmljZV9pZCAqbWF0
Y2g7Cj4gCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZzZXJkZXYtPmRldjsKPiAJc3RydWN0IGg1ICpo
NTsKPiAKPiBAQCAtNzk3LDE2ICs3OTcsMzIgQEAgc3RhdGljIGludCBoNV9zZXJkZXZfcHJvYmUo
c3RydWN0IHNlcmRldl9kZXZpY2UgKnNlcmRldikKPiAJc2VyZGV2X2RldmljZV9zZXRfZHJ2ZGF0
YShzZXJkZXYsIGg1KTsKPiAKPiAJaWYgKGhhc19hY3BpX2NvbXBhbmlvbihkZXYpKSB7Cj4gLQkJ
bWF0Y2ggPSBhY3BpX21hdGNoX2RldmljZShkZXYtPmRyaXZlci0+YWNwaV9tYXRjaF90YWJsZSwg
ZGV2KTsKPiAtCQlpZiAoIW1hdGNoKQo+ICsJCWNvbnN0IHN0cnVjdCBhY3BpX2RldmljZV9pZCAq
YWNwaV9tYXRjaDsKPiArCj4gKwkJYWNwaV9tYXRjaCA9IGFjcGlfbWF0Y2hfZGV2aWNlKAo+ICsJ
CQkJZGV2LT5kcml2ZXItPmFjcGlfbWF0Y2hfdGFibGUsIGRldik7Cgpkb27igJl0IGJvdGhlciB3
aXRoIGEgZGlmZmVyZW50IHZhcmlhYmxlIG5hbWUgaGVyZS4gS2VlcCBpdCBtYXRjaC4KCj4gKwkJ
aWYgKCFhY3BpX21hdGNoKQo+IAkJCXJldHVybiAtRU5PREVWOwo+IAo+IC0JCWg1LT52bmQgPSAo
Y29uc3Qgc3RydWN0IGg1X3ZuZCAqKW1hdGNoLT5kcml2ZXJfZGF0YTsKPiAtCQloNS0+aWQgID0g
KGNoYXIgKiltYXRjaC0+aWQ7Cj4gKwkJaDUtPnZuZCA9IChjb25zdCBzdHJ1Y3QgaDVfdm5kICop
YWNwaV9tYXRjaC0+ZHJpdmVyX2RhdGE7Cj4gKwkJaDUtPmlkICA9IChjaGFyICopYWNwaV9tYXRj
aC0+aWQ7Cj4gCj4gCQlpZiAoaDUtPnZuZC0+YWNwaV9ncGlvX21hcCkKPiAJCQlkZXZtX2FjcGlf
ZGV2X2FkZF9kcml2ZXJfZ3Bpb3MoZGV2LAo+IAkJCQkJCSAgICAgICBoNS0+dm5kLT5hY3BpX2dw
aW9fbWFwKTsKPiArCX0gZWxzZSBpZiAoZGV2LT5vZl9ub2RlKSB7Cj4gKwkJY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCAqb2ZfbWF0Y2g7CgpTYW1lIGhlcmUuIEp1c3Qga2VlcCB0aGUgbmFtZSBh
cyBtYXRjaC4KCj4gKwkJY29uc3QgY2hhciAqY2ZnbmFtZSA9IE5VTEw7Cj4gKwo+ICsJCW9mX21h
dGNoID0gb2ZfbWF0Y2hfZGV2aWNlKGRldi0+ZHJpdmVyLT5vZl9tYXRjaF90YWJsZSwgZGV2KTsK
PiArCQlpZiAoIW9mX21hdGNoKQo+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPiArCj4gKwkJb2ZfcHJv
cGVydHlfcmVhZF9zdHJpbmcoZGV2LT5vZl9ub2RlLAo+ICsJCQkJCSJjb25maWctbmFtZSIsICZj
ZmduYW1lKTsKPiArCj4gKwkJaDUtPnZuZCA9IChjb25zdCBzdHJ1Y3QgaDVfdm5kICopb2ZfbWF0
Y2gtPmRhdGE7Cj4gKwkJaDUtPmlkID0gY2ZnbmFtZTsKPiAJfQo+IAo+IAloNS0+ZW5hYmxlX2dw
aW8gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJlbmFibGUiLCBHUElPRF9PVVRfTE9X
KTsKPiBAQCAtOTk2LDYgKzEwMTIsMTkgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhY3BpX2Rldmlj
ZV9pZCBoNV9hY3BpX21hdGNoW10gPSB7Cj4gTU9EVUxFX0RFVklDRV9UQUJMRShhY3BpLCBoNV9h
Y3BpX21hdGNoKTsKPiAjZW5kaWYKPiAKPiArI2lmZGVmIENPTkZJR19PRgo+ICtzdGF0aWMgY29u
c3Qgc3RydWN0IG9mX2RldmljZV9pZCBoNV9vZl9tYXRjaFtdID0gewo+ICsjaWZkZWYgQ09ORklH
X0JUX0hDSVVBUlRfUlRMCj4gKwl7Cj4gKwkJLmNvbXBhdGlibGUgPSAicmVhbHRlayxydGw4NzIz
YnMtYnQiLAo+ICsJCS5kYXRhID0gJnJ0bF92bmQKPiArCX0sCj4gKyNlbmRpZgo+ICsJeyB9LAo+
ICt9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCBoNV9vZl9tYXRjaCk7Cj4gKyNlbmRpZgo+
ICsKPiBzdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgaDVfc2VyZGV2X3BtX29wcyA9IHsK
PiAJU0VUX1NZU1RFTV9TTEVFUF9QTV9PUFMoaDVfc2VyZGV2X3N1c3BlbmQsIGg1X3NlcmRldl9y
ZXN1bWUpCj4gfTsKPiBAQCAtMTAwNiw2ICsxMDM1LDcgQEAgc3RhdGljIHN0cnVjdCBzZXJkZXZf
ZGV2aWNlX2RyaXZlciBoNV9zZXJkZXZfZHJpdmVyID0gewo+IAkuZHJpdmVyID0gewo+IAkJLm5h
bWUgPSAiaGNpX3VhcnRfaDUiLAo+IAkJLmFjcGlfbWF0Y2hfdGFibGUgPSBBQ1BJX1BUUihoNV9h
Y3BpX21hdGNoKSwKPiArCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIoaDVfb2ZfbWF0
Y2gpLAo+IAkJLnBtID0gJmg1X3NlcmRldl9wbV9vcHMsCj4gCX0sCj4gfTsKClJlZ2FyZHMKCk1h
cmNlbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
