Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72608DC5A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 15:01:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C7vAwGVFgMIM4Ws4N2LY+aigWP0TM0UIHMEuNfz3meM=; b=flsHMc2qUjd671/bgHIRgW0zm
	Yc8DHUZujGGR2Cn1k/TU/rVYdWtMrkqAWMeYqQywDJHFro8Nl/Dopa7WRdFxedJ7y/8P3Na6AVDzS
	0tGLTBSWr8WwtEQf7KpYfuDkvbCRNhncLgq86oHu8nffqhA3SBbKu/nEPvFEfNqRwoFiqLtsqT+e0
	j6Lxf4xPIkHcCNdc5sX2fc/LC7P1l+mTUR13gIq6hKSGG1wQJEnvLHBXTWVXz2GS2CRPHCoojv1f6
	VFZ6b7xy/aAuoUZZgmkKZeb8kfuDSM1neGM2Z2Tswj7Zxn5UkQlP2FW1Zh+4XFbMVtDdkhazUyi/f
	mM58HP1TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRt7-00039U-Ez; Fri, 18 Oct 2019 13:01:49 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRst-000379-Ct
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 13:01:37 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46vmPk1lMZzB09b0;
 Fri, 18 Oct 2019 15:01:30 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=V36NPl2g; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 7kP6dKzeFt4q; Fri, 18 Oct 2019 15:01:30 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46vmPk0gjjzB09Zw;
 Fri, 18 Oct 2019 15:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1571403690; bh=I1VMzgDpQacCcFVqFBepaAY9ZdCU2g4skomvficbUgo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=V36NPl2ghgYXPsiMJKmq37EE8nFCg3F0wUdkilhhKCYptgtZHVg0yYaXsgcfJB/dw
 XgTxpVCnTzH5bl2NXEdBstoRltcAzsC9WQn81wfpkNh6WEyaK1buqVUWoWaEIxuqYx
 8J8Ie7KRb54AKQutihiVrpv9VXDnAOpxxVgAZARw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0038F8B802;
 Fri, 18 Oct 2019 15:01:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id SGZtcWX72nh9; Fri, 18 Oct 2019 15:01:29 +0200 (CEST)
Received: from [192.168.204.43] (unknown [192.168.204.43])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 20E738B800;
 Fri, 18 Oct 2019 15:01:29 +0200 (CEST)
Subject: Re: [PATCH 2/7] soc: fsl: qe: drop volatile qualifier of struct
 qe_ic::regs
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191018125234.21825-3-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <841cd430-4e8b-13fd-1f80-27aef9e1bd11@c-s.fr>
Date: Fri, 18 Oct 2019 15:01:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018125234.21825-3-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_060135_739428_A79E0112 
X-CRM114-Status: GOOD (  15.21  )
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
VGhlIGFjdHVhbCBpbyBhY2Nlc3NvcnMgKGUuZy4gaW5fYmUzMikgaW1wbGljaXRseSBhZGQgYSB2
b2xhdGlsZQo+IHF1YWxpZmllciB0byB0aGVpciBhZGRyZXNzIGFyZ3VtZW50LiBSZW1vdmUgdm9s
YXRpbGUgZnJvbSB0aGUgc3RydWN0Cj4gZGVmaW5pdGlvbiBhbmQgdGhlIHFlX2ljXyhyZWFkL3dy
aXRlKSBoZWxwZXJzLCBpbiBwcmVwYXJhdGlvbiBmb3IKPiBzd2l0Y2hpbmcgZnJvbSB0aGUgcHBj
LXNwZWNpZmljIGlvIGFjY2Vzc29ycyB0byBnZW5lcmljIG9uZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogUmFzbXVzIFZpbGxlbW9lcyA8bGludXhAcmFzbXVzdmlsbGVtb2VzLmRrPgo+IC0tLQo+ICAg
ZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMgfCA0ICsrLS0KPiAgIGRyaXZlcnMvc29jL2ZzbC9x
ZS9xZV9pYy5oIHwgMiArLQo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5j
IGIvZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMKPiBpbmRleCA5YmFjNTQ2OTk4ZDMuLjk2OTQ1
NjlkY2M3NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMuYwo+ICsrKyBi
L2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jCj4gQEAgLTE3MSwxMiArMTcxLDEyIEBAIHN0YXRp
YyBzdHJ1Y3QgcWVfaWNfaW5mbyBxZV9pY19pbmZvW10gPSB7Cj4gICAJCX0sCj4gICB9Owo+ICAg
Cj4gLXN0YXRpYyBpbmxpbmUgdTMyIHFlX2ljX3JlYWQodm9sYXRpbGUgX19iZTMyICBfX2lvbWVt
ICogYmFzZSwgdW5zaWduZWQgaW50IHJlZykKPiArc3RhdGljIGlubGluZSB1MzIgcWVfaWNfcmVh
ZChfX2JlMzIgIF9faW9tZW0gKiBiYXNlLCB1bnNpZ25lZCBpbnQgcmVnKQoKTm8gc3BhY2UgYmV0
d2VlbiAnKicgYW5kICdiYXNlJyBwbGVhc2UKCj4gICB7Cj4gICAJcmV0dXJuIGluX2JlMzIoYmFz
ZSArIChyZWcgPj4gMikpOwo+ICAgfQo+ICAgCj4gLXN0YXRpYyBpbmxpbmUgdm9pZCBxZV9pY193
cml0ZSh2b2xhdGlsZSBfX2JlMzIgIF9faW9tZW0gKiBiYXNlLCB1bnNpZ25lZCBpbnQgcmVnLAo+
ICtzdGF0aWMgaW5saW5lIHZvaWQgcWVfaWNfd3JpdGUoX19iZTMyICBfX2lvbWVtICogYmFzZSwg
dW5zaWduZWQgaW50IHJlZywKCnNhbWUKCj4gICAJCQkgICAgICAgdTMyIHZhbHVlKQo+ICAgewo+
ICAgCW91dF9iZTMyKGJhc2UgKyAocmVnID4+IDIpLCB2YWx1ZSk7Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5oIGIvZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmgKPiBp
bmRleCAwOGM2OTU2NzJhMDMuLjk0MjAzNzhkOWI2YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3Nv
Yy9mc2wvcWUvcWVfaWMuaAo+ICsrKyBiL2RyaXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5oCj4gQEAg
LTcyLDcgKzcyLDcgQEAKPiAgIAo+ICAgc3RydWN0IHFlX2ljIHsKPiAgIAkvKiBDb250cm9sIHJl
Z2lzdGVycyBvZmZzZXQgKi8KPiAtCXZvbGF0aWxlIHUzMiBfX2lvbWVtICpyZWdzOwo+ICsJdTMy
IF9faW9tZW0gKnJlZ3M7Cj4gICAKPiAgIAkvKiBUaGUgcmVtYXBwZXIgZm9yIHRoaXMgUUVJQyAq
Lwo+ICAgCXN0cnVjdCBpcnFfZG9tYWluICppcnFob3N0Owo+IAoKQ2hyaXN0b3BoZQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
