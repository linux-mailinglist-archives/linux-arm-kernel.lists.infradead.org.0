Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E8513B965
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 07:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dJTxt1mvfgMa2lzzAUawasKfpeKrcLVMg+yZ2rlTT3M=; b=I7+y/AzunFRDPod+OptbMTbNl
	xTRMijPKRiN195PV2jATOlcTJA7FE9tcSDl0NGa2YyELUCBjhBOdutjGpjvpXbDE8ZqV4W2mwV5vO
	NPD5n/PQgF7g+kgy6QiRCzThmot3yovDrpIiTJgKOGfZeRbtbvU867hL53Y30pbEN3GMmkk3Tlje+
	aK7tjVpGiAlDM55ujIIISlCYFKGHVmVZ4DZ8mzaVBaPbRWdRmf2+6ZjGe/ocdUPO5EQC3TtAdZGUa
	BKkXxq2w47nvsDP2hAj3a8B03SCKquCDfFbopl03UCFMvff3a/IBiScbf8L/2c+TfJrtSjiRlMwEW
	ofPJI1DPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irbyK-0002eE-MK; Wed, 15 Jan 2020 06:16:08 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irbyB-0002d5-OJ
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 06:16:02 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47yHBT0bNKz9v9Dm;
 Wed, 15 Jan 2020 07:15:45 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=UntR+ovd; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id uRhu0hEJc6dc; Wed, 15 Jan 2020 07:15:45 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47yHBS5m1Pz9v9Dk;
 Wed, 15 Jan 2020 07:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579068944; bh=dLb+n74DT6jZUD4ec0gfhmKuZ7wdMUymXTZD+f3ESjs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=UntR+ovdUgNuiOCdaG492qpGkB1inQlUzwXmUjovM/oqM/Vp3a/K3ppEYvczfO2ls
 w8S4Mabi06ZQ75T5HTmKpob6aRUwzfUY5vsQRUL7Zw5MJvFZAX1RNry5Mv2FWFVr5b
 rxL2XadbeDGNcEyFm+pdcDnM/FQoG26VHqpC1L64=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 9A0E88B77E;
 Wed, 15 Jan 2020 07:15:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 3sLM6Sb2GP2Q; Wed, 15 Jan 2020 07:15:45 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6976D8B774;
 Wed, 15 Jan 2020 07:15:45 +0100 (CET)
Subject: Re: [RFC PATCH v3 08/12] lib: vdso: allow arches to provide vdso data
 pointer
To: Thomas Gleixner <tglx@linutronix.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 arnd@arndb.de, vincenzo.frascino@arm.com, luto@kernel.org
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
 <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
 <87ftghbpuu.fsf@nanos.tec.linutronix.de>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <d2de3211-9d7c-513e-fe0f-8bdce623fb65@c-s.fr>
Date: Wed, 15 Jan 2020 07:15:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <87ftghbpuu.fsf@nanos.tec.linutronix.de>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_221600_084173_F48D9E0A 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxNS8wMS8yMDIwIMOgIDAwOjA2LCBUaG9tYXMgR2xlaXhuZXIgYSDDqWNyaXTCoDoKPiBD
aHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4gd3JpdGVzOgo+PiAgIAo+
PiAgIHN0YXRpYyBfX21heWJlX3VudXNlZCBpbnQKPj4gKyNpZmRlZiBWRFNPX0dFVFNfVkRfUFRS
X0ZST01fQVJDSAo+PiArX19jdmRzb19jbG9ja19nZXR0aW1lX2NvbW1vbihjb25zdCBzdHJ1Y3Qg
dmRzb19kYXRhICp2ZCwgY2xvY2tpZF90IGNsb2NrLAo+PiArCQkgICAgICBzdHJ1Y3QgX19rZXJu
ZWxfdGltZXNwZWMgKnRzKQo+PiArewo+PiArI2Vsc2UKPj4gICBfX2N2ZHNvX2Nsb2NrX2dldHRp
bWVfY29tbW9uKGNsb2NraWRfdCBjbG9jaywgc3RydWN0IF9fa2VybmVsX3RpbWVzcGVjICp0cykK
Pj4gICB7Cj4+ICAgCWNvbnN0IHN0cnVjdCB2ZHNvX2RhdGEgKnZkID0gX19hcmNoX2dldF92ZHNv
X2RhdGEoKTsKPj4gKyNlbmRpZgo+PiAgIAl1MzIgbXNrOwo+IAo+IElmIHdlIGRvIHRoYXQsIHRo
ZW4gdGhlcmUgaXMgbm8gcG9pbnQgaW4gcHJvcGFnYXRpbmcgdGhpcyB0byB0aGUgaW5uZXIKPiBm
dW5jdGlvbnMuIEl0J3MgcGVyZmVjdGx5IGZpbmUgdG8gaGF2ZSB0aGlzIGRpc3RpbmN0aW9uIGF0
IHRoZSBvdXRlcm1vc3QKPiBsZXZlbC4KCkluIHYyLCBJIGRpZCBpdCBhdCB0aGUgYXJjaCBsZXZl
bCAoc2VlIApodHRwczovL3BhdGNod29yay5vemxhYnMub3JnL3BhdGNoLzEyMTQ5ODMvKS4gQW5k
eSB3YXMgY29uY2VybmVkIGFib3V0IAppdCBiZWluZyBzdWJvcHRpbWFsIGZvciBhcmNoZXMgd2hp
Y2ggKHVubGlrZSBwb3dlcnBjKSBoYXZlIFBDIHJlbGF0ZWQgCmRhdGEgYWRkcmVzc2luZyBtb2Rl
LgoKV291bGRuJ3QgaXQgYmUgdGhlIHNhbWUgaXNzdWUgaWYgZG9pbmcgaXQgYXQgdGhlIG91dGVy
bW9zdCBsZXZlbCBvZiAKZ2VuZXJpYyBWRFNPID8KCj4gCj4gQXMgYSByZWxhdGVkIHF1ZXN0aW9u
LCBJIG5vdGljZWQgdGhhdCB5b3Uga2VlcCBhbGwgdGhhdCBBU00gdm9vZG9vIGluCj4gdGhlIFBQ
QyBzcGVjaWZpYyBjb2RlIHdoaWNoIHByb3ZpZGVzIHRoZSBhY3R1YWwgZW50cnkgcG9pbnRzLiBJ
cyB0aGF0Cj4gQVNNIGNvZGUgcmVhbGx5IHN0aWxsIG5lY2Vzc2FyeT8gQWxsIGN1cnJlbnQgdXNl
cnMgb2YgdGhlIGdlbmVyaWMgVkRTTwo+IGp1c3QgZG8gc29tZXRoaW5nIGxpa2U6Cj4gCj4gaW50
IF9fdmRzb19jbG9ja19nZXR0aW1lKGNsb2NraWRfdCBjbG9jaywgc3RydWN0IF9fa2VybmVsX3Rp
bWVzcGVjICp0cykKPiB7Cj4gICAgICAgICAgcmV0dXJuIF9fY3Zkc29fY2xvY2tfZ2V0dGltZShj
bG9jaywgdHMpOwo+IH0KPiAKPiBpbiB0aGUgYXJjaGl0ZWN0dXJlIGNvZGUuIElzIHRoZXJlIGEg
cmVhc29uIHdoeSB0aGlzIGNhbid0IHdvcmsgb24gUFBDPwoKVGhlIHByb2JsZW0gd2l0aCBwb3dl
cnBjIGlzIHRoYXQgVkRTTyBmdW5jdGlvbnMgaGF2ZSB0byAoanVzdCBsaWtlIApzeXN0ZW0gY2Fs
bHMpIHNldCB0aGUgU08gYml0IGluIENSIHJlZ2lzdGVyIGluIGNhc2Ugb2YgZXJyb3IsIG9yIGNs
ZWFyIAppdCBpZiBubyBlcnJvci4gVGhlcmUgaXMgbm8gd2F5IHRvIGRvIHRoYXQgZnJvbSB0aGUg
QyBmdW5jdGlvbiwgYmVjYXVzZSAKdGhlcmUgaXMgbm8gd2F5IHRvIHRlbGwgR0NDIHRvIG5vdCBw
bGF5IHVwIHdpdGggQ1IgcmVnaXN0ZXIgb24gZnVuY3Rpb24gCnJldHVybi4KClJlZmVyIGRpc2N1
c3Npb24gYXQgaHR0cHM6Ly9nY2MuZ251Lm9yZy9idWd6aWxsYS9zaG93X2J1Zy5jZ2k/aWQ9OTI3
NjkKCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
