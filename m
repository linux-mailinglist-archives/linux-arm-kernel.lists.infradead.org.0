Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865E5EC6C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:29:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4qvIvvFLGYKzQG2kb5svKdRo+eAFJG0z5To2RNYWNTI=; b=QEx5jnVK8bejoFJU+xt5Zjlej
	1nZPCIjAb97TZJUpjNnphlhdAoNHcA+YR3s7wjUwGbnuu94UT3OBFgbE1+2XvdzpQ5svVZkBzSN5/
	2PudFQfLZb3aQrp0vHBP6zI+CruSRkzcT4Iy+WA9zBLQJdbTzMbkAObN8byuJv3b+EL9IGeBg+0KX
	lhCuCKe6SL5MTbnr7VymHW/MNmw53KAoaqsyM5ZLBOvM95XcmqmmEDbe7MNlxDYXKT1RyPWIf8OKD
	ODmTtOFaEQ0zwfOXbn6o5YUvP+UqwJhH9q0b1rYTHdJESggoPUgKYvA3IZMTOZvdRINw9JYIQ+xPd
	e6WCCCCcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZo9-0002em-IZ; Fri, 01 Nov 2019 16:29:53 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZo2-0002e4-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:29:48 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 474SMW5qjrz9v2yn;
 Fri,  1 Nov 2019 17:29:43 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=aVhErQnj; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id kQdkFGodO6U4; Fri,  1 Nov 2019 17:29:43 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 474SMW4n7qz9v2ym;
 Fri,  1 Nov 2019 17:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572625783; bh=sO50Jxi/6qCHwc0AfimOF6Zwlkx4COhWtKxf+QPTqKM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=aVhErQnjTF3qahziN3iZTdW4hERQNqbN6AMsA5ZDNSKR0RiIbk3UuTKoxbv+Og84m
 wPCPsR6Pb28lWx/OvbesOYQwySgR8i2qfmkZZwaTcSIjTehYfdS0o1sdzwTfIqAZgl
 AiJtQaCT8tDNVDx6tv+0jEN/ruZrQGchWBd6Rl5s=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3D1398B8F6;
 Fri,  1 Nov 2019 17:29:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id mVNcyjLDRV0F; Fri,  1 Nov 2019 17:29:45 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id CCD838B7C2;
 Fri,  1 Nov 2019 17:29:44 +0100 (CET)
Subject: Re: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on
 PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-36-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <4e2ac670-2bf4-fb47-2130-c0120bcf0111@c-s.fr>
Date: Fri, 1 Nov 2019 17:29:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101124210.14510-36-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_092947_000466_8810BFEF 
X-CRM114-Status: GOOD (  15.30  )
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
Cc: Scott Wood <oss@buserror.net>, netdev@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMS8xMS8yMDE5IMOgIDEzOjQyLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
Q3VycmVudGx5LCBGU0xfVUNDX0hETEMgZGVwZW5kcyBvbiBRVUlDQ19FTkdJTkUsIHdoaWNoIGlu
IHR1cm4gZGVwZW5kcwo+IG9uIFBQQzMyLiBBcyBwcmVwYXJhdGlvbiBmb3IgcmVtb3ZpbmcgdGhl
IGxhdHRlciBhbmQgdGh1cyBhbGxvd2luZyB0aGUKPiBjb3JlIFFFIGNvZGUgdG8gYmUgYnVpbHQg
Zm9yIG90aGVyIGFyY2hpdGVjdHVyZXMsIG1ha2UgRlNMX1VDQ19IRExDCj4gZXhwbGljaXRseSBk
ZXBlbmQgb24gUFBDMzIuCgpJcyB0aGF0IHJlYWxseSBwb3dlcnBjIHNwZWNpZmljID8gQ2FuJ3Qg
dGhlIEFSTSBRRSBwZXJmb3JtIEhETEMgb24gVUNDID8KCkNocmlzdG9waGUKCj4gCj4gU2lnbmVk
LW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPgo+IC0t
LQo+ICAgZHJpdmVycy9uZXQvd2FuL0tjb25maWcgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvd2FuL0tjb25maWcgYi9kcml2ZXJzL25ldC93YW4vS2NvbmZpZwo+IGluZGV4IGRkMWExNDdm
Mjk3MS4uNzg3ODVkNzkwYmNjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L3dhbi9LY29uZmln
Cj4gKysrIGIvZHJpdmVycy9uZXQvd2FuL0tjb25maWcKPiBAQCAtMjcwLDcgKzI3MCw3IEBAIGNv
bmZpZyBGQVJTWU5DCj4gICBjb25maWcgRlNMX1VDQ19IRExDCj4gICAJdHJpc3RhdGUgIkZyZWVz
Y2FsZSBRVUlDQyBFbmdpbmUgSERMQyBzdXBwb3J0Igo+ICAgCWRlcGVuZHMgb24gSERMQwo+IC0J
ZGVwZW5kcyBvbiBRVUlDQ19FTkdJTkUKPiArCWRlcGVuZHMgb24gUVVJQ0NfRU5HSU5FICYmIFBQ
QzMyCj4gICAJaGVscAo+ICAgCSAgRHJpdmVyIGZvciBGcmVlc2NhbGUgUVVJQ0MgRW5naW5lIEhE
TEMgY29udHJvbGxlci4gVGhlIGRyaXZlcgo+ICAgCSAgc3VwcG9ydHMgSERMQyBpbiBOTVNJIGFu
ZCBURE0gbW9kZS4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
