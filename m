Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D68EC6AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:28:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q6OASzzh6sZScLR/KDif9JejUevf6+ppC+0H7ioi1aI=; b=BhzbTIQQ26ecLEQZfynzsSf9P
	bFesjnQGwZsHHXlqdh1eFl5lGN7j2CjvZyXkDpREba/g1SzvuN9P88ZvZBq3qGz7shkq4F+WOfIa8
	FHvqQLKzJAPj1xZQZPmwaJY/GYI/BBJDJaUt+JgGOyMCSTXd/cE9AE80Dx8GnWNOKct6l5CqDZl7q
	/y1xS+qxV3tMazfZvqvdaogAG/YDXa44z1pcgmgQQuBSJ8XaB/YGchd00bRlaWTOeOZjuQkqnGqvC
	ZDo5Vi/F+mvW879ytCv/nIShgQfbiX87i9fRN4RUociZEt4kHSr1wjyqEu9Dg+6yzPFtBQbbEzDIx
	pXPM0hrKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZmZ-0001eI-2P; Fri, 01 Nov 2019 16:28:15 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZmQ-0001do-OB
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:28:08 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 474SKJ5Xpvz9v2ym;
 Fri,  1 Nov 2019 17:27:48 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=I/bqdNa5; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id PZ9U7nhZ3E8A; Fri,  1 Nov 2019 17:27:48 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 474SKJ4Hsnz9v2yl;
 Fri,  1 Nov 2019 17:27:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572625668; bh=MTbVnQzwmKfyCUtbhnjX0ZBzAO1vxqklEBZN4jVzQug=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=I/bqdNa5IgpC1lJpLNjBWXiVPfYnORnOj+VKFKalooWvtzStcCsMQLEJfZSoI/tMs
 HPqq7+5xka9Xu6P9/Hxeu3LAFjSA7pTUex55mQCSnS5U37HLjLh/kbM029j+btyoBK
 migQZImU40zDGmpUVa+L/zu3hU/EMw1t2YbjdFlo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 31C5F8B8F6;
 Fri,  1 Nov 2019 17:27:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id WeeN6NS3i5l2; Fri,  1 Nov 2019 17:27:50 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 91D008B7C2;
 Fri,  1 Nov 2019 17:27:49 +0100 (CET)
Subject: Re: [PATCH v3 31/36] serial: ucc_uart: stub out soft_uart_init for
 !CONFIG_PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-32-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <53c1c463-53fc-2005-3b62-a6f430815b45@c-s.fr>
Date: Fri, 1 Nov 2019 17:27:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101124210.14510-32-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_092807_080840_401C5330 
X-CRM114-Status: GOOD (  18.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMS8xMS8yMDE5IMOgIDEzOjQyLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlIFNvZnQgVUFSVCBoYWNrIGlzIG9ubHkgbmVlZGVkIGZvciBzb21lIFBQQy1iYXNlZCBTT0Nz
LiBUbyBhbGxvdwo+IGJ1aWxkaW5nIHRoaXMgZHJpdmVyIGZvciBub24tUFBDLCBndWFyZCBzb2Z0
X3VhcnRfaW5pdCgpIGFuZCBpdHMKPiBoZWxwZXJzIGJ5IENPTkZJR19QUEMzMiwgYW5kIHVzZSBh
IG5vLW9wIHNvZnRfdWFydF9pbml0KCkgb3RoZXJ3aXNlLgoKSSBkb24ndCBsaWtlIHRvbyBtdWNo
IGlmZGVmcyBpbiBDIGZpbGVzLCBlc3BlY2lhbGx5IGFyY2ggc3BlY2lmaWMgaWZkZWZzIAppbiBn
ZW5lcmljIGRyaXZlcnMuCgpIb3cgZG8gd2UgZ2V0IHRoZSBRRSB2ZXJzaW9uIG9uIEFSTSA/CgpX
b3VsZG4ndCBpdCBiZSBjbGVhbmVyIHRvIGNyZWF0ZSBhIGhlbHBlciBmb3IgZ2V0dGluZyB0aGUg
UUUgdmVyc2lvbiwgCndoaWNoIHdvdWxkIGJlIGRlZmluZWQgaW4gYW4gYXJjaCBzcGVjaWZpYyBo
ZWFkZXIgZmlsZSwgY2FsbGluZyAKbWZzcHIoU1BSTl9TVlIpIG9uIHBvd2VycGMgYW5kIHdoYXRl
dmVyIG5lZWRlZCBvbiBhcm0gPwoKQ2hyaXN0b3BoZQoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYXNt
dXMgVmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+Cj4gLS0tCj4gICBkcml2ZXJz
L3R0eS9zZXJpYWwvdWNjX3VhcnQuYyB8IDE3ICsrKysrKysrKysrKysrKystCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3R0eS9zZXJpYWwvdWNjX3VhcnQuYyBiL2RyaXZlcnMvdHR5L3NlcmlhbC91Y2Nf
dWFydC5jCj4gaW5kZXggZjI4NmU5MTcxNGNiLi4zMTM2OTc4NDJlMjQgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy90dHkvc2VyaWFsL3VjY191YXJ0LmMKPiArKysgYi9kcml2ZXJzL3R0eS9zZXJpYWwv
dWNjX3VhcnQuYwo+IEBAIC0zMyw3ICszMywxMCBAQAo+ICAgCj4gICAjaW5jbHVkZSA8bGludXgv
ZmlybXdhcmUuaD4KPiAgICNpbmNsdWRlIDxzb2MvZnNsL2NwbS5oPgo+IC0jaW5jbHVkZSA8YXNt
L3JlZy5oPgo+ICsKPiArI2lmZGVmIENPTkZJR19QUEMzMgo+ICsjaW5jbHVkZSA8YXNtL3JlZy5o
PiAvKiBtZnNwciwgU1BSTl9TVlIgKi8KPiArI2VuZGlmCj4gICAKPiAgIC8qCj4gICAgKiBUaGUg
R1VNUiBmbGFnIGZvciBTb2Z0IFVBUlQuICBUaGlzIHdvdWxkIG5vcm1hbGx5IGJlIGRlZmluZWQg
aW4gcWUuaCwKPiBAQCAtMTA5Niw2ICsxMDk5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB1YXJ0
X29wcyBxZV91YXJ0X3BvcHMgPSB7Cj4gICAJLnZlcmlmeV9wb3J0ICAgID0gcWVfdWFydF92ZXJp
ZnlfcG9ydCwKPiAgIH07Cj4gICAKPiArCj4gKyNpZmRlZiBDT05GSUdfUFBDMzIKPiAgIC8qCj4g
ICAgKiBPYnRhaW4gdGhlIFNPQyBtb2RlbCBudW1iZXIgYW5kIHJldmlzaW9uIGxldmVsCj4gICAg
Kgo+IEBAIC0xMjM4LDYgKzEyNDMsMTYgQEAgc3RhdGljIGludCBzb2Z0X3VhcnRfaW5pdChzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpvZmRldikKPiAgIAlyZXR1cm4gMDsKPiAgIH0KPiAgIAo+ICsj
ZWxzZSAvKiAhQ09ORklHX1BQQzMyICovCj4gKwo+ICtzdGF0aWMgaW50IHNvZnRfdWFydF9pbml0
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKm9mZGV2KQo+ICt7Cj4gKwlyZXR1cm4gMDsKPiArfQo+
ICsKPiArI2VuZGlmCj4gKwo+ICsKPiAgIHN0YXRpYyBpbnQgdWNjX3VhcnRfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqb2ZkZXYpCj4gICB7Cj4gICAJc3RydWN0IGRldmljZV9ub2RlICpu
cCA9IG9mZGV2LT5kZXYub2Zfbm9kZTsKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
