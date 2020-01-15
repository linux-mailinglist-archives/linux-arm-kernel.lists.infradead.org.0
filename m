Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A05E13C65E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=72aJm+au5HD6uAO7U2aAKTNmrT6CzFNyDb+G8Ibwb10=; b=bVdQuU+sDoO9zf
	PMivXVFdaqE0YEaZrAU/PCPlbbirrTnbaaJbXDUzQ1xOipQnTK099QKKv1ePJeuTAImBLlCbNDEvN
	rewLdN/0T16SdfKnSDHLcPZVXrleWPORYy+CnKJX7ZA5Rbzi5vN9eKmEw3Spt+RUGHrvqJH65BpC1
	7bWG6H/2RH06NF5ENuv9DfAJKQKqi+Dj65sTyjimmL+izeLt6LJmoi4XPP0V9HUQz8yp0QqLQtzkA
	p4VxJJ1j8+uPo1u6pJeeLavx5hUooBdqeJPwCH2pnyoRcvxCnUpdsyvWEgkKI07f7V7LreCwxi+nj
	Bww2vhTBXW4cDemQU50g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjtS-0006wV-RT; Wed, 15 Jan 2020 14:43:38 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjtI-0006v6-MG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:43:33 +0000
Received: by mail-qk1-x741.google.com with SMTP id k6so15829175qki.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 06:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Dsov92auA7/G12RJ9hsAhzPgLmMj5NcPBeP6nNJDSO0=;
 b=HAmEbppXjeEjGFlyjzVhaLxJPK6Qu2TL7zFYWoJ+6xa7AMU7f8xGwf2Pzg99BRj++8
 RvmJHwFmUUh4S5athIHqzOwqDZLEUhNxjEiQK9XVd4nrV+B01TTnZczJQE2bcpTekpw2
 n6L4wFGMG6zO9x9aZT8ci6v9mM1zpqges4LhDd2kBEXpAdu0q+goONUh4uissEOW2n+j
 lQV7502daTXdwVDVOYsLIP6os+IibkP+OYMirLgI8gSuMWPKe5QQEzEWvHUksVAROFZT
 1LXCscvvcXbfvLyI4Nyo67cA34Y4T379odeXBQ7uz+eoJnT6eXfPRTE9U0o/5NY+5b3d
 EYlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Dsov92auA7/G12RJ9hsAhzPgLmMj5NcPBeP6nNJDSO0=;
 b=cHxGYjfV+mQDnIsdftiV8ijRjJA+uQDRZKc5KHiSBJEenm17ziRDhURme8a7afr++D
 w79yYHZfR3H79aTJvsBbhw3zsvcs2ItqeN33HOYCy7sF8ZeSmV4dSMd3ir7R3BuArGwC
 qyfwzTn+2nz0OlXQbgUvN+Lh+sJ2rn9po8lRpGlkaYLy6CU+OaeLPlarliaXNtqztfUJ
 1BaLJVI97MSakR/47tvwcCcHGHsPqlvmItcNom3RplEWM9ForJ77tRWtN9ssG/Nyv0LD
 AHPUiCCANqLb6fAJfl3wNr927d78pHa1KYtwuxw0fKuv0YcO1sWascAgiGG+IuNqdSWn
 +hhA==
X-Gm-Message-State: APjAAAVODzpAoaQtrKkrC5WY/Fc6L0kxOyW4gPAsm7y5KiLVprB3+kyY
 3npLdy6IFtPzUUCgmoPoBz9qFNHoMfoTnI3Uqs2clw==
X-Google-Smtp-Source: APXvYqyUwMjABHutPLZrK97jNVFWLT7TfwkGKBtOm4Z15o33FBoKxwGilBQv+LujNRvkTq3H/64pu/pRwGwVkNNWReE=
X-Received: by 2002:a05:620a:1136:: with SMTP id
 p22mr28110133qkk.8.1579099404892; 
 Wed, 15 Jan 2020 06:43:24 -0800 (PST)
MIME-Version: 1.0
References: <20200115063710.15796-1-dja@axtens.net>
 <20200115063710.15796-2-dja@axtens.net>
In-Reply-To: <20200115063710.15796-2-dja@axtens.net>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 15 Jan 2020 15:43:12 +0100
Message-ID: <CACT4Y+bAuaeHOcTHqp-=ckOb58fRajpGYk4khNzpS7_OyBDQYQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] kasan: stop tests being eliminated as dead code with
 FORTIFY_SOURCE
To: Daniel Axtens <dja@axtens.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_064328_727005_61D37AFD 
X-CRM114-Status: GOOD (  25.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
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
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMTUsIDIwMjAgYXQgNzozNyBBTSBEYW5pZWwgQXh0ZW5zIDxkamFAYXh0ZW5z
Lm5ldD4gd3JvdGU6Cj4KPiAzIEtBU0FOIHNlbGYtdGVzdHMgZmFpbCBvbiBhIGtlcm5lbCB3aXRo
IGJvdGggS0FTQU4gYW5kIEZPUlRJRllfU09VUkNFOgo+IG1lbWNociwgbWVtY21wIGFuZCBzdHJs
ZW4uCj4KPiBXaGVuIEZPUlRJRllfU09VUkNFIGlzIG9uLCBhIG51bWJlciBvZiBmdW5jdGlvbnMg
YXJlIHJlcGxhY2VkIHdpdGgKPiBmb3J0aWZpZWQgdmVyc2lvbnMsIHdoaWNoIGF0dGVtcHQgdG8g
Y2hlY2sgdGhlIHNpemVzIG9mIHRoZSBvcGVyYW5kcy4KPiBIb3dldmVyLCB0aGVzZSBmdW5jdGlv
bnMgb2Z0ZW4gZGlyZWN0bHkgaW52b2tlIF9fYnVpbHRpbl9mb28oKSBvbmNlIHRoZXkKPiBoYXZl
IHBlcmZvcm1lZCB0aGUgZm9ydGlmeSBjaGVjay4gVGhlIGNvbXBpbGVyIGNhbiBkZXRlY3QgdGhh
dCB0aGUgcmVzdWx0cwo+IG9mIHRoZXNlIGZ1bmN0aW9ucyBhcmUgbm90IHVzZWQsIGFuZCBrbm93
cyB0aGF0IHRoZXkgaGF2ZSBubyBvdGhlciBzaWRlCj4gZWZmZWN0cywgYW5kIHNvIGNhbiBlbGlt
aW5hdGUgdGhlbSBhcyBkZWFkIGNvZGUuCj4KPiBXaHkgYXJlIG9ubHkgbWVtY2hyLCBtZW1jbXAg
YW5kIHN0cmxlbiBhZmZlY3RlZD8KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0KPgo+IE9mIHN0cmluZyBhbmQgc3RyaW5nLWxpa2UgZnVuY3Rpb25zLCBr
YXNhbl90ZXN0IHRlc3RzOgo+Cj4gICogc3RyY2hyICAtPiAgbm90IGFmZmVjdGVkLCBubyBmb3J0
aWZpZWQgdmVyc2lvbgo+ICAqIHN0cnJjaHIgLT4gIGxpa2V3aXNlCj4gICogc3RyY21wICAtPiAg
bGlrZXdpc2UKPiAgKiBzdHJuY21wIC0+ICBsaWtld2lzZQo+Cj4gICogc3RybmxlbiAtPiAgbm90
IGFmZmVjdGVkLCB0aGUgZm9ydGlmeSBzb3VyY2UgaW1wbGVtZW50YXRpb24gY2FsbHMgdGhlCj4g
ICAgICAgICAgICAgICAgdW5kZXJseWluZyBzdHJubGVuIGltcGxlbWVudGF0aW9uIHdoaWNoIGlz
IGluc3RydW1lbnRlZCwgbm90Cj4gICAgICAgICAgICAgICAgYSBidWlsdGluCj4KPiAgKiBzdHJs
ZW4gIC0+ICBhZmZlY3RlZCwgdGhlIGZvcnRpZnkgc291Y2UgaW1wbGVtZW50YXRpb24gY2FsbHMg
YSBfX2J1aWx0aW4KPiAgICAgICAgICAgICAgICB2ZXJzaW9uIHdoaWNoIHRoZSBjb21waWxlciBj
YW4gZGV0ZXJtaW5lIGlzIGRlYWQuCj4KPiAgKiBtZW1jaHIgIC0+ICBsaWtld2lzZQo+ICAqIG1l
bWNtcCAgLT4gIGxpa2V3aXNlCj4KPiAgKiBtZW1zZXQgLT4gICBub3QgYWZmZWN0ZWQsIHRoZSBj
b21waWxlciBrbm93cyB0aGF0IG1lbXNldCB3cml0ZXMgdG8gaXRzCj4gICAgICAgICAgICAgICAg
Zmlyc3QgYXJndW1lbnQgYW5kIHRoZXJlZm9yZSBpcyBub3QgZGVhZC4KPgo+IFdoeSBkb2VzIHRo
aXMgbm90IGFmZmVjdCB0aGUgZnVuY3Rpb25zIG5vcm1hbGx5Pwo+ID09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Cj4gSW4gc3RyaW5nLmgsIHRoZXNlIGZ1
bmN0aW9ucyBhcmUgbm90IG1hcmtlZCBhcyBfX3B1cmUsIHNvIHRoZSBjb21waWxlcgo+IGNhbm5v
dCBrbm93IHRoYXQgdGhleSBkbyBub3QgaGF2ZSBzaWRlIGVmZmVjdHMuIElmIHJlbGV2YW50IGZ1
bmN0aW9ucyBhcmUKPiBtYXJrZWQgYXMgX19wdXJlIGluIHN0cmluZy5oLCB3ZSBzZWUgdGhlIGZv
bGxvd2luZyB3YXJuaW5ncyBhbmQgdGhlCj4gZnVuY3Rpb25zIGFyZSBlbGlkZWQ6Cj4KPiBsaWIv
dGVzdF9rYXNhbi5jOiBJbiBmdW5jdGlvbiDigJhrYXNhbl9tZW1jaHLigJk6Cj4gbGliL3Rlc3Rf
a2FzYW4uYzo2MDY6Mjogd2FybmluZzogc3RhdGVtZW50IHdpdGggbm8gZWZmZWN0IFstV3VudXNl
ZC12YWx1ZV0KPiAgIG1lbWNocihwdHIsICcxJywgc2l6ZSArIDEpOwo+ICAgXn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn4KPiBsaWIvdGVzdF9rYXNhbi5jOiBJbiBmdW5jdGlvbiDigJhrYXNhbl9t
ZW1jbXDigJk6Cj4gbGliL3Rlc3Rfa2FzYW4uYzo2MjI6Mjogd2FybmluZzogc3RhdGVtZW50IHdp
dGggbm8gZWZmZWN0IFstV3VudXNlZC12YWx1ZV0KPiAgIG1lbWNtcChwdHIsIGFyciwgc2l6ZSsx
KTsKPiAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGxpYi90ZXN0X2thc2FuLmM6IEluIGZ1
bmN0aW9uIOKAmGthc2FuX3N0cmluZ3PigJk6Cj4gbGliL3Rlc3Rfa2FzYW4uYzo2NDU6Mjogd2Fy
bmluZzogc3RhdGVtZW50IHdpdGggbm8gZWZmZWN0IFstV3VudXNlZC12YWx1ZV0KPiAgIHN0cmNo
cihwdHIsICcxJyk7Cj4gICBefn5+fn5+fn5+fn5+fn5+Cj4gLi4uCj4KPiBUaGlzIGFubm90YXRp
b24gd291bGQgbWFrZSBzZW5zZSB0byBhZGQgYW5kIGNvdWxkIGJlIGFkZGVkIGF0IGFueSBwb2lu
dCwgc28KPiB0aGUgYmVoYXZpb3VyIG9mIHRlc3Rfa2FzYW4uYyBzaG91bGQgY2hhbmdlLgo+Cj4g
VGhlIGZpeAo+ID09PT09PT0KPgo+IE1ha2UgYWxsIHRoZSBmdW5jdGlvbnMgdGhhdCBhcmUgcHVy
ZSB3cml0ZSB0aGVpciByZXN1bHRzIHRvIGEgZ2xvYmFsLAo+IHdoaWNoIG1ha2VzIHRoZW0gbGl2
ZS4gVGhlIHN0cmxlbiBhbmQgbWVtY2hyIHRlc3RzIG5vdyBwYXNzLgo+Cj4gVGhlIG1lbWNtcCB0
ZXN0IHN0aWxsIGZhaWxzIHRvIHRyaWdnZXIsIHdoaWNoIGlzIGFkZHJlc3NlZCBpbiB0aGUgbmV4
dAo+IHBhdGNoLgo+Cj4gQ2M6IERhbmllbCBNaWNheSA8ZGFuaWVsbWljYXlAZ21haWwuY29tPgo+
IENjOiBBbmRyZXkgUnlhYmluaW4gPGFyeWFiaW5pbkB2aXJ0dW96em8uY29tPgo+IENjOiBBbGV4
YW5kZXIgUG90YXBlbmtvIDxnbGlkZXJAZ29vZ2xlLmNvbT4KPiBDYzogRG1pdHJ5IFZ5dWtvdiA8
ZHZ5dWtvdkBnb29nbGUuY29tPgo+IEZpeGVzOiAwYzk2MzUwYTJkMmYgKCJsaWIvdGVzdF9rYXNh
bi5jOiBhZGQgdGVzdHMgZm9yIHNldmVyYWwgc3RyaW5nL21lbW9yeSBBUEkgZnVuY3Rpb25zIikK
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgQXh0ZW5zIDxkamFAYXh0ZW5zLm5ldD4KPiAtLS0KPiAg
bGliL3Rlc3Rfa2FzYW4uYyB8IDMwICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvbGliL3Rlc3Rfa2FzYW4uYyBiL2xpYi90ZXN0X2thc2FuLmMKPiBpbmRleCAzMjhk
MzNiZWFlMzYuLjU4YThjZWYwZDdhMiAxMDA2NDQKPiAtLS0gYS9saWIvdGVzdF9rYXNhbi5jCj4g
KysrIGIvbGliL3Rlc3Rfa2FzYW4uYwo+IEBAIC0yMyw2ICsyMywxNCBAQAo+Cj4gICNpbmNsdWRl
IDxhc20vcGFnZS5oPgo+Cj4gKy8qCj4gKyAqIFdlIGFzc2lnbiBzb21lIHRlc3QgcmVzdWx0cyB0
byB0aGVzZSBnbG9iYWxzIHRvIG1ha2Ugc3VyZSB0aGUgdGVzdHMKPiArICogYXJlIG5vdCBlbGlt
aW5hdGVkIGFzIGRlYWQgY29kZS4KPiArICovCj4gKwo+ICtpbnQgaW50X3Jlc3VsdDsKPiArdm9p
ZCAqcHRyX3Jlc3VsdDsKClRoZXNlIGFyZSBnbG9iYWxzLCBidXQgYXJlIG5vdCBzdGF0aWMgYW5k
IGRvbid0IGhhdmUga2FzYW5fIHByZWZpeC4KQnV0IEkgZ3Vlc3MgdGhpcyBkb2VzIG5vdCBtYXR0
ZXIgZm9yIG1vZHVsZXM/Ck90aGVyd2lzZToKClJldmlld2VkLWJ5OiBEbWl0cnkgVnl1a292IDxk
dnl1a292QGdvb2dsZS5jb20+Cgo+ICsKPiAgLyoKPiAgICogTm90ZTogdGVzdCBmdW5jdGlvbnMg
YXJlIG1hcmtlZCBub2lubGluZSBzbyB0aGF0IHRoZWlyIG5hbWVzIGFwcGVhciBpbgo+ICAgKiBy
ZXBvcnRzLgo+IEBAIC02MDMsNyArNjExLDcgQEAgc3RhdGljIG5vaW5saW5lIHZvaWQgX19pbml0
IGthc2FuX21lbWNocih2b2lkKQo+ICAgICAgICAgaWYgKCFwdHIpCj4gICAgICAgICAgICAgICAg
IHJldHVybjsKPgo+IC0gICAgICAgbWVtY2hyKHB0ciwgJzEnLCBzaXplICsgMSk7Cj4gKyAgICAg
ICBwdHJfcmVzdWx0ID0gbWVtY2hyKHB0ciwgJzEnLCBzaXplICsgMSk7Cj4gICAgICAgICBrZnJl
ZShwdHIpOwo+ICB9Cj4KPiBAQCAtNjE4LDggKzYyNiw3IEBAIHN0YXRpYyBub2lubGluZSB2b2lk
IF9faW5pdCBrYXNhbl9tZW1jbXAodm9pZCkKPiAgICAgICAgIGlmICghcHRyKQo+ICAgICAgICAg
ICAgICAgICByZXR1cm47Cj4KPiAtICAgICAgIG1lbXNldChhcnIsIDAsIHNpemVvZihhcnIpKTsK
PiAtICAgICAgIG1lbWNtcChwdHIsIGFyciwgc2l6ZSsxKTsKPiArICAgICAgIGludF9yZXN1bHQg
PSBtZW1jbXAocHRyLCBhcnIsIHNpemUgKyAxKTsKPiAgICAgICAgIGtmcmVlKHB0cik7Cj4gIH0K
Pgo+IEBAIC02NDIsMjIgKzY0OSwyMiBAQCBzdGF0aWMgbm9pbmxpbmUgdm9pZCBfX2luaXQga2Fz
YW5fc3RyaW5ncyh2b2lkKQo+ICAgICAgICAgICogd2lsbCBsaWtlbHkgcG9pbnQgdG8gemVyb2Vk
IGJ5dGUuCj4gICAgICAgICAgKi8KPiAgICAgICAgIHB0ciArPSAxNjsKPiAtICAgICAgIHN0cmNo
cihwdHIsICcxJyk7Cj4gKyAgICAgICBwdHJfcmVzdWx0ID0gc3RyY2hyKHB0ciwgJzEnKTsKPgo+
ICAgICAgICAgcHJfaW5mbygidXNlLWFmdGVyLWZyZWUgaW4gc3RycmNoclxuIik7Cj4gLSAgICAg
ICBzdHJyY2hyKHB0ciwgJzEnKTsKPiArICAgICAgIHB0cl9yZXN1bHQgPSBzdHJyY2hyKHB0ciwg
JzEnKTsKPgo+ICAgICAgICAgcHJfaW5mbygidXNlLWFmdGVyLWZyZWUgaW4gc3RyY21wXG4iKTsK
PiAtICAgICAgIHN0cmNtcChwdHIsICIyIik7Cj4gKyAgICAgICBpbnRfcmVzdWx0ID0gc3RyY21w
KHB0ciwgIjIiKTsKPgo+ICAgICAgICAgcHJfaW5mbygidXNlLWFmdGVyLWZyZWUgaW4gc3RybmNt
cFxuIik7Cj4gLSAgICAgICBzdHJuY21wKHB0ciwgIjIiLCAxKTsKPiArICAgICAgIGludF9yZXN1
bHQgPSBzdHJuY21wKHB0ciwgIjIiLCAxKTsKPgo+ICAgICAgICAgcHJfaW5mbygidXNlLWFmdGVy
LWZyZWUgaW4gc3RybGVuXG4iKTsKPiAtICAgICAgIHN0cmxlbihwdHIpOwo+ICsgICAgICAgaW50
X3Jlc3VsdCA9IHN0cmxlbihwdHIpOwo+Cj4gICAgICAgICBwcl9pbmZvKCJ1c2UtYWZ0ZXItZnJl
ZSBpbiBzdHJubGVuXG4iKTsKPiAtICAgICAgIHN0cm5sZW4ocHRyLCAxKTsKPiArICAgICAgIGlu
dF9yZXN1bHQgPSBzdHJubGVuKHB0ciwgMSk7Cj4gIH0KPgo+ICBzdGF0aWMgbm9pbmxpbmUgdm9p
ZCBfX2luaXQga2FzYW5fYml0b3BzKHZvaWQpCj4gQEAgLTcyNCwxMSArNzMxLDEyIEBAIHN0YXRp
YyBub2lubGluZSB2b2lkIF9faW5pdCBrYXNhbl9iaXRvcHModm9pZCkKPiAgICAgICAgIF9fdGVz
dF9hbmRfY2hhbmdlX2JpdChCSVRTX1BFUl9MT05HICsgQklUU19QRVJfQllURSwgYml0cyk7Cj4K
PiAgICAgICAgIHByX2luZm8oIm91dC1vZi1ib3VuZHMgaW4gdGVzdF9iaXRcbiIpOwo+IC0gICAg
ICAgKHZvaWQpdGVzdF9iaXQoQklUU19QRVJfTE9ORyArIEJJVFNfUEVSX0JZVEUsIGJpdHMpOwo+
ICsgICAgICAgaW50X3Jlc3VsdCA9IHRlc3RfYml0KEJJVFNfUEVSX0xPTkcgKyBCSVRTX1BFUl9C
WVRFLCBiaXRzKTsKPgo+ICAjaWYgZGVmaW5lZChjbGVhcl9iaXRfdW5sb2NrX2lzX25lZ2F0aXZl
X2J5dGUpCj4gICAgICAgICBwcl9pbmZvKCJvdXQtb2YtYm91bmRzIGluIGNsZWFyX2JpdF91bmxv
Y2tfaXNfbmVnYXRpdmVfYnl0ZVxuIik7Cj4gLSAgICAgICBjbGVhcl9iaXRfdW5sb2NrX2lzX25l
Z2F0aXZlX2J5dGUoQklUU19QRVJfTE9ORyArIEJJVFNfUEVSX0JZVEUsIGJpdHMpOwo+ICsgICAg
ICAgaW50X3Jlc3VsdCA9IGNsZWFyX2JpdF91bmxvY2tfaXNfbmVnYXRpdmVfYnl0ZShCSVRTX1BF
Ul9MT05HICsKPiArICAgICAgICAgICAgICAgQklUU19QRVJfQllURSwgYml0cyk7Cj4gICNlbmRp
Zgo+ICAgICAgICAga2ZyZWUoYml0cyk7Cj4gIH0KPiAtLQo+IDIuMjAuMQo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
