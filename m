Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E3EFE8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eSVWyQ+n82JRYOKP78wsVjZsQDj+BhwHVdBOS9QpIe8=; b=k3B1uEbj/Yqi/3KH1johTWqnJ
	rTkwrG+pyD1cgkN3STRBPGgeB8hLFKLvqt91IElqyr+5HGk9PHCqpKs6ZSvuPDbx0NMCYWPVSnWiL
	/keYqDvog8ct0f26izzW0WSVtEIt3u3ffAzO/gt0olkIWRJVRs0BH8VZwmQC4srKyAPgq/bFogJi7
	1jLUWY4URo7xzfoFRWJBDhDdCkZtZ+ALmxDRZmKGUcWTPPzerzQGxB0GkwQ1egKk+Jarhvg+WP3RL
	ezpVZl8UVG2++vBk4lOYIo3eUZuEr2leVhCOJoW7oaNdKTncU7EpePp4kZ4rOM2oHEGy02urMk5Im
	MPEuZtggg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWIy-0008Qe-6q; Tue, 30 Apr 2019 17:12:32 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWIq-0008Q5-Jp
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:12:26 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44tp3y58RLz9v1k9;
 Tue, 30 Apr 2019 19:12:14 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Y+BPCfFl; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 7IpCUdIa0TSw; Tue, 30 Apr 2019 19:12:14 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44tp3y3rYfz9v1k7;
 Tue, 30 Apr 2019 19:12:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556644334; bh=I6U/WMxuM/ZK7tYarUOuYY237DpcVURiegr1EP4PwhY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Y+BPCfFlQth4Q3F4g09mhVDLltZ5p3Mj2+f6vObRBwtp83X+EBMQ7W/cEJ9lu+7PJ
 U7Lu6rlIhX1oP9BOJN7JC4H6TcF0fBF1sJ++alaqcd2Ea2lR9anAaYMuuATjNakepe
 ONOZwv+6heJPV/00barKCBVJyByRCJfQFYHYnV1Q=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3EE138B8F1;
 Tue, 30 Apr 2019 19:12:16 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id IvLfQpKYtXoV; Tue, 30 Apr 2019 19:12:16 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 94E648B8DF;
 Tue, 30 Apr 2019 19:12:15 +0200 (CEST)
Subject: Re: [PATCH 2/5] soc/fsl/qe: qe.c: reduce static memory footprint by
 1.7K
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190430133615.25721-3-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <51b00425-58a7-089a-67a9-61cd315d5097@c-s.fr>
Date: Tue, 30 Apr 2019 19:12:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430133615.25721-3-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101224_964887_FDD6164B 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzMC8wNC8yMDE5IMOgIDE1OjM2LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlIGN1cnJlbnQgYXJyYXkgb2Ygc3RydWN0IHFlX3NudW0gdXNlIDI1Nio0IGJ5dGVzIGZvciBq
dXN0IGtlZXBpbmcKPiB0cmFjayBvZiB0aGUgZnJlZS91c2VkIHN0YXRlIG9mIGVhY2ggaW5kZXgs
IGFuZCB0aGUgc3RydWN0IGxheW91dAo+IG1lYW5zIHRoZXJlJ3MgYW5vdGhlciA3NjggYnl0ZXMg
b2YgcGFkZGluZy4gSWYgd2UganVzdCB1bnppcCB0aGF0Cj4gc3RydWN0dXJlLCB0aGUgYXJyYXkg
b2Ygc251bSB2YWx1ZXMganVzdCB1c2UgMjU2IGJ5dGVzLCB3aGlsZSB0aGUKPiBmcmVlL2ludXNl
IHN0YXRlIGNhbiBiZSB0cmFja2VkIGluIGEgMzIgYnl0ZSBiaXRtYXAuCj4gCj4gU28gdGhpcyBy
ZWR1Y2VzIHRoZSAuZGF0YSBmb290cHJpbnQgYnkgMTc2MCBieXRlcy4gSXQgYWxzbyBzZXJ2ZXMg
YXMKPiBwcmVwYXJhdGlvbiBmb3IgaW50cm9kdWNpbmcgYW5vdGhlciBEVCBiaW5kaW5nIGZvciBz
cGVjaWZ5aW5nIHRoZSBzbnVtCj4gdmFsdWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhc211cyBW
aWxsZW1vZXMgPHJhc211cy52aWxsZW1vZXNAcHJldmFzLmRrPgo+IC0tLQo+ICAgZHJpdmVycy9z
b2MvZnNsL3FlL3FlLmMgfCAzNyArKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jIGIvZHJpdmVycy9zb2MvZnNs
L3FlL3FlLmMKPiBpbmRleCA4NTUzNzNkZWI3NDYuLmQwMzkzZjgzMTQ1YyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYwo+ICsrKyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5j
Cj4gQEAgLTE0LDYgKzE0LDcgQEAKPiAgICAqIEZyZWUgU29mdHdhcmUgRm91bmRhdGlvbjsgIGVp
dGhlciB2ZXJzaW9uIDIgb2YgdGhlICBMaWNlbnNlLCBvciAoYXQgeW91cgo+ICAgICogb3B0aW9u
KSBhbnkgbGF0ZXIgdmVyc2lvbi4KPiAgICAqLwo+ICsjaW5jbHVkZSA8bGludXgvYml0bWFwLmg+
Cj4gICAjaW5jbHVkZSA8bGludXgvZXJybm8uaD4KPiAgICNpbmNsdWRlIDxsaW51eC9zY2hlZC5o
Pgo+ICAgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+IEBAIC00MywyNSArNDQsMTQgQEAgc3Rh
dGljIERFRklORV9TUElOTE9DSyhxZV9sb2NrKTsKPiAgIERFRklORV9TUElOTE9DSyhjbXhnY3Jf
bG9jayk7Cj4gICBFWFBPUlRfU1lNQk9MKGNteGdjcl9sb2NrKTsKPiAgIAo+IC0vKiBRRSBzbnVt
IHN0YXRlICovCj4gLWVudW0gcWVfc251bV9zdGF0ZSB7Cj4gLQlRRV9TTlVNX1NUQVRFX1VTRUQs
Cj4gLQlRRV9TTlVNX1NUQVRFX0ZSRUUKPiAtfTsKPiAtCj4gLS8qIFFFIHNudW0gKi8KPiAtc3Ry
dWN0IHFlX3NudW0gewo+IC0JdTggbnVtOwo+IC0JZW51bSBxZV9zbnVtX3N0YXRlIHN0YXRlOwo+
IC19Owo+IC0KPiAgIC8qIFdlIGFsbG9jYXRlIHRoaXMgaGVyZSBiZWNhdXNlIGl0IGlzIHVzZWQg
YWxtb3N0IGV4Y2x1c2l2ZWx5IGZvcgo+ICAgICogdGhlIGNvbW11bmljYXRpb24gcHJvY2Vzc29y
IGRldmljZXMuCj4gICAgKi8KPiAgIHN0cnVjdCBxZV9pbW1hcCBfX2lvbWVtICpxZV9pbW1yOwo+
ICAgRVhQT1JUX1NZTUJPTChxZV9pbW1yKTsKPiAgIAo+IC1zdGF0aWMgc3RydWN0IHFlX3NudW0g
c251bXNbUUVfTlVNX09GX1NOVU1dOwkvKiBEeW5hbWljYWxseSBhbGxvY2F0ZWQgU05VTXMgKi8K
PiArc3RhdGljIHU4IHNudW1zW1FFX05VTV9PRl9TTlVNXTsJLyogRHluYW1pY2FsbHkgYWxsb2Nh
dGVkIFNOVU1zICovCj4gK3N0YXRpYyBERUNMQVJFX0JJVE1BUChzbnVtX3N0YXRlLCBRRV9OVU1f
T0ZfU05VTSk7Cj4gICBzdGF0aWMgdW5zaWduZWQgaW50IHFlX251bV9vZl9zbnVtOwo+ICAgCj4g
ICBzdGF0aWMgcGh5c19hZGRyX3QgcWViYXNlID0gLTE7Cj4gQEAgLTMwOCw2ICsyOTgsNyBAQCBz
dGF0aWMgdm9pZCBxZV9zbnVtc19pbml0KHZvaWQpCj4gICAJfTsKPiAgIAljb25zdCB1OCAqc251
bV9pbml0Owo+ICAgCj4gKwliaXRtYXBfemVybyhzbnVtX3N0YXRlLCBRRV9OVU1fT0ZfU05VTSk7
CgpEb2Vzbid0IG1ha2UgbXVjaCBpbXBvcnRhbmNlLCBidXQgd291bGRuJ3QgaXQgYmUgbW9yZSBs
b2dpY2FsIHRvIGFkZCAKdGhpcyBsaW5lIHdoZXJlIHRoZSBzZXR0aW5nIG9mIC5zdGF0ZSA9IFFF
X1NOVU1fU1RBVEVfRlJFRSB3YXMgZG9uZSAKcHJldmlvdXNseSwgaWUgYXJvdW5kIHRoZSBmb3Io
KSBsb29wIGJlbG93ID8KCj4gICAJcWVfbnVtX29mX3NudW0gPSBxZV9nZXRfbnVtX29mX3NudW1z
KCk7Cj4gICAKPiAgIAlpZiAocWVfbnVtX29mX3NudW0gPT0gNzYpCj4gQEAgLTMxNSwxMCArMzA2
LDggQEAgc3RhdGljIHZvaWQgcWVfc251bXNfaW5pdCh2b2lkKQo+ICAgCWVsc2UKPiAgIAkJc251
bV9pbml0ID0gc251bV9pbml0XzQ2Owo+ICAgCj4gLQlmb3IgKGkgPSAwOyBpIDwgcWVfbnVtX29m
X3NudW07IGkrKykgewo+IC0JCXNudW1zW2ldLm51bSA9IHNudW1faW5pdFtpXTsKPiAtCQlzbnVt
c1tpXS5zdGF0ZSA9IFFFX1NOVU1fU1RBVEVfRlJFRTsKPiAtCX0KPiArCWZvciAoaSA9IDA7IGkg
PCBxZV9udW1fb2Zfc251bTsgaSsrKQo+ICsJCXNudW1zW2ldID0gc251bV9pbml0W2ldOwoKQ291
bGQgdXNlIG1lbWNweSgpIGluc3RlYWQgPwoKPiAgIH0KPiAgIAo+ICAgaW50IHFlX2dldF9zbnVt
KHZvaWQpCj4gQEAgLTMyOCwxMiArMzE3LDEwIEBAIGludCBxZV9nZXRfc251bSh2b2lkKQo+ICAg
CWludCBpOwo+ICAgCj4gICAJc3Bpbl9sb2NrX2lycXNhdmUoJnFlX2xvY2ssIGZsYWdzKTsKPiAt
CWZvciAoaSA9IDA7IGkgPCBxZV9udW1fb2Zfc251bTsgaSsrKSB7Cj4gLQkJaWYgKHNudW1zW2ld
LnN0YXRlID09IFFFX1NOVU1fU1RBVEVfRlJFRSkgewo+IC0JCQlzbnVtc1tpXS5zdGF0ZSA9IFFF
X1NOVU1fU1RBVEVfVVNFRDsKPiAtCQkJc251bSA9IHNudW1zW2ldLm51bTsKPiAtCQkJYnJlYWs7
Cj4gLQkJfQo+ICsJaSA9IGZpbmRfZmlyc3RfemVyb19iaXQoc251bV9zdGF0ZSwgcWVfbnVtX29m
X3NudW0pOwo+ICsJaWYgKGkgPCBxZV9udW1fb2Zfc251bSkgewo+ICsJCXNldF9iaXQoaSwgc251
bV9zdGF0ZSk7Cj4gKwkJc251bSA9IHNudW1zW2ldOwo+ICAgCX0KPiAgIAlzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZxZV9sb2NrLCBmbGFncyk7Cj4gICAKPiBAQCAtMzQ2LDggKzMzMyw4IEBAIHZv
aWQgcWVfcHV0X3NudW0odTggc251bSkKPiAgIAlpbnQgaTsKPiAgIAo+ICAgCWZvciAoaSA9IDA7
IGkgPCBxZV9udW1fb2Zfc251bTsgaSsrKSB7Cj4gLQkJaWYgKHNudW1zW2ldLm51bSA9PSBzbnVt
KSB7Cj4gLQkJCXNudW1zW2ldLnN0YXRlID0gUUVfU05VTV9TVEFURV9GUkVFOwo+ICsJCWlmIChz
bnVtc1tpXSA9PSBzbnVtKSB7Cj4gKwkJCWNsZWFyX2JpdChpLCBzbnVtX3N0YXRlKTsKPiAgIAkJ
CWJyZWFrOwo+ICAgCQl9Cj4gICAJfQoKQ2FuIHdlIHJlcGxhY2UgdGhpcyBsb29wIGJ5IG1lbWNo
cigpID8KCkNocmlzdG9waGUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
