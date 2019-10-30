Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EDBE9A5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=srpijdNDnk8MsuANsKfk8W6HpRZJh5wD+zVKsd3iwXE=; b=daWeOt0gASOa2mfUel9s+rCqn
	kxr1IaBPfUQC06yVaDIVAcIKkOKkQCB2fEqlZw4UMmgL0kEGJOpCxx6cAC5JsokBBLWAqDm9Wf/el
	pGZY0XDS2szVeycHxpQob1fXj1FOxhTRSJOhkJWuCVq9yEcsVdOwPPETlBTA/XVjgf2hIMVbeTUtP
	nY3R82rPgn4e9zfKDVewOgdYk6dRPsTbbo29VQqYbZ4+ScQ25k3oTsCYkugaXoxdE+sUfzy9lS11M
	+lTWDk0MWc8w6tZ/Ikk+MenjUy3sI0+qysgPtczARHwPWXH0JRyIcia3OQcydQsNJqQFDhMCLA0ZU
	71O3G8M8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPlZA-0003eO-Ma; Wed, 30 Oct 2019 10:51:04 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPlZ1-0003e3-1G
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:50:56 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 4734xS2QKVz9vC12;
 Wed, 30 Oct 2019 11:50:52 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=cIOSJZ+p; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id C5E8cMKl0Hpk; Wed, 30 Oct 2019 11:50:52 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 4734xS1MC8z9tyjM;
 Wed, 30 Oct 2019 11:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572432652; bh=yUF2yaRPDVt2MHQzuOd+5u8GS8OOZX8ob6V4sZYv3T8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=cIOSJZ+pZAZWHOzkDLlgrmQ+931Y5RSXG+7R/vb9ZS335oBTpGfI+B5occqw4GVug
 I4zSE7RoIlqWzDcHogHfXQuGRoNNOCgobcFwuDY8ZJ6GTgyelHgI5abDWX7mdF9cIZ
 U9bvG6ippiZFIITdnFAj2p2/GRafJ8CgbcnzpKcw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 19F978B875;
 Wed, 30 Oct 2019 11:50:53 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id zdibLVy7pdhC; Wed, 30 Oct 2019 11:50:53 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8D6088B7C7;
 Wed, 30 Oct 2019 11:50:50 +0100 (CET)
Subject: Re: [PATCH v2 17/23] soc: fsl: qe: make qe_ic_cascade_* static
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-18-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <1d12e0d1-a873-d841-6e73-22ec1d09c268@c-s.fr>
Date: Wed, 30 Oct 2019 11:50:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025124058.22580-18-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_035055_371740_118E324D 
X-CRM114-Status: GOOD (  13.38  )
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
Tm93IHRoYXQgdGhlIHJlZmVyZW5jZXMgZnJvbSBhcmNoL3Bvd2VycGMvIGFyZSBnb25lLCB0aGVz
ZSBhcmUgb25seQo+IHJlZmVyZW5jZWQgZnJvbSBpbnNpZGUgcWVfaWMuYywgc28gbWFrZSB0aGVt
IHN0YXRpYy4KCldoeSBkbyB0aGF0IGluIHR3byBzdGVwcyA/CkkgdGhpbmsgcGF0Y2ggOSBjb3Vs
ZCByZW1haW4gdW50aWwgaGVyZSwgYW5kIHRoZW4geW91IGNvdWxkIHNxdWFzaCBwYXRjaCAKOSBh
bmQgcGF0Y2ggMTcgdG9nZXRoZXIgaGVyZS4KCkNocmlzdG9waGUKCj4gCj4gU2lnbmVkLW9mZi1i
eTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPgo+IC0tLQo+ICAg
ZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMgfCA2ICsrKy0tLQo+ICAgaW5jbHVkZS9zb2MvZnNs
L3FlL3FlX2ljLmggfCA0IC0tLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWVf
aWMuYyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jCj4gaW5kZXggNTQ1ZWI2NzA5NGQxLi5l
MjBmMTIwNWMwZGYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMKPiAr
KysgYi9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMuYwo+IEBAIC00MDIsNyArNDAyLDcgQEAgdW5z
aWduZWQgaW50IHFlX2ljX2dldF9oaWdoX2lycShzdHJ1Y3QgcWVfaWMgKnFlX2ljKQo+ICAgCXJl
dHVybiBpcnFfbGluZWFyX3Jldm1hcChxZV9pYy0+aXJxaG9zdCwgaXJxKTsKPiAgIH0KPiAgIAo+
IC12b2lkIHFlX2ljX2Nhc2NhZGVfbG93KHN0cnVjdCBpcnFfZGVzYyAqZGVzYykKPiArc3RhdGlj
IHZvaWQgcWVfaWNfY2FzY2FkZV9sb3coc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICAgewo+ICAg
CXN0cnVjdCBxZV9pYyAqcWVfaWMgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+
ICAgCXVuc2lnbmVkIGludCBjYXNjYWRlX2lycSA9IHFlX2ljX2dldF9sb3dfaXJxKHFlX2ljKTsK
PiBAQCAtNDE1LDcgKzQxNSw3IEBAIHZvaWQgcWVfaWNfY2FzY2FkZV9sb3coc3RydWN0IGlycV9k
ZXNjICpkZXNjKQo+ICAgCQljaGlwLT5pcnFfZW9pKCZkZXNjLT5pcnFfZGF0YSk7Cj4gICB9Cj4g
ICAKPiAtdm9pZCBxZV9pY19jYXNjYWRlX2hpZ2goc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICtz
dGF0aWMgdm9pZCBxZV9pY19jYXNjYWRlX2hpZ2goc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICAg
ewo+ICAgCXN0cnVjdCBxZV9pYyAqcWVfaWMgPSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRl
c2MpOwo+ICAgCXVuc2lnbmVkIGludCBjYXNjYWRlX2lycSA9IHFlX2ljX2dldF9oaWdoX2lycShx
ZV9pYyk7Cj4gQEAgLTQyOCw3ICs0MjgsNyBAQCB2b2lkIHFlX2ljX2Nhc2NhZGVfaGlnaChzdHJ1
Y3QgaXJxX2Rlc2MgKmRlc2MpCj4gICAJCWNoaXAtPmlycV9lb2koJmRlc2MtPmlycV9kYXRhKTsK
PiAgIH0KPiAgIAo+IC12b2lkIHFlX2ljX2Nhc2NhZGVfbXV4ZWRfbXBpYyhzdHJ1Y3QgaXJxX2Rl
c2MgKmRlc2MpCj4gK3N0YXRpYyB2b2lkIHFlX2ljX2Nhc2NhZGVfbXV4ZWRfbXBpYyhzdHJ1Y3Qg
aXJxX2Rlc2MgKmRlc2MpCj4gICB7Cj4gICAJc3RydWN0IHFlX2ljICpxZV9pYyA9IGlycV9kZXNj
X2dldF9oYW5kbGVyX2RhdGEoZGVzYyk7Cj4gICAJdW5zaWduZWQgaW50IGNhc2NhZGVfaXJxOwo+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL3NvYy9mc2wvcWUvcWVfaWMuaCBiL2luY2x1ZGUvc29jL2Zz
bC9xZS9xZV9pYy5oCj4gaW5kZXggOGVjMjFhM2JkODU5Li40M2U0Y2U5NWM2YTAgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9zb2MvZnNsL3FlL3FlX2ljLmgKPiArKysgYi9pbmNsdWRlL3NvYy9mc2wv
cWUvcWVfaWMuaAo+IEBAIC02Nyw4ICs2Nyw0IEBAIHZvaWQgcWVfaWNfc2V0X2hpZ2hlc3RfcHJp
b3JpdHkodW5zaWduZWQgaW50IHZpcnEsIGludCBoaWdoKTsKPiAgIGludCBxZV9pY19zZXRfcHJp
b3JpdHkodW5zaWduZWQgaW50IHZpcnEsIHVuc2lnbmVkIGludCBwcmlvcml0eSk7Cj4gICBpbnQg
cWVfaWNfc2V0X2hpZ2hfcHJpb3JpdHkodW5zaWduZWQgaW50IHZpcnEsIHVuc2lnbmVkIGludCBw
cmlvcml0eSwgaW50IGhpZ2gpOwo+ICAgCj4gLXZvaWQgcWVfaWNfY2FzY2FkZV9sb3coc3RydWN0
IGlycV9kZXNjICpkZXNjKTsKPiAtdm9pZCBxZV9pY19jYXNjYWRlX2hpZ2goc3RydWN0IGlycV9k
ZXNjICpkZXNjKTsKPiAtdm9pZCBxZV9pY19jYXNjYWRlX211eGVkX21waWMoc3RydWN0IGlycV9k
ZXNjICpkZXNjKTsKPiAtCj4gICAjZW5kaWYgLyogX0FTTV9QT1dFUlBDX1FFX0lDX0ggKi8KPiAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
