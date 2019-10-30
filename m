Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B266BE9A75
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=03qoPWVb9PqzN8nS82qVYh8d97IIObJal8DEuQz9ZLc=; b=kygwwu7a4Pyl93fnvfFGqF6yu
	xc1VjOIiqJwIEgLcunRiMJSskaNRP0Hwc9IGS/Fi9DhWVbCQ/gF9tUpS9Y08GTa1A0616JPciLkku
	I0lL3l43o92uvIZdKF44Ur6FQIqYHF7wNr8586X2g5Ko9/1WsanRhLlLqYM6FWsdBue/v5pmEwtqk
	ys3B3eGv6fn0RpOUvZy+HHK/RzW2oq4OkE/bozKWaQhLUfkFTyoW61krF6N586kdUtKCEXb1K8K9R
	HL2/z6+adrjUMdxigByKxH/KtktY7BdhlI4pHu1DIIHnt4Uwnwxdb7i6hhp2NSjQewsSixvyk/mN+
	Tvyf4zaEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPldd-0005xn-7S; Wed, 30 Oct 2019 10:55:41 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPldT-0005x6-Fn
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:55:32 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47352k62rMz9vC12;
 Wed, 30 Oct 2019 11:55:26 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=XPYljseg; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id uu25dTN3YMcD; Wed, 30 Oct 2019 11:55:26 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47352k4xR0z9vC0y;
 Wed, 30 Oct 2019 11:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572432926; bh=HBlLtJ215+QvNQV7weZ8681fHhQDwH2De/MKiJrOgxs=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=XPYljsegKvIoZZ73/DxSEYx5OsvSxbA+Hd6P+HQiQ3ZUh4+jo5s+sZzSK7NK4s9yC
 JLx4+RhY6mEPpHzgt4+APDzn6+yfkVGrNWrsLyZBWSsZZ/Qmu0xyZ6GN7pHcx2b0b6
 fTiwtAD8hBNHVYODKxDOn6blIOsbkSbkX7ginzsA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D07E58B7C8;
 Wed, 30 Oct 2019 11:55:27 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id W6nV1hCwWHCU; Wed, 30 Oct 2019 11:55:27 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D23078B86A;
 Wed, 30 Oct 2019 11:55:25 +0100 (CET)
Subject: Re: [PATCH v2 19/23] net: ethernet: freescale: make UCC_GETH
 explicitly depend on PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-20-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <a8b52b7f-9a96-7f7e-1360-7e4ed723d286@c-s.fr>
Date: Wed, 30 Oct 2019 11:55:25 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025124058.22580-20-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_035531_679469_E61C466A 
X-CRM114-Status: GOOD (  15.16  )
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
Q3VycmVudGx5LCBRVUlDQ19FTkdJTkUgZGVwZW5kcyBvbiBQUEMzMiwgc28gdGhpcyBpbiBpdHNl
bGYgZG9lcyBub3QKPiBjaGFuZ2UgYW55dGhpbmcuIEluIG9yZGVyIHRvIGFsbG93IHJlbW92aW5n
IHRoZSBQUEMzMiBkZXBlbmRlbmN5IGZyb20KPiBRVUlDQ19FTkdJTkUgYW5kIGF2b2lkIGFsbG1v
ZGNvbmZpZyBidWlsZCBmYWlsdXJlcywgYWRkIHRoaXMgZXhwbGljaXQKPiBkZXBlbmRlbmN5Lgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFJhc211cyBWaWxsZW1vZXMgPGxpbnV4QHJhc211c3ZpbGxlbW9l
cy5kaz4KPiAtLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9LY29uZmlnIHwg
MSArCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL0tjb25maWcgYi9kcml2ZXJzL25ldC9ldGhl
cm5ldC9mcmVlc2NhbGUvS2NvbmZpZwo+IGluZGV4IDZhN2U4OTkzMTE5Zi4uOTdkMjdjNzc0MGQ0
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9LY29uZmlnCj4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvZnJlZXNjYWxlL0tjb25maWcKPiBAQCAtNzUsNiAr
NzUsNyBAQCBjb25maWcgRlNMX1hHTUFDX01ESU8KPiAgIGNvbmZpZyBVQ0NfR0VUSAo+ICAgCXRy
aXN0YXRlICJGcmVlc2NhbGUgUUUgR2lnYWJpdCBFdGhlcm5ldCIKPiAgIAlkZXBlbmRzIG9uIFFV
SUNDX0VOR0lORQo+ICsJZGVwZW5kcyBvbiBQUEMzMgoKSSB0aGluayBpdCB3b3VsZCBiZSBtb3Jl
IG9idmlvdXMgdG8gaGF2ZToKCWRlcGVuZHMgb24gUVVJQ0NfRU5HSU5FICYmIFBQQzMyCgpDaHJp
c3RvcGhlCgo+ICAgCXNlbGVjdCBGU0xfUFFfTURJTwo+ICAgCXNlbGVjdCBQSFlMSUIKPiAgIAkt
LS1oZWxwLS0tCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
