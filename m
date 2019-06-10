Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005513B621
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIhd//LUBjiVO3fNjbCuI0i0umCfqoEd9EfVMUc/6uU=; b=K9S37ERF/iWpMe
	WgKjMEPPSEwQ63xZfDXW0HxxEKmOoJfsAUZBI8CpM1yAdTj2mTyXWdAHR/vJ9wVVSzYMsBPUu6OaT
	JW+1FdEv4uy7o9Jc4PyS1XgrtjaIgS9xzpMfhM8qJrRU9ViSBZWxlsgUwqPReE4Anf93vtrdmZgzM
	QmsWZm0uomAywxC+jqVZMFzDMcHevCa7NXljhq1YWJ8iAb7FQ4Xd5QVM4HQ2ebclS5Z/XiQy9hE2x
	l3aD3cAOscZaiCRP4CvVx7urqroJY+rZXzetISu/QjfmGhFpaYRiebWqd+eL/wnIUFnBkKatawAw1
	qH70f99Ai57XVt4pxyLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKTr-0000Tw-AX; Mon, 10 Jun 2019 13:36:59 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKTg-0000Sa-Go; Mon, 10 Jun 2019 13:36:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 38F21ADC1;
 Mon, 10 Jun 2019 13:36:43 +0000 (UTC)
Subject: Re: [PATCH 1/7] clk: actions: Fix factor clk struct member access
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, sboyd@kernel.org
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-2-manivannan.sadhasivam@linaro.org>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Openpgp: preference=signencrypt
Organization: SUSE Linux GmbH
Message-ID: <29ef33a9-f1f1-fe10-9288-8103714d40fa@suse.de>
Date: Mon, 10 Jun 2019 15:36:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190608195317.6336-2-manivannan.sadhasivam@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_063648_709464_1D0DDE52 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-actions@lists.infradead.org, linus.walleij@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 thomas.liau@actions-semi.com, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFuaSwKCkFtIDA4LjA2LjE5IHVtIDIxOjUzIHNjaHJpZWIgTWFuaXZhbm5hbiBTYWRoYXNp
dmFtOgo+IFNpbmNlIHRoZSBoZWxwZXIgIm93bF9mYWN0b3JfaGVscGVyX3JvdW5kX3JhdGUiIGlz
IHNoYXJlZCBiZXR3ZWVuIGZhY3Rvcgo+IGFuZCBjb21wb3NpdGUgY2xvY2tzLCB1c2luZyB0aGUg
ZmFjdG9yIGNsayBzcGVjaWZpYyBoZWxwZXIgZnVuY3Rpb24KPiBsaWtlICJod190b19vd2xfZmFj
dG9yIiB0byBhY2Nlc3MgaXRzIG1lbWJlcnMgd2lsbCBjcmVhdGUgaXNzdWVzIHdoZW4KPiBjYWxs
ZWQgZnJvbSBjb21wb3NpdGUgY2xrIHNwZWNpZmljIGNvZGUuIEhlbmNlLCBwYXNzIHRoZSAiZmFj
dG9yX2h3Igo+IHN0cnVjdCBwb2ludGVyIGRpcmVjdGx5IGluc3RlYWQgb2YgZmV0Y2hpbmcgaXQg
dXNpbmcgZmFjdG9yIGNsayBzcGVjaWZpYwo+IGhlbHBlcnMuCj4gCj4gVGhpcyBpc3N1ZSBoYXMg
YmVlbiBvYnNlcnZlZCB3aGVuIGEgY29tcG9zaXRlIGNsb2NrIGxpa2UgInNkMF9jbGsiIHRyaWVk
Cj4gdG8gY2FsbCAib3dsX2ZhY3Rvcl9oZWxwZXJfcm91bmRfcmF0ZSIgcmVzdWx0aW5nIGluIHBv
aW50ZXIgZGVyZWZlcmVuY2luZwo+IGVycm9yLgo+IAo+IEZpeGVzOiA0YmI3OGZjOTc0NGEgKCJj
bGs6IGFjdGlvbnM6IEFkZCBmYWN0b3IgY2xvY2sgc3VwcG9ydCIpCj4gU2lnbmVkLW9mZi1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4K
PiAtLS0KPiAgZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtZmFjdG9yLmMgfCA3ICsrKy0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9jbGsvYWN0aW9ucy9vd2wtZmFjdG9yLmMgYi9kcml2ZXJzL2Nsay9h
Y3Rpb25zL293bC1mYWN0b3IuYwo+IGluZGV4IDMxN2Q0YTllMTEyZS4uZjQxOWRmZGQzMzRmIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL2FjdGlvbnMvb3dsLWZhY3Rvci5jCj4gKysrIGIvZHJp
dmVycy9jbGsvYWN0aW9ucy9vd2wtZmFjdG9yLmMKPiBAQCAtNjQsMTEgKzY0LDEwIEBAIHN0YXRp
YyB1bnNpZ25lZCBpbnQgX2dldF90YWJsZV92YWwoY29uc3Qgc3RydWN0IGNsa19mYWN0b3JfdGFi
bGUgKnRhYmxlLAo+ICAJcmV0dXJuIHZhbDsKPiAgfQo+ICAKPiAtc3RhdGljIGludCBjbGtfdmFs
X2Jlc3Qoc3RydWN0IGNsa19odyAqaHcsIHVuc2lnbmVkIGxvbmcgcmF0ZSwKPiArc3RhdGljIGlu
dCBjbGtfdmFsX2Jlc3QoY29uc3Qgc3RydWN0IG93bF9mYWN0b3JfaHcgKmZhY3Rvcl9odywKPiAr
CQkJc3RydWN0IGNsa19odyAqaHcsIHVuc2lnbmVkIGxvbmcgcmF0ZSwKPiAgCQkJdW5zaWduZWQg
bG9uZyAqYmVzdF9wYXJlbnRfcmF0ZSkKPiAgewo+IC0Jc3RydWN0IG93bF9mYWN0b3IgKmZhY3Rv
ciA9IGh3X3RvX293bF9mYWN0b3IoaHcpOwo+IC0Jc3RydWN0IG93bF9mYWN0b3JfaHcgKmZhY3Rv
cl9odyA9ICZmYWN0b3ItPmZhY3Rvcl9odzsKPiAgCWNvbnN0IHN0cnVjdCBjbGtfZmFjdG9yX3Rh
YmxlICpjbGt0ID0gZmFjdG9yX2h3LT50YWJsZTsKPiAgCXVuc2lnbmVkIGxvbmcgcGFyZW50X3Jh
dGUsIHRyeV9wYXJlbnRfcmF0ZSwgYmVzdCA9IDAsIGN1cl9yYXRlOwo+ICAJdW5zaWduZWQgbG9u
ZyBwYXJlbnRfcmF0ZV9zYXZlZCA9ICpiZXN0X3BhcmVudF9yYXRlOwo+IEBAIC0xMjYsNyArMTI1
LDcgQEAgbG9uZyBvd2xfZmFjdG9yX2hlbHBlcl9yb3VuZF9yYXRlKHN0cnVjdCBvd2xfY2xrX2Nv
bW1vbiAqY29tbW9uLAo+ICAJY29uc3Qgc3RydWN0IGNsa19mYWN0b3JfdGFibGUgKmNsa3QgPSBm
YWN0b3JfaHctPnRhYmxlOwo+ICAJdW5zaWduZWQgaW50IHZhbCwgbXVsID0gMCwgZGl2ID0gMTsK
PiAgCj4gLQl2YWwgPSBjbGtfdmFsX2Jlc3QoJmNvbW1vbi0+aHcsIHJhdGUsIHBhcmVudF9yYXRl
KTsKPiArCXZhbCA9IGNsa192YWxfYmVzdChmYWN0b3JfaHcsICZjb21tb24tPmh3LCByYXRlLCBw
YXJlbnRfcmF0ZSk7Cj4gIAlfZ2V0X3RhYmxlX2Rpdl9tdWwoY2xrdCwgdmFsLCAmbXVsLCAmZGl2
KTsKPiAgCj4gIAlyZXR1cm4gKnBhcmVudF9yYXRlICogbXVsIC8gZGl2OwoKV2hpbGUgYXQgaXQs
IEkgdGhpbmsgaXQgd291bGQgYmUgYSBnb29kIGlkZWEgdG8gcmVuYW1lIGl0IHRvCm93bF9jbGtf
dmFsX2Jlc3QuIFByZXR0eSBjb25mdXNpbmcgdGhhdCB5b3UncmUgdG91Y2hpbmcgb25seSBvd2wg
ZmlsZXMKZm9yIGEgY2xrXyByZWZhY3RvcmluZywgd2hpY2ggc291bmRzIGxpa2UgY29tbW9uIGNs
ayBjb2RlLgoKUmVnYXJkcywKQW5kcmVhcwoKLS0gClNVU0UgTGludXggR21iSCwgTWF4ZmVsZHN0
ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55CkdGOiBGZWxpeCBJbWVuZMO2cmZmZXIsIE1h
cnkgSGlnZ2lucywgU3JpIFJhc2lhaApIUkIgMjEyODQgKEFHIE7DvHJuYmVyZykKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
