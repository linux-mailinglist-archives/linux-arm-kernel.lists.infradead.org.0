Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3996412A0BE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 12:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YnMXFxSXL5dn9uDP98AdxQKMreX1fxHyCR6I5xGNMEk=; b=MTlsSHKLl9+JdjKuSf1iLjgS4
	ycHZEnNqEQkghm9PnmDx3fY+fGzEGHWzCZrpBKU6hQX9phYq9MVAP9LYcGF8nNKeJn3SxhVo54/uR
	P53ywT/jo5dPY+ThubBnsvyKSFZw7CVapoHGL7hdxEHKApuNQ8U1gwYJsY4sPNfIVZrGeuGAshega
	WEz5RUuUOOtVO5VKmFIR8Yo6UsjkxynpHP82e6Sz2tnhC2cuvrYapdpXWTbq8naA53q3gygtwgnG6
	wFsZUZoOM2ziKjCHET3DT9XjABOI7o1ud2uHUhhdB2FmJdkyCajYFpMGONNoilvvab1ZSzZlGD5wp
	x2s1emeWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijiZY-0006Md-LG; Tue, 24 Dec 2019 11:41:56 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijiZP-0006Lm-LQ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 11:41:49 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47hvSk5rlxz9tvqq;
 Tue, 24 Dec 2019 12:41:42 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=lYmJlwXj; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id WeNRdbd7lgXn; Tue, 24 Dec 2019 12:41:42 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47hvSk41pRz9tvqp;
 Tue, 24 Dec 2019 12:41:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577187702; bh=zVvs2ouna/B/Vb/2RfZVUK0x0665UncRbgfLeAdSnnY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=lYmJlwXjs+sVC+Oy+w8vyY3OjRXZBsUlCFzkOcAtGzQv8VGRTjvaBltJ8BvY0yncd
 kvWtk3/4+I6R+C35vHzjesQG3ZepSfG0mV/VjcD+JMGNw5tKirhTpTWaYsm2DosM1j
 4yvJ9P1cylNo9xPKKIo9g95EUbXTD0fvHykyHi40=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C1F0C8B783;
 Tue, 24 Dec 2019 12:41:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id EbbqCE6Lvv3b; Tue, 24 Dec 2019 12:41:43 +0100 (CET)
Received: from [192.168.232.53] (unknown [192.168.232.53])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id ACB038B782;
 Tue, 24 Dec 2019 12:41:42 +0100 (CET)
Subject: Re: [RFC PATCH v2 02/10] lib: vdso: move call to fallback out of
 common code.
To: Andy Lutomirski <luto@kernel.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <de073962c1a5911343e13c183fbbdef0fe95449e.1577111365.git.christophe.leroy@c-s.fr>
 <CALCETrXWHk9J-pYm+eopMuW3x7Jr_LnzRjr94gq8g66xOO6SBg@mail.gmail.com>
From: christophe leroy <christophe.leroy@c-s.fr>
Message-ID: <36f1ce73-d8bc-9c46-8a2a-b6514d4a1ba0@c-s.fr>
Date: Tue, 24 Dec 2019 12:41:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CALCETrXWHk9J-pYm+eopMuW3x7Jr_LnzRjr94gq8g66xOO6SBg@mail.gmail.com>
Content-Language: fr
X-Antivirus: Avast (VPS 191223-0, 23/12/2019), Outbound message
X-Antivirus-Status: Not-Tested
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_034147_996856_FAF17FBD 
X-CRM114-Status: GOOD (  22.27  )
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNC8xMi8yMDE5IMOgIDAzOjI0LCBBbmR5IEx1dG9taXJza2kgYSDDqWNyaXTCoDoKPiBP
biBNb24sIERlYyAyMywgMjAxOSBhdCA2OjMxIEFNIENocmlzdG9waGUgTGVyb3kKPiA8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Pgo+PiBPbiBwb3dlcnBjLCBWRFNPIGZ1bmN0aW9u
cyBhbmQgc3lzY2FsbHMgY2Fubm90IGJlIGltcGxlbWVudGVkIGluIEMKPj4gYmVjYXVzZSB0aGUg
TGludXgga2VybmVsIEFCSSByZXF1aXJlcyB0aGF0IENSW1NPXSBiaXQgaXMgc2V0IGluIGNhc2UK
Pj4gb2YgZXJyb3IgYW5kIGNsZWFyZWQgd2hlbiBubyBlcnJvci4KPj4KPj4gQXMgdGhpcyBjYW5u
b3QgYmUgZG9uZSBpbiBDLCBDIFZEU08gZnVuY3Rpb25zIGFuZCBzeXNjYWxsJ2Jhc2VkCj4+IGZh
bGxiYWNrIG5lZWQgYSB0cmFtcG9saW5lIGluIEFTTS4KPj4KPj4gQnkgbW92aW5nIHRoZSBmYWxs
YmFjayBjYWxscyBvdXQgb2YgdGhlIGNvbW1vbiBjb2RlLCBhcmNoZXMgbGlrZQo+PiBwb3dlcnBj
IGNhbiBpbXBsZW1lbnQgYm90aCB0aGUgY2FsbCB0byBDIFZEU08gYW5kIHRoZSBmYWxsYmFjayBj
YWxsCj4+IGluIGEgc2luZ2xlIHRyYW1wb2xpbmUgZnVuY3Rpb24uCj4gCj4gTWF5YmUgdGhlIGlz
c3VlIGlzIHRoYXQgSSdtIG5vdCBhIHBvd2VycGMgcGVyc29uLCBidXQgSSBkb24ndAo+IHVuZGVy
c3RhbmQgdGhpcy4gIFRoZSBjb21tb24gdkRTTyBjb2RlIGlzIGluIEMuICBQcmVzdW1hYmx5IHRo
aXMgbWVhbnMKPiB0aGF0IHlvdSBuZWVkIGFuIGFzbSB0cmFtcG9saW5lIG5vIG1hdHRlciB3aGF0
IHRvIGNhbGwgdGhlIEMgY29kZS4gIElzCj4gdGhlIGltcHJvdmVtZW50IHRoYXQsIHdpdGggdGhp
cyBjaGFuZ2UsIHlvdSBjYW4gaGF2ZSB0aGUgYXNtCj4gdHJhbXBvbGluZSBkbyBhIHNpbmdsZSBi
cmFuY2gsIHNvIGl0J3MgbG9naWNhbGx5Ogo+IAo+IHJldCA9IFtjYWxsIHRoZSBDIGNvZGVdOwo+
IGlmIChyZXQgPT0gMCkgewo+ICAgc2V0IHN1Y2Nlc3MgYml0Owo+IH0gZWxzZSB7Cj4gICByZXQg
PSBmYWxsYmFjazsKPiAgIGlmIChyZXQgPT0gMCkKPiAgICBzZXQgc3VjY2VzcyBiaXQ7Cj4gZWxz
ZQo+ICAgIHNldCBmYWlsdXJlIGJpdDsKPiB9CgpNb3JlIHNpbXBsZSB0aGFuIGFib3ZlLCBpbiBm
YWN0IGl0IGlzOgoKcmV0ID0gW2NhbGwgdGhlIEMgY29kZV07CmlmIChyZXQgPT0gMCkgewogIHNl
dCBzdWNjZXNzIGJpdDsKfSBlbHNlIHsKICByZXQgPSBmYWxsYmFjayBbIHdoaWNoIHNldHMgdGhl
IHN1Y2Nlc3MvZmFpbHVyZSBiaXRdOwp9CnJldHVybiByZXQKCgo+IAo+IHJldHVybiByZXQ7Cj4g
Cj4gaW5zdGVhZCBvZjoKPiAKPiByZXQgPSBbY2FsbCB0aGUgQyBjb2RlLCB3aGljaCBpbmNsdWRl
cyB0aGUgZmFsbGJhY2tdOwoKQyBjb2RlIGNhbm5vdCBoYW5kbGUgdGhlIHN1Y2Nlc3MvZmFpbHVy
ZSBiaXQgc28gd2UgbmVlZCB0byBkbyBzb21ldGhpbmcgCndoaWNoIGRvZXM6CgppbnQgYXNzZW1i
bHlfdG9fZmFsbGJhY2soKQp7CglyZXQgPSBbc3lzY2FsbCB0aGUgZmFsbGJhY2tdCglpZiAoc3Vj
Y2VzcyBiaXQgc2V0KQoJCXJldHVybiByZXQ7CgllbHNlCgkJcmV0dXJuIC1yZXQ7Cn0KCkFsc28g
bWVhbnMgZ29pbmcgYmFjayBhbmQgZm9ydGggYmV0d2VlbiB0aGUgc3VjY2VzcyBiaXQgYW5kIG5l
Z2F0aXZlIHJldHVybi4KCj4gaWYgKHJldCA9PSAwKQo+ICAgIHNldCBzdWNjZXNzIGJpdDsKPiBl
bHNlCj4gICAgc2V0IGZhaWx1cmUgYml0Owo+IAo+IEl0J3Mgbm90IG9idmlvdXMgdG8gbWUgdGhh
dCB0aGUgZm9ybWVyIG91Z2h0IHRvIGJlIGZhc3Rlci4KPiAKPj4KPj4gVGhlIHR3byBhZHZhbnRh
Z2VzIGFyZToKPj4gLSBObyBuZWVkIHBsYXkgYmFjayBhbmQgZm9ydGggd2l0aCBDUltTT10gYW5k
IG5lZ2F0aXZlIHJldHVybiB2YWx1ZS4KPj4gLSBObyBzdGFjayBmcmFtZSBpcyByZXF1aXJlZCBp
biBWRFNPIEMgZnVuY3Rpb25zIGZvciB0aGUgZmFsbGJhY2tzLgo+IAo+IEhvdyBpcyBubyBzdGFj
ayBmcmFtZSByZXF1aXJlZD8gIERvIHlvdSBtZWFuIHRoYXQgdGhlIHByZXNlbmNlIG9mIHRoZQo+
IGZhbGxiYWNrIGNhdXNlcyB3b3JzZSBjb2RlIGdlbmVyYXRpb24/ICBDYW4geW91IGltcHJvdmUg
dGhlIGZhbGxiYWNrCj4gaW5zdGVhZD8KPiAKCldoZW4gZnVuY3Rpb24gRjEgY2FsbHMgZnVuY3Rp
b24gRjIgKHdpdGggQkwgaW5zbiksIHRoZSBsaW5rIHJlZ2lzdGVyIAooTFIpIGlzIHNldCB3aXRo
IHRoZSByZXR1cm4gYWRkcmVzcyBpbiBGMSwgc28gdGhhdCBhdCB0aGUgZW5kIG9mIEYyLCBGMiAK
YnJhbmNoZXMgdG8gTFIgKHdpdGggQkxSIGluc24pLCB0aGF0J3MgaG93IHlvdSByZXR1cm4gZnJv
bSBmdW5jdGlvbnMuCgpXaGVuIEYyIGNhbGxzIGZ1bmN0aW9uIEYzLCB0aGUgc2FtZSBoYXBwZW5z
LCBMUiBpcyBzZXQgdG8gdGhlIHJldHVybiBvZiAKRjMgaW50byBGMi4gSXQgbWVhbnMgdGhhdCBG
MiBoYXMgdG8gc2F2ZSBMUiBpbiBvcmRlciB0byBiZSBhYmxlIHRvIApyZXR1cm4gdG8gRjEsIG90
aGVyd2lzZSB0aGUgcmV0dXJuIGFkZHJlc3MgZnJvbSBGMiBpbnRvIEYxIGlzIGxvc3QuCgpCdXQg
Li4uIHRoaW5raW5nIGFib3V0IGl0IG9uY2UgbW9yZSwgaW5kZWVkIGZhbGxiYWNrIG1lYW5zIGRv
aW5nIGEgCnN5c2NhbGwsIGFuZCBpbiBmYWN0IEkgcmVhbGlzZSB0aGF0IHN5c2NhbGxzIHdvbid0
IGNsb2JiZXIgTFIsIHNvIGl0IApzaG91bGQgYmUgcG9zc2libGUgdG8gZG8gc29tZXRoaW5nLiBM
ZXQgbWUgdHJ5IGl0LgoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
