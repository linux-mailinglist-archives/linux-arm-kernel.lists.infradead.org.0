Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5897BDC58E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zwtryLeiTHo7q0dw/1pEDWXRTMxdxcBN5MoAOrwwFKY=; b=GVfVwt2fHv8GY86rnOWpoL0ZU
	Tvpxref3G5mBBqm6igM/UhzPgq2U0ukUnq3Hn3xkeCQ1cdX7n0AoDeXf7rdOqNpkhqjEXNcSa4GeF
	czIv4EZHm/n7b3TrpSZ0LlKyS/21YU5fCfrti4FW7Rf2GAeitWl1i4L5345pxKeAV3mt+6xRkNa83
	3JBQrEt7U9fx/oDO3lirzCp6LpS+V9AsmsQmwtPsNk5tg9qsRlv9MbBHf0P/8o4ohjpIBy40BOSiQ
	9WYXxHCmK9me20iQEsM0UBZ/wS5JOXSosqlVTP7L06J6yNas5m6Q6jaC8gHrZ3T8NpAWpZNx0FtYg
	TuALY3osQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRpM-0000l6-RU; Fri, 18 Oct 2019 12:57:56 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRp5-0000dA-B1
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 12:57:41 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46vmJz4VtKzB09b0;
 Fri, 18 Oct 2019 14:57:23 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=M64u0/vx; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id MA8gt4jfKrnu; Fri, 18 Oct 2019 14:57:23 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46vmJz3NhFzB09Zw;
 Fri, 18 Oct 2019 14:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1571403443; bh=P+VjSeFKR0YVZlm5oe6xprbP52ac0pv0a6AOQUrclV0=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=M64u0/vx1KJeUMfPLBz2jFxYbbMSbfmpl2+OuzWSbkbGwFaNqegzEC67qIu3LFiPX
 6P4YxoIVPsXKPTqIgr1qlPuSVJny52O2xFRTtfoZW90pa8kk0AyHXaZfrhqunqGvWK
 hwU92378jbMtIN5poP5BwtAJX5Att83hc9NSfPj0=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6F8038B802;
 Fri, 18 Oct 2019 14:57:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id JnffNplE4Ump; Fri, 18 Oct 2019 14:57:23 +0200 (CEST)
Received: from [192.168.204.43] (unknown [192.168.204.43])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 661508B800;
 Fri, 18 Oct 2019 14:57:22 +0200 (CEST)
Subject: Re: [PATCH 1/7] soc: fsl: qe: remove space-before-tab
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191018125234.21825-2-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <89dc8d74-b1fc-19f5-d8a5-cd43eda27b4d@c-s.fr>
Date: Fri, 18 Oct 2019 14:57:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018125234.21825-2-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055739_562344_23CBBF5A 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxOC8xMC8yMDE5IMOgIDE0OjUyLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
U2lnbmVkLW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRr
Pgo+IC0tLQo+ICAgZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMgfCA0ICsrLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jIGIvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMKPiBpbmRl
eCA0MTdkZjdlMTkyODEuLjZmY2JmYWQ0MDhkZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9m
c2wvcWUvcWUuYwo+ICsrKyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZS5jCj4gQEAgLTM3OCw4ICsz
NzgsOCBAQCBzdGF0aWMgaW50IHFlX3NkbWFfaW5pdCh2b2lkKQo+ICAgCX0KPiAgIAo+ICAgCW91
dF9iZTMyKCZzZG1hLT5zZGViY3IsICh1MzIpIHNkbWFfYnVmX29mZnNldCAmIFFFX1NERUJDUl9C
QV9NQVNLKTsKPiAtIAlvdXRfYmUzMigmc2RtYS0+c2RtciwgKFFFX1NETVJfR0xCXzFfTVNLIHwK
PiAtIAkJCQkJKDB4MSA8PCBRRV9TRE1SX0NFTl9TSElGVCkpKTsKPiArCW91dF9iZTMyKCZzZG1h
LT5zZG1yLCAoUUVfU0RNUl9HTEJfMV9NU0sgfAo+ICsJCQkJCSgweDEgPDwgUUVfU0RNUl9DRU5f
U0hJRlQpKSk7CgpDb3VsZCB5b3UgYWxzbyBhbGlnbiB0aGUgc2Vjb25kIGxpbmUgcHJvcGVybHkg
PwoKQ2hyaXN0b3BoZQoKPiAgIAo+ICAgCXJldHVybiAwOwo+ICAgfQo+IAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
