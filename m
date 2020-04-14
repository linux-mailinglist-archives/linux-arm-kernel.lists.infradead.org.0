Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F2C1A7ACB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 14:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cW1Z+34dl0HkGPOL/a6mhVR4YYWxc5mlGsesMJLR3XI=; b=m6xIPPqiLR+bzFLzG9cYrXHYv
	KhsteKNxP8aW+tKGA27rwtkz/vA76kPU59y0HTYTmBzWIy5leR9At3tXpMV7+YWpWJ7Z+fD7xY/cE
	yUxvIm0yVbS+Fmw1MEDwd4/CmmuVVkqmUp64YtcMqjQyOabVYXkAc1i58UIgzOw2TzsfMDzbNY5r0
	AU0fn3Ur1cZ20g3T+iXaS89Uy9ThoyNVhyQr486mXOzdCyJa01qekvp6R3TmteBHd614AnDrDJJgj
	DjCHjIly+LUklgySJ/lTBxJN6K8cphPEFKdRBteoWaml+l2K1SGFCMnf4j3ykB9A9d6Ppk6ezgv6k
	2Yg8wBb6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOKgM-00063C-P5; Tue, 14 Apr 2020 12:28:50 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOKgE-00062S-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 12:28:44 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 491lCB2VyJz9ty2q;
 Tue, 14 Apr 2020 14:28:38 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=IXS45WnH; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id OnGikXuRMKJq; Tue, 14 Apr 2020 14:28:38 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 491lCB1Nqtz9ty2r;
 Tue, 14 Apr 2020 14:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1586867318; bh=q5tuqv3XX5tdFZ2Nwqglyq4XexfbdM7sUkp/aIyLDRw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=IXS45WnHSm1Ayq4SS0uiPxa3vST+WWMTF8g5pm0xicL0YmkmdHBVHM7MqFdvFivSy
 4VKx/15HSGMZn84Khq7Sc+ziISswwhSUCUvDincDkchHmmJIjHMEuycCM/NgnTr/Xv
 cQH5RqaZiSzViAlD2v1Y1/wud6OaF/wj8MGMt9vo=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8E0138B7EB;
 Tue, 14 Apr 2020 14:28:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 91o1xMRYsudU; Tue, 14 Apr 2020 14:28:39 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 8F2278B7EA;
 Tue, 14 Apr 2020 14:28:38 +0200 (CEST)
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Matthew Wilcox <willy@infradead.org>, Nicholas Piggin <npiggin@gmail.com>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
 <20200413134106.GN21484@bombadil.infradead.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <36616218-1d3a-b18a-8fb8-4fc9eff22780@c-s.fr>
Date: Tue, 14 Apr 2020 14:28:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200413134106.GN21484@bombadil.infradead.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_052842_667693_73034F19 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMy8wNC8yMDIwIMOgIDE1OjQxLCBNYXR0aGV3IFdpbGNveCBhIMOpY3JpdMKgOgo+IE9u
IE1vbiwgQXByIDEzLCAyMDIwIGF0IDEwOjUzOjAzUE0gKzEwMDAsIE5pY2hvbGFzIFBpZ2dpbiB3
cm90ZToKPj4gK3N0YXRpYyBpbnQgdm1hcF9wYWdlc19yYW5nZV9ub2ZsdXNoKHVuc2lnbmVkIGxv
bmcgc3RhcnQsIHVuc2lnbmVkIGxvbmcgZW5kLAo+PiArCQkJCSAgICBwZ3Byb3RfdCBwcm90LCBz
dHJ1Y3QgcGFnZSAqKnBhZ2VzLAo+PiArCQkJCSAgICB1bnNpZ25lZCBpbnQgcGFnZV9zaGlmdCkK
Pj4gK3sKPj4gKwlpZiAocGFnZV9zaGlmdCA9PSBQQUdFX1NJWkUpIHsKPiAKPiAuLi4gSSB0aGlu
ayB5b3UgbWVhbnQgJ3BhZ2Vfc2hpZnQgPT0gUEFHRV9TSElGVCcKPiAKPiBPdmVyYWxsIEkgbGlr
ZSB0aGlzIHNlcmllcywgYWx0aG91Z2ggaXQncyBhIGJpdCBiaWFzZWQgdG93YXJkcyBDUFVzCj4g
d2hpY2ggaGF2ZSBwYWdlIHNpemVzIHdoaWNoIG1hdGNoIFBNRC9QVUQgc2l6ZXMuICBJdCBkb2Vz
bid0IG9mZmVyIHRoZQo+IHBvc3NpYmlsaXR5IG9mIHVzaW5nIDY0a0IgcGFnZSBzaXplcyBvbiBB
Uk0sIGZvciBleGFtcGxlLiAgQnV0IGl0J3MgYQo+IHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVjdGlv
bi4KPiAKCkkgd2FzIGdvaW5nIHRvIGFzayBtb3JlIG9yIGxlc3MgdGhlIHNhbWUgcXVlc3Rpb24s
IEkgd291bGQgaGF2ZSBsaWtlZCB0byAKdXNlIDUxMmtCIGh1Z2VwYWdlcyBvbiBwb3dlcnBjIDh4
eC4KCkV2ZW4gdGhlIDhNIGh1Z2VwYWdlcyAoc3RpbGwgb24gdGhlIDh4eCksIGNhbiB0aGV5IGJl
IHVzZWQgYXMgd2VsbCwgCnRha2luZyBpbnRvIGFjY291bnQgdGhhdCB0d28gUEdEIGVudHJpZXMg
aGF2ZSB0byBwb2ludCB0byB0aGUgc2FtZSA4TSBwYWdlID8KCkkgc2VudCBvdXQgYSBzZXJpZXMg
d2hpY2ggdGVuZHMgdG8gbWFrZSB0aGUgbWFuYWdlbWVudCBvZiA1MTJrIGFuZCA4TSAKcGFnZXMg
Y2xvc2VyIHRvIHdoYXQgTGludXggZXhwZWN0cywgaW4gb3JkZXIgdG8gdXNlIHRoZW0gaW5zaWRl
IGtlcm5lbCwgCmZvciBMaW5lYXIgbWFwcGluZ3MgYW5kIEthc2FuIG1hcHBpbmdzIGZvciB0aGUg
bW9tZW50LiBTZWUgCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eHBw
Yy1kZXYvbGlzdC8/c2VyaWVzPTE2NDYyMApJdCB3b3VsZCBiZSBuaWNlIGlmIHdlIGNvdWxkIGFt
cGxpZnkgaXQgYSB1c2UgaXQgZm9yIGlvcmVtYXBzIGFuZCAKdm1hbGxvY3MgYXMgd2VsbC4KCkNo
cmlzdG9waGUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
