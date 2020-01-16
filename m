Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2138813D68F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r9EyqDpS8C0aUIxkI2Q28osoTLqPo9tg8TOxCLYTsg0=; b=h6Wi2poDkbjO3yUZfQWlNWndb
	Ru0pAoIuTYBErUD4AAsyvFNuGgMdyiTbmGxux2mIEQq+E29X0P/vimovTP7tU+u+yXZ0Aak3HEkWn
	+3SikntxnZOsq+Clybeu1qcdTuaZ8u87h1bLZ4u7SY8Cl05uiB3cKBuw+wyrIKcnmKVAXzelIhdN6
	yeJly4ZWlMj3hTneR/aYtdXIM4jSIJOipaVrquRTfLJpgT0l0jNEv4T7/y4Ptf1nZbhLRbaIgpL4k
	OSQjp4gHVw74UJuAklw+KSyLPUeHjq6GxlzmjJOA8GSo9n/1pVnhaGm5gfmVQbzVfEJI4h6AxkpLb
	2bMP6USOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1GW-0002bt-66; Thu, 16 Jan 2020 09:16:36 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1GK-0002aS-Jh
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:16:29 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47yz8L74yxz9tyQR;
 Thu, 16 Jan 2020 10:16:18 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=kHJ/FujL; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id lt8jAOtwQ37r; Thu, 16 Jan 2020 10:16:18 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47yz8L5yqZz9tyQP;
 Thu, 16 Jan 2020 10:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579166178; bh=zhSNNoA19/DJtyqK00k6NS1e1aITemDpv4Uo0GCOeHg=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=kHJ/FujLNVI5NHn588r9Xp2wHJbaCU+ZBkfGxNVcWiwtRBmZW0lfLLuD4NqyCZjiq
 +rTgIsm7pFN1rx7YTTWhuMQluEkHnAwg5Mf/G4PgNahbW9tMt03xitw118O2by2nT9
 rGG+pJM5Wh/XK2tpcgdQ3yLjIqpixSaM9eK0L1tQ=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DA4C58B811;
 Thu, 16 Jan 2020 10:16:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id FPW2Cv_UNA79; Thu, 16 Jan 2020 10:16:19 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 212448B810;
 Thu, 16 Jan 2020 10:16:19 +0100 (CET)
Subject: Re: [RFC PATCH v3 08/12] lib: vdso: allow arches to provide vdso data
 pointer
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Thomas Gleixner <tglx@linutronix.de>, luto@kernel.org
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
 <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
 <87ftghbpuu.fsf@nanos.tec.linutronix.de>
 <d2de3211-9d7c-513e-fe0f-8bdce623fb65@c-s.fr>
Message-ID: <b5fddcf8-99ff-fc0d-40c0-0eb81ad4e94a@c-s.fr>
Date: Thu, 16 Jan 2020 10:16:18 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <d2de3211-9d7c-513e-fe0f-8bdce623fb65@c-s.fr>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_011624_937824_2394F179 
X-CRM114-Status: GOOD (  13.81  )
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
Cc: arnd@arndb.de, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhvbWFzLCBBbmR5LAoKTGUgMTUvMDEvMjAyMCDDoCAwNzoxNSwgQ2hyaXN0b3BoZSBMZXJveSBh
IMOpY3JpdMKgOgo+IAo+IAo+IExlIDE1LzAxLzIwMjAgw6AgMDA6MDYsIFRob21hcyBHbGVpeG5l
ciBhIMOpY3JpdMKgOgo+PiBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5m
cj4gd3JpdGVzOgo+Pj4gwqAgc3RhdGljIF9fbWF5YmVfdW51c2VkIGludAo+Pj4gKyNpZmRlZiBW
RFNPX0dFVFNfVkRfUFRSX0ZST01fQVJDSAo+Pj4gK19fY3Zkc29fY2xvY2tfZ2V0dGltZV9jb21t
b24oY29uc3Qgc3RydWN0IHZkc29fZGF0YSAqdmQsIGNsb2NraWRfdCAKPj4+IGNsb2NrLAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBfX2tlcm5lbF90aW1lc3BlYyAqdHMp
Cj4+PiArewo+Pj4gKyNlbHNlCj4+PiDCoCBfX2N2ZHNvX2Nsb2NrX2dldHRpbWVfY29tbW9uKGNs
b2NraWRfdCBjbG9jaywgc3RydWN0IAo+Pj4gX19rZXJuZWxfdGltZXNwZWMgKnRzKQo+Pj4gwqAg
ewo+Pj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgdmRzb19kYXRhICp2ZCA9IF9fYXJjaF9nZXRf
dmRzb19kYXRhKCk7Cj4+PiArI2VuZGlmCj4+PiDCoMKgwqDCoMKgIHUzMiBtc2s7Cj4+Cj4+IElm
IHdlIGRvIHRoYXQsIHRoZW4gdGhlcmUgaXMgbm8gcG9pbnQgaW4gcHJvcGFnYXRpbmcgdGhpcyB0
byB0aGUgaW5uZXIKPj4gZnVuY3Rpb25zLiBJdCdzIHBlcmZlY3RseSBmaW5lIHRvIGhhdmUgdGhp
cyBkaXN0aW5jdGlvbiBhdCB0aGUgb3V0ZXJtb3N0Cj4+IGxldmVsLgo+IAo+IEluIHYyLCBJIGRp
ZCBpdCBhdCB0aGUgYXJjaCBsZXZlbCAoc2VlIAo+IGh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5v
cmcvcGF0Y2gvMTIxNDk4My8pLiBBbmR5IHdhcyBjb25jZXJuZWQgYWJvdXQgCj4gaXQgYmVpbmcg
c3Vib3B0aW1hbCBmb3IgYXJjaGVzIHdoaWNoICh1bmxpa2UgcG93ZXJwYykgaGF2ZSBQQyByZWxh
dGVkIAo+IGRhdGEgYWRkcmVzc2luZyBtb2RlLgo+IAo+IFdvdWxkbid0IGl0IGJlIHRoZSBzYW1l
IGlzc3VlIGlmIGRvaW5nIGl0IGF0IHRoZSBvdXRlcm1vc3QgbGV2ZWwgb2YgCj4gZ2VuZXJpYyBW
RFNPID8KCkFueSBvcGluaW9uIG9uIHRoaXMgPwoKIEZyb20geW91ciBwb2ludCBvZiB2aWV3LCB3
aGF0IHNob3VsZCBJIGRvOgpBLyBfX2FyY2hfZ2V0X3Zkc29fZGF0YSgpIGhhbmRsZWQgZW50aXJl
bHkgYXQgYXJjaCBsZXZlbCBhbmQgYXJjaGVzIApoYW5kaW5nIG92ZXIgdGhlIHZkc28gZGF0YSBw
b2ludGVyIHRvIGdlbmVyaWMgQyBWRFNPIGZ1bmN0aW9ucyBhbGwgdGhlIAp0aW1lIChhcyBpbiBt
eSB2MiBzZXJpZXMpID8KQi8gRGF0YSBwb2ludGVyIGJlaW5nIGhhbmRlZCBvdmVyIGFsbCB0aGUg
d2F5IHVwIGZvciBhcmNoZXMgd2FudGluZyB0byAKZG8gc28sIG5vIGNoYW5nZXMgYXQgYWxsIGZv
ciBvdGhlcnMgKGFzIGluIG15IHYzIHNlcmllcykgPwpDLyBfX2FyY2hfZ2V0X3Zkc29fZGF0YSgp
IGJlaW5nIGNhbGxlZCBhdCB0aGUgb3V0ZXJtb3N0IGdlbmVyaWMgbGV2ZWwgCmZvciBhcmNoZXMg
bm90IGludGVyZXN0ZWQgaW4gaGFuZGxpbmcgZGF0YSBwb2ludGVyIGZyb20gdGhlIGNhbGxlciAo
YXMgCnN1Z2dlc3RlZCBieSBUaG9tYXMpID8KCkFuZHksIHdpdGggQS8geW91IHdlcmUgY29uY2Vy
bmVkIGFib3V0IGFyY2hlcyBiZWluZyBhYmxlIHRvIGRvIFBDIApyZWxhdGVkIGFjY2Vzc2VzLiBX
b3VsZCBpdCBiZSBhbiBpc3N1ZSBmb3IgQy8gYXMgd2VsbCA/IElmIG5vdCwgSSBndWVzcyAKQy8g
d291bGQgYmUgY2xlYW5lciB0aGFuIEIvIGFsbHRob3VnaHQgbm90IGFzIGNsZWFuIGFzIEEgd2hp
Y2ggZG9lc24ndCAKYWRkIGFueSAjaWZkZWZlcnkgYXQgYWxsLgoKVGhhbmtzCkNocmlzdG9waGUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
