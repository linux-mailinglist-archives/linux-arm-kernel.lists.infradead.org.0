Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BF114C6DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 08:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DYcYYc051ehU5eyTIfLSFkHMTCGJImWjlhfTeDcfxSo=; b=S/MN7ubTeL5BnjVjF+qymBv6V
	u3zbUq8VjlFWFfgfL7tTkpCyle//JiAkmP4U/wvWTjTmEyn0eMTX0JR3HY06/DZJdtsAuXeBAmaBI
	Y1jSlXywPE9dqeZoNdX2wQtrwv2g/mOsc2KdXYb+u8k6D1qLKBvNpDeDW5pS4tIimFED5VOSH818s
	7HB/02yN+zx/gPlUT2Vuu0NjRrGSgD5xOG+rlAcXB1d9GavuL9ScZPzosnIKjPl1Fcm6Cf0NZI5zn
	N5HCjo1PmbLNSVUYbOBATHCHA2GErVhIodGrsgLANJ/tKZj/qT99710Ufy3Mq730PwAn5onWYzDz9
	djRX3r3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwhke-0005cG-6M; Wed, 29 Jan 2020 07:27:04 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwhkT-0005al-KB
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 07:26:55 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 486w5q6898z9txVs;
 Wed, 29 Jan 2020 08:26:39 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=j/GZoeZ7; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id fPfSf9D4r1FM; Wed, 29 Jan 2020 08:26:39 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 486w5q51hdz9txVr;
 Wed, 29 Jan 2020 08:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1580282799; bh=5Fxvw/jc8y//pgWf3Spr5zDn1R4mwLPSzwzdVvG6uYE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=j/GZoeZ7wNtfHmMjeTo0R1mIA/Jal8yTZuk8S1UKYG452qCeEkzIOsUiHWQUbSUyA
 xN2AF+i5Dd7yrwJNyYNINzj08Cqz55AfcregSWbEZxjqj7g9/tN/qj4szTYq+Jf9oz
 itEzCxCoNxR03K2bPrvRD7TAnf0KTL/yWQEVRw14=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 913908B7FE;
 Wed, 29 Jan 2020 08:26:40 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id FlKTzVgQvj4i; Wed, 29 Jan 2020 08:26:40 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 88FFC8B768;
 Wed, 29 Jan 2020 08:26:39 +0100 (CET)
Subject: Re: [RFC PATCH v4 10/11] lib: vdso: Allow arches to override the ns
 shift operation
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <c8ce9baaef0dc7273e4bcc31f353b17b655113d1.1579196675.git.christophe.leroy@c-s.fr>
 <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
 <877e1rfa40.fsf@nanos.tec.linutronix.de>
 <CALCETrX5B0SEJN2WG7rzuzbGhWa_dEwVVpMu6deXof3H+K_LdQ@mail.gmail.com>
 <87mua64tv0.fsf@nanos.tec.linutronix.de>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <1329105a-aa6b-bd40-3a62-5c7e130d2a7b@c-s.fr>
Date: Wed, 29 Jan 2020 08:26:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <87mua64tv0.fsf@nanos.tec.linutronix.de>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_232653_962844_2446B9A1 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: nathanl@linux.ibm.com, Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyOS8wMS8yMDIwIMOgIDA4OjE0LCBUaG9tYXMgR2xlaXhuZXIgYSDDqWNyaXTCoDoKPiBB
bmR5IEx1dG9taXJza2kgPGx1dG9Aa2VybmVsLm9yZz4gd3JpdGVzOgo+IAo+PiBPbiBUaHUsIEph
biAxNiwgMjAyMCBhdCAxMTo1NyBBTSBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5k
ZT4gd3JvdGU6Cj4+Pgo+Pj4gQW5keSBMdXRvbWlyc2tpIDxsdXRvQGtlcm5lbC5vcmc+IHdyaXRl
czoKPj4+PiBPbiBUaHUsIEphbiAxNiwgMjAyMCBhdCA5OjU4IEFNIENocmlzdG9waGUgTGVyb3kK
Pj4+Pgo+Pj4+IFdvdWxkIG11bF91NjRfdTY0X3NocigpIGJlIGEgZ29vZCBhbHRlcm5hdGl2ZT8g
IENvdWxkIHdlIGFkanVzdCBpdCB0bwo+Pj4+IGFzc3VtZSB0aGUgc2hpZnQgaXMgbGVzcyB0aGFu
IDMyPyAgVGhhdCBmdW5jdGlvbiBleGlzdHMgdG8gYmVuZWZpdAo+Pj4+IDMyLWJpdCBhcmNoZXMu
Cj4+Pgo+Pj4gV2UnZCB3YW50IG11bF91NjRfdTMyX3NocigpIGZvciB0aGlzLiBUaGUgcnVsZXMg
Zm9yIG11bHQgYW5kIHNoaWZ0IGFyZToKPj4+Cj4+Cj4+IFRoYXQncyB3aGF0IEkgbWVhbnQgdG8g
dHlwZS4uLgo+IAo+IEp1c3QgdGhhdCBpdCBkb2VzIG5vdCB3b3JrLiBUaGUgbWF0aCBpczoKPiAK
PiAgICAgICBucyA9IGQtPm5zZWNzOyAgIC8vIFRoYXQncyB0aGUgbnNlYyB2YWx1ZSBzaGlmdGVk
IGxlZnQgYnkgZC0+c2hpZnQKPiAKPiAgICAgICBucyArPSAoKGN1ciAtIGQtPmxhc3QpICYgZC0+
bWFzaykgKiBtdWx0Owo+IAo+ICAgICAgIG5zID4+PSBkLT5zaGlmdDsKPiAKPiBTbyB3ZSBjYW5u
b3QgdXNlIG11bF91NjRfdTMyX3NocigpIGJlY2F1c2Ugd2UgbmVlZCB0aGUgYWRkaXRpb24gdGhl
cmUKPiBiZWZvcmUgc2hpZnRpbmcuIEFuZCBubywgd2UgY2FuJ3QgZHJvcCB0aGUgZnJhY3Rpb25h
bCBwYXJ0IG9mCj4gZC0+bnNlY3MuIEJlZW4gdGhlcmUsIGRvbmUgdGhhdCwgZ290IHNwb3JhZGlj
IHRpbWUgZ29pbmcgYmFja3dhcmRzCj4gcHJvYmxlbXMgYXMgYSByZXdhcmQuIE5lZWQgdG8gbG9v
ayBhdCB0aGF0IGFnYWluIGFzIHN0dWZmIGhhcyBjaGFuZ2VkCj4gb3ZlciB0aW1lLgo+IAo+IE9u
IHg4NiB3ZSBlbmZvcmNlIHRoYXQgbWFzayBpcyA2NGJpdCwgc28gdGhlICYgb3BlcmF0aW9uIGlz
IG5vdCB0aGVyZSwKPiBidXQgZHVlIHRvIHRoZSBuYXN0aWVzIG9mIFRTQyB3ZSBoYXZlIHRoYXQg
Y29uZGl0aW9uYWwKPiAKPiAgICAgIGlmIChjdXIgPiBsYXN0KQo+ICAgICAgICAgcmV0dXJuIChj
dXIgLSBsYXN0KSAqIG11bHQ7Cj4gICAgICByZXR1cm4gMDsKPiAKPiBDaHJpc3RvcGhlLCBvbiBQ
UEMgdGhlIGRlY3JlbWVudGVyL1JUQyBjbG9ja3NvdXJjZSBtYXNrcyBhcmUgNjRiaXQgYXMKPiB3
ZWxsLCBzbyB5b3UgY2FuIHNwYXJlIHRoYXQgJiBvcGVyYXRpb24gdGhlcmUgdG9vLgo+IAoKWWVz
LCBJIGRpZCBpdCBhbHJlYWR5LiBJdCBzcGFyZXMgcmVhZGluZyBkLT5tYXN0LCB0aGF0IHRoZSBt
YWluIGFkdmFudGFnZS4KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
