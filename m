Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 678A8766EB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:07:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlgGtlaEvFutSRSz1j155V1aVinw7uLgYoBPkHLsFJc=; b=AMhqHIQEnVHYBh
	PwBFCVVFoSirP29fVFRMLUCiuvcbnyrSN53RewZ6+aCqscD8U9bdBHCtW+qZu6bwvkPFr7HVF80Xp
	KWU6dLahxWuq5kSXC2OAGvupx9TcavArkaEFE7EgkPC+J9mvZyPzC3oRLNj+UJh4Mee3Iv+kBEQpt
	uxEtWu+hr+xcZaQBWessiQC/pmj7uFcMrNlBKXFJjbpKr8HZzhZDzqfdhaTARjXrRf+t6vhkJr+pD
	qntb1jI1tk0M3DY4Ygt9817gZXgXnNAkNJorg/Ad3HiSr/zrpLlUrlTojiXGHp5kAzE236vaMZO+w
	I3MIFqOJiILqwOrCXtlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqzw2-00055O-5P; Fri, 26 Jul 2019 13:06:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqzvq-00054e-26
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:06:47 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1245218D4;
 Fri, 26 Jul 2019 13:06:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564146405;
 bh=wy90VSu21JsNlVD4p9aROU7aEivMN9wBYYTtojIdGuo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T0cPsAPNe8K0N153hhhClYfBNU/9g1TYS9J14wsei7fNcElNIaZqDT3mTzxNdvb/h
 64NRjFkUXZBRz4k5ATbS46cxZdTCjIuBUDamPdioHsSi8B22Wsw3NMr5H6/kuj9FsM
 l5gjkIaNuY5HiXfkLfLTVBkhrhDeElef1P9wY0U0=
Date: Fri, 26 Jul 2019 14:06:41 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm_pmu: Mark expected switch fall-through
Message-ID: <20190726130641.dp3qrvyhsote5iu3@willie-the-truck>
References: <20190726112737.19309-1-anders.roxell@linaro.org>
 <20190726122956.GC26088@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726122956.GC26088@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_060646_119304_2EA47AC7 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, Anders Roxell <anders.roxell@linaro.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKdWwgMjYsIDIwMTkgYXQgMDE6Mjk6NTZQTSArMDEwMCwgTWFyayBSdXRsYW5kIHdy
b3RlOgo+IE9uIEZyaSwgSnVsIDI2LCAyMDE5IGF0IDAxOjI3OjM3UE0gKzAyMDAsIEFuZGVycyBS
b3hlbGwgd3JvdGU6Cj4gPiBXaGVuIGZhbGwtdGhyb3VnaCB3YXJuaW5ncyB3YXMgZW5hYmxlZCBi
eSBkZWZhdWx0IHRoZSBmb2xsb3dpbmcgd2FybmluZwo+ID4gd2FzIHN0YXJ0aW5nIHRvIHNob3cg
dXA6Cj4gPiAKPiA+IC4uL2RyaXZlcnMvcGVyZi9hcm1fcG11LmM6IEluIGZ1bmN0aW9uIOKAmGNw
dV9wbV9wbXVfbm90aWZ54oCZOgo+ID4gLi4vZHJpdmVycy9wZXJmL2FybV9wbXUuYzo3MjY6Mzog
d2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5IGZhbGwKPiA+ICB0aHJvdWdoIFstV2ltcGxpY2l0
LWZhbGx0aHJvdWdoPV0KPiA+ICAgIGNwdV9wbV9wbXVfc2V0dXAoYXJtcG11LCBjbWQpOwo+ID4g
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiA+IC4uL2RyaXZlcnMvcGVyZi9hcm1f
cG11LmM6NzI3OjI6IG5vdGU6IGhlcmUKPiA+ICAgY2FzZSBDUFVfUE1fRU5URVJfRkFJTEVEOgo+
ID4gICBefn5+Cj4gPiAKPiA+IFJld29yayBzbyB0aGF0IHRoZSBjb21waWxlciBkb2Vzbid0IHdh
cm4gYWJvdXQgZmFsbC10aHJvdWdoLgo+ID4gCj4gPiBGaXhlczogZDkzNTEyZWYwZjBlICgiTWFr
ZWZpbGU6IEdsb2JhbGx5IGVuYWJsZSBmYWxsLXRocm91Z2ggd2FybmluZyIpCj4gPiBTaWduZWQt
b2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMucm94ZWxsQGxpbmFyby5vcmc+Cj4gPiAtLS0K
PiA+IAo+ID4gSSdtIG5vdCBjb252aW5jZWQgdGhhdCB0aGlzIGlzIHRoZSBjb3JyZWN0IHBhdGNo
IHRvIGZpeCB0aGlzIGlzc3VlLgo+ID4gSG93ZXZlciwgSSBjYW4ndCBzZWUgd2h5IHdlIGRvICdh
cm1wbXUtPnN0YXJ0KGFybXBtdSk7JyBvbmx5IGluICdjYXNlCj4gPiBDUFVfUE1fRU5URVJfRkFJ
TEVEJyBhbmQgd2h5IHdlIG5vdCBjYWxsIGZ1bmN0aW9uIGNwdV9wbV9wbXVfc2V0dXAoKQo+ID4g
dGhlcmUgYWxzbywgc2luY2UgaW4gY3B1X3BtX3BtdV9zZXR1cCgpIGhhcyBhIGNhc2UgcHJlcGFy
ZWQgZm9yCj4gPiBDUFVfUE1fRU5URVJfRkFJTEVELgo+IAo+IEkgYWdyZWUsIHRoaW5rIHRoYXQg
c2hvdWxkIGJlOgo+IAo+IAljYXNlIENQVV9QTV9FWElUOgo+IAljYXNlIENQVV9QTV9FTlRFUl9G
QUlMRUQ6Cj4gCQljcHVfcG1fcG11X3NldHVwKGFybXBtdSwgY21kKTsKPiAJCWFybXBtdS0+c3Rh
cnQoYXJtcG11KTsKPiAJCWJyZWFrOwo+IAo+IC4uLiBzbyB0aGF0IHdlIHJlLXN0YXJ0IHRoZSBl
dmVudHMgYmVmb3JlIHdlIHN0YXJ0IHRoZSBQTVUuCj4gCj4gVGhhdCB3b3VsZCBiZSBhIGZpeCBm
b3IgY29tbWl0Ogo+IAo+ICAgZGE0ZTRmMThhZmUwZjM3MiAoImRyaXZlcnMvcGVyZjogYXJtX3Bt
dTogaW1wbGVtZW50IENQVV9QTSBub3RpZmllciIpCgpEb2VzIHNlZW0gYWJvdXQgcmlnaHQsIGJ1
dCBJJ2QgbGlrZSBMb3JlbnpvJ3MgYWNrIG9uIHRoaXMuCgpXaWxsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
