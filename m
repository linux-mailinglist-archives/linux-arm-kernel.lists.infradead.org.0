Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52DCFE5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JTDVGtrIAFJE5QjIeyabRQSz15tpxTTPy6zddZ58GD4=; b=QUHUqjrR8lCTtyWeFZmh/p7Kb
	8TP0mO6699hJBNknh1wIhQTnItUIfuFgajcsJIP/3b2nBTKByJTms0pfZjARXTKfVoDljPLfjdyBh
	PW20ALt1NuxhAbzyuMD4meWKAkfB5nUfyxPdW0Ff9cZNNss+fRUeOosPdahkHJMtHv81b8u5lnVk6
	1nZ32rJpaG2bdNpnnmv1/BQczaMiD02MgqP0GfROe973y5zf1uIylq1dYEN7uiWVJZpMf+x4xcVnw
	WOFz0aEXD2igIBjyv1HN9SgeGPxHMG8ZyR/j6sTfeBnFN30KVLUcDw/dVczsy192sVnFnTRSZrLpZ
	rcmLurGSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWAZ-0003HZ-3E; Tue, 30 Apr 2019 17:03:51 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWAR-0003Gd-Pc
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:03:45 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44tnsz6jTpz9v084;
 Tue, 30 Apr 2019 19:03:35 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=thokTpL/; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id FKqMaVCQSI9R; Tue, 30 Apr 2019 19:03:35 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44tnsz5TNtz9v0Y5;
 Tue, 30 Apr 2019 19:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556643815; bh=cw+Y+kaLK7q7FJ1N0DeZMDtRi1OTaVzMwfDIbH5gM7Y=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=thokTpL/usXGt8BLX8V2bx8xWqTNVqvaxd/bd14d0oRIPi+Nz75ahCnI3zJqcb7sE
 cnvJnJ+Rie6rzo9bbmId8kh11O2ox3khrby3ZW0DroYbZYzqH75JjtflH6umK7BHGk
 PIf8qIauQL14H6yyf1kHivDOgb7L7ziv12g0y3kk=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 76D118B8F1;
 Tue, 30 Apr 2019 19:03:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id juwZzfHI02dr; Tue, 30 Apr 2019 19:03:37 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D857D8B8DF;
 Tue, 30 Apr 2019 19:03:36 +0200 (CEST)
Subject: Re: [PATCH 1/5] soc/fsl/qe: qe.c: drop useless static qualifier
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190430133615.25721-2-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <510c1b8f-515c-1cc0-d6b5-eaeaed63b738@c-s.fr>
Date: Tue, 30 Apr 2019 19:03:36 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430133615.25721-2-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_100343_977771_2584558A 
X-CRM114-Status: GOOD (  11.53  )
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
VGhlIGxvY2FsIHZhcmlhYmxlIHNudW1faW5pdCBoYXMgbm8gcmVhc29uIHRvIGhhdmUgc3RhdGlj
IHN0b3JhZ2UgZHVyYXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8
cmFzbXVzLnZpbGxlbW9lc0BwcmV2YXMuZGs+CgpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoZSBMZXJv
eSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+Cgo+IC0tLQo+ICAgZHJpdmVycy9zb2MvZnNsL3Fl
L3FlLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMgYi9kcml2ZXJz
L3NvYy9mc2wvcWUvcWUuYwo+IGluZGV4IDYxMmQ5YzU1MWJlNS4uODU1MzczZGViNzQ2IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gKysrIGIvZHJpdmVycy9zb2MvZnNs
L3FlL3FlLmMKPiBAQCAtMzA2LDcgKzMwNiw3IEBAIHN0YXRpYyB2b2lkIHFlX3NudW1zX2luaXQo
dm9pZCkKPiAgIAkJMHgyOCwgMHgyOSwgMHgzOCwgMHgzOSwgMHg0OCwgMHg0OSwgMHg1OCwgMHg1
OSwKPiAgIAkJMHg2OCwgMHg2OSwgMHg3OCwgMHg3OSwgMHg4MCwgMHg4MSwKPiAgIAl9Owo+IC0J
c3RhdGljIGNvbnN0IHU4ICpzbnVtX2luaXQ7Cj4gKwljb25zdCB1OCAqc251bV9pbml0Owo+ICAg
Cj4gICAJcWVfbnVtX29mX3NudW0gPSBxZV9nZXRfbnVtX29mX3NudW1zKCk7Cj4gICAKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
