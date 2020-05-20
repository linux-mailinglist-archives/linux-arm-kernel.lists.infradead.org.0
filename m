Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB841DB036
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 12:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nAxUhYRRZwdJExdmqXLm0kkBvU4jnPEhSkaSk0TKDfo=; b=sFglVwHQotDRYT
	3oEJWx8EyyhJwkybyXb0hNbCnxRlvo8igLWzvozVPuzWTrwKKro+TGZkkYXxG2sSxXWhEUsEBwtlo
	Mv8xhfQ3K8hTjiI1skexrrr0kPRwONp1uks5sQN3W4CpcT1XV047iBAL7N8P+BD6Ql3dXtd5vNuW0
	OlZBObF8bPAAy3k/WHC2JWzr8L5Sjcw9ENsrye6yv+U5K//wFCxs16lQsYMCN0irC4C5NXQyw9OX7
	dkOcV6QCWc/1oQl1R039a/WgVdOwuxm2xwINrA8oGueDeV5dhYCV1M63TGHThpJGolsPzeRGDYrIk
	QNCiykvsSqMH+KeRmn/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLze-0005J3-4W; Wed, 20 May 2020 10:30:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLzP-0005HY-B6; Wed, 20 May 2020 10:30:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9347655D;
 Wed, 20 May 2020 03:30:16 -0700 (PDT)
Received: from [10.37.8.79] (unknown [10.37.8.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B658C3F68F;
 Wed, 20 May 2020 03:30:13 -0700 (PDT)
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: Mark Rutland <mark.rutland@arm.com>, Lecopzer Chen <lecopzer@gmail.com>
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
 <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
 <20200518104524.GA1224@C02TD0UTHF1T.local>
 <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
Message-ID: <8a1022c0-da2b-c83d-81cd-44b11149496b@arm.com>
Date: Wed, 20 May 2020 11:30:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_033019_467895_E0BFF96C 
X-CRM114-Status: GOOD (  22.36  )
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
Cc: Sumit Garg <sumit.garg@linaro.org>, jolsa@redhat.com,
 Jian-Lin Chen <lecopzer.chen@mediatek.com>, alexander.shishkin@linux.intel.com,
 Catalin Marinas <catalin.marinas@arm.com>, yj.chiang@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, acme@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, mingo@redhat.com,
 linux-mediatek@lists.infradead.org, julien.thierry.kdev@gmail.com,
 matthias.bgg@gmail.com, namhyung@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiA1LzE4LzIwIDEyOjE3IFBNLCBBbGV4YW5kcnUgRWxpc2VpIHdyb3RlOgo+IEhpLAo+
Cj4gT24gNS8xOC8yMCAxMTo0NSBBTSwgTWFyayBSdXRsYW5kIHdyb3RlOgo+PiBIaSBhbGwsCj4+
Cj4+IE9uIE1vbiwgTWF5IDE4LCAyMDIwIGF0IDAyOjI2OjAwUE0gKzA4MDAsIExlY29wemVyIENo
ZW4gd3JvdGU6Cj4+PiBISSBTdW1pdCwKPj4+Cj4+PiBUaGFua3MgZm9yIHlvdXIgaW5mb3JtYXRp
b24uCj4+Pgo+Pj4gSSd2ZSBhbHJlYWR5IGltcGxlbWVudGVkIElQSSAoc2FtZSBhcyB5b3UgZGlk
IFsxXSwgbGl0dGxlIGRpZmZlcmVuY2UKPj4+IGluIGRldGFpbCksIGhhcmRsb2NrdXAgZGV0ZWN0
b3IgYW5kIHBlcmYgaW4gbGFzdCB5ZWFyKDIwMTkpIGZvcgo+Pj4gZGVidWdnYWJpbGl0eS4KPj4+
IEFuZCBub3cgd2UgdGVuZCB0byB1cHN0cmVhbSB0byByZWR1Y2Uga2VybmVsIG1haW50YWluaW5n
IGVmZm9ydC4KPj4+IEknbSBnbGFkIGlmIHNvbWVvbmUgaW4gQVJNIGNhbiBkbyB0aGlzIHdvcmsg
OikKPj4+Cj4+PiBIaSBKdWxpZW4sCj4+Pgo+Pj4gRG9lcyBhbnkgQXJtIG1haW50YWluZXJzIGNh
biBwcm9jZWVkIHRoaXMgYWN0aW9uPwo+PiBBbGV4YW5kcnUgKENjJ2QpIGhhcyBiZWVuIHJlYmFz
aW5nIGFuZCByZXdvcmtpbmcgSnVsaWVuJ3MgcGF0Y2hlcywgd2hpY2gKPj4gaXMgbXkgcHJlZmVy
cmVkIGFwcHJvYWNoLgo+Pgo+PiBJIHVuZGVyc3RhbmQgdGhhdCdzIG5vdCBxdWl0ZSByZWFkeSBm
b3IgcG9zdGluZyBzaW5jZSBoZSdzIGludmVzdGlnYXRpbmcKPj4gc29tZSBvZiB0aGUgbmFzdGll
ciBzdWJ0bGV0aWVzIChlLmcuIG11dHVhbCBleGNsdXNpb24gd2l0aCB0aGUgTk1JKSwgYnV0Cj4+
IG1heWJlIHdlIGNhbiBwdXQgdGhlIHdvcmstaW4tcHJvZ3Jlc3MgcGF0Y2hlcyBzb21ld2hlcmUg
aW4gdGhlIG1lYW4KPj4gdGltZS4KPj4KPj4gQWxleGFuZHJ1LCBkbyB5b3UgaGF2ZSBhbiBpZGVh
IG9mIHdoYXQgbmVlZHMgdG8gYmUgZG9uZSwgYW5kL29yIHdoZW4geW91Cj4+IGV4cGVjdCB5b3Ug
Y291bGQgcG9zdCB0aGF0Pwo+IEknbSBjdXJyZW50bHkgd29ya2luZyBvbiByZWJhc2luZyB0aGUg
cGF0Y2hlcyBvbiB0b3Agb2YgNS43LXJjNSwgd2hlbiBJIGhhdmUKPiBzb21ldGhpbmcgdXNhYmxl
IEknbGwgcG9zdCBhIGxpbmsgKHNob3VsZCBiZSBhIGNvdXBsZSBvZiBkYXlzKS4gQWZ0ZXIgdGhh
dCBJIHdpbGwKPiBhZGRyZXNzIHRoZSByZXZpZXcgY29tbWVudHMsIGFuZCBJIHBsYW4gdG8gZG8g
YSB0aG9yb3VnaCB0ZXN0aW5nIGJlY2F1c2UgSSdtIG5vdAo+IDEwMCUgY29uZmlkZW50IHRoYXQg
c29tZSBvZiB0aGUgYXNzdW1wdGlvbnMgYXJvdW5kIHRoZSBsb2NrcyB0aGF0IHdlcmUgcmVtb3Zl
ZCBhcmUKPiBjb3JyZWN0LiBNeSBndWVzcyBpcyB0aGlzIHdpbGwgdGFrZSBhIGZldyB3ZWVrcy4K
ClB1c2hlZCBhIFdJUCBicmFuY2ggb24gbGludXgtYXJtLm9yZyBbMV06CgpnaXQgY2xvbmUgLWIg
V0lQLXBtdS1ubWkgZ2l0Oi8vbGludXgtYXJtLm9yZy9saW51eC1hZQoKUHJhY3RpY2FsbHkgdW50
ZXN0ZWQsIEkgb25seSBkaWQgcGVyZiByZWNvcmQgb24gYSBkZWZjb25maWcga2VybmVsIHJ1bm5p
bmcgb24gdGhlCm1vZGVsLgoKWzFdIGh0dHA6Ly93d3cubGludXgtYXJtLm9yZy9naXQ/cD1saW51
eC1hZS5naXQ7YT1zaG9ydGxvZztoPXJlZnMvaGVhZHMvV0lQLXBtdS1ubWkKClRoYW5rcywKQWxl
eAo+Cj4gVGhhbmtzLAo+IEFsZXgKPj4gVGhhbmtzLAo+PiBNYXJrLgo+Pgo+Pj4gVGhpcyBpcyBy
ZWFsbHkgdXNlZnVsIGluIGRlYnVnZ2luZy4KPj4+IFRoYW5rIHlvdSEhCj4+Pgo+Pj4KPj4+Cj4+
PiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjAvNC8yNC8zMjgKPj4+Cj4+Pgo+Pj4gTGVj
b3B6ZXIKPj4+Cj4+PiBTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFyby5vcmc+IOaWvCAyMDIw
5bm0NeaciDE45pelIOmAseS4gCDkuIvljYgxOjQ25a+r6YGT77yaCj4+Pj4gKyBKdWxpZW4KPj4+
Pgo+Pj4+IEhpIExlY29wemVyLAo+Pj4+Cj4+Pj4gT24gU2F0LCAxNiBNYXkgMjAyMCBhdCAxODoy
MCwgTGVjb3B6ZXIgQ2hlbiA8bGVjb3B6ZXJAZ21haWwuY29tPiB3cm90ZToKPj4+Pj4gVGhlc2Ug
c2VyaWVzIGltcGxlbWVudCBQZXJmIE5NSSBmdW54dGlvbmFsaXR5IGFuZCBkZXBlbmRzIG9uCj4+
Pj4+IFBzZXVkbyBOTUkgWzFdIHdoaWNoIGhhcyBiZWVuIHVwc3RyZWFtZWQuCj4+Pj4+Cj4+Pj4+
IEluIGFybTY0IHdpdGggR0lDdjMsIFBzZXVkbyBOTUkgd2FzIGltcGxlbWVudGVkIGZvciBOTUkt
bGlrZSBpbnRlcnJ1dHMuCj4+Pj4+IFRoYXQgY2FuIGJlIGV4dGVuZGVkIHRvIFBlcmYgTk1JIHdo
aWNoIGlzIHRoZSBwcmVyZXF1aXNpdGUgZm9yIGhhcmQtbG9ja3VwCj4+Pj4+IGRldGVjdG9yIHdo
aWNoIGhhZCBhbHJlYWR5IGEgc3RhbmRhcmQgaW50ZXJmYWNlIGluc2lkZSBMaW51eC4KPj4+Pj4K
Pj4+Pj4gVGh1cyB0aGUgZmlyc3Qgc3RlcCB3ZSBuZWVkIHRvIGltcGxlbWVudCBwZXJmIE5NSSBp
bnRlcmZhY2UgYW5kIG1ha2Ugc3VyZQo+Pj4+PiBpdCB3b3JrcyBmaW5lLgo+Pj4+Pgo+Pj4+IFRo
aXMgaXMgc29tZXRoaW5nIHRoYXQgaXMgYWxyZWFkeSBpbXBsZW1lbnRlZCB2aWEgSnVsaWVuJ3Mg
cGF0Y2gtc2V0Cj4+Pj4gWzFdLiBJdHMgdjQgaGFzIGJlZW4gZmxvYXRpbmcgc2luY2UgSnVseSwg
MjAxOSBhbmQgSSBjb3VsZG4ndCBmaW5kIGFueQo+Pj4+IG1ham9yIGJsb2NraW5nIGNvbW1lbnRz
IGJ1dCBub3Qgc3VyZSB3aHkgdGhpbmdzIGhhdmVuJ3QgcHJvZ3Jlc3NlZAo+Pj4+IGZ1cnRoZXIu
Cj4+Pj4KPj4+PiBNYXliZSBKdWxpZW4gb3IgQXJtIG1haW50YWluZXJzIGNhbiBwcm92aWRlIHVw
ZGF0ZXMgb24gZXhpc3RpbmcKPj4+PiBwYXRjaC1zZXQgWzFdIGFuZCBob3cgd2Ugc2hvdWxkIHBy
b2NlZWQgZnVydGhlciB3aXRoIHRoaXMgaW50ZXJlc3RpbmcKPj4+PiBmZWF0dXJlLgo+Pj4+Cj4+
Pj4gQW5kIHJlZ2FyZGluZyBoYXJkLWxvY2t1cCBkZXRlY3Rpb24sIEkgaGF2ZSBiZWVuIGFibGUg
dG8gZW5hYmxlIGl0Cj4+Pj4gYmFzZWQgb24gcGVyZiBOTUkgZXZlbnRzIHVzaW5nIEp1bGllbidz
IHBlcmYgcGF0Y2gtc2V0IFsxXS4gSGF2ZSBhCj4+Pj4gbG9vayBhdCB0aGUgcGF0Y2ggaGVyZSBb
Ml0uCj4+Pj4KPj4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA0
NzQwNy8KPj4+PiBbMl0gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4
LWFybS1rZXJuZWwvMjAyMC1NYXkvNzMyMjI3Lmh0bWwKPj4+Pgo+Pj4+IC1TdW1pdAo+Pj4+Cj4+
Pj4+IFBlcmYgTk1JIGhhcyBiZWVuIHRlc3QgYnkgZGQgaWY9L2Rldi91cmFuZG9tIG9mPS9kZXYv
bnVsbCBsaWtlIHRoZSBsaW5rIFsyXQo+Pj4+PiBkaWQuCj4+Pj4+Cj4+Pj4+IFsxXSBodHRwczov
L2xrbWwub3JnL2xrbWwvMjAxOS8xLzMxLzUzNQo+Pj4+PiBbMl0gaHR0cHM6Ly93d3cubGluYXJv
Lm9yZy9ibG9nL2RlYnVnZ2luZy1hcm0ta2VybmVscy11c2luZy1ubWlmaXEKPj4+Pj4KPj4+Pj4K
Pj4+Pj4gTGVjb3B6ZXIgQ2hlbiAoMyk6Cj4+Pj4+ICAgYXJtX3BtdTogQWRkIHN1cHBvcnQgZm9y
IHBlcmYgTk1JIGludGVycnVwdHMgcmVnaXN0cmF0aW9uCj4+Pj4+ICAgYXJtNjQ6IHBlcmY6IFN1
cHBvcnQgTk1JIGNvbnRleHQgZm9yIHBlcmYgZXZlbnQgSVNSCj4+Pj4+ICAgYXJtNjQ6IEtjb25m
aWc6IEFkZCBzdXBwb3J0IGZvciB0aGUgUGVyZiBOTUkKPj4+Pj4KPj4+Pj4gIGFyY2gvYXJtNjQv
S2NvbmZpZyAgICAgICAgICAgICB8IDEwICsrKysrKysKPj4+Pj4gIGFyY2gvYXJtNjQva2VybmVs
L3BlcmZfZXZlbnQuYyB8IDM2ICsrKysrKysrKysrKysrKysrKy0tLS0tLQo+Pj4+PiAgZHJpdmVy
cy9wZXJmL2FybV9wbXUuYyAgICAgICAgIHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLQo+Pj4+PiAgaW5jbHVkZS9saW51eC9wZXJmL2FybV9wbXUuaCAgIHwgIDYgKysrKwo+
Pj4+PiAgNCBmaWxlcyBjaGFuZ2VkLCA4OCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkK
Pj4+Pj4KPj4+Pj4gLS0KPj4+Pj4gMi4yNS4xCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IGxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0Cj4+Pj4+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+Pj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
