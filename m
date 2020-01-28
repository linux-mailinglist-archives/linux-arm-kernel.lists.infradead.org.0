Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2EE14BACC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 15:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tVmPTqU+A7yabnyqaToDJjKPW2g76WOw8fXJ8jes0Js=; b=VhSVqbNrs61jzGPSyo4Bsxs5H
	SV4LjkFsLkl9txnpAye53p8WjXfg3gyUD6wZ1+IKyf7qZEisb0idKAQUXyDchdtcRzIjFCkZ2r4Ya
	QrkhR/F14VOVsgOu26toD6cgju8fHbhBfbqmOUoGt8BY2Kgb2dpmldRwXXci8Pguzy0KfjGIon3aR
	sJwaDfGVJaRbuTrSMuTN3ivnYW3l9h/z1/LSP6XjMNCpmNr/ID62YnF5ySY5akphNTvbWWK5VRyEI
	Hu1EATedtHVKXNxiGJB1Tz6EL98MimO75nKA2FtgKfxfXmIgZX7wQeHqMoQ1E7pXVbooT4xDQn7Gp
	GOB2RADPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwS3n-0007ny-Rd; Tue, 28 Jan 2020 14:41:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwS3e-0007n9-BN
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 14:41:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4D8E31B;
 Tue, 28 Jan 2020 06:41:32 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D6D33F68E;
 Tue, 28 Jan 2020 06:41:23 -0800 (PST)
Subject: Re: [PATCH 3/3] arm64: dts: allwinner: h6: Add IOMMU
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@gmail.com>,
 Maxime Ripard <maxime@cerno.tech>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
 <5320339.DvuYhMxLoT@jernej-laptop>
 <20200127142339.crxsuunzec5drfe2@gilmour.lan>
 <2140600.ElGaqSPkdT@jernej-laptop>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5543595c-4ef9-b67e-5dff-042fb1991194@arm.com>
Date: Tue, 28 Jan 2020 14:41:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2140600.ElGaqSPkdT@jernej-laptop>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_064138_478392_CFA75FD7 
X-CRM114-Status: GOOD (  18.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 Chen-Yu Tsai <wens@csie.org>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDEvMjAyMCA3OjA0IHBtLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gSGkhCj4gCj4g
RG5lIHBvbmVkZWxqZWssIDI3LiBqYW51YXIgMjAyMCBvYiAxNToyMzozOSBDRVQgamUgTWF4aW1l
IFJpcGFyZCBuYXBpc2FsKGEpOgo+PiBIaSBKZXJuZWosCj4+Cj4+IE9uIEZyaSwgSmFuIDI0LCAy
MDIwIGF0IDA5OjU0OjIzUE0gKzAxMDAsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPj4+IERuZSBz
cmVkYSwgMjIuIGphbnVhciAyMDIwIG9iIDEzOjQ0OjA5IENFVCBqZSBNYXhpbWUgUmlwYXJkIG5h
cGlzYWwoYSk6Cj4+Pj4gTm93IHRoYXQgd2UgaGF2ZSBhIGRyaXZlciBmb3IgdGhlIElPTU1VLCBs
ZXQncyBzdGFydCB1c2luZyBpdC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBh
cmQgPG1heGltZUBjZXJuby50ZWNoPgo+Pj4+IC0tLQo+Pj4+Cj4+Pj4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDExICsrKysrKysrKysrCj4+Pj4gICAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4+Pj4gYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBpbmRleAo+Pj4+IDI5ODI0MDgx
YjQzYi4uODYwOGJjZjFjNTJjIDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9h
bGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKPj4+PiBAQCAtNTMsNiArNTMsNyBAQAo+Pj4+Cj4+Pj4g
ICAJZGU6IGRpc3BsYXktZW5naW5lIHsKPj4+PiAgIAkKPj4+PiAgIAkJY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNTBpLWg2LWRpc3BsYXktZW5naW5lIjsKPj4+PiAgIAkJYWxsd2lubmVyLHBp
cGVsaW5lcyA9IDwmbWl4ZXIwPjsKPj4+Pgo+Pj4+ICsJCWlvbW11cyA9IDwmaW9tbXUgMD47Cj4+
Pj4KPj4+PiAgIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPj4+PiAgIAkKPj4+PiAgIAl9Owo+Pj4K
Pj4+IElzbid0IGlvbW11IHByb3BlcnR5IG9mIHRoZSBtaXhlciBub2RlPyBBZnRlciBhbGwsIG1p
eGVyIGlzIHRoZSBvbmUgd2hpY2gKPj4+IHJlYWRzIG9uZSBvciBtb3JlIGZyYW1lYnVmZmVycy4g
T25jZSBzZWNvbmQgbWl4ZXIgaXMgZGVmaW5lZCwgd291bGQgeW91Cj4+PiBwdXQKPj4+IGFub3Ro
ZXIgaW9tbXUgcGhhbmRsZSBoZXJlPwo+Pgo+PiBZb3UncmUgcmlnaHQuIEkgYWRkZWQgaXQgZHVy
aW5nIHRoZSBlYXJseSBkZXYsIGFuZCBmb3Jnb3QgdG8gcmVtb3ZlCj4+IGl0LiBUaGFua3MhCj4g
Cj4gUmVtb3ZlIGl0IG9yIG1vdmUgaXQ/IEkgZ3Vlc3MgZW5hYmxpbmcgaW9tbXUgc3VwcG9ydCBp
biBlYWNoIGRyaXZlciBuZWVkcyBhCj4gYml0IG1vcmUgd29yayB0aGFuIGp1c3QgcmVmZXJlbmNp
bmcgaW9tbXUgbm9kZSwgcmlnaHQ/IEF0IGxlYXN0IGluIHN1Y2ggY2FzZQo+IGJ1ZmZlcnMgZG9u
J3QgbmVlZCB0byBiZSBhbGxvY2F0ZWQgYnkgQ01BLCB3aGljaCBzdW40aS1kcm0gZHJpdmVyIGN1
cnJlbnRseQo+IHVzZS4KCk5vdGUgdGhhdCB0aGUgRFJNICJDTUEiIGhlbHBlcnMgYXJlIHNvbWV3
aGF0IG1pc25hbWVkLCBzaW5jZSB0aGV5J3JlIGluIApmYWN0IGJhc2VkIG9uIHRoZSBjb21tb24g
RE1BIEFQSSwgYW5kIHRodXMgdHJhbnNwYXJlbnQgSU9NTVUtYmFja2VkIERNQSAKb3BzIHdpbGwg
Imp1c3Qgd29yayIgd2l0aG91dCB0aGUgZHJpdmVycyBoYXZpbmcgdG8gY2FyZS4gU2luY2UgYWxs
IHRoZSAKZGlzcGxheSBjb21wb25lbnRzIGJlaGluZCB0aGUgSU9NTVUgd2lsbCBiZSBpbiB0aGUg
c2FtZSBJT01NVSBncm91cCwgCnRoZXkncmUgZ3VhcmFudGVlZCB0byBhbHdheXMgb3BlcmF0ZSBp
biB0aGUgc2FtZSBhZGRyZXNzIHNwYWNlIGFzIGVhY2ggCm90aGVyLCBzbyB0aGVyZSBzaG91bGQg
YmUgbm8gYWRkaXRpb25hbCBwcm9ibGVtcyB3aXRoIGJ1ZmZlciBzaGFyaW5nIAooYXNzdW1pbmcg
dGhlIGNvZGUgZG9lc24ndCBoYXZlIGJ1Z3MgdGhhdCBpdCdzIGN1cnJlbnRseSBqdXN0IGdldHRp
bmcgCmF3YXkgd2l0aCkuCgo+IEkganVzdCB0YWtlIGFub3RoZXIgbG9vayBhdCBCU1Aga2VybmVs
IGFuZCBpdCBzZWVtcyB0aGF0IG9ubHkgb25lIGNoYW5uZWwgaXMKPiB1c2VkIGZvciB3aG9sZSBk
aXNwbGF5IHN0YWNrLiBUaGF0IHdvdWxkIG1lYW4gdGhhdCBib3RoIG1peGVycyB3b3VsZCBoYXZl
IHNhbWUKPiBpb21tdSBwaGFuZGxlLCByaWdodD8gQ29uZnVzaW5nbHkgZW5vdWdoLCBERTIgaW9t
bXUgY2hhbm5lbCBzZWVtcyB0byBiZSBmb3IKPiBkZWludGVybGFjZSBjb3JlLgoKVGhhdCdzIGFs
c28gZmluZSAtIGFzIGRpc2N1c3NlZCBvbiB0aGUgZHJpdmVyIHRocmVhZCB0aGVyZSdzIG5vIHBv
aW50IAp0cnlpbmcgdG8gZXhwb3NlIGEgZGlzdGluY3Rpb24gYmV0d2VlbiBkZXZpY2VzIGF0IHRo
ZSBBUEkgbGV2ZWwsIHNvIHRoZSAKSURzIGFyZSByZWFsbHkgb25seSByZWxldmFudCB0byB0aGUg
ZHJpdmVyIGludGVybmFscyB0b3VjaGluZyB0aGUgCnZhcmlvdXMgZW5hYmxlIHJlZ2lzdGVycyAo
YW5kIGV2ZW4gdGhlbiBvbmx5IGlmIHlvdSB3YW50ZWQgdG8gcmVmaW5lIHRoZSAKY3VycmVudCAi
anVzdCBlbmFibGUgZXZlcnl0aGluZyIgYXBwcm9hY2gpLgoKUm9iaW4uCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
