Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B739012A0E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 12:54:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2xgQkX3uul77WUhRWxt3nDx9+m7+kaoYqzSz1+lQu/k=; b=ZXZrx7jVbSLgJEn8T0ZMECXzC
	zjCtlnvM9084JjcnvHKCc3DZvijcksf5ejzRa9z7EVnfVWmOGxtQOtCDNjPt6S0kkA8GKeYApCWIC
	b/Jw/FKvmwrxz0SuC6f+SYYurV+wvGNrVIsq33uiIcP/O30YXIMR92h3ag+Cbp/ccnBzPZaMYCafF
	DMwJn70E4fXHgnBLnM/kGgJr5rvResWCDT8SRsMV+CT4hoz0mhMlSyBbLn2mKblUybcPEKTTPyg/J
	gITn+avg5WLhnxgze+7jv2vu/UFeJxyAfF8Cz0ZPCCGnC/FlbEHil/YiX3ZpDdGdGMd/0yLptQqER
	r1+sm99gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijil9-0001rX-Pf; Tue, 24 Dec 2019 11:53:55 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijikz-0001qs-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 11:53:48 +0000
Received: from localhost (mailhub1-ext [192.168.12.233])
 by localhost (Postfix) with ESMTP id 47hvkY1zTbz9tyJk;
 Tue, 24 Dec 2019 12:53:41 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=N5E0i1vM; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id i2LrwXcch1pS; Tue, 24 Dec 2019 12:53:41 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47hvkY0fjzz9tyJ9;
 Tue, 24 Dec 2019 12:53:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1577188421; bh=rousui2xUHlcbFiKZoeJNXCVvYL8EIhitr3EE5iNsjU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=N5E0i1vMnuFkhimEvxDKS3DblFYQotEgh76DkZxU2ZMywBHeZ1wv1XGJkJ85Aq/zz
 YdDhdfSK48oQ6/n/AeOXYl4PbVsfl3G9hf7FTwjwhHF5PJsMiXWubwtYq+yTiLb67r
 of9z8utFkNutvRL1AHq56r3Ott4nHyaEOuTRYRe0=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 510518B783;
 Tue, 24 Dec 2019 12:53:42 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id FcS-Gk27Ac_t; Tue, 24 Dec 2019 12:53:42 +0100 (CET)
Received: from [192.168.232.53] (unknown [192.168.232.53])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 677C68B782;
 Tue, 24 Dec 2019 12:53:41 +0100 (CET)
Subject: Re: [RFC PATCH v2 04/10] lib: vdso: get pointer to vdso data from the
 arch
To: Andy Lutomirski <luto@kernel.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <02861d0a05c2d48db4e9ee9093e2e2598093c372.1577111366.git.christophe.leroy@c-s.fr>
 <CALCETrW9hsrVVzudvRY22AqakcsrVzqp=SdwOTwW2zRBK+kEaA@mail.gmail.com>
From: christophe leroy <christophe.leroy@c-s.fr>
Message-ID: <de5273aa-69dc-8e37-c917-44708257d2ba@c-s.fr>
Date: Tue, 24 Dec 2019 12:53:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CALCETrW9hsrVVzudvRY22AqakcsrVzqp=SdwOTwW2zRBK+kEaA@mail.gmail.com>
Content-Language: fr
X-Antivirus: Avast (VPS 191223-0, 23/12/2019), Outbound message
X-Antivirus-Status: Not-Tested
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_035346_902956_5EAA79CC 
X-CRM114-Status: GOOD (  14.77  )
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

CgpMZSAyNC8xMi8yMDE5IMOgIDAzOjI3LCBBbmR5IEx1dG9taXJza2kgYSDDqWNyaXTCoDoKPiBP
biBNb24sIERlYyAyMywgMjAxOSBhdCA2OjMxIEFNIENocmlzdG9waGUgTGVyb3kKPiA8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+Pgo+PiBPbiBwb3dlcnBjLCBfX2FyY2hfZ2V0X3Zk
c29fZGF0YSgpIGNsb2JiZXJzIHRoZSBsaW5rIHJlZ2lzdGVyLAo+PiByZXF1aXJpbmcgdGhlIGNh
bGxlciB0byBzZXQgYSBzdGFjayBmcmFtZSBpbiBvcmRlciB0byBzYXZlIGl0Lgo+Pgo+PiBBcyB0
aGUgcGFyZW50IGZ1bmN0aW9uIGFscmVhZHkgaGFzIHRvIHNldCBhIHN0YWNrIGZyYW1lIGFuZCBz
YXZlCj4+IHRoZSBsaW5rIHJlZ2lzdGVyIHRvIGNhbGwgdGhlIEMgdmRzbyBmdW5jdGlvbiwgcmV0
cml2aW5nIHRoZQo+PiB2ZHNvIGRhdGEgcG9pbnRlciB0aGVyZSBpcyBsaWdodGVyLgo+IAo+IEkn
bSBjb25mdXNlZC4gIENhbid0IHlvdSBpbmxpbmUgX19hcmNoX2dldF92ZHNvX2RhdGEoKT8gIE9y
IGlzIHRoZQo+IGlzc3VlIHRoYXQgeW91IGNhbid0IHJldHJpZXZlIHRoZSBwcm9ncmFtIGNvdW50
ZXIgb24gcG93ZXIgd2l0aG91dAo+IGNsb2JiZXJpbmcgdGhlIGxpbmsgcmVnaXN0ZXI/CgpZZXMg
aXQgY2FuIGJlIGlubGluZWQgKEkgZGlkIGl0IGluIFYxIApodHRwczovL3BhdGNod29yay5vemxh
YnMub3JnL3BhdGNoLzExODA1NzEvKSwgYnV0IHlvdSBjYW4ndCBkbyBpdCAKd2l0aG91dCBjbG9i
YmVyaW5nIHRoZSBsaW5rIHJlZ2lzdGVyLCBiZWNhdXNlIHRoZSBvbmx5IHdheSB0byBnZXQgdGhl
IApwcm9ncmFtIGNvdW50ZXIgaXMgdG8gZG8gdG8gYXMgaWYgeW91IHdlcmUgY2FsbGluZyBhbm90
aGVyIGZ1bmN0aW9uIGJ1dCAKeW91IGNhbGwgdG8gdGhlIGFkZHJlc3Mgd2hpY2gganVzdCBmb2xs
b3dzIHdoZXJlIHlvdSBhcmUsIHNvIHRoYXQgaXQgCnNldHMgTFIgd2hpY2ggdGhlIHNpbXVsYXRl
ZCByZXR1cm4gYWRkcmVzcyB3aGljaCBjb3JyZXNwb25kcyB0byB0aGUgCmFkZHJlc3MgZm9sbG93
aW5nIHRoZSBicmFuY2guCgpzdGF0aWMgX19hbHdheXNfaW5saW5lCmNvbnN0IHN0cnVjdCB2ZHNv
X2RhdGEgKl9fYXJjaF9nZXRfdmRzb19kYXRhKHZvaWQpCnsKCXZvaWQgKnB0cjsKCglhc20gdm9s
YXRpbGUoCgkJIgliY2wJMjAsIDMxLCAuKzQ7XG4iCgkJIgltZmxyCSUwO1xuIgoJCSIJYWRkaQkl
MCwgJTAsIF9fa2VybmVsX2RhdGFwYWdlX29mZnNldCAtICguLTQpO1xuIgoJCTogIj1iIihwdHIp
IDogOiAibHIiKTsKCglyZXR1cm4gcHRyICsgKih1bnNpZ25lZCBsb25nICopcHRyOwp9Cgo+IAo+
IEkgd291bGQgaW1hZ2luZSB0aGF0IHRoaXMgcGF0Y2ggZ2VuZXJhdGVzIHdvcnNlIGNvZGUgb24g
YW55Cj4gYXJjaGl0ZWN0dXJlIHdpdGggUEMtcmVsYXRpdmUgYWRkcmVzc2luZyBtb2RlcyAod2hp
Y2ggaW5jbHVkZXMgYXQKPiBsZWFzdCB4ODZfNjQsIGFuZCBJIHdvdWxkIGd1ZXNzIGluY2x1ZGVz
IG1vc3QgbW9kZXJuIGFyY2hpdGVjdHVyZXMpLgoKV2h5ID8gUG93ZXJwYyBpcyBhbHNvIHVzaW5n
IFBDLXJlbGF0aXZlIGFkZHJlc3NpbmcgZm9yIGFsbCBjYWxscyBidXQgCmluZGlyZWN0IGNhbGxz
LgoKQXMgdGhlIG90aGVyIGFyY2ggQyBWRFNPIGNhbGxlcnMgYXJlIGluIEMgYW5kIHdyaXR0ZW4g
aW4gc3VjaCBhIHdheSB0aGF0IApjYWxsZWUgaXMgaW5saW5lZCBpbnRvIGNhbGxlcnMsIGFuZCBh
cyBfX2FyY2hfZ2V0X3Zkc29fZGF0YSgpIGlzIAppbmxpbmVkLCBpdCBzaG91bGQgbWFrZSBubyBk
aWZmZXJlbmNlLCBzaG91bGRuJ3QgaXQgPwoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
