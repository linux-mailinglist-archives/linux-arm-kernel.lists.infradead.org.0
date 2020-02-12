Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A5A15AB02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 15:32:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vh2dfIgLN+dPggMBdJMCwAj1jeisfRHBXJdRRqNC+Sk=; b=CXmK562mYK9Tno
	1+8HBQDiG0/rEMZtF/Z3SI4Nf/jK2owWgb/nDf9WGtPjHbl6/vqB0YypAq12oC0f74W8iwcbuidvW
	Gj0OuHDQQQDZCeRl0IdorTvIv1NR/6ffXCrBZWPIwjBws+zPniRtPd8COadKmEzeuT19dacFTSRKY
	V+4MWYF83fFSgfpNrvnQ/b8xQZf+vyFF37JSHmOO8z7+f+3cQmEvMCYkbwFt49qwGciWn1fvpb5bo
	87858BtNiwXiSn9qWLnV6ACqfxZ7OQX9RlTCYRCXsI+GJbJlD8SS4QAOs8YxgWwEEXbGBLKQkBpFx
	Q7cG5+POXv/0JHfclttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1t3x-0001qj-Iq; Wed, 12 Feb 2020 14:32:25 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1t3n-0001q8-OW
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 14:32:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 97F39AEEE;
 Wed, 12 Feb 2020 14:32:12 +0000 (UTC)
Subject: Re: [PATCH 1/3] hwspinlock: sunxi: Implement support for Allwinner's
 A64 SoC
To: Maxime Ripard <maxime@cerno.tech>
References: <20200210170143.20007-1-nborisov@suse.com>
 <20200210170143.20007-2-nborisov@suse.com>
 <20200211074643.uhhzpp4ycvkaz4pd@gilmour.lan>
 <7fb0e4f7-4da6-517f-6e96-9b3dc6ee4e56@suse.com>
 <20200211123427.gbzhopfuge6osd2s@gilmour.lan>
 <4e6eb880-8b52-aa1b-53bb-b77ff2cb858f@suse.com>
 <20200212120619.2tbsvy4sst2duupl@gilmour.lan>
From: Nikolay Borisov <nborisov@suse.com>
Autocrypt: addr=nborisov@suse.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <68cd77cc-2e4c-4efb-5d94-bd47d6f87871@suse.com>
Date: Wed, 12 Feb 2020 16:32:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200212120619.2tbsvy4sst2duupl@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_063216_090085_2F8E8018 
X-CRM114-Status: GOOD (  25.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, bjorn.andersson@linaro.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMi4wMi4yMCDQsy4gMTQ6MDYg0YcuLCBNYXhpbWUgUmlwYXJkIHdyb3RlOgo+IE9uIFR1
ZSwgRmViIDExLCAyMDIwIGF0IDAzOjE3OjQwUE0gKzAyMDAsIE5pa29sYXkgQm9yaXNvdiB3cm90
ZToKPj4KPj4KPj4gT24gMTEuMDIuMjAg0LMuIDE0OjM0INGHLiwgTWF4aW1lIFJpcGFyZCB3cm90
ZToKPj4+IE9uIFR1ZSwgRmViIDExLCAyMDIwIGF0IDEwOjA4OjA4QU0gKzAyMDAsIE5pa29sYXkg
Qm9yaXNvdiB3cm90ZToKPj4+PiBPbiAxMS4wMi4yMCDQsy4gOTo0NiDRhy4sIE1heGltZSBSaXBh
cmQgd3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBPbiBNb24sIEZlYiAxMCwgMjAyMCBhdCAw
NzowMTo0MVBNICswMjAwLCBOaWtvbGF5IEJvcmlzb3Ygd3JvdGU6Cj4+Pj4+PiBCYXNlZCBvbiB0
aGUgZGF0YXNoZWV0IHRoaXMgaW1wbGVtZW50cyBzdXBwb3J0IGZvciB0aGUgaHdzcGlubG9jayBJ
UAo+Pj4+Pj4gYmxvY2suCj4+Pj4+Cj4+Pj4+IEhvdyB3YXMgdGhpcyB0ZXN0ZWQ/Cj4+Pj4KPj4+
PiBJIHRlc3RlZCBpdCBvbiBteSBwaW5lNjQgbHRzIGUuZy4gbG9hZGluZyB0aGUgZHJpdmVyIGFu
ZCByZWFkaW5nIHRoZQo+Pj4+IHJlc2V0L2Nsb2NrL3N5c3N0YXR1cyByZWdpc3RlcnMgdG8gZW5z
dXJlIGV2ZXJ5dGhpbmcgaXMgdW5tYXNrZWQgYW5kIGhhcwo+Pj4+IGV4cGVjdGVkIHZhbHVlcy4K
Pj4+Cj4+PiBJc24ndCB0aGUgcG9pbnQgb2YgaHdzcGlubG9ja3MgdGhhdCBpdCdzIHNoYXJlZCBi
ZXR3ZWVuIHRoZSBBUklTQyBjb3JlCj4+PiBhbmQgdGhlIEFSTSBjb3Jlcy4gSG93IGRpZCB5b3Ug
dGVzdCB0aGF0IHRoZSBsb2NrIHdhcyBhY3R1YWxseSB0YWtlbgo+Pj4gb24gdGhlIG90aGVyIHNp
ZGUganVzdCBieSB1c2luZyB0aGUgQVJNIGNvcmVzPwo+Pgo+PiBJIGhhdmVuJ3QuIEknbSByZWFs
bHkgZm9jdXNlIGRvbiBqdXN0IGVuYWJsaW5nIHRoaXMgb24gdGhlIGxpbnV4IHNpZGUgb2YKPj4g
dGhpbmdzLiBUcnVlLCBodyBzcGlubG9ja3MgYXJlIHVzZWQgdG8gc3luY2hyb25pemUgY3B1IHJ1
bm5pbmcgZGlmZmVyZW50Cj4+IE9TJ2VzLgo+IAo+IEknbSBzb3JyeSBidXQgdGhpcyBkcml2ZXIg
aGFzbid0IGJlZW4gcmVhbGx5IHRlc3RlZCB0aGVuLiBUaGUgd2hvbGUKPiBwb2ludCBvZiBpdCBp
cyB0byBzeW5jaHJvbmlzZSB3aXRoIHNvbWV0aGluZy4gSWYgeW91IHRlc3RlZCB3aXRob3V0CgpJ
IGRpc2FncmVlLCB0aGUgd2hvbGUgcG9pbnQgaXMgdG8gZXhwb3NlIHRoZSBmYWNpbGl0eSBmb3Ig
b3RoZXIgZHJpdmVycwp3aGljaCwgaW4gdHVybiwgbWlnaHQgbmVlZCB0byBzeW5jaHJvbml6ZSB3
aXRoIHRoYXQgb3RoZXIgdGhpbmcuIEkgc2VlCnRoZSBod3NwaW5sb2NrIGRyaXZlciBhcyBhIGR1
bWIgcHJvdmlkZXIgb2YgdGhlIGludGVyZmFjZS4gVGhlIG9ubHkKcGVydGluZW50IGNvbnRlbnRp
b24gcG9pbnQgSSBzZWUgaXMgaG93IHNob3VsZCB0aGUgY2xvY2svc29mdCByZXNldApyZWdpc3Rl
cnMgYmUgcHJvZ3JhbW1lZCBjb25zaWRlcmluZyB0aGUgc3BpbmxvY2tzIG1pZ2h0IGJlIGFjY2Vz
c2VkCm91dHNpZGUgb2YgbGludXguCgo+IHRoYXQgc29tZXRoaW5nLCBpdCdzIGp1c3QgbGlrZSB0
ZXN0aW5nIGEgbmV0d29yayBkcml2ZXIgd2l0aG91dCBoYXZpbmcKPiBhbnl0aGluZyBjb25uZWN0
ZWQgb24gdGhlIG5ldHdvcmsgeW91J3JlIHRlc3RpbmcgaXQgb246IGl0IHByb2JhYmx5Cj4gbG9v
a3MgbGlrZSBpdCdzIHdvcmtpbmcsIGJ1dCB5b3UgcmVhbGx5IGNhbid0IHRlbGwuCj4gCj4+IEl0
J3Mgc3RpbGwgaW1wbGVtZW50YXRpb24gZGVmaW5lZCB3aGljaCBod3NwaW5sb2NrIGlzIHVzZWQg
Zm9yCj4+IHdoaWNoIGNvbXBvbmVudC4gQWRkaXRpb25hbGx5IGlmIHdlIGFzc3VtZSB0aGUgQVJJ
U0MgY29yZSB1c2VzIHNwaW5sb2NrCj4+IHRoaXMgbWVhbnMgYnkgdGhlIHRpbWUgbGludXggaXMg
Ym9vdGVkIHRoZSBzcGlubG9ja3Mgc2hvdWxkIGFscmVhZHkgYmUKPj4gY2xvY2tlZCBhbmQgb3V0
IG9mIHNvZnR3YXJlIHJlc2V0IHNvIHBlcmhhaHBzIHRoaXMgaXMgYWxzbyByZWR1bmRhbnQgaW4K
Pj4gdGhlIGRyaXZlcj8KPiAKPiBMaW51eCBhbHNvIGxpa2VzIHRvIGRpc2FibGUgdGhlIGNsb2Nr
cyBubyBvbmUgaXMgdXNpbmcsIHNvIGluIHN1Y2ggYQo+IHNpdHVhdGlvbiwgd2hhdCB3b3VsZCBo
YXBwZW4/IENhbiB0aGUgQVJJU0Mgc3RpbGwgdXNlIHRoZW0sIHNob3VsZCB3ZQo+IG1haW50YWlu
IHRoZSBlbmFibGVkIGFsbCB0aGUgdGltZT8KPiAKPiBUaGlzIGlzIGV4YWN0bHkgdGhlIGtpbmQg
b2YgY29ybmVyLWNhc2VzIHRoYXQgd2UgbmVlZCBhIHRlc3QgZm9yLgoKCkZhaXIgcG9pbnQgQlVU
LCBhbmQgdGhpcyBpcyBvbmUgYmlnIEJVVC4gVGhpcyBvdGhlciB0aGluZyAodGhlIEFSSVNDIGZ3
KQpkb2Vzbid0IGhhdmUgYSBjb250cmFjdCB3aXRoIHRoZSBrZXJuZWwgb24gc3luY2hyb25pemF0
aW9uLiBTbyBzaG91bGQKdGhlIHRlc3QgYmUgcGVyZm9ybWVkIGFnYWluc3QgYWxsd2lubmVyJ3Mg
YmluYXJ5IGJsb2Igb3IgYWdhaW5zdCBzb21lIG9mCnRoZSBvcGVuIHNvdXJjZSBhbHRlcm5hdGl2
ZXMgKCBJIG9ubHkgc2F3IGl0IG1lbnRpb25lZCBvbiB0aGUgc3VueGkgd2ViCnBhZ2UgYnV0IG5v
IGxpbmtzIHRvIHN1Y2ggb3BlbiBzb3VyY2UgYWx0ZXJuYXRpdmVzKS4KCgpGdXJ0aGVybW9yZSwg
aWYgd2UgYXNzdW1lIHdlIHNob3VsZCBiZSBjb21wYXRpYmxlIHdpdGggdGhlIGJpbmFyeSBibG9i
Cml0IG5lZWRzIHRvIGJlIFJFJ2QgaW4gb3JkZXIgdG8gdW5kZXJzdGFuZCB3aGljaCBodyBzcGlu
bG9ja3MgaXQncyB1c2luZwpmb3Igc3luY2hyb25pemF0aW9uIGFuZCBJJ20gbm90IGF3YXJlIG9m
IGFueSBzdWNoIGVmZm9ydC4KCj4gCj4gTWF4aW1lCj4gCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
