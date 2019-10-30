Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF84E9A4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:46:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZO6xpJUqnzv2gxBSPwvfZliYHNkPngp98fOMwKPjfKA=; b=joCws+O0DWThdUS9GEaGeM/iE
	VJIRofMrmnOEJmLkNe0MZoCw3rZpSFM8tmapRzpMhXKhD8MtEsbU8dAMtlQcUXpurFcHWxThYMDZC
	tMJWnjF/Wod2YYgkv53lPfUHzifaRZ3/5y0yMKJDhLvCV0QfurS9Ri8OA8atM0XNm1JWH90py5jI1
	eEt3EsPKnZ9HjJEhDQRfB3qGyj+vTUz4Ud7FoXXVhFfmKtzR8I0yY4SSakzUgZdihBTmACGX3/kAA
	NCePOlCLw2ON74Y0B1QWhJZID3AFsPjMff5owwW7hFU89GvUcoAIlYgFjKRPMJ2j7cVieUysMfIpX
	aK9dZv6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlUF-0001iO-53; Wed, 30 Oct 2019 10:45:59 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlU2-0001hE-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:45:48 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 4734qL1h7cz9vC0r;
 Wed, 30 Oct 2019 11:45:34 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=IF1kk/S9; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id RKPDgr6MaFYQ; Wed, 30 Oct 2019 11:45:34 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 4734qL0cgqz9vC0q;
 Wed, 30 Oct 2019 11:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572432334; bh=ldw9WUgmvPJSr0yqobCGkdD8WgYCJ83JuIM2Zc0dqTc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=IF1kk/S9aewyTgTqFIvoD/cCPMgynwOcooIsZlNEKD4i5AsCVo2kQzfnPEuMaYd58
 skGXIRVEm0Diy5eW0JoSWYE1FYReNLhQWiSxAiiz/qKkW6ThLRH/EqczlF22hawOck
 L3ea7nQRw5B+cWk5/dFW6Onwwn7dQRC4k+cJrBAU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C5BDD8B7AF;
 Wed, 30 Oct 2019 11:45:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 6ZJvPf1P5Mu6; Wed, 30 Oct 2019 11:45:34 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 34E9E8B7C8;
 Wed, 30 Oct 2019 11:45:32 +0100 (CET)
Subject: Re: [PATCH v2 09/23] soc: fsl: qe: move qe_ic_cascade_* functions to
 qe_ic.c
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-10-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <b01b12fc-88a5-8bc9-5a48-e35ad75b49d9@c-s.fr>
Date: Wed, 30 Oct 2019 11:45:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025124058.22580-10-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_034546_634016_F7A3B329 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Scott Wood <oss@buserror.net>,
 Valentin Longchamp <valentin.longchamp@keymile.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlc2UgZnVuY3Rpb25zIGFyZSBvbmx5IGV2ZXIgY2FsbGVkIHRocm91Z2ggYSBmdW5jdGlvbiBw
b2ludGVyLCBhbmQKPiB0aGVyZWZvcmUgaXQgbWFrZXMgbm8gc2Vuc2UgZm9yIHRoZW0gdG8gYmUg
InN0YXRpYyBpbmxpbmUiIC0gZ2NjIGhhcwo+IG5vIGNob2ljZSBidXQgdG8gZW1pdCBhIGNvcHkg
aW4gZWFjaCB0cmFuc2xhdGlvbiB1bml0IHRoYXQgdGFrZXMgdGhlCj4gYWRkcmVzcyBvZiBvbmUg
b2YgdGhlc2UgKGN1cnJlbnRseSB2YXJpb3VzIHBsYXRmb3JtIGNvZGUgdW5kZXIKPiBhcmNoL3Bv
d2VycGMvKS4gU28gbW92ZSB0aGVtIGludG8gcWVfaWMuYyBhbmQgbGVhdmUgb3JkaW5hcnkgZXh0
ZXJuCj4gZGVjbGFyYXRpb25zIGluIHRoZSBoZWFkZXIgZmlsZS4KCldoYXQgaXMgdGhlIHBvaW50
IGluIG1vdmluZyBmb25jdGlvbnMgdGhhdCB5b3Ugd2lsbCBkcm9wIGluIHRoZSBuZXh0IApwYXRj
aCAocWVfaWNfY2FzY2FkZV9sb3dfaXBpYygpIGFuZCBxZV9pY19jYXNjYWRlX2hpZ2hfaXBpYygp
KQpPbmx5IG1vdmUgdGhlIG9uZXMgdGhhdCB3aWxsIHJlbWFpbi4KCkNocmlzdG9waGUKCgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFJhc211cyBWaWxsZW1vZXMgPGxpbnV4QHJhc211c3ZpbGxlbW9lcy5k
az4KPiAtLS0KPiAgIGRyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jIHwgNTggKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPiAgIGluY2x1ZGUvc29jL2ZzbC9xZS9xZV9pYy5oIHwg
NjIgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDIgZmlsZXMgY2hh
bmdlZCwgNjMgaW5zZXJ0aW9ucygrKSwgNTcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jIGIvZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMK
PiBpbmRleCA3YjE4NzBkMjg2NmEuLmE4NDdiMjY3MmU5MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3NvYy9mc2wvcWUvcWVfaWMuYwo+ICsrKyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jCj4g
QEAgLTQwMiw2ICs0MDIsNjQgQEAgdW5zaWduZWQgaW50IHFlX2ljX2dldF9oaWdoX2lycShzdHJ1
Y3QgcWVfaWMgKnFlX2ljKQo+ICAgCXJldHVybiBpcnFfbGluZWFyX3Jldm1hcChxZV9pYy0+aXJx
aG9zdCwgaXJxKTsKPiAgIH0KPiAgIAo+ICt2b2lkIHFlX2ljX2Nhc2NhZGVfbG93X2lwaWMoc3Ry
dWN0IGlycV9kZXNjICpkZXNjKQo+ICt7Cj4gKwlzdHJ1Y3QgcWVfaWMgKnFlX2ljID0gaXJxX2Rl
c2NfZ2V0X2hhbmRsZXJfZGF0YShkZXNjKTsKPiArCXVuc2lnbmVkIGludCBjYXNjYWRlX2lycSA9
IHFlX2ljX2dldF9sb3dfaXJxKHFlX2ljKTsKPiArCj4gKwlpZiAoY2FzY2FkZV9pcnEgIT0gTk9f
SVJRKQo+ICsJCWdlbmVyaWNfaGFuZGxlX2lycShjYXNjYWRlX2lycSk7Cj4gK30KPiArCj4gK3Zv
aWQgcWVfaWNfY2FzY2FkZV9oaWdoX2lwaWMoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICt7Cj4g
KwlzdHJ1Y3QgcWVfaWMgKnFlX2ljID0gaXJxX2Rlc2NfZ2V0X2hhbmRsZXJfZGF0YShkZXNjKTsK
PiArCXVuc2lnbmVkIGludCBjYXNjYWRlX2lycSA9IHFlX2ljX2dldF9oaWdoX2lycShxZV9pYyk7
Cj4gKwo+ICsJaWYgKGNhc2NhZGVfaXJxICE9IE5PX0lSUSkKPiArCQlnZW5lcmljX2hhbmRsZV9p
cnEoY2FzY2FkZV9pcnEpOwo+ICt9Cj4gKwo+ICt2b2lkIHFlX2ljX2Nhc2NhZGVfbG93X21waWMo
c3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICt7Cj4gKwlzdHJ1Y3QgcWVfaWMgKnFlX2ljID0gaXJx
X2Rlc2NfZ2V0X2hhbmRsZXJfZGF0YShkZXNjKTsKPiArCXVuc2lnbmVkIGludCBjYXNjYWRlX2ly
cSA9IHFlX2ljX2dldF9sb3dfaXJxKHFlX2ljKTsKPiArCXN0cnVjdCBpcnFfY2hpcCAqY2hpcCA9
IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+ICsKPiArCWlmIChjYXNjYWRlX2lycSAhPSBOT19J
UlEpCj4gKwkJZ2VuZXJpY19oYW5kbGVfaXJxKGNhc2NhZGVfaXJxKTsKPiArCj4gKwljaGlwLT5p
cnFfZW9pKCZkZXNjLT5pcnFfZGF0YSk7Cj4gK30KPiArCj4gK3ZvaWQgcWVfaWNfY2FzY2FkZV9o
aWdoX21waWMoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICt7Cj4gKwlzdHJ1Y3QgcWVfaWMgKnFl
X2ljID0gaXJxX2Rlc2NfZ2V0X2hhbmRsZXJfZGF0YShkZXNjKTsKPiArCXVuc2lnbmVkIGludCBj
YXNjYWRlX2lycSA9IHFlX2ljX2dldF9oaWdoX2lycShxZV9pYyk7Cj4gKwlzdHJ1Y3QgaXJxX2No
aXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hpcChkZXNjKTsKPiArCj4gKwlpZiAoY2FzY2FkZV9p
cnEgIT0gTk9fSVJRKQo+ICsJCWdlbmVyaWNfaGFuZGxlX2lycShjYXNjYWRlX2lycSk7Cj4gKwo+
ICsJY2hpcC0+aXJxX2VvaSgmZGVzYy0+aXJxX2RhdGEpOwo+ICt9Cj4gKwo+ICt2b2lkIHFlX2lj
X2Nhc2NhZGVfbXV4ZWRfbXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpCj4gK3sKPiArCXN0cnVj
dCBxZV9pYyAqcWVfaWMgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+ICsJdW5z
aWduZWQgaW50IGNhc2NhZGVfaXJxOwo+ICsJc3RydWN0IGlycV9jaGlwICpjaGlwID0gaXJxX2Rl
c2NfZ2V0X2NoaXAoZGVzYyk7Cj4gKwo+ICsJY2FzY2FkZV9pcnEgPSBxZV9pY19nZXRfaGlnaF9p
cnEocWVfaWMpOwo+ICsJaWYgKGNhc2NhZGVfaXJxID09IE5PX0lSUSkKPiArCQljYXNjYWRlX2ly
cSA9IHFlX2ljX2dldF9sb3dfaXJxKHFlX2ljKTsKPiArCj4gKwlpZiAoY2FzY2FkZV9pcnEgIT0g
Tk9fSVJRKQo+ICsJCWdlbmVyaWNfaGFuZGxlX2lycShjYXNjYWRlX2lycSk7Cj4gKwo+ICsJY2hp
cC0+aXJxX2VvaSgmZGVzYy0+aXJxX2RhdGEpOwo+ICt9Cj4gKwo+ICAgdm9pZCBfX2luaXQgcWVf
aWNfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUsIHVuc2lnbmVkIGludCBmbGFncywKPiAg
IAkJICAgICAgIHZvaWQgKCpsb3dfaGFuZGxlcikoc3RydWN0IGlycV9kZXNjICpkZXNjKSwKPiAg
IAkJICAgICAgIHZvaWQgKCpoaWdoX2hhbmRsZXIpKHN0cnVjdCBpcnFfZGVzYyAqZGVzYykpCj4g
ZGlmZiAtLWdpdCBhL2luY2x1ZGUvc29jL2ZzbC9xZS9xZV9pYy5oIGIvaW5jbHVkZS9zb2MvZnNs
L3FlL3FlX2ljLmgKPiBpbmRleCA3MTRhOWI4OTBkOGQuLmYzNDkyZWIxMzA1MiAxMDA2NDQKPiAt
LS0gYS9pbmNsdWRlL3NvYy9mc2wvcWUvcWVfaWMuaAo+ICsrKyBiL2luY2x1ZGUvc29jL2ZzbC9x
ZS9xZV9pYy5oCj4gQEAgLTc0LDYyICs3NCwxMCBAQCB2b2lkIHFlX2ljX3NldF9oaWdoZXN0X3By
aW9yaXR5KHVuc2lnbmVkIGludCB2aXJxLCBpbnQgaGlnaCk7Cj4gICBpbnQgcWVfaWNfc2V0X3By
aW9yaXR5KHVuc2lnbmVkIGludCB2aXJxLCB1bnNpZ25lZCBpbnQgcHJpb3JpdHkpOwo+ICAgaW50
IHFlX2ljX3NldF9oaWdoX3ByaW9yaXR5KHVuc2lnbmVkIGludCB2aXJxLCB1bnNpZ25lZCBpbnQg
cHJpb3JpdHksIGludCBoaWdoKTsKPiAgIAo+IC1zdGF0aWMgaW5saW5lIHZvaWQgcWVfaWNfY2Fz
Y2FkZV9sb3dfaXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpCj4gLXsKPiAtCXN0cnVjdCBxZV9p
YyAqcWVfaWMgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+IC0JdW5zaWduZWQg
aW50IGNhc2NhZGVfaXJxID0gcWVfaWNfZ2V0X2xvd19pcnEocWVfaWMpOwo+IC0KPiAtCWlmIChj
YXNjYWRlX2lycSAhPSBOT19JUlEpCj4gLQkJZ2VuZXJpY19oYW5kbGVfaXJxKGNhc2NhZGVfaXJx
KTsKPiAtfQo+IC0KPiAtc3RhdGljIGlubGluZSB2b2lkIHFlX2ljX2Nhc2NhZGVfaGlnaF9pcGlj
KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPiAtewo+IC0Jc3RydWN0IHFlX2ljICpxZV9pYyA9IGly
cV9kZXNjX2dldF9oYW5kbGVyX2RhdGEoZGVzYyk7Cj4gLQl1bnNpZ25lZCBpbnQgY2FzY2FkZV9p
cnEgPSBxZV9pY19nZXRfaGlnaF9pcnEocWVfaWMpOwo+IC0KPiAtCWlmIChjYXNjYWRlX2lycSAh
PSBOT19JUlEpCj4gLQkJZ2VuZXJpY19oYW5kbGVfaXJxKGNhc2NhZGVfaXJxKTsKPiAtfQo+IC0K
PiAtc3RhdGljIGlubGluZSB2b2lkIHFlX2ljX2Nhc2NhZGVfbG93X21waWMoc3RydWN0IGlycV9k
ZXNjICpkZXNjKQo+IC17Cj4gLQlzdHJ1Y3QgcWVfaWMgKnFlX2ljID0gaXJxX2Rlc2NfZ2V0X2hh
bmRsZXJfZGF0YShkZXNjKTsKPiAtCXVuc2lnbmVkIGludCBjYXNjYWRlX2lycSA9IHFlX2ljX2dl
dF9sb3dfaXJxKHFlX2ljKTsKPiAtCXN0cnVjdCBpcnFfY2hpcCAqY2hpcCA9IGlycV9kZXNjX2dl
dF9jaGlwKGRlc2MpOwo+IC0KPiAtCWlmIChjYXNjYWRlX2lycSAhPSBOT19JUlEpCj4gLQkJZ2Vu
ZXJpY19oYW5kbGVfaXJxKGNhc2NhZGVfaXJxKTsKPiAtCj4gLQljaGlwLT5pcnFfZW9pKCZkZXNj
LT5pcnFfZGF0YSk7Cj4gLX0KPiAtCj4gLXN0YXRpYyBpbmxpbmUgdm9pZCBxZV9pY19jYXNjYWRl
X2hpZ2hfbXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpCj4gLXsKPiAtCXN0cnVjdCBxZV9pYyAq
cWVfaWMgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+IC0JdW5zaWduZWQgaW50
IGNhc2NhZGVfaXJxID0gcWVfaWNfZ2V0X2hpZ2hfaXJxKHFlX2ljKTsKPiAtCXN0cnVjdCBpcnFf
Y2hpcCAqY2hpcCA9IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+IC0KPiAtCWlmIChjYXNjYWRl
X2lycSAhPSBOT19JUlEpCj4gLQkJZ2VuZXJpY19oYW5kbGVfaXJxKGNhc2NhZGVfaXJxKTsKPiAt
Cj4gLQljaGlwLT5pcnFfZW9pKCZkZXNjLT5pcnFfZGF0YSk7Cj4gLX0KPiAtCj4gLXN0YXRpYyBp
bmxpbmUgdm9pZCBxZV9pY19jYXNjYWRlX211eGVkX21waWMoc3RydWN0IGlycV9kZXNjICpkZXNj
KQo+IC17Cj4gLQlzdHJ1Y3QgcWVfaWMgKnFlX2ljID0gaXJxX2Rlc2NfZ2V0X2hhbmRsZXJfZGF0
YShkZXNjKTsKPiAtCXVuc2lnbmVkIGludCBjYXNjYWRlX2lycTsKPiAtCXN0cnVjdCBpcnFfY2hp
cCAqY2hpcCA9IGlycV9kZXNjX2dldF9jaGlwKGRlc2MpOwo+IC0KPiAtCWNhc2NhZGVfaXJxID0g
cWVfaWNfZ2V0X2hpZ2hfaXJxKHFlX2ljKTsKPiAtCWlmIChjYXNjYWRlX2lycSA9PSBOT19JUlEp
Cj4gLQkJY2FzY2FkZV9pcnEgPSBxZV9pY19nZXRfbG93X2lycShxZV9pYyk7Cj4gLQo+IC0JaWYg
KGNhc2NhZGVfaXJxICE9IE5PX0lSUSkKPiAtCQlnZW5lcmljX2hhbmRsZV9pcnEoY2FzY2FkZV9p
cnEpOwo+IC0KPiAtCWNoaXAtPmlycV9lb2koJmRlc2MtPmlycV9kYXRhKTsKPiAtfQo+ICt2b2lk
IHFlX2ljX2Nhc2NhZGVfbG93X2lwaWMoc3RydWN0IGlycV9kZXNjICpkZXNjKTsKPiArdm9pZCBx
ZV9pY19jYXNjYWRlX2hpZ2hfaXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpOwo+ICt2b2lkIHFl
X2ljX2Nhc2NhZGVfbG93X21waWMoc3RydWN0IGlycV9kZXNjICpkZXNjKTsKPiArdm9pZCBxZV9p
Y19jYXNjYWRlX2hpZ2hfbXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpOwo+ICt2b2lkIHFlX2lj
X2Nhc2NhZGVfbXV4ZWRfbXBpYyhzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpOwo+ICAgCj4gICAjZW5k
aWYgLyogX0FTTV9QT1dFUlBDX1FFX0lDX0ggKi8KPiAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
