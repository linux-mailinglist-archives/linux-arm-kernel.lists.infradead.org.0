Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A1A13C6C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:58:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1U0AJwS4BUeaEFpqBI8Pk4N0aA+r+yDvtZnc+x6INJQ=; b=B+xni4Zw8L20tP
	5hgDmUqorRC3yE/Z8hlZmdocX5YILZdXmvVHChUGDYkrOI3T6jYR/+sOleZnXUywpb+uxVPx4xS+k
	D7uq8XGympj7Sp6vdlhX4TTiZEU2naBqRxyw7AG6bE1JrBX2u16Dp1v0NOEWEDEKRQrpb7EIC8WT0
	gFPbGuQSA2sjj/fBFkPiEw7xeEd2DHYItqUBWYgV9Hve6uimcrfSVkS77GLZKEYaUe5jhN3F86Q/o
	VzqcAJ7CoyWQ+U+j6ZrlQ5InwMRwyR8cOSwn1XnZeSHgBPjqWGsl8hRQSNlKamiAYp4EVdYZqOgiy
	L8PxfHMnscLvv+sex2mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irk7R-0005A3-Jv; Wed, 15 Jan 2020 14:58:05 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irk7B-00054i-As
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:57:53 +0000
Received: by mail-qv1-xf42.google.com with SMTP id m14so7471899qvl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NmZV6ZNor/aMnsybdf9Y2H14ROOnyA+MZIhvgXeb7nw=;
 b=qNEZxBFuHgepbe5MkJcZ7SkeuRPDFbFExzWM7bIuACkIF5m5dMo/797c91mMptly0B
 H1NngPZ41XCxD8QWCrw30X/lbuDzQBMZORa9RsrpkNUxmhxF8mVOJM3Iu48ojLFwy2oj
 rgj/YU8/6+O/sa1Rin0saBAlu/uDpYTFqOUMijbptMGw8Chuj8Y4qqqvqogM4Y/Nzqxw
 kP9GsVEvGI49TJu2rxXKSwnO247ImhbDgM2Ock70tZcMK9SK0cYHNUyOphF5uw3GGTGm
 Q9xaW5zpK3ns4vUceei3zbtYEdwPxPrMOzbi715D13qacQeEfHfpauCiP6+nDd9CGVVi
 pIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NmZV6ZNor/aMnsybdf9Y2H14ROOnyA+MZIhvgXeb7nw=;
 b=Jshrek+iEXfLG1JZ8vSYQP2v8IUJOEZgOZXarGZEcuC09h6w/FL10rs1kUBHXbJ44b
 Wfn+Sj9TrwoyZ/bBPGJSy4lXSDSryXjdFVCfIbpSYbe4E68bgK3QY7BB2aMpO1zE4+s/
 uQw3Zc8WDbrS60ZTyCViL5w6aR8bRQiQotDNYrS/pyiLctyhwvdNpfgkuhHwBk4u4D9i
 7BkW3RsqIDHcs5kjj/KNkPxiYEimxRZg1OSkYFtIw+nGDZftu+iQOOqgNWkj6zh2Do+5
 0hzgiWi8nqYLdbS5i8FnuL+RyF2EQJxU8aTx407gYJW/x4cV7SoQa8rhp7H1WkhiZe3v
 LByQ==
X-Gm-Message-State: APjAAAW/7Urn+ioonyfRkJZWs7Vk+ZBvgMH2lSTBBVamjDS8HNKlL+ut
 1YH4ESsGm3QuwK9sUGvNFDRBvijZxyyixMu9Z+BCqw==
X-Google-Smtp-Source: APXvYqyKKbAOAcnL7Ua+91DRPLDRYsfrRxk/SORt5Ys3Ow6z9DMzw2d9BbANbyIsA0so+DK528HCnAlI3w20Lsm0ysg=
X-Received: by 2002:ad4:4810:: with SMTP id g16mr25308035qvy.22.1579100267932; 
 Wed, 15 Jan 2020 06:57:47 -0800 (PST)
MIME-Version: 1.0
References: <20200115063710.15796-1-dja@axtens.net>
 <20200115063710.15796-2-dja@axtens.net>
 <CACT4Y+bAuaeHOcTHqp-=ckOb58fRajpGYk4khNzpS7_OyBDQYQ@mail.gmail.com>
 <917cc571-a25c-3d3e-547c-c537149834d6@c-s.fr>
In-Reply-To: <917cc571-a25c-3d3e-547c-c537149834d6@c-s.fr>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 15 Jan 2020 15:57:36 +0100
Message-ID: <CACT4Y+Y-qPLzn2sur5QnS2h4=Qb2B_5rFxwMKuzhe-hwsReGqg@mail.gmail.com>
Subject: Re: [PATCH 1/2] kasan: stop tests being eliminated as dead code with
 FORTIFY_SOURCE
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_065749_374327_EF3FA1FF 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-s390 <linux-s390@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
 the arch/x86 maintainers <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Daniel Micay <danielmicay@gmail.com>, Alexander Potapenko <glider@google.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Daniel Axtens <dja@axtens.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgMzo0NyBQTSBDaHJpc3RvcGhlIExlcm95CjxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4KPiBMZSAxNS8wMS8yMDIwIMOgIDE1OjQzLCBEbWl0
cnkgVnl1a292IGEgw6ljcml0IDoKPiA+IE9uIFdlZCwgSmFuIDE1LCAyMDIwIGF0IDc6MzcgQU0g
RGFuaWVsIEF4dGVucyA8ZGphQGF4dGVucy5uZXQ+IHdyb3RlOgo+ID4+Cj4gPj4gMyBLQVNBTiBz
ZWxmLXRlc3RzIGZhaWwgb24gYSBrZXJuZWwgd2l0aCBib3RoIEtBU0FOIGFuZCBGT1JUSUZZX1NP
VVJDRToKPiA+PiBtZW1jaHIsIG1lbWNtcCBhbmQgc3RybGVuLgo+ID4+Cj4gPj4gV2hlbiBGT1JU
SUZZX1NPVVJDRSBpcyBvbiwgYSBudW1iZXIgb2YgZnVuY3Rpb25zIGFyZSByZXBsYWNlZCB3aXRo
Cj4gPj4gZm9ydGlmaWVkIHZlcnNpb25zLCB3aGljaCBhdHRlbXB0IHRvIGNoZWNrIHRoZSBzaXpl
cyBvZiB0aGUgb3BlcmFuZHMuCj4gPj4gSG93ZXZlciwgdGhlc2UgZnVuY3Rpb25zIG9mdGVuIGRp
cmVjdGx5IGludm9rZSBfX2J1aWx0aW5fZm9vKCkgb25jZSB0aGV5Cj4gPj4gaGF2ZSBwZXJmb3Jt
ZWQgdGhlIGZvcnRpZnkgY2hlY2suIFRoZSBjb21waWxlciBjYW4gZGV0ZWN0IHRoYXQgdGhlIHJl
c3VsdHMKPiA+PiBvZiB0aGVzZSBmdW5jdGlvbnMgYXJlIG5vdCB1c2VkLCBhbmQga25vd3MgdGhh
dCB0aGV5IGhhdmUgbm8gb3RoZXIgc2lkZQo+ID4+IGVmZmVjdHMsIGFuZCBzbyBjYW4gZWxpbWlu
YXRlIHRoZW0gYXMgZGVhZCBjb2RlLgo+ID4+Cj4gPj4gV2h5IGFyZSBvbmx5IG1lbWNociwgbWVt
Y21wIGFuZCBzdHJsZW4gYWZmZWN0ZWQ/Cj4gPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09Cj4gPj4KPiA+PiBPZiBzdHJpbmcgYW5kIHN0cmluZy1saWtl
IGZ1bmN0aW9ucywga2FzYW5fdGVzdCB0ZXN0czoKPiA+Pgo+ID4+ICAgKiBzdHJjaHIgIC0+ICBu
b3QgYWZmZWN0ZWQsIG5vIGZvcnRpZmllZCB2ZXJzaW9uCj4gPj4gICAqIHN0cnJjaHIgLT4gIGxp
a2V3aXNlCj4gPj4gICAqIHN0cmNtcCAgLT4gIGxpa2V3aXNlCj4gPj4gICAqIHN0cm5jbXAgLT4g
IGxpa2V3aXNlCj4gPj4KPiA+PiAgICogc3RybmxlbiAtPiAgbm90IGFmZmVjdGVkLCB0aGUgZm9y
dGlmeSBzb3VyY2UgaW1wbGVtZW50YXRpb24gY2FsbHMgdGhlCj4gPj4gICAgICAgICAgICAgICAg
IHVuZGVybHlpbmcgc3RybmxlbiBpbXBsZW1lbnRhdGlvbiB3aGljaCBpcyBpbnN0cnVtZW50ZWQs
IG5vdAo+ID4+ICAgICAgICAgICAgICAgICBhIGJ1aWx0aW4KPiA+Pgo+ID4+ICAgKiBzdHJsZW4g
IC0+ICBhZmZlY3RlZCwgdGhlIGZvcnRpZnkgc291Y2UgaW1wbGVtZW50YXRpb24gY2FsbHMgYSBf
X2J1aWx0aW4KPiA+PiAgICAgICAgICAgICAgICAgdmVyc2lvbiB3aGljaCB0aGUgY29tcGlsZXIg
Y2FuIGRldGVybWluZSBpcyBkZWFkLgo+ID4+Cj4gPj4gICAqIG1lbWNociAgLT4gIGxpa2V3aXNl
Cj4gPj4gICAqIG1lbWNtcCAgLT4gIGxpa2V3aXNlCj4gPj4KPiA+PiAgICogbWVtc2V0IC0+ICAg
bm90IGFmZmVjdGVkLCB0aGUgY29tcGlsZXIga25vd3MgdGhhdCBtZW1zZXQgd3JpdGVzIHRvIGl0
cwo+ID4+ICAgICAgICAgICAgICAgICBmaXJzdCBhcmd1bWVudCBhbmQgdGhlcmVmb3JlIGlzIG5v
dCBkZWFkLgo+ID4+Cj4gPj4gV2h5IGRvZXMgdGhpcyBub3QgYWZmZWN0IHRoZSBmdW5jdGlvbnMg
bm9ybWFsbHk/Cj4gPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09Cj4gPj4KPiA+PiBJbiBzdHJpbmcuaCwgdGhlc2UgZnVuY3Rpb25zIGFyZSBub3QgbWFy
a2VkIGFzIF9fcHVyZSwgc28gdGhlIGNvbXBpbGVyCj4gPj4gY2Fubm90IGtub3cgdGhhdCB0aGV5
IGRvIG5vdCBoYXZlIHNpZGUgZWZmZWN0cy4gSWYgcmVsZXZhbnQgZnVuY3Rpb25zIGFyZQo+ID4+
IG1hcmtlZCBhcyBfX3B1cmUgaW4gc3RyaW5nLmgsIHdlIHNlZSB0aGUgZm9sbG93aW5nIHdhcm5p
bmdzIGFuZCB0aGUKPiA+PiBmdW5jdGlvbnMgYXJlIGVsaWRlZDoKPiA+Pgo+ID4+IGxpYi90ZXN0
X2thc2FuLmM6IEluIGZ1bmN0aW9uIOKAmGthc2FuX21lbWNocuKAmToKPiA+PiBsaWIvdGVzdF9r
YXNhbi5jOjYwNjoyOiB3YXJuaW5nOiBzdGF0ZW1lbnQgd2l0aCBubyBlZmZlY3QgWy1XdW51c2Vk
LXZhbHVlXQo+ID4+ICAgIG1lbWNocihwdHIsICcxJywgc2l6ZSArIDEpOwo+ID4+ICAgIF5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPj4gbGliL3Rlc3Rfa2FzYW4uYzogSW4gZnVuY3Rpb24g
4oCYa2FzYW5fbWVtY21w4oCZOgo+ID4+IGxpYi90ZXN0X2thc2FuLmM6NjIyOjI6IHdhcm5pbmc6
IHN0YXRlbWVudCB3aXRoIG5vIGVmZmVjdCBbLVd1bnVzZWQtdmFsdWVdCj4gPj4gICAgbWVtY21w
KHB0ciwgYXJyLCBzaXplKzEpOwo+ID4+ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+ID4+
IGxpYi90ZXN0X2thc2FuLmM6IEluIGZ1bmN0aW9uIOKAmGthc2FuX3N0cmluZ3PigJk6Cj4gPj4g
bGliL3Rlc3Rfa2FzYW4uYzo2NDU6Mjogd2FybmluZzogc3RhdGVtZW50IHdpdGggbm8gZWZmZWN0
IFstV3VudXNlZC12YWx1ZV0KPiA+PiAgICBzdHJjaHIocHRyLCAnMScpOwo+ID4+ICAgIF5+fn5+
fn5+fn5+fn5+fn4KPiA+PiAuLi4KPiA+Pgo+ID4+IFRoaXMgYW5ub3RhdGlvbiB3b3VsZCBtYWtl
IHNlbnNlIHRvIGFkZCBhbmQgY291bGQgYmUgYWRkZWQgYXQgYW55IHBvaW50LCBzbwo+ID4+IHRo
ZSBiZWhhdmlvdXIgb2YgdGVzdF9rYXNhbi5jIHNob3VsZCBjaGFuZ2UuCj4gPj4KPiA+PiBUaGUg
Zml4Cj4gPj4gPT09PT09PQo+ID4+Cj4gPj4gTWFrZSBhbGwgdGhlIGZ1bmN0aW9ucyB0aGF0IGFy
ZSBwdXJlIHdyaXRlIHRoZWlyIHJlc3VsdHMgdG8gYSBnbG9iYWwsCj4gPj4gd2hpY2ggbWFrZXMg
dGhlbSBsaXZlLiBUaGUgc3RybGVuIGFuZCBtZW1jaHIgdGVzdHMgbm93IHBhc3MuCj4gPj4KPiA+
PiBUaGUgbWVtY21wIHRlc3Qgc3RpbGwgZmFpbHMgdG8gdHJpZ2dlciwgd2hpY2ggaXMgYWRkcmVz
c2VkIGluIHRoZSBuZXh0Cj4gPj4gcGF0Y2guCj4gPj4KPiA+PiBDYzogRGFuaWVsIE1pY2F5IDxk
YW5pZWxtaWNheUBnbWFpbC5jb20+Cj4gPj4gQ2M6IEFuZHJleSBSeWFiaW5pbiA8YXJ5YWJpbmlu
QHZpcnR1b3p6by5jb20+Cj4gPj4gQ2M6IEFsZXhhbmRlciBQb3RhcGVua28gPGdsaWRlckBnb29n
bGUuY29tPgo+ID4+IENjOiBEbWl0cnkgVnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+Cj4gPj4g
Rml4ZXM6IDBjOTYzNTBhMmQyZiAoImxpYi90ZXN0X2thc2FuLmM6IGFkZCB0ZXN0cyBmb3Igc2V2
ZXJhbCBzdHJpbmcvbWVtb3J5IEFQSSBmdW5jdGlvbnMiKQo+ID4+IFNpZ25lZC1vZmYtYnk6IERh
bmllbCBBeHRlbnMgPGRqYUBheHRlbnMubmV0Pgo+ID4+IC0tLQo+ID4+ICAgbGliL3Rlc3Rfa2Fz
YW4uYyB8IDMwICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4+ICAgMSBmaWxlIGNo
YW5nZWQsIDE5IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+ID4+Cj4gPj4gZGlmZiAt
LWdpdCBhL2xpYi90ZXN0X2thc2FuLmMgYi9saWIvdGVzdF9rYXNhbi5jCj4gPj4gaW5kZXggMzI4
ZDMzYmVhZTM2Li41OGE4Y2VmMGQ3YTIgMTAwNjQ0Cj4gPj4gLS0tIGEvbGliL3Rlc3Rfa2FzYW4u
Ywo+ID4+ICsrKyBiL2xpYi90ZXN0X2thc2FuLmMKPiA+PiBAQCAtMjMsNiArMjMsMTQgQEAKPiA+
Pgo+ID4+ICAgI2luY2x1ZGUgPGFzbS9wYWdlLmg+Cj4gPj4KPiA+PiArLyoKPiA+PiArICogV2Ug
YXNzaWduIHNvbWUgdGVzdCByZXN1bHRzIHRvIHRoZXNlIGdsb2JhbHMgdG8gbWFrZSBzdXJlIHRo
ZSB0ZXN0cwo+ID4+ICsgKiBhcmUgbm90IGVsaW1pbmF0ZWQgYXMgZGVhZCBjb2RlLgo+ID4+ICsg
Ki8KPiA+PiArCj4gPj4gK2ludCBpbnRfcmVzdWx0Owo+ID4+ICt2b2lkICpwdHJfcmVzdWx0Owo+
ID4KPiA+IFRoZXNlIGFyZSBnbG9iYWxzLCBidXQgYXJlIG5vdCBzdGF0aWMgYW5kIGRvbid0IGhh
dmUga2FzYW5fIHByZWZpeC4KPiA+IEJ1dCBJIGd1ZXNzIHRoaXMgZG9lcyBub3QgbWF0dGVyIGZv
ciBtb2R1bGVzPwo+ID4gT3RoZXJ3aXNlOgo+ID4KPiA+IFJldmlld2VkLWJ5OiBEbWl0cnkgVnl1
a292IDxkdnl1a292QGdvb2dsZS5jb20+Cj4gPgo+Cj4gSSB0aGluayBpZiB5b3UgbWFrZSB0aGVt
IHN0YXRpYywgR0NDIHdpbGwgc2VlIHRoZXkgYXJlbid0IHVzZWQgYW5kIHdpbGwKPiBlbGltaW5h
dGUgZXZlcnl0aGluZyBzdGlsbCA/CgpzdGF0aWMgdm9sYXRpbGU/IDopCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
