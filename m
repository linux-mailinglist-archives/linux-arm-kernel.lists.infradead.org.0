Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEEC13C674
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:47:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uxXACYaczXmPoaut+0godAIMT4b5GTS0ZFKLG7hcZWY=; b=JxHBxoUM+d0l63t6H8vEFKGS2
	YpDFAeyg/UEcmBioEVyi/832yBJxpOZgsQZ7/nSU9EYpsUOyNgC0fouKsVELIaHIBR5J5bPNOIZtz
	RVCo0qudH66fEk5E1oxTkkkClvVZYAbxLUvScnoQ9igwH1RiRQLAKdRupSbeBbPFQsSBiCFsrMUAd
	H9b49uBEspw3WrwtsNBRuxJ9lPOQiuneairhZAUqYdh2BwTMsswX2FLn83TcmFfzww9gtJFmLX44Z
	yjB3BCUoutrjW4Y3aLo5IWj7gqzyxQ5T3JaSHkFa9gJcG7Ja0nf/N2Vpr+eafuNqhzwEiBA59G+ma
	qd9eM1bBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjx6-0000Ov-6C; Wed, 15 Jan 2020 14:47:24 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjwv-0000Ny-Dg
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:47:17 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47yVXY1sjBz9tylP;
 Wed, 15 Jan 2020 15:47:09 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=v0ZdT0Jh; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 1yEnk5s5C33f; Wed, 15 Jan 2020 15:47:09 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47yVXY0mmhz9tylH;
 Wed, 15 Jan 2020 15:47:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579099629; bh=GvjzXQnIL+hCqDUkI7JAeG4AEubHEzQxfXAYFm1+LnE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=v0ZdT0JhTBUed9+RMH8/zgRWmVMtklpKF4OyD4fUhEXwH0bgTT7veCONXVm+nrzp0
 OcRyq7vswits+6oi5xj+KxaIPN6CqvBJdySyxX2DpkqRfwvxMwmINAXHKUrtY9rDoF
 Ov5rL9rqArrPIuAwM0/8yTdbKGn9JuCm+oKttX5s=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6E61F8B774;
 Wed, 15 Jan 2020 15:47:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id BnOhqHOrMIva; Wed, 15 Jan 2020 15:47:10 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 15D4B8B805;
 Wed, 15 Jan 2020 15:47:10 +0100 (CET)
Subject: Re: [PATCH 1/2] kasan: stop tests being eliminated as dead code with
 FORTIFY_SOURCE
To: Dmitry Vyukov <dvyukov@google.com>, Daniel Axtens <dja@axtens.net>
References: <20200115063710.15796-1-dja@axtens.net>
 <20200115063710.15796-2-dja@axtens.net>
 <CACT4Y+bAuaeHOcTHqp-=ckOb58fRajpGYk4khNzpS7_OyBDQYQ@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <917cc571-a25c-3d3e-547c-c537149834d6@c-s.fr>
Date: Wed, 15 Jan 2020 15:47:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CACT4Y+bAuaeHOcTHqp-=ckOb58fRajpGYk4khNzpS7_OyBDQYQ@mail.gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_064713_751942_7EE4EA09 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxNS8wMS8yMDIwIMOgIDE1OjQzLCBEbWl0cnkgVnl1a292IGEgw6ljcml0wqA6Cj4gT24g
V2VkLCBKYW4gMTUsIDIwMjAgYXQgNzozNyBBTSBEYW5pZWwgQXh0ZW5zIDxkamFAYXh0ZW5zLm5l
dD4gd3JvdGU6Cj4+Cj4+IDMgS0FTQU4gc2VsZi10ZXN0cyBmYWlsIG9uIGEga2VybmVsIHdpdGgg
Ym90aCBLQVNBTiBhbmQgRk9SVElGWV9TT1VSQ0U6Cj4+IG1lbWNociwgbWVtY21wIGFuZCBzdHJs
ZW4uCj4+Cj4+IFdoZW4gRk9SVElGWV9TT1VSQ0UgaXMgb24sIGEgbnVtYmVyIG9mIGZ1bmN0aW9u
cyBhcmUgcmVwbGFjZWQgd2l0aAo+PiBmb3J0aWZpZWQgdmVyc2lvbnMsIHdoaWNoIGF0dGVtcHQg
dG8gY2hlY2sgdGhlIHNpemVzIG9mIHRoZSBvcGVyYW5kcy4KPj4gSG93ZXZlciwgdGhlc2UgZnVu
Y3Rpb25zIG9mdGVuIGRpcmVjdGx5IGludm9rZSBfX2J1aWx0aW5fZm9vKCkgb25jZSB0aGV5Cj4+
IGhhdmUgcGVyZm9ybWVkIHRoZSBmb3J0aWZ5IGNoZWNrLiBUaGUgY29tcGlsZXIgY2FuIGRldGVj
dCB0aGF0IHRoZSByZXN1bHRzCj4+IG9mIHRoZXNlIGZ1bmN0aW9ucyBhcmUgbm90IHVzZWQsIGFu
ZCBrbm93cyB0aGF0IHRoZXkgaGF2ZSBubyBvdGhlciBzaWRlCj4+IGVmZmVjdHMsIGFuZCBzbyBj
YW4gZWxpbWluYXRlIHRoZW0gYXMgZGVhZCBjb2RlLgo+Pgo+PiBXaHkgYXJlIG9ubHkgbWVtY2hy
LCBtZW1jbXAgYW5kIHN0cmxlbiBhZmZlY3RlZD8KPj4gPT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09Cj4+Cj4+IE9mIHN0cmluZyBhbmQgc3RyaW5nLWxpa2Ug
ZnVuY3Rpb25zLCBrYXNhbl90ZXN0IHRlc3RzOgo+Pgo+PiAgICogc3RyY2hyICAtPiAgbm90IGFm
ZmVjdGVkLCBubyBmb3J0aWZpZWQgdmVyc2lvbgo+PiAgICogc3RycmNociAtPiAgbGlrZXdpc2UK
Pj4gICAqIHN0cmNtcCAgLT4gIGxpa2V3aXNlCj4+ICAgKiBzdHJuY21wIC0+ICBsaWtld2lzZQo+
Pgo+PiAgICogc3RybmxlbiAtPiAgbm90IGFmZmVjdGVkLCB0aGUgZm9ydGlmeSBzb3VyY2UgaW1w
bGVtZW50YXRpb24gY2FsbHMgdGhlCj4+ICAgICAgICAgICAgICAgICB1bmRlcmx5aW5nIHN0cm5s
ZW4gaW1wbGVtZW50YXRpb24gd2hpY2ggaXMgaW5zdHJ1bWVudGVkLCBub3QKPj4gICAgICAgICAg
ICAgICAgIGEgYnVpbHRpbgo+Pgo+PiAgICogc3RybGVuICAtPiAgYWZmZWN0ZWQsIHRoZSBmb3J0
aWZ5IHNvdWNlIGltcGxlbWVudGF0aW9uIGNhbGxzIGEgX19idWlsdGluCj4+ICAgICAgICAgICAg
ICAgICB2ZXJzaW9uIHdoaWNoIHRoZSBjb21waWxlciBjYW4gZGV0ZXJtaW5lIGlzIGRlYWQuCj4+
Cj4+ICAgKiBtZW1jaHIgIC0+ICBsaWtld2lzZQo+PiAgICogbWVtY21wICAtPiAgbGlrZXdpc2UK
Pj4KPj4gICAqIG1lbXNldCAtPiAgIG5vdCBhZmZlY3RlZCwgdGhlIGNvbXBpbGVyIGtub3dzIHRo
YXQgbWVtc2V0IHdyaXRlcyB0byBpdHMKPj4gICAgICAgICAgICAgICAgIGZpcnN0IGFyZ3VtZW50
IGFuZCB0aGVyZWZvcmUgaXMgbm90IGRlYWQuCj4+Cj4+IFdoeSBkb2VzIHRoaXMgbm90IGFmZmVj
dCB0aGUgZnVuY3Rpb25zIG5vcm1hbGx5Pwo+PiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KPj4KPj4gSW4gc3RyaW5nLmgsIHRoZXNlIGZ1bmN0aW9ucyBh
cmUgbm90IG1hcmtlZCBhcyBfX3B1cmUsIHNvIHRoZSBjb21waWxlcgo+PiBjYW5ub3Qga25vdyB0
aGF0IHRoZXkgZG8gbm90IGhhdmUgc2lkZSBlZmZlY3RzLiBJZiByZWxldmFudCBmdW5jdGlvbnMg
YXJlCj4+IG1hcmtlZCBhcyBfX3B1cmUgaW4gc3RyaW5nLmgsIHdlIHNlZSB0aGUgZm9sbG93aW5n
IHdhcm5pbmdzIGFuZCB0aGUKPj4gZnVuY3Rpb25zIGFyZSBlbGlkZWQ6Cj4+Cj4+IGxpYi90ZXN0
X2thc2FuLmM6IEluIGZ1bmN0aW9uIOKAmGthc2FuX21lbWNocuKAmToKPj4gbGliL3Rlc3Rfa2Fz
YW4uYzo2MDY6Mjogd2FybmluZzogc3RhdGVtZW50IHdpdGggbm8gZWZmZWN0IFstV3VudXNlZC12
YWx1ZV0KPj4gICAgbWVtY2hyKHB0ciwgJzEnLCBzaXplICsgMSk7Cj4+ICAgIF5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+Cj4+IGxpYi90ZXN0X2thc2FuLmM6IEluIGZ1bmN0aW9uIOKAmGthc2Fu
X21lbWNtcOKAmToKPj4gbGliL3Rlc3Rfa2FzYW4uYzo2MjI6Mjogd2FybmluZzogc3RhdGVtZW50
IHdpdGggbm8gZWZmZWN0IFstV3VudXNlZC12YWx1ZV0KPj4gICAgbWVtY21wKHB0ciwgYXJyLCBz
aXplKzEpOwo+PiAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPj4gbGliL3Rlc3Rfa2FzYW4u
YzogSW4gZnVuY3Rpb24g4oCYa2FzYW5fc3RyaW5nc+KAmToKPj4gbGliL3Rlc3Rfa2FzYW4uYzo2
NDU6Mjogd2FybmluZzogc3RhdGVtZW50IHdpdGggbm8gZWZmZWN0IFstV3VudXNlZC12YWx1ZV0K
Pj4gICAgc3RyY2hyKHB0ciwgJzEnKTsKPj4gICAgXn5+fn5+fn5+fn5+fn5+fgo+PiAuLi4KPj4K
Pj4gVGhpcyBhbm5vdGF0aW9uIHdvdWxkIG1ha2Ugc2Vuc2UgdG8gYWRkIGFuZCBjb3VsZCBiZSBh
ZGRlZCBhdCBhbnkgcG9pbnQsIHNvCj4+IHRoZSBiZWhhdmlvdXIgb2YgdGVzdF9rYXNhbi5jIHNo
b3VsZCBjaGFuZ2UuCj4+Cj4+IFRoZSBmaXgKPj4gPT09PT09PQo+Pgo+PiBNYWtlIGFsbCB0aGUg
ZnVuY3Rpb25zIHRoYXQgYXJlIHB1cmUgd3JpdGUgdGhlaXIgcmVzdWx0cyB0byBhIGdsb2JhbCwK
Pj4gd2hpY2ggbWFrZXMgdGhlbSBsaXZlLiBUaGUgc3RybGVuIGFuZCBtZW1jaHIgdGVzdHMgbm93
IHBhc3MuCj4+Cj4+IFRoZSBtZW1jbXAgdGVzdCBzdGlsbCBmYWlscyB0byB0cmlnZ2VyLCB3aGlj
aCBpcyBhZGRyZXNzZWQgaW4gdGhlIG5leHQKPj4gcGF0Y2guCj4+Cj4+IENjOiBEYW5pZWwgTWlj
YXkgPGRhbmllbG1pY2F5QGdtYWlsLmNvbT4KPj4gQ2M6IEFuZHJleSBSeWFiaW5pbiA8YXJ5YWJp
bmluQHZpcnR1b3p6by5jb20+Cj4+IENjOiBBbGV4YW5kZXIgUG90YXBlbmtvIDxnbGlkZXJAZ29v
Z2xlLmNvbT4KPj4gQ2M6IERtaXRyeSBWeXVrb3YgPGR2eXVrb3ZAZ29vZ2xlLmNvbT4KPj4gRml4
ZXM6IDBjOTYzNTBhMmQyZiAoImxpYi90ZXN0X2thc2FuLmM6IGFkZCB0ZXN0cyBmb3Igc2V2ZXJh
bCBzdHJpbmcvbWVtb3J5IEFQSSBmdW5jdGlvbnMiKQo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwg
QXh0ZW5zIDxkamFAYXh0ZW5zLm5ldD4KPj4gLS0tCj4+ICAgbGliL3Rlc3Rfa2FzYW4uYyB8IDMw
ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBp
bnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2xpYi90ZXN0
X2thc2FuLmMgYi9saWIvdGVzdF9rYXNhbi5jCj4+IGluZGV4IDMyOGQzM2JlYWUzNi4uNThhOGNl
ZjBkN2EyIDEwMDY0NAo+PiAtLS0gYS9saWIvdGVzdF9rYXNhbi5jCj4+ICsrKyBiL2xpYi90ZXN0
X2thc2FuLmMKPj4gQEAgLTIzLDYgKzIzLDE0IEBACj4+Cj4+ICAgI2luY2x1ZGUgPGFzbS9wYWdl
Lmg+Cj4+Cj4+ICsvKgo+PiArICogV2UgYXNzaWduIHNvbWUgdGVzdCByZXN1bHRzIHRvIHRoZXNl
IGdsb2JhbHMgdG8gbWFrZSBzdXJlIHRoZSB0ZXN0cwo+PiArICogYXJlIG5vdCBlbGltaW5hdGVk
IGFzIGRlYWQgY29kZS4KPj4gKyAqLwo+PiArCj4+ICtpbnQgaW50X3Jlc3VsdDsKPj4gK3ZvaWQg
KnB0cl9yZXN1bHQ7Cj4gCj4gVGhlc2UgYXJlIGdsb2JhbHMsIGJ1dCBhcmUgbm90IHN0YXRpYyBh
bmQgZG9uJ3QgaGF2ZSBrYXNhbl8gcHJlZml4Lgo+IEJ1dCBJIGd1ZXNzIHRoaXMgZG9lcyBub3Qg
bWF0dGVyIGZvciBtb2R1bGVzPwo+IE90aGVyd2lzZToKPiAKPiBSZXZpZXdlZC1ieTogRG1pdHJ5
IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPgo+IAoKSSB0aGluayBpZiB5b3UgbWFrZSB0aGVt
IHN0YXRpYywgR0NDIHdpbGwgc2VlIHRoZXkgYXJlbid0IHVzZWQgYW5kIHdpbGwgCmVsaW1pbmF0
ZSBldmVyeXRoaW5nIHN0aWxsID8KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
