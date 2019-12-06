Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69961154DF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yiBWlh94jcK76wHu/2C9n+SnPXwKUJwgaDniGZrfrqY=; b=Ic38Vrce3SMlQK
	8OHPAWcOecHSANJOE3rpy7hAM8ioqzhzqGYmx68huZBmmWhHQ1BEl+Fd1mid93z4T/CS4VJJoHuS6
	9G0SYXqLq6aN9IrFOxNgtySatOaL0+WXlKjza8iQuruLa9+b89TMOD/gXggklom0LkpzMp/222s9K
	RHZd8BCBT4uGFXdhNnOOAkWqdh3wMp7Q8KDhy4CXVPnLDE3B6uPESuMBXlRfpC+sWjs+o9mTuf0+8
	dim3yFHW+KXR7W+481D06Ae+4KBvbciPf7x/I695T8t/x/1c5ycZkyX0WWB6fHwG+DkVE/OpMrUKG
	FYVSQtM6MJ/P5uQWuOtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGBL-00064o-GH; Fri, 06 Dec 2019 16:10:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGB8-0005aB-5y
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:10:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18838206DF;
 Fri,  6 Dec 2019 16:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575648601;
 bh=gPawY8BbgS/jZOwj8Dgo/x99vX/EQRyStiqP/C2RzJQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jwe9+TABfAohjpn5LrFDyrI54jSTVXoLWXAeOV9kVYmWCgf0BHiUWNmhjf5yBql/e
 zZBKvSAMMf07hB4waaSgTuZAOJnibMHs+aLHYokd+ksO6lBXy6WNgBJO1QoWEP++qX
 ECYBwd/zo7IrY0S2WcEAEWURvDo8wgliaAOurveM=
Date: Fri, 6 Dec 2019 16:09:56 +0000
From: Will Deacon <will@kernel.org>
To: Jerome Forissier <jerome@forissier.org>
Subject: Re: Kernel v5.2+ on HiKey960?
Message-ID: <20191206160955.GA27982@willie-the-truck>
References: <f58c2c0e-ec82-6675-84e6-ad63fd93c8ff@forissier.org>
 <20191204101851.GC13081@arrakis.emea.arm.com>
 <1c5e497f-4be0-e1f3-4d6d-fed9470d0406@forissier.org>
 <20191204142824.GB26730@arrakis.emea.arm.com>
 <226a53f8-9404-1aa0-ed44-22e2157e4521@forissier.org>
 <20191204175726.GA28736@willie-the-truck>
 <d7481911-9f5f-7f52-0731-0b123c384b08@forissier.org>
 <20191205085709.GB8606@willie-the-truck>
 <e3ac6a90-c6e7-460e-087a-880e3735051e@forissier.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e3ac6a90-c6e7-460e-087a-880e3735051e@forissier.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_081002_278473_3B3229C5 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 maz@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMDUsIDIwMTkgYXQgMDM6NTQ6MTBQTSArMDEwMCwgSmVyb21lIEZvcmlzc2ll
ciB3cm90ZToKPiBPbiAxMi81LzE5IDk6NTcgQU0sIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4gT24g
VGh1LCBEZWMgMDUsIDIwMTkgYXQgMDg6MjY6NDhBTSArMDEwMCwgSmVyb21lIEZvcmlzc2llciB3
cm90ZToKPiA+PiBPbiAxMi80LzE5IDY6NTcgUE0sIFdpbGwgRGVhY29uIHdyb3RlOgo+ID4+PiBP
biBXZWQsIERlYyAwNCwgMjAxOSBhdCAwMzo1ODo1N1BNICswMTAwLCBKZXJvbWUgRm9yaXNzaWVy
IHdyb3RlOgo+ID4+Pj4gRmFpbHMgaW5kZWVkIChwYW5pYyk6IGh0dHBzOi8vcGFzdGViaW4uY29t
L0YwanBrdGlpCj4gPj4+Cj4gPj4+IEludGVyZXN0aW5nLiBJIGZvbGxvd2VkIHlvdXIgaW5zdHJ1
Y3Rpb25zIGFuZCBteSBib2FyZCBib290cyBmaW5lIGV2ZW4KPiA+Pj4gYWZ0ZXIgYXBwbHlpbmcg
dGhhdCBwYXRjaCwgYnV0IHRoZW4gSSBzZWUgdGhlIGZvbGxvd2luZyBvbiBzaHV0ZG93bjoKPiA+
Pj4KPiA+Pj4gWyAgIDgzLjAyMjk1NV0gV0FSTklORzogQ1BVOiAwIFBJRDogMTk5NSBhdCBrZXJu
ZWwvdGltZS90aWNrLWJyb2FkY2FzdC5jOjY0NyB0aWNrX2hhbmRsZV9vbmVzaG90X2Jyb2FkY2Fz
dCsweDFjOC8weDFlOAo+ID4+PiBbICAgODMuMDMzMzkyXSBNb2R1bGVzIGxpbmtlZCBpbjoKPiA+
Pj4gWyAgIDgzLjAzNjQ0N10gQ1BVOiAwIFBJRDogMTk5NSBDb21tOiBpbml0IFRhaW50ZWQ6IEcg
UyAgICAgICAgICAgICAgICA1LjEuMC0yNTMxMDUtZzJiNDFmNjU4NGQ1OSAjMwo+ID4+Cj4gPj4g
VGhhdCBpcyBub3QgdjUuMSBwbHVzIG9uZSBjb21taXQsIGlzIGl0Pwo+ID4gCj4gPiBObywgYW5k
IEkgd2Fzbid0IGNsYWltaW5nIHRoYXQgaXQgd2FzLiAKPiAKPiA7LSkgTXkgYXBvbG9naWVzLCBJ
IHdhcyBjb25mdXNlZC4KPiAKPiA+IEkgZm9sbG93ZWQgdGhlIGluc3RydWN0aW9ucyB5b3UgcG9p
bnRlZCB1cyB0byBbMV0gYW5kIGNoZXJyeS1waWNrZWQgNzVhMTlhMDIwMmRiPiBvbiB0b3AuIElm
IHRoZXJlJ3Mgc29tZXRoaW5nIGRpZmZlcmVudCB0aGF0IEkgbmVlZCB0byBkbyBpbiBvcmRlciB0
bwo+IHJlcHJvZHVjZT4gdGhlIHByb2JsZW0sIHRoZW4gcGxlYXNlIGhvbGxlci4KPiA+IE15IGV4
cGVyaWVuY2Ugd2l0aCBIaWtleTk2MCBoYXMgYmVlbiAxMDAlICJibG9vZHkgYXdmdWwiCj4gPiBz
byBJIGRvbid0IGhhdmUgYSBnb29kIHNldHVwIGZvciBzaW1wbHkgYnVpbGRpbmcgYW5kIHJ1bm5p
bmcgYSBrZXJuZWwgb24gaXQuCj4gPiAKPiA+IEkgYWxzbyBoYWQgdG8gaGFjayBzb21lIG9mIHRo
ZSBFREsyIGNvZGUgaW4gdGhlcmUgdG8gZ2V0IGl0IHRvIGNvbXBpbGUsIHNvCj4gPiBpdCBjb250
aW51ZXMgdG8gbGl2ZSB1cCB0byBleHBlY3RhdGlvbnMuCj4gCj4gV2hhdCBlcnJvciBkaWQgeW91
IGVuY291bnRlcj8gSXMgaXQgdGhpcyBvbmUgYnkgY2hhbmNlPwo+IAo+ICBlcnJvcjog4oCYX19i
dWlsdGluX3N0cm5jcHnigJkgb3V0cHV0IHRydW5jYXRlZCBbLi4uXQo+IAo+IEkganVzdCBub3Rp
Y2VkIEdDQyA5Lnggc2hvd3MgdGhpcywgd2hpbGUgR0NDIDgueCBkb2Vzbid0LiBTbyBpdCBkZXBl
bmRzCj4gb24gd2hhdCBkaXN0cmlidXRpb24geW91IGFyZSB1c2luZy4gSSB3aWxsIG5lZWQgdG8g
ZG8gc29tZXRoaW5nIHRvCj4gYWRkcmVzcyB0aGlzIHByb2JsZW0uCgpJIGp1c3QgYm9kZ2VkIGl0
IHdpdGggYSBzdHJjcHkoKSwgYnV0IHRoYXQncyBwcm9iYWJseSBub3QgdGhlIHJpZ2h0IGZpeC4K
ClRoYXQgYXNpZGUsIEknbSBwZXJwbGV4ZWQgdGhhdCBJIGNhbid0IHJlcHJvZHVjZSB0aGUgZXhh
Y3QgcHJvYmxlbSB5b3UncmUKc2VlaW5nLiBBcmUgeW91IGRvaW5nIGFueXRoaW5nIG90aGVyIHRo
YW4gdGhvcyBpbnN0cnVjdGlvbnMgeW91IHByb3ZpZGVkPwooZS5nLiBkaWZmZXJlbnQgLmNvbmZp
ZywgY29tbWFuZCBsaW5lLCB1c2Vyc3BhY2UpCgpXaWxsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
