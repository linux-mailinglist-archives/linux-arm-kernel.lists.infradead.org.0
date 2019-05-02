Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3651125B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 06:53:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jB0GPRnakwavDPxqrmo5W+hK7UvrB6Xy1y+BcE3BMo8=; b=XQIhO8NKUcJb1ApfHV/pkhrlk
	k/+7NPOn1Pl0kcLWZiXQeFpYcUNMauTy6DeNAe3j6SvBlxEkUOp3h+YanH0rHSxpvwfJvLoPOI+3l
	8CL2BOvY4XLLIFvRUKT8k6+tn82EPLKgw/IE7fADqrZTjcLwq3VjTk4aAN+F/SwTTcMCYZ5pSpPJh
	7WeJXKCm1KvvkwS0wjhG8LkXcRgG/5p6ACB8EJ4nN/N9suB/5fjnx9d5EADHGveo/YzhnI43QKlcf
	IaUa3tZ3k9mQkA8fpVA3j0S8GAXCricVNqPoqHaeXx0aNfEjuhMcFPVjpFZQRJiil0rdRwZyXd4j3
	Vyf6mmwrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3iR-0004wA-QU; Thu, 02 May 2019 04:53:03 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3iK-0004vr-9F
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 04:52:57 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44vjYn5z2vz9v0BV;
 Thu,  2 May 2019 06:52:45 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=oC51hi27; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 0TUnsWMW3vXT; Thu,  2 May 2019 06:52:45 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44vjYn4rZBz9v0BC;
 Thu,  2 May 2019 06:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556772765; bh=oTUoNAvTbptkwHiQB4BoNv5xEebc0qVEEYx9fowqT+s=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=oC51hi27WAkc8iHZkPAl58pflieW+TouGLtmSDXZSe87JlN74wedySK6NhkoeGFA1
 Jq+AyX73+z7yScKsRYE+TYvzCeieb6eQ15HoV7fS9NC/ot6sx+7berTcq+2fmHLuJ/
 wmUYb/IjZpoGDMHaiuuZ/GwuFwGZdzX13EV1SlyU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 79AC18B84E;
 Thu,  2 May 2019 06:52:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id lb_56fQc7pmk; Thu,  2 May 2019 06:52:46 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id DD09C8B74C;
 Thu,  2 May 2019 06:52:45 +0200 (CEST)
Subject: Re: [PATCH v2 5/6] soc/fsl/qe: qe.c: support fsl,qe-snums property
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-6-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <53c8e642-5efa-c476-92b7-a70d5598b217@c-s.fr>
Date: Thu, 2 May 2019 06:52:45 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501092841.9026-6-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_215256_615227_F6BE7347 
X-CRM114-Status: GOOD (  17.80  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMS8wNS8yMDE5IMOgIDExOjI5LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
QWRkIGRyaXZlciBzdXBwb3J0IGZvciB0aGUgbmV3bHkgaW50cm9kdWNlZCBmc2wscWUtc251bXMg
cHJvcGVydHkuCj4gCj4gQ29udmVuaWVudGx5LCBvZl9wcm9wZXJ0eV9yZWFkX3ZhcmlhYmxlX3U4
X2FycmF5IGRvZXMgZXhhY3RseSB3aGF0IHdlCj4gbmVlZDogSWYgdGhlIHByb3BlcnR5IGZzbCxx
ZS1zbnVtcyBpcyBmb3VuZCAoYW5kIGhhcyBhbiBhbGxvd2VkIHNpemUpLAo+IHRoZSBhcnJheSBv
ZiB2YWx1ZXMgZ2V0IGNvcGllZCB0byBzbnVtcywgYW5kIHRoZSByZXR1cm4gdmFsdWUgaXMgdGhl
Cj4gbnVtYmVyIG9mIHNudW1zIC0gd2UgY2Fubm90IGFzc2lnbiBkaXJlY3RseSB0byBudW1fb2Zf
c251bXMsIHNpbmNlIHdlCj4gbmVlZCB0byBjaGVjayB3aGV0aGVyIHRoZSByZXR1cm4gdmFsdWUg
aXMgbmVnYXRpdmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8cmFzbXVz
LnZpbGxlbW9lc0BwcmV2YXMuZGs+CgpSZXZpZXdlZC1ieTogQ2hyaXN0b3BoZSBMZXJveSA8Y2hy
aXN0b3BoZS5sZXJveUBjLXMuZnI+Cgo+IC0tLQo+ICAgZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMg
fCAxNiArKysrKysrKysrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvZnNsL3FlL3Fl
LmMgYi9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYwo+IGluZGV4IDBmYjhiNTlmNjFhZC4uMzI1ZDY4
OWNiZjVjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gKysrIGIvZHJp
dmVycy9zb2MvZnNsL3FlL3FlLmMKPiBAQCAtMjgzLDcgKzI4Myw2IEBAIEVYUE9SVF9TWU1CT0wo
cWVfY2xvY2tfc291cmNlKTsKPiAgICAqLwo+ICAgc3RhdGljIHZvaWQgcWVfc251bXNfaW5pdCh2
b2lkKQo+ICAgewo+IC0JaW50IGk7Cj4gICAJc3RhdGljIGNvbnN0IHU4IHNudW1faW5pdF83Nltd
ID0gewo+ICAgCQkweDA0LCAweDA1LCAweDBDLCAweDBELCAweDE0LCAweDE1LCAweDFDLCAweDFE
LAo+ICAgCQkweDI0LCAweDI1LCAweDJDLCAweDJELCAweDM0LCAweDM1LCAweDg4LCAweDg5LAo+
IEBAIC0zMDQsNyArMzAzLDIxIEBAIHN0YXRpYyB2b2lkIHFlX3NudW1zX2luaXQodm9pZCkKPiAg
IAkJMHgyOCwgMHgyOSwgMHgzOCwgMHgzOSwgMHg0OCwgMHg0OSwgMHg1OCwgMHg1OSwKPiAgIAkJ
MHg2OCwgMHg2OSwgMHg3OCwgMHg3OSwgMHg4MCwgMHg4MSwKPiAgIAl9Owo+ICsJc3RydWN0IGRl
dmljZV9ub2RlICpxZTsKPiAgIAljb25zdCB1OCAqc251bV9pbml0Owo+ICsJaW50IGk7Cj4gKwo+
ICsJYml0bWFwX3plcm8oc251bV9zdGF0ZSwgUUVfTlVNX09GX1NOVU0pOwo+ICsJcWUgPSBxZV9n
ZXRfZGV2aWNlX25vZGUoKTsKPiArCWlmIChxZSkgewo+ICsJCWkgPSBvZl9wcm9wZXJ0eV9yZWFk
X3ZhcmlhYmxlX3U4X2FycmF5KHFlLCAiZnNsLHFlLXNudW1zIiwKPiArCQkJCQkJICAgICAgIHNu
dW1zLCAxLCBRRV9OVU1fT0ZfU05VTSk7Cj4gKwkJb2Zfbm9kZV9wdXQocWUpOwo+ICsJCWlmIChp
ID4gMCkgewo+ICsJCQlxZV9udW1fb2Zfc251bSA9IGk7Cj4gKwkJCXJldHVybjsKPiArCQl9Cj4g
Kwl9Cj4gICAKPiAgIAlxZV9udW1fb2Zfc251bSA9IHFlX2dldF9udW1fb2Zfc251bXMoKTsKPiAg
IAo+IEBAIC0zMTMsNyArMzI2LDYgQEAgc3RhdGljIHZvaWQgcWVfc251bXNfaW5pdCh2b2lkKQo+
ICAgCWVsc2UKPiAgIAkJc251bV9pbml0ID0gc251bV9pbml0XzQ2Owo+ICAgCj4gLQliaXRtYXBf
emVybyhzbnVtX3N0YXRlLCBRRV9OVU1fT0ZfU05VTSk7Cj4gICAJbWVtY3B5KHNudW1zLCBzbnVt
X2luaXQsIHFlX251bV9vZl9zbnVtKTsKPiAgIH0KPiAgIAo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
