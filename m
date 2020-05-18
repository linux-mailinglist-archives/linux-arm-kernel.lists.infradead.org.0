Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E5A1D7575
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 12:45:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iZguk2rN5dFR0wppQN0i1qhL8AvMR+3LPb2/64swQd0=; b=c7nzgpzzty8P+0
	z+ERQb/shDf5SgrYD64GzX762E2yfpBlwlG+x5puGKdZ4ad+5sqFHZciKRezmOQla8b5zqVvOdKWg
	teJr1LK9G89m70xPeF+GWQMXhhAdwfFBZfojlkGe7wV3Bdkj2mv2Itmg2zuumOQPup1qJ+s9LFQo3
	wIwq5GONb7lHDibv7r3UpalwiW2H++bD8Xa13q4WShkAQuCjrDwaOu58kHX/xOhC9oiqCvDF0SY2z
	hA8SiNaPKYgdMbQ509xixBh5m7U1+2bDzd2CJXXpSnvkC+dt4RXq/BhzE5bGQUBu+TdcxyT4FfjfJ
	U2v7zYDTia2cAyfch07A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jadHL-0001Jt-GA; Mon, 18 May 2020 10:45:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jadHC-0001J1-Bw; Mon, 18 May 2020 10:45:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52543101E;
 Mon, 18 May 2020 03:45:37 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBF4B3F52E;
 Mon, 18 May 2020 03:45:33 -0700 (PDT)
Date: Mon, 18 May 2020 11:45:24 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Lecopzer Chen <lecopzer@gmail.com>, alexandru.elisei@arm.com
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
Message-ID: <20200518104524.GA1224@C02TD0UTHF1T.local>
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
 <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_034542_493031_6E8CF4A3 
X-CRM114-Status: GOOD (  24.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Sumit Garg <sumit.garg@linaro.org>,
 Jian-Lin Chen <lecopzer.chen@mediatek.com>, Will Deacon <will@kernel.org>,
 alexander.shishkin@linux.intel.com, Catalin Marinas <catalin.marinas@arm.com>,
 yj.chiang@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, acme@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, mingo@redhat.com,
 linux-mediatek@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 matthias.bgg@gmail.com, namhyung@kernel.org, jolsa@redhat.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgYWxsLAoKT24gTW9uLCBNYXkgMTgsIDIwMjAgYXQgMDI6MjY6MDBQTSArMDgwMCwgTGVjb3B6
ZXIgQ2hlbiB3cm90ZToKPiBISSBTdW1pdCwKPiAKPiBUaGFua3MgZm9yIHlvdXIgaW5mb3JtYXRp
b24uCj4gCj4gSSd2ZSBhbHJlYWR5IGltcGxlbWVudGVkIElQSSAoc2FtZSBhcyB5b3UgZGlkIFsx
XSwgbGl0dGxlIGRpZmZlcmVuY2UKPiBpbiBkZXRhaWwpLCBoYXJkbG9ja3VwIGRldGVjdG9yIGFu
ZCBwZXJmIGluIGxhc3QgeWVhcigyMDE5KSBmb3IKPiBkZWJ1Z2dhYmlsaXR5Lgo+IEFuZCBub3cg
d2UgdGVuZCB0byB1cHN0cmVhbSB0byByZWR1Y2Uga2VybmVsIG1haW50YWluaW5nIGVmZm9ydC4K
PiBJJ20gZ2xhZCBpZiBzb21lb25lIGluIEFSTSBjYW4gZG8gdGhpcyB3b3JrIDopCj4gCj4gSGkg
SnVsaWVuLAo+IAo+IERvZXMgYW55IEFybSBtYWludGFpbmVycyBjYW4gcHJvY2VlZCB0aGlzIGFj
dGlvbj8KCkFsZXhhbmRydSAoQ2MnZCkgaGFzIGJlZW4gcmViYXNpbmcgYW5kIHJld29ya2luZyBK
dWxpZW4ncyBwYXRjaGVzLCB3aGljaAppcyBteSBwcmVmZXJyZWQgYXBwcm9hY2guCgpJIHVuZGVy
c3RhbmQgdGhhdCdzIG5vdCBxdWl0ZSByZWFkeSBmb3IgcG9zdGluZyBzaW5jZSBoZSdzIGludmVz
dGlnYXRpbmcKc29tZSBvZiB0aGUgbmFzdGllciBzdWJ0bGV0aWVzIChlLmcuIG11dHVhbCBleGNs
dXNpb24gd2l0aCB0aGUgTk1JKSwgYnV0Cm1heWJlIHdlIGNhbiBwdXQgdGhlIHdvcmstaW4tcHJv
Z3Jlc3MgcGF0Y2hlcyBzb21ld2hlcmUgaW4gdGhlIG1lYW4KdGltZS4KCkFsZXhhbmRydSwgZG8g
eW91IGhhdmUgYW4gaWRlYSBvZiB3aGF0IG5lZWRzIHRvIGJlIGRvbmUsIGFuZC9vciB3aGVuIHlv
dQpleHBlY3QgeW91IGNvdWxkIHBvc3QgdGhhdD8KClRoYW5rcywKTWFyay4KCj4gVGhpcyBpcyBy
ZWFsbHkgdXNlZnVsIGluIGRlYnVnZ2luZy4KPiBUaGFuayB5b3UhIQo+IAo+IAo+IAo+IFsxXSBo
dHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC80LzI0LzMyOAo+IAo+IAo+IExlY29wemVyCj4gCj4g
U3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BsaW5hcm8ub3JnPiDmlrwgMjAyMOW5tDXmnIgxOOaXpSDp
gLHkuIAg5LiL5Y2IMTo0NuWvq+mBk++8mgo+ID4KPiA+ICsgSnVsaWVuCj4gPgo+ID4gSGkgTGVj
b3B6ZXIsCj4gPgo+ID4gT24gU2F0LCAxNiBNYXkgMjAyMCBhdCAxODoyMCwgTGVjb3B6ZXIgQ2hl
biA8bGVjb3B6ZXJAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gVGhlc2Ugc2VyaWVzIGlt
cGxlbWVudCBQZXJmIE5NSSBmdW54dGlvbmFsaXR5IGFuZCBkZXBlbmRzIG9uCj4gPiA+IFBzZXVk
byBOTUkgWzFdIHdoaWNoIGhhcyBiZWVuIHVwc3RyZWFtZWQuCj4gPiA+Cj4gPiA+IEluIGFybTY0
IHdpdGggR0lDdjMsIFBzZXVkbyBOTUkgd2FzIGltcGxlbWVudGVkIGZvciBOTUktbGlrZSBpbnRl
cnJ1dHMuCj4gPiA+IFRoYXQgY2FuIGJlIGV4dGVuZGVkIHRvIFBlcmYgTk1JIHdoaWNoIGlzIHRo
ZSBwcmVyZXF1aXNpdGUgZm9yIGhhcmQtbG9ja3VwCj4gPiA+IGRldGVjdG9yIHdoaWNoIGhhZCBh
bHJlYWR5IGEgc3RhbmRhcmQgaW50ZXJmYWNlIGluc2lkZSBMaW51eC4KPiA+ID4KPiA+ID4gVGh1
cyB0aGUgZmlyc3Qgc3RlcCB3ZSBuZWVkIHRvIGltcGxlbWVudCBwZXJmIE5NSSBpbnRlcmZhY2Ug
YW5kIG1ha2Ugc3VyZQo+ID4gPiBpdCB3b3JrcyBmaW5lLgo+ID4gPgo+ID4KPiA+IFRoaXMgaXMg
c29tZXRoaW5nIHRoYXQgaXMgYWxyZWFkeSBpbXBsZW1lbnRlZCB2aWEgSnVsaWVuJ3MgcGF0Y2gt
c2V0Cj4gPiBbMV0uIEl0cyB2NCBoYXMgYmVlbiBmbG9hdGluZyBzaW5jZSBKdWx5LCAyMDE5IGFu
ZCBJIGNvdWxkbid0IGZpbmQgYW55Cj4gPiBtYWpvciBibG9ja2luZyBjb21tZW50cyBidXQgbm90
IHN1cmUgd2h5IHRoaW5ncyBoYXZlbid0IHByb2dyZXNzZWQKPiA+IGZ1cnRoZXIuCj4gPgo+ID4g
TWF5YmUgSnVsaWVuIG9yIEFybSBtYWludGFpbmVycyBjYW4gcHJvdmlkZSB1cGRhdGVzIG9uIGV4
aXN0aW5nCj4gPiBwYXRjaC1zZXQgWzFdIGFuZCBob3cgd2Ugc2hvdWxkIHByb2NlZWQgZnVydGhl
ciB3aXRoIHRoaXMgaW50ZXJlc3RpbmcKPiA+IGZlYXR1cmUuCj4gPgo+ID4gQW5kIHJlZ2FyZGlu
ZyBoYXJkLWxvY2t1cCBkZXRlY3Rpb24sIEkgaGF2ZSBiZWVuIGFibGUgdG8gZW5hYmxlIGl0Cj4g
PiBiYXNlZCBvbiBwZXJmIE5NSSBldmVudHMgdXNpbmcgSnVsaWVuJ3MgcGVyZiBwYXRjaC1zZXQg
WzFdLiBIYXZlIGEKPiA+IGxvb2sgYXQgdGhlIHBhdGNoIGhlcmUgWzJdLgo+ID4KPiA+IFsxXSBo
dHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMDQ3NDA3Lwo+ID4gWzJdIGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1hcm0ta2VybmVsLzIwMjAtTWF5
LzczMjIyNy5odG1sCj4gPgo+ID4gLVN1bWl0Cj4gPgo+ID4gPiBQZXJmIE5NSSBoYXMgYmVlbiB0
ZXN0IGJ5IGRkIGlmPS9kZXYvdXJhbmRvbSBvZj0vZGV2L251bGwgbGlrZSB0aGUgbGluayBbMl0K
PiA+ID4gZGlkLgo+ID4gPgo+ID4gPiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMS8z
MS81MzUKPiA+ID4gWzJdIGh0dHBzOi8vd3d3LmxpbmFyby5vcmcvYmxvZy9kZWJ1Z2dpbmctYXJt
LWtlcm5lbHMtdXNpbmctbm1pZmlxCj4gPiA+Cj4gPiA+Cj4gPiA+IExlY29wemVyIENoZW4gKDMp
Ogo+ID4gPiAgIGFybV9wbXU6IEFkZCBzdXBwb3J0IGZvciBwZXJmIE5NSSBpbnRlcnJ1cHRzIHJl
Z2lzdHJhdGlvbgo+ID4gPiAgIGFybTY0OiBwZXJmOiBTdXBwb3J0IE5NSSBjb250ZXh0IGZvciBw
ZXJmIGV2ZW50IElTUgo+ID4gPiAgIGFybTY0OiBLY29uZmlnOiBBZGQgc3VwcG9ydCBmb3IgdGhl
IFBlcmYgTk1JCj4gPiA+Cj4gPiA+ICBhcmNoL2FybTY0L0tjb25maWcgICAgICAgICAgICAgfCAx
MCArKysrKysrCj4gPiA+ICBhcmNoL2FybTY0L2tlcm5lbC9wZXJmX2V2ZW50LmMgfCAzNiArKysr
KysrKysrKysrKysrKystLS0tLS0KPiA+ID4gIGRyaXZlcnMvcGVyZi9hcm1fcG11LmMgICAgICAg
ICB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KPiA+ID4gIGluY2x1ZGUv
bGludXgvcGVyZi9hcm1fcG11LmggICB8ICA2ICsrKysKPiA+ID4gIDQgZmlsZXMgY2hhbmdlZCwg
ODggaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IC0tCj4gPiA+IDIu
MjUuMQo+ID4gPgo+ID4gPgo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+ID4gPiBs
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
