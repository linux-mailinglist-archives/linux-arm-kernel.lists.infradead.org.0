Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FE511257
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 06:51:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E1H961S8oPav/UgkXyoCcMIKAxOjb5SL53s0Uq0goLs=; b=Xa0BksIJfaIMC+aRR1gMFdcRX
	kjFxaVsHM79ayB+IiBHqjayaEYr2bu554OY6GNvMlwItJt0BBNEJz1bgTbDpBZDD/6bVuIumJeq8j
	Z0DH8z3nlugPwEmJWeG1k3evbad0zoZqFwyQNAwqHgA23uFP+Nj3S637YbZ+otedgVVxD0TotIVfT
	YGUIl+kwwv2ne/c/YGKRuJgVLYMB3fu1wG+OMKo+86QAhJVOTMAGdTzuZeTSqn6Ag4NB680wr2k1r
	+TFysHOg8VF9FYP/R2Kc4CEDrIku2lNGFtZaPGh5L2dji3ZJZdhX2ZBIu9wHB705Nc9I+bqDQAfWX
	V69S3efZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM3hG-0004c3-Mb; Thu, 02 May 2019 04:51:50 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM3hA-0004bH-6P
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 04:51:45 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44vjXT3tPVz9v0dC;
 Thu,  2 May 2019 06:51:37 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=RRbCPbxn; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 3NqOSpeVpOTg; Thu,  2 May 2019 06:51:37 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44vjXT2pDFz9v0dB;
 Thu,  2 May 2019 06:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556772697; bh=bKp40p29ww5rWYWudCtNM/eqZO3Koty1E3gHLJJDIRc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=RRbCPbxnLgXWlaX1rtHvlgQTduiVbrwYwYfPRqWoCouk04XpiXQ4Oit7TlcLBvUqI
 IORSjyEt82psaGWuAiiWAVwdpQWgiDy+eFb5WNCfasy8kTeLF6pIzHcB/cNJXU0Gtr
 XCbWeCzkzjM0zp7Lc2jdnYlhWjFqR3hVxBy/aKww=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 305578B84C;
 Thu,  2 May 2019 06:51:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id pErdMFLohumg; Thu,  2 May 2019 06:51:38 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 894618B74C;
 Thu,  2 May 2019 06:51:37 +0200 (CEST)
Subject: Re: [PATCH v2 2/6] soc/fsl/qe: qe.c: reduce static memory footprint
 by 1.7K
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190501092841.9026-3-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <cae22a68-40f3-5993-22a0-222134e76def@c-s.fr>
Date: Thu, 2 May 2019 06:51:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501092841.9026-3-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_215144_531795_8A295E11 
X-CRM114-Status: GOOD (  18.22  )
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
VGhlIGN1cnJlbnQgYXJyYXkgb2Ygc3RydWN0IHFlX3NudW0gdXNlIDI1Nio0IGJ5dGVzIGZvciBq
dXN0IGtlZXBpbmcKPiB0cmFjayBvZiB0aGUgZnJlZS91c2VkIHN0YXRlIG9mIGVhY2ggaW5kZXgs
IGFuZCB0aGUgc3RydWN0IGxheW91dAo+IG1lYW5zIHRoZXJlJ3MgYW5vdGhlciA3NjggYnl0ZXMg
b2YgcGFkZGluZy4gSWYgd2UganVzdCB1bnppcCB0aGF0Cj4gc3RydWN0dXJlLCB0aGUgYXJyYXkg
b2Ygc251bSB2YWx1ZXMganVzdCB1c2UgMjU2IGJ5dGVzLCB3aGlsZSB0aGUKPiBmcmVlL2ludXNl
IHN0YXRlIGNhbiBiZSB0cmFja2VkIGluIGEgMzIgYnl0ZSBiaXRtYXAuCj4gCj4gU28gdGhpcyBy
ZWR1Y2VzIHRoZSAuZGF0YSBmb290cHJpbnQgYnkgMTc2MCBieXRlcy4gSXQgYWxzbyBzZXJ2ZXMg
YXMKPiBwcmVwYXJhdGlvbiBmb3IgaW50cm9kdWNpbmcgYW5vdGhlciBEVCBiaW5kaW5nIGZvciBz
cGVjaWZ5aW5nIHRoZSBzbnVtCj4gdmFsdWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJhc211cyBW
aWxsZW1vZXMgPHJhc211cy52aWxsZW1vZXNAcHJldmFzLmRrPgoKUmV2aWV3ZWQtYnk6IENocmlz
dG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPgoKVHJpdmlhbCBjb21tZW50IGJl
bG93Cgo+IC0tLQo+ICAgZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMgfCA0MyArKysrKysrKysrKyst
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2Vy
dGlvbnMoKyksIDMxIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9m
c2wvcWUvcWUuYyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gaW5kZXggODU1MzczZGViNzQ2
Li4zMDNhYTI5Y2IyN2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMKPiAr
KysgYi9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYwo+IEBAIC0xNCw2ICsxNCw3IEBACj4gICAgKiBG
cmVlIFNvZnR3YXJlIEZvdW5kYXRpb247ICBlaXRoZXIgdmVyc2lvbiAyIG9mIHRoZSAgTGljZW5z
ZSwgb3IgKGF0IHlvdXIKPiAgICAqIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uCj4gICAgKi8K
PiArI2luY2x1ZGUgPGxpbnV4L2JpdG1hcC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2Vycm5vLmg+
Cj4gICAjaW5jbHVkZSA8bGludXgvc2NoZWQuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9rZXJuZWwu
aD4KPiBAQCAtNDMsMjUgKzQ0LDE0IEBAIHN0YXRpYyBERUZJTkVfU1BJTkxPQ0socWVfbG9jayk7
Cj4gICBERUZJTkVfU1BJTkxPQ0soY214Z2NyX2xvY2spOwo+ICAgRVhQT1JUX1NZTUJPTChjbXhn
Y3JfbG9jayk7Cj4gICAKPiAtLyogUUUgc251bSBzdGF0ZSAqLwo+IC1lbnVtIHFlX3NudW1fc3Rh
dGUgewo+IC0JUUVfU05VTV9TVEFURV9VU0VELAo+IC0JUUVfU05VTV9TVEFURV9GUkVFCj4gLX07
Cj4gLQo+IC0vKiBRRSBzbnVtICovCj4gLXN0cnVjdCBxZV9zbnVtIHsKPiAtCXU4IG51bTsKPiAt
CWVudW0gcWVfc251bV9zdGF0ZSBzdGF0ZTsKPiAtfTsKPiAtCj4gICAvKiBXZSBhbGxvY2F0ZSB0
aGlzIGhlcmUgYmVjYXVzZSBpdCBpcyB1c2VkIGFsbW9zdCBleGNsdXNpdmVseSBmb3IKPiAgICAq
IHRoZSBjb21tdW5pY2F0aW9uIHByb2Nlc3NvciBkZXZpY2VzLgo+ICAgICovCj4gICBzdHJ1Y3Qg
cWVfaW1tYXAgX19pb21lbSAqcWVfaW1tcjsKPiAgIEVYUE9SVF9TWU1CT0wocWVfaW1tcik7Cj4g
ICAKPiAtc3RhdGljIHN0cnVjdCBxZV9zbnVtIHNudW1zW1FFX05VTV9PRl9TTlVNXTsJLyogRHlu
YW1pY2FsbHkgYWxsb2NhdGVkIFNOVU1zICovCj4gK3N0YXRpYyB1OCBzbnVtc1tRRV9OVU1fT0Zf
U05VTV07CS8qIER5bmFtaWNhbGx5IGFsbG9jYXRlZCBTTlVNcyAqLwo+ICtzdGF0aWMgREVDTEFS
RV9CSVRNQVAoc251bV9zdGF0ZSwgUUVfTlVNX09GX1NOVU0pOwo+ICAgc3RhdGljIHVuc2lnbmVk
IGludCBxZV9udW1fb2Zfc251bTsKPiAgIAo+ICAgc3RhdGljIHBoeXNfYWRkcl90IHFlYmFzZSA9
IC0xOwo+IEBAIC0zMTUsMTAgKzMwNSw4IEBAIHN0YXRpYyB2b2lkIHFlX3NudW1zX2luaXQodm9p
ZCkKPiAgIAllbHNlCj4gICAJCXNudW1faW5pdCA9IHNudW1faW5pdF80NjsKPiAgIAo+IC0JZm9y
IChpID0gMDsgaSA8IHFlX251bV9vZl9zbnVtOyBpKyspIHsKPiAtCQlzbnVtc1tpXS5udW0gPSBz
bnVtX2luaXRbaV07Cj4gLQkJc251bXNbaV0uc3RhdGUgPSBRRV9TTlVNX1NUQVRFX0ZSRUU7Cj4g
LQl9Cj4gKwliaXRtYXBfemVybyhzbnVtX3N0YXRlLCBRRV9OVU1fT0ZfU05VTSk7Cj4gKwltZW1j
cHkoc251bXMsIHNudW1faW5pdCwgcWVfbnVtX29mX3NudW0pOwo+ICAgfQo+ICAgCj4gICBpbnQg
cWVfZ2V0X3NudW0odm9pZCkKPiBAQCAtMzI4LDEyICszMTYsMTAgQEAgaW50IHFlX2dldF9zbnVt
KHZvaWQpCj4gICAJaW50IGk7Cj4gICAKPiAgIAlzcGluX2xvY2tfaXJxc2F2ZSgmcWVfbG9jaywg
ZmxhZ3MpOwo+IC0JZm9yIChpID0gMDsgaSA8IHFlX251bV9vZl9zbnVtOyBpKyspIHsKPiAtCQlp
ZiAoc251bXNbaV0uc3RhdGUgPT0gUUVfU05VTV9TVEFURV9GUkVFKSB7Cj4gLQkJCXNudW1zW2ld
LnN0YXRlID0gUUVfU05VTV9TVEFURV9VU0VEOwo+IC0JCQlzbnVtID0gc251bXNbaV0ubnVtOwo+
IC0JCQlicmVhazsKPiAtCQl9Cj4gKwlpID0gZmluZF9maXJzdF96ZXJvX2JpdChzbnVtX3N0YXRl
LCBxZV9udW1fb2Zfc251bSk7Cj4gKwlpZiAoaSA8IHFlX251bV9vZl9zbnVtKSB7Cj4gKwkJc2V0
X2JpdChpLCBzbnVtX3N0YXRlKTsKPiArCQlzbnVtID0gc251bXNbaV07Cj4gICAJfQo+ICAgCXNw
aW5fdW5sb2NrX2lycXJlc3RvcmUoJnFlX2xvY2ssIGZsYWdzKTsKPiAgIAo+IEBAIC0zNDMsMTQg
KzMyOSw5IEBAIEVYUE9SVF9TWU1CT0wocWVfZ2V0X3NudW0pOwo+ICAgCj4gICB2b2lkIHFlX3B1
dF9zbnVtKHU4IHNudW0pCj4gICB7Cj4gLQlpbnQgaTsKPiAtCj4gLQlmb3IgKGkgPSAwOyBpIDwg
cWVfbnVtX29mX3NudW07IGkrKykgewo+IC0JCWlmIChzbnVtc1tpXS5udW0gPT0gc251bSkgewo+
IC0JCQlzbnVtc1tpXS5zdGF0ZSA9IFFFX1NOVU1fU1RBVEVfRlJFRTsKPiAtCQkJYnJlYWs7Cj4g
LQkJfQo+IC0JfQo+ICsJY29uc3QgdTggKnAgPSBtZW1jaHIoc251bXMsIHNudW0sIHFlX251bV9v
Zl9zbnVtKTsKCkEgYmxhbmsgbGluZSBpcyBleHBlY3RlZCBoZXJlLgoKQ2hyaXN0b3BoZQoKPiAr
CWlmIChwKQo+ICsJCWNsZWFyX2JpdChwIC0gc251bXMsIHNudW1fc3RhdGUpOwo+ICAgfQo+ICAg
RVhQT1JUX1NZTUJPTChxZV9wdXRfc251bSk7Cj4gICAKPiAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
