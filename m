Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEECCDA20F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 01:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=NQ37PPM+jjpSUjoLU2OkX/APUituwp0bg8aj58H2Udg=; b=HnazeArvzZkXGyBA1e9kbpEJu
	tJg05gyoivqYR6J1PoWKRUW90M3JQ502K+M1C4cKFPAC4rObJCL+zrVaQpAEjyGT8nlw3dbeyM75x
	IruB6O5v6VV0hyEhERMbLkP58hF+luvoJmUDQd4HbQNIMV38TABLyJ2ERugAD5Yf1t+1eeoGMaChQ
	1YrFT1vo/DruUd35WbCGxWk10kl0yeTgb7bcwKuksRvA9rPM9hrckr8OfO+Xzo7c7rRw8YMLz0fcW
	9hSoVayh+s860fY0Slvm5iDPz8XPCeBVAiGEMj+6jcE6TUv2lgcJ1XXinPVoklbLXZCduXdThN7+0
	doVbCzavg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKscO-0003hT-IX; Wed, 16 Oct 2019 23:22:12 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKscF-0003gz-Ob
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 23:22:05 +0000
Received: by mail-pl1-f196.google.com with SMTP id f21so151791plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 16:22:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=HsCb3Mo3Xna7EYoMwhTJhD9MwGz7SJTZ9CRewHqki9A=;
 b=qj2nLgCmi5pUxhMJ6ebRiHMJpz/YTsxxkPB38hDjViJW5c69gYL/P58IPNFAyzb91N
 j52NAnzPVuK52BtOQC9S880lGsDZO1mkOZAXOFR6NYb9YibXwQcfWEJcphFsmzRur8La
 d1h3Qp3CveC06/msYGhUNb6HbDueMuzo+GBt9di8ZeuVfzeO66Mu1/yB0wn2xywTfbXB
 IGMXhHLpoVwgnU4j4GKnkJZalSPBcBW2tuwFIfaJQSrue3wI1qCui1fsJt8F0oz27tVi
 RWq2PNqCy3TXbu3L0v3AhD03htD2SSsINDs/iKfwI83FixYKWEOkzTtOx6v+b99DpDGO
 mG6Q==
X-Gm-Message-State: APjAAAXbK/G9tRLdkiy9TsbeHEshjM2jg4PB/w0njp1RgTpLXoegdoa/
 rN72MylQ9nVYLy7MV8gXVwuzeA==
X-Google-Smtp-Source: APXvYqzC7/HZK7+EXjzcJodZ++wliiU8C+JhMyLSizkgklN8FOVzzDMtBBSarQIk1rdVlB0KCrwo5w==
X-Received: by 2002:a17:902:122:: with SMTP id 31mr749931plb.274.1571268119937; 
 Wed, 16 Oct 2019 16:21:59 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 14sm167819pfn.21.2019.10.16.16.21.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 16:21:59 -0700 (PDT)
Date: Wed, 16 Oct 2019 16:21:59 -0700 (PDT)
X-Google-Original-Date: Wed, 16 Oct 2019 16:21:55 PDT (-0700)
Subject: Re: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
In-Reply-To: <20191008123943.j7q6dlu2qb2az6xa@willie-the-truck>
From: Palmer Dabbelt <palmer@sifive.com>
To: will@kernel.org
Message-ID: <mhng-dd251518-8ac0-40fa-9f62-20715d9ba906@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_162203_800670_11E42769 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark.Rutland@arm.com, Justin.He@arm.com, Kaly.Xin@arm.com,
 Catalin.Marinas@arm.com, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mm@kvack.org, James.Morse@arm.com, linux-arm-kernel@lists.infradead.org,
 punitagrawal@gmail.com, maz@kernel.org, hejianet@gmail.com, tglx@linutronix.de,
 nd@arm.com, akpm@linux-foundation.org, kirill.shutemov@linux.intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwOCBPY3QgMjAxOSAwNTozOTo0NCBQRFQgKC0wNzAwKSwgd2lsbEBrZXJuZWwub3Jn
IHdyb3RlOgo+IE9uIFR1ZSwgT2N0IDA4LCAyMDE5IGF0IDAyOjE5OjA1QU0gKzAwMDAsIEp1c3Rp
biBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIHdyb3RlOgo+PiA+IC0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tCj4+ID4gRnJvbTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4gPiBT
ZW50OiAyMDE55bm0MTDmnIgx5pelIDIwOjU0Cj4+ID4gVG86IEp1c3RpbiBIZSAoQXJtIFRlY2hu
b2xvZ3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNvbT4KPj4gPiBDYzogQ2F0YWxpbiBNYXJpbmFz
IDxDYXRhbGluLk1hcmluYXNAYXJtLmNvbT47IE1hcmsgUnV0bGFuZAo+PiA+IDxNYXJrLlJ1dGxh
bmRAYXJtLmNvbT47IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3JzZUBhcm0uY29tPjsgTWFyYwo+PiA+
IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgTWF0dGhldyBXaWxjb3ggPHdpbGx5QGluZnJhZGVh
ZC5vcmc+OyBLaXJpbGwgQS4KPj4gPiBTaHV0ZW1vdiA8a2lyaWxsLnNodXRlbW92QGxpbnV4Lmlu
dGVsLmNvbT47IGxpbnV4LWFybS0KPj4gPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtCj4+ID4gbW1Aa3ZhY2sub3JnOyBQdW5p
dCBBZ3Jhd2FsIDxwdW5pdGFncmF3YWxAZ21haWwuY29tPjsgVGhvbWFzCj4+ID4gR2xlaXhuZXIg
PHRnbHhAbGludXRyb25peC5kZT47IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtCj4+ID4gZm91
bmRhdGlvbi5vcmc+OyBoZWppYW5ldEBnbWFpbC5jb207IEthbHkgWGluIChBcm0gVGVjaG5vbG9n
eSBDaGluYSkKPj4gPiA8S2FseS5YaW5AYXJtLmNvbT4KPj4gPiBTdWJqZWN0OiBSZTogW1BBVENI
IHYxMCAzLzNdIG1tOiBmaXggZG91YmxlIHBhZ2UgZmF1bHQgb24gYXJtNjQgaWYgUFRFX0FGCj4+
ID4gaXMgY2xlYXJlZAo+PiA+Cj4+ID4gT24gTW9uLCBTZXAgMzAsIDIwMTkgYXQgMDk6NTc6NDBB
TSArMDgwMCwgSmlhIEhlIHdyb3RlOgo+PiA+ID4gZGlmZiAtLWdpdCBhL21tL21lbW9yeS5jIGIv
bW0vbWVtb3J5LmMKPj4gPiA+IGluZGV4IGIxY2E1MWEwNzlmMi4uMWY1NmIwMTE4ZWY1IDEwMDY0
NAo+PiA+ID4gLS0tIGEvbW0vbWVtb3J5LmMKPj4gPiA+ICsrKyBiL21tL21lbW9yeS5jCj4+ID4g
PiBAQCAtMTE4LDYgKzExOCwxMyBAQCBpbnQgcmFuZG9taXplX3ZhX3NwYWNlIF9fcmVhZF9tb3N0
bHkgPQo+PiA+ID4gIAkJCQkJMjsKPj4gPiA+ICAjZW5kaWYKPj4gPiA+Cj4+ID4gPiArI2lmbmRl
ZiBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlCj4+ID4gPiArc3RhdGljIGlubGluZSBib29sIGFyY2hf
ZmF1bHRzX29uX29sZF9wdGUodm9pZCkKPj4gPiA+ICt7Cj4+ID4gPiArCXJldHVybiBmYWxzZTsK
Pj4gPiA+ICt9Cj4+ID4gPiArI2VuZGlmCj4+ID4KPj4gPiBLaXJpbGwgaGFzIGFja2VkIHRoaXMs
IHNvIEknbSBoYXBweSB0byB0YWtlIHRoZSBwYXRjaCBhcy1pcywgaG93ZXZlciBpc24ndAo+PiA+
IGl0IHRoZSBjYXNlIHRoYXQgL21vc3QvIGFyY2hpdGVjdHVyZXMgd2lsbCB3YW50IHRvIHJldHVy
biB0cnVlIGZvcgo+PiA+IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKT8gSW4gd2hpY2ggY2FzZSwg
d291bGRuJ3QgaXQgbWFrZSBtb3JlIHNlbnNlIGZvcgo+PiA+IHRoYXQgdG8gYmUgdGhlIGRlZmF1
bHQsIGFuZCBoYXZlIHg4NiBhbmQgYXJtNjQgcHJvdmlkZSBhbiBvdmVycmlkZT8gRm9yCj4+ID4g
ZXhhbXBsZSwgYXJlbid0IG1vc3QgYXJjaGl0ZWN0dXJlcyBzdGlsbCBnb2luZyB0byBoaXQgdGhl
IGRvdWJsZSBmYXVsdAo+PiA+IHNjZW5hcmlvIGV2ZW4gd2l0aCB5b3VyIHBhdGNoIGFwcGxpZWQ/
Cj4+Cj4+IE5vLCBhZnRlciBhcHBseWluZyBteSBwYXRjaCBzZXJpZXMsIG9ubHkgdGhvc2UgYXJj
aGl0ZWN0dXJlcyB3aGljaCBkb24ndCBwcm92aWRlCj4+IHNldHRpbmcgYWNjZXNzIGZsYWcgYnkg
aGFyZHdhcmUgQU5EIGRvbid0IGltcGxlbWVudCB0aGVpciBhcmNoX2ZhdWx0c19vbl9vbGRfcHRl
Cj4+IHdpbGwgaGl0IHRoZSBkb3VibGUgcGFnZSBmYXVsdC4KPj4KPj4gVGhlIG1lYW5pbmcgb2Yg
dHJ1ZSBmb3IgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIGlzICJ0aGlzIGFyY2ggZG9lc24ndCBo
YXZlIHRoZSBoYXJkd2FyZQo+PiBzZXR0aW5nIGFjY2VzcyBmbGFnIHdheSwgaXQgbWlnaHQgY2F1
c2UgcGFnZSBmYXVsdCBvbiBhbiBvbGQgcHRlIgo+PiBJIGRvbid0IHdhbnQgdG8gY2hhbmdlIG90
aGVyIGFyY2hpdGVjdHVyZXMnIGRlZmF1bHQgYmVoYXZpb3IgaGVyZS4gU28gYnkgZGVmYXVsdCwK
Pj4gYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIGlzIGZhbHNlLgo+Cj4gLi4uYW5kIG15IGNvbXBs
YWludCBpcyB0aGF0IHRoaXMgaXMgdGhlIG1ham9yaXR5IG9mIHN1cHBvcnRlZCBhcmNoaXRlY3R1
cmVzLAo+IHNvIHlvdSdyZSBmaXhpbmcgc29tZXRoaW5nIGZvciBhcm02NCB3aGljaCBhbHNvIGFm
ZmVjdHMgYXJtLCBwb3dlcnBjLAo+IGFscGhhLCBtaXBzLCByaXNjdiwgLi4uCj4KPiBDaGFuY2Vz
IGFyZSwgdGhleSB3b24ndCBldmVuIHJlYWxpc2UgdGhleSBuZWVkIHRvIGltcGxlbWVudAo+IGFy
Y2hfZmF1bHRzX29uX29sZF9wdGUoKSB1bnRpbCBzb21lYm9keSBydW5zIGludG8gdGhlIGRvdWJs
ZSBmYXVsdCBhbmQKPiB3YXN0ZXMgbG90cyBvZiB0aW1lIGRlYnVnZ2luZyBpdCBiZWZvcmUgdGhl
eSBzcG90IHlvdXIgcGF0Y2guCgpJZiBJIHVuZGVyc3RhbmQgdGhlIHNlbWFudGljcyBjb3JyZWN0
bHksIHdlIHNob3VsZCBoYXZlIHRoaXMgc2V0IHRvIHRydWUuICBJIApkb24ndCBoYXZlIGFueSBj
b250ZXh0IGhlcmUsIGJ1dCB3ZSd2ZSBnb3QKCiAgICAgICAgICAgICAgICAvKgogICAgICAgICAg
ICAgICAgICogVGhlIGtlcm5lbCBhc3N1bWVzIHRoYXQgVExCcyBkb24ndCBjYWNoZSBpbnZhbGlk
CiAgICAgICAgICAgICAgICAgKiBlbnRyaWVzLCBidXQgaW4gUklTQy1WLCBTRkVOQ0UuVk1BIHNw
ZWNpZmllcyBhbgogICAgICAgICAgICAgICAgICogb3JkZXJpbmcgY29uc3RyYWludCwgbm90IGEg
Y2FjaGUgZmx1c2g7IGl0IGlzCiAgICAgICAgICAgICAgICAgKiBuZWNlc3NhcnkgZXZlbiBhZnRl
ciB3cml0aW5nIGludmFsaWQgZW50cmllcy4KICAgICAgICAgICAgICAgICAqLwogICAgICAgICAg
ICAgICAgbG9jYWxfZmx1c2hfdGxiX3BhZ2UoYWRkcik7CgppbiBkb19wYWdlX2ZhdWx0KCkuCgo+
PiBCdHcsIGN1cnJlbnRseSBJIG9ubHkgb2JzZXJ2ZWQgdGhpcyBkb3VibGUgcGFnZWZhdWx0IG9u
IGFybTY0J3MgZ3Vlc3QKPj4gKGhvc3QgaXMgVGh1bmRlclgyKS4gIE9uIFg4NiBndWVzdCAoaG9z
dCBpcyBJbnRlbChSKSBDb3JlKFRNKSBpNy00NzkwIENQVQo+PiBAIDMuNjBHSHogKSwgdGhlcmUg
aXMgbm8gc3VjaCBkb3VibGUgcGFnZWZhdWx0LiBJdCBoYXMgdGhlIHNpbWlsYXIgc2V0dGluZwo+
PiBhY2Nlc3MgZmxhZyB3YXkgYnkgaGFyZHdhcmUuCj4KPiBSaWdodCwgYW5kIHRoYXQncyB3aHkg
SSdtIG5vdCBjb25jZXJuZWQgYWJvdXQgeDg2IGZvciB0aGlzIHByb2JsZW0uCj4KPiBXaWxsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
