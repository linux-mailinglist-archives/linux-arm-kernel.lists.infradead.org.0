Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E98F138D76
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:15:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:MIME-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z5TYZpb9WyRD/j7dPayKlUJWbl16LEAOaS33LhmobE=; b=BlgEXoVQ0NclUd
	nUDETaNF2BtVjYDcuim4W/RQsQyodnhr4E9IEB5X5QqPeU/+uTHPUYeJoJvE9Kvhwy446SXBfJ5NQ
	g6zwMFPlkN0pXNK/xyuJlAPAfx9IA3JVh/RNumVzmWehZzos9gTbdZeHbWWrsmPkCdZBfqp5AFQ1H
	M+u07ayd7r/vRWl4PMwAjdsTyLU9/ths9rXqW6FJ+m4PqESZIb5k3Q3set7KGopHT8x78b+gfXMEp
	GO+w54bUGHJdiB0Zo4eGfS9HrLxdFnriG+JvN2t+7/d/CtOiw5vojkDTy+akuuPLgs7zSU4UJWhf9
	Uc3ffx9PnwIf/yf4B7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvoC-0008MM-BO; Mon, 13 Jan 2020 09:14:52 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvo1-0008LT-HR
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578906878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uspd5zkOPeMtHgKJ5e4ZESBs1SxHQ7Z6JFFqEWtfDCY=;
 b=THWRiMxCI8V6v1L50bYo/s6yU9qCMHl5ggvrfi1/5RiQdxLanlp8TFRmdr5PHDaraShW6Q
 EkUrQmBvCHOYYdeTEUvRbA3iDM1PRnEW4ssbAy0IrxCHzYAcwkbvgbTAM7L5FLLjJeL35Y
 1JUYHuEm+iPQp/UNiH2eeQTTwBgpGj4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-P9ovJyJbO9STwUB_mH_sYQ-1; Mon, 13 Jan 2020 04:14:34 -0500
X-MC-Unique: P9ovJyJbO9STwUB_mH_sYQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD33C800D50;
 Mon, 13 Jan 2020 09:14:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com
 (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5557D5D9CA;
 Mon, 13 Jan 2020 09:14:31 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com
 (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
 by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE28318089C8;
 Mon, 13 Jan 2020 09:14:30 +0000 (UTC)
From: David Hildenbrand <dhildenb@redhat.com>
MIME-Version: 1.0
Subject: Re: [PATCH V11 1/5] mm/hotplug: Introduce arch callback validating
 the hot remove range
Date: Mon, 13 Jan 2020 04:14:30 -0500 (EST)
Message-Id: <3C3BE5FA-0CFC-4C90-8657-63EF5B680B0B@redhat.com>
References: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
In-Reply-To: <6f0efddc-f124-58ca-28b6-4632469cf992@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Thread-Topic: mm/hotplug: Introduce arch callback validating the hot remove
 range
Thread-Index: 9dRMYHGdvxy56yfkC0YmYq8UQHzCmA==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011441_656885_D6CD0C62 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, David Hildenbrand <david@redhat.com>,
 catalin.marinas@arm.com, linux-mm@kvack.org, arunks@codeaurora.org,
 cpandya@codeaurora.org, will@kernel.org, ira.weiny@intel.com,
 steven.price@arm.com, valentin.schneider@arm.com, suzuki.poulose@arm.com,
 robin.murphy@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org,
 osalvador@suse.de, steve.capper@arm.com, logang@deltatee.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQoNCj4gQW0gMTMuMDEuMjAyMCB1bSAxMDoxMCBzY2hyaWViIEFuc2h1bWFuIEtoYW5kdWFsIDxh
bnNodW1hbi5raGFuZHVhbEBhcm0uY29tPjoNCj4gDQo+IO+7vw0KPiANCj4+IE9uIDAxLzEwLzIw
MjAgMDI6MTIgUE0sIERhdmlkIEhpbGRlbmJyYW5kIHdyb3RlOg0KPj4+IE9uIDEwLjAxLjIwIDA0
OjA5LCBBbnNodW1hbiBLaGFuZHVhbCB3cm90ZToNCj4+PiBDdXJyZW50bHkgdGhlcmUgYXJlIHR3
byBpbnRlcmZhY2VzIHRvIGluaXRpYXRlIG1lbW9yeSByYW5nZSBob3QgcmVtb3ZhbCBpLmUNCj4+
PiByZW1vdmVfbWVtb3J5KCkgYW5kIF9fcmVtb3ZlX21lbW9yeSgpIHdoaWNoIHRoZW4gY2FsbHMg
dHJ5X3JlbW92ZV9tZW1vcnkoKS4NCj4+PiBQbGF0Zm9ybSBnZXRzIGNhbGxlZCB3aXRoIGFyY2hf
cmVtb3ZlX21lbW9yeSgpIHRvIHRlYXIgZG93biByZXF1aXJlZCBrZXJuZWwNCj4+PiBwYWdlIHRh
YmxlcyBhbmQgb3RoZXIgYXJjaCBzcGVjaWZpYyBwcm9jZWR1cmVzLiBCdXQgdGhlcmUgYXJlIHBs
YXRmb3Jtcw0KPj4+IGxpa2UgYXJtNjQgd2hpY2ggbWlnaHQgd2FudCB0byBwcmV2ZW50IHJlbW92
YWwgb2YgY2VydGFpbiBzcGVjaWZpYyBtZW1vcnkNCj4+PiByYW5nZXMgaXJyZXNwZWN0aXZlIG9m
IHRoZWlyIHByZXNlbnQgdXNhZ2Ugb3IgbW92YWJpbGl0eSBwcm9wZXJ0aWVzLg0KPj4gDQo+PiBX
aHk/IElzIHRoaXMgb25seSByZWxldmFudCBmb3IgYm9vdCBtZW1vcnk/IEkgaG9wZSBzbywgb3Ro
ZXJ3aXNlIHRoZQ0KPj4gYXJjaCBjb2RlIG5lZWRzIGZpeGluZyBJTUhPLg0KPiANCj4gUmlnaHQs
IGl0IGlzIHJlbGV2YW50IG9ubHkgZm9yIHRoZSBib290IG1lbW9yeSBvbiBhcm02NCBwbGF0Zm9y
bS4gQnV0IHRoaXMNCj4gbmV3IGFyY2ggY2FsbGJhY2sgbWFrZXMgaXQgZmxleGlibGUgdG8gcmVq
ZWN0IGFueSBnaXZlbiBtZW1vcnkgcmFuZ2UuDQo+IA0KPj4gDQo+PiBJZiBpdCdzIG9ubHkgYm9v
dCBtZW1vcnksIHdlIHNob3VsZCBkaXNhbGxvdyBvZmZsaW5pbmcgaW5zdGVhZCB2aWEgYQ0KPj4g
bWVtb3J5IG5vdGlmaWVyIC0gbXVjaCBjbGVhbmVyLg0KPiANCj4gRG9udCBoYXZlIG11Y2ggZGV0
YWlsIHVuZGVyc3RhbmRpbmcgb2YgTU1VIG5vdGlmaWVyIG1lY2hhbmlzbSBidXQgZnJvbSBzb21l
DQo+IGluaXRpYWwgcmVhZGluZywgaXQgc2VlbXMgbGlrZSB3ZSBuZWVkIHRvIGhhdmUgYSBtbV9z
dHJ1Y3QgZm9yIGEgbm90aWZpZXINCj4gdG8gbW9uaXRvciB2YXJpb3VzIGV2ZW50cyBvbiB0aGUg
cGFnZSB0YWJsZS4gSnVzdCB3b25kZXJpbmcgaG93IGEgcGh5c2ljYWwNCj4gbWVtb3J5IHJhbmdl
IGxpa2UgYm9vdCBtZW1vcnkgY2FuIGJlIG1vbml0b3JlZCBiZWNhdXNlIGl0IGNhbiBiZSB1c2Vk
IGJvdGgNCj4gZm9yIGZvciBrZXJuZWwgKGluaXRfbW0pIG9yIHVzZXIgc3BhY2UgcHJvY2VzcyBh
dCBzYW1lIHRpbWUuIElzIHRoZXJlIHNvbWUNCj4gbWVjaGFuaXNtIHdlIGNvdWxkIGRvIHRoaXMg
Pw0KPiANCj4+IA0KPj4+IA0KPj4+IEN1cnJlbnQgYXJjaCBjYWxsIGJhY2sgYXJjaF9yZW1vdmVf
bWVtb3J5KCkgaXMgdG9vIGxhdGUgaW4gdGhlIHByb2Nlc3MgdG8NCj4+PiBhYm9ydCBtZW1vcnkg
aG90IHJlbW92YWwgYXMgbWVtb3J5IGJsb2NrIGRldmljZXMgYW5kIGZpcm13YXJlIG1lbW9yeSBt
YXANCj4+PiBlbnRyaWVzIHdvdWxkIGhhdmUgYWxyZWFkeSBiZWVuIHJlbW92ZWQuIFBsYXRmb3Jt
cyBzaG91bGQgYmUgYWJsZSB0byBhYm9ydA0KPj4+IHRoZSBwcm9jZXNzIGJlZm9yZSB0YWtpbmcg
dGhlIG1lbV9ob3RwbHVnX2xvY2sgd2l0aCBtZW1faG90cGx1Z19iZWdpbigpLg0KPj4+IFRoaXMg
ZXNzZW50aWFsbHkgcmVxdWlyZXMgYSBuZXcgYXJjaCBjYWxsYmFjayBmb3IgbWVtb3J5IHJhbmdl
IHZhbGlkYXRpb24uDQo+PiANCj4+IEkgc29tZXdoYXQgZGlzbGlrZSB0aGlzIHZlcnkgbXVjaC4g
TWVtb3J5IHJlbW92YWwgc2hvdWxkIG5ldmVyIGZhaWwgaWYNCj4+IHVzZWQgc2FuZWx5LiBTZWUg
ZS5nLiwgX19yZW1vdmVfbWVtb3J5KCksIGl0IHdpbGwgQlVHKCkgd2hlbmV2ZXINCj4+IHNvbWV0
aGluZyBsaWtlIHRoYXQgd291bGQgc3RyaWtlLg0KPj4gDQo+Pj4gDQo+Pj4gVGhpcyBkaWZmZXJl
bnRpYXRlcyBtZW1vcnkgcmFuZ2UgdmFsaWRhdGlvbiBiZXR3ZWVuIG1lbW9yeSBob3QgYWRkIGFu
ZCBob3QNCj4+PiByZW1vdmUgcGF0aHMgYmVmb3JlIGNhcnZpbmcgb3V0IGEgbmV3IGhlbHBlciBj
aGVja19ob3RyZW1vdmVfbWVtb3J5X3JhbmdlKCkNCj4+PiB3aGljaCBpbmNvcnBvcmF0ZXMgYSBu
ZXcgYXJjaCBjYWxsYmFjay4gVGhpcyBjYWxsIGJhY2sgcHJvdmlkZXMgcGxhdGZvcm1zDQo+Pj4g
YW4gb3Bwb3J0dW5pdHkgdG8gcmVmdXNlIG1lbW9yeSByZW1vdmFsIGF0IHRoZSB2ZXJ5IG9uc2V0
LiBJbiBmdXR1cmUgdGhlDQo+Pj4gc2FtZSBwcmluY2lwbGUgY2FuIGJlIGV4dGVuZGVkIGZvciBt
ZW1vcnkgaG90IGFkZCBwYXRoIGlmIHJlcXVpcmVkLg0KPj4+IA0KPj4+IFBsYXRmb3JtcyBjYW4g
Y2hvb3NlIHRvIG92ZXJyaWRlIHRoaXMgY2FsbGJhY2sgaW4gb3JkZXIgdG8gcmVqZWN0IHNwZWNp
ZmljDQo+Pj4gbWVtb3J5IHJhbmdlcyBmcm9tIHJlbW92YWwgb3IgY2FuIGp1c3QgZmFsbGJhY2sg
dG8gYSBkZWZhdWx0IGltcGxlbWVudGF0aW9uDQo+Pj4gd2hpY2ggYWxsb3dzIHJlbW92YWwgb2Yg
YWxsIG1lbW9yeSByYW5nZXMuDQo+PiANCj4+IEkgc3VzcGVjdCB3ZSB3YW50IHJlYWxseSB3YW50
IHRvIGRpc2FsbG93IG9mZmxpbmluZyBpbnN0ZWFkLiBFLmcuLCBJDQo+IA0KPiBJZiBib290IG1l
bW9yeSBwYWdlcyBjYW4gYmUgcHJldmVudGVkIGZyb20gYmVpbmcgb2ZmbGluZWQgZm9yIHN1cmUs
IHRoZW4gaXQNCj4gd291bGQgaW5kaXJlY3RseSBkZWZpbml0ZWx5IHByZXZlbnQgaG90IHJlbW92
ZSBwcm9jZXNzIGFzIHdlbGwuDQo+IA0KPj4gcmVtZW1iZXIgczM5MHggZG9lcyB0aGF0IHdpdGgg
Y2VydGFpbiBhcmVhcyBuZWVkZWQgZm9yIGR1bXBpbmcva2V4ZWMuDQo+IA0KPiBDb3VsZCBub3Qg
ZmluZCBhbnkgcmVmZXJlbmNlcyB0byBtbXVfbm90aWZpZXIgaW4gYXJjaC9zMzkwIG9yIGFueSBv
dGhlciBhcmNoDQo+IGZvciB0aGF0IG1hdHRlciBhcGFydCBmcm9tIEtWTSAod2hpY2ggaGFzIGFu
IHVzZXIgc3BhY2UgY29tcG9uZW50KSwgY291bGQgeW91DQo+IHBsZWFzZSBnaXZlIHNvbWUgcG9p
bnRlcnMgPw0KDQpNZW1vcnkgKGhvdHBsdWcpIG5vdGlmaWVyLCBub3QgTU1VIG5vdGlmaWVyIDop
DQoNCk5vdCBvbiBteSBub3RlYm9vayByaWdodCBub3csIGdyZXAgZm9yIE1FTV9HT0lOR19PRkZM
SU5FLCB0aGF0IHNob3VsZCBiZSBpdC4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
