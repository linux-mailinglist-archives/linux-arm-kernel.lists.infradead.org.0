Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 113144B994
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iTzPOjuXOjyA1/3475VYVjxPlCtg+1fJ8OsK9KomoGk=; b=XpIPf0+wOOyiI5zBPC90nJ2Ga
	7qvVHl3UY6q0oDtwvRSVAVr8BsYmavbC/s2kW8RHXRMpJQFia1dxsT3kWx4AI/2PBY/WccE4NsF1T
	WcUfIFhIhivF2B8OUN14ze7pl/t+QOuufxuTD+2PO3gRf3SjxQq6tIYptc/A0acanuVkU+oRag822
	flMhw9piMSZyb4eZFJyQl5/RBj10HXgg+e5Yh3eVwrjpm9+j2UJJxot9QEXC052WoY+qMS2hoJXta
	VXrVzAdTKZXy1UnB3MO01lkdDn2gXOjW3PR3XUrKLATk082syzebJwy+k/VcrfbeLZRUvZTpTU4EB
	n9jbkjHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdaUO-0008Gv-Uy; Wed, 19 Jun 2019 13:19:00 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdaU9-0008G8-K9
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:18:47 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45TQWN67qgzB09ZM;
 Wed, 19 Jun 2019 15:18:40 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Ga0F0K7E; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id eJHKCkKy6Csx; Wed, 19 Jun 2019 15:18:40 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45TQWN4sgfzB09ZJ;
 Wed, 19 Jun 2019 15:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1560950320; bh=qiE5blyrEXjR+EvN4cIOjdw+vmQhFfJ4XznqchvkiBE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Ga0F0K7E3XoSDkoIpBC50ILQufEvplU5MlC4X6vPhMU1h2lHMVlSrVE5mHAB+nqNC
 u3xzEP6IH5n8KFFmyPV57vrixG7l5hCWIOZ2C/GfThUKzBI/uYSic2p6jPyCT5mGlK
 iHsxCiOKvH3UEOSNrHTp85AHc9HB4RkpVmLZLu9A=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 0727F8B92B;
 Wed, 19 Jun 2019 15:18:43 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id KNj3EcPtKvgV; Wed, 19 Jun 2019 15:18:42 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id A64938B93C;
 Wed, 19 Jun 2019 15:18:42 +0200 (CEST)
Subject: Re: [PATCH 1/4] mm: Move ioremap page table mapping function to mm/
To: Nicholas Piggin <npiggin@gmail.com>, linux-mm@kvack.org
References: <20190610043838.27916-1-npiggin@gmail.com>
 <86991f76-2101-8087-37db-d939d5d744fa@c-s.fr>
 <1560915576.aqf69c3nf8.astroid@bobo.none>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <7218a243-0d9c-ad90-d409-87663893799e@c-s.fr>
Date: Wed, 19 Jun 2019 15:18:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1560915576.aqf69c3nf8.astroid@bobo.none>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_061845_960070_E31F5937 
X-CRM114-Status: GOOD (  12.38  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxOS8wNi8yMDE5IMOgIDA1OjQzLCBOaWNob2xhcyBQaWdnaW4gYSDDqWNyaXTCoDoKPiBD
aHJpc3RvcGhlIExlcm95J3Mgb24gSnVuZSAxMSwgMjAxOSAzOjI0IHBtOgo+Pgo+Pgo+PiBMZSAx
MC8wNi8yMDE5IMOgIDA2OjM4LCBOaWNob2xhcyBQaWdnaW4gYSDDqWNyaXTCoDoKCltzbmlwXQoK
Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaCBiL2luY2x1ZGUvbGludXgv
dm1hbGxvYy5oCj4+PiBpbmRleCA1MWUxMzEyNDUzNzkuLjgxMmJlYTU4NjZkNiAxMDA2NDQKPj4+
IC0tLSBhL2luY2x1ZGUvbGludXgvdm1hbGxvYy5oCj4+PiArKysgYi9pbmNsdWRlL2xpbnV4L3Zt
YWxsb2MuaAo+Pj4gQEAgLTE0Nyw2ICsxNDcsOSBAQCBleHRlcm4gc3RydWN0IHZtX3N0cnVjdCAq
ZmluZF92bV9hcmVhKGNvbnN0IHZvaWQgKmFkZHIpOwo+Pj4gICAgZXh0ZXJuIGludCBtYXBfdm1f
YXJlYShzdHJ1Y3Qgdm1fc3RydWN0ICphcmVhLCBwZ3Byb3RfdCBwcm90LAo+Pj4gICAgCQkJc3Ry
dWN0IHBhZ2UgKipwYWdlcyk7Cj4+PiAgICAjaWZkZWYgQ09ORklHX01NVQo+Pj4gK2V4dGVybiBp
bnQgdm1hcF9yYW5nZSh1bnNpZ25lZCBsb25nIGFkZHIsCj4+PiArCQkgICAgICAgdW5zaWduZWQg
bG9uZyBlbmQsIHBoeXNfYWRkcl90IHBoeXNfYWRkciwgcGdwcm90X3QgcHJvdCwKPj4+ICsJCSAg
ICAgICB1bnNpZ25lZCBpbnQgbWF4X3BhZ2Vfc2hpZnQpOwo+Pgo+PiBEcm9wIGV4dGVybiBrZXl3
b3JkIGhlcmUuCj4gCj4gSSBkb24ndCBrbm93IGlmIEkgd2FzIGdvaW5nIGNyYXp5IGJ1dCBhdCBv
bmUgcG9pbnQgSSB3YXMgZ2V0dGluZwo+IGR1cGxpY2F0ZSBzeW1ib2wgZXJyb3JzIHRoYXQgd2Vy
ZSBmaXhlZCBieSBhZGRpbmcgZXh0ZXJuIHNvbWV3aGVyZS4KCnByb2JhYmx5IG5vdCBvbiBhIGZ1
bmN0aW9uIG5hbWUgLi4uCgo+IE1heWJlIHNsZWVwIGRlcHJhdmF0aW9uLiBIb3dldmVyLi4uCj4g
Cj4+IEFzIGNoZWNrcGF0Y2ggdGVsbHMgeW91LCAnQ0hFQ0s6QVZPSURfRVhURVJOUzogZXh0ZXJu
IHByb3RvdHlwZXMgc2hvdWxkCj4+IGJlIGF2b2lkZWQgaW4gLmggZmlsZXMnCj4gCj4gSSBwcmVm
ZXIgdG8gZm9sbG93IGV4aXN0aW5nIHN0eWxlIGluIHN1cnJvdW5kaW5nIGNvZGUgYXQgdGhlIGV4
cGVuc2UKPiBvZiBzb21lIGNoZWNrcGF0Y2ggd2FybmluZ3MuIElmIHNvbWVib2R5IGxhdGVyIHdh
bnRzIHRvICJmaXgiIGl0Cj4gdGhhdCdzIGZpbmUuCgpJIGRvbid0IHRoaW5rIHRoYXQncyBmaW5l
IHRvICdmaXgnIGxhdGVyIHRoaW5ncyB0aGF0IGNvdWxkIGJlIGRvbmUgcmlnaHQgCmZyb20gdGhl
IGJlZ2luaW5nLiAnQ29zbWV0aWMgb25seScgZml4ZXMgbmV2ZXIgaGFwcGVuIGJlY2F1c2UgdGhl
eSBhcmUgYSAKbmlnaHRtYXJlIGZvciBiYWNrcG9ydHMsIGFuZCBhIHNoYW1lIGZvciAnZ2l0IGJs
YW1lJy4KCkluIHNvbWUgcGF0Y2hlcywgeW91IGFkZCBjbGVhbnVwcyB0byBtYWtlIHRoZSBjb2Rl
IGxvb2sgbmljZXIsIGFuZCBoZXJlIAp5b3UgaGF2ZSB0aGUgb3Bwb3J0dW5pdHkgdG8gbWFrZSB0
aGUgY29kZSBuaWNlIGZyb20gdGhlIGJlZ2luaW5nIGFuZCB5b3UgCnByZWZlciByZXBlYXRpbmcg
dGhlIGVycm9ycyBkb25lIGluIHRoZSBwYXN0ID8gWW91J3JlIHN1cnByaXNpbmcgbWUuCgpDaHJp
c3RvcGhlCgo+IAo+IFRoYW5rcywKPiBOaWNrCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
