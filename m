Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA32143086
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:08:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y/kX8MDm6BF70feDbD5UToQLUcl4yj8tIRljUtt5g9I=; b=HZJdl64mzCeAjCZUCqzDoaAAI
	naVp5x1t1N0arSJSHVuMcao6iLKv4dVQoLeA880Bf+HtXxGXM1Wy+4A4k4gAIm8zpeEOlILnfHNd0
	Dx5zqrddU7Yf9Khu7lTDTB4KinZZRuJD1TXdk0F+kxARH3kHBUZBhdOrgNCNWI7FVnW5GHJCOAlW5
	AwR+C/gNJ5uhmorsWqTrleEKtyd/ifYwKn7DXQHxph9Xh7TSCy6rHHV9wgOXfFwiceb7ANtzi0ln/
	56bINp5cmRZt38X80mnBPajk4OrJIcMC8QSSlJWPP51HBfD26OvQytRtjNklmfCHj9laaXrrgu/pW
	hsBjMnlKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaXe-0000r6-Rn; Mon, 20 Jan 2020 17:08:46 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaXO-0000mK-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:08:34 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 481dR74f1Jz9txwZ;
 Mon, 20 Jan 2020 18:08:19 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=mcD/ZnPp; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id PB6Od9Chvw6v; Mon, 20 Jan 2020 18:08:19 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 481dR73Lf3z9txwY;
 Mon, 20 Jan 2020 18:08:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579540099; bh=yzfJ9FjkQyCVlK+cgsOTuMQ4XbfRfoKvMNM6nb5r3UI=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=mcD/ZnPpMb3Gvs1Fu8ShcsW/tjiI8vxX1spQWPagvARRgwMyLCX57drTZw4IIlWTT
 7Eth0yTjCJCPdeskFUImvSrga71e/3E6dNmtljCIVLukdQbR9DnwBYxaBmMNs9f2yF
 MQDPuMtMbdR8t0a+nujkuIfoduw1FWTj9Hb24lhc=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id AEDC08B7D2;
 Mon, 20 Jan 2020 18:08:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id nJxXjRrAsRPz; Mon, 20 Jan 2020 18:08:24 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 85F838B7CC;
 Mon, 20 Jan 2020 18:08:23 +0100 (CET)
Subject: Re: [RFC PATCH v4 00/11] powerpc: switch VDSO to C implementation.
To: Segher Boessenkool <segher@kernel.crashing.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <20200117085851.GS3191@gate.crashing.org>
 <3027b6d2-47a9-a871-7c52-050a5f9c6ab7@c-s.fr>
 <20200120151936.GB3191@gate.crashing.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <4b0e5941-c37e-3c85-3809-45f33ce35657@c-s.fr>
Date: Mon, 20 Jan 2020 18:08:23 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200120151936.GB3191@gate.crashing.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090830_824323_6E129F4C 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nathanl@linux.ibm.com, arnd@arndb.de,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyMC8wMS8yMDIwIMOgIDE2OjE5LCBTZWdoZXIgQm9lc3Nlbmtvb2wgYSDDqWNyaXTCoDoK
PiBPbiBNb24sIEphbiAyMCwgMjAyMCBhdCAwMjo1NjowMFBNICswMDAwLCBDaHJpc3RvcGhlIExl
cm95IHdyb3RlOgo+Pj4gTmljZSEgIE11Y2ggYmV0dGVyLgo+Pj4KPj4+IEl0IHNob3VsZCBiZSB0
ZXN0ZWQgb24gbW9yZSByZXByZXNlbnRhdGl2ZSBoYXJkd2FyZSwgdG9vLCBidXQgdGhpcyBsb29r
cwo+Pj4gcHJvbWlzaW5nIGFscmlnaHQgOi0pCj4+Cj4+IG1wYzgzMnggKGUzMDBjMiBjb3JlKSBh
dCAzMzMgTUh6Ogo+Pgo+PiBCZWZvcmU6Cj4+Cj4+IGdldHRpbWVvZmRheTogICAgdmRzbzogMjM1
IG5zZWMvY2FsbAo+PiBjbG9jay1nZXR0aW1lLXJlYWx0aW1lOiAgICB2ZHNvOiAyNDQgbnNlYy9j
YWxsCj4+Cj4+IFdpdGggdGhlIHNlcmllczoKPj4KPj4gZ2V0dGltZW9mZGF5OiAgICB2ZHNvOiAy
NzEgbnNlYy9jYWxsCj4+IGNsb2NrLWdldHRpbWUtcmVhbHRpbWU6ICAgIHZkc286IDI4MSBuc2Vj
L2NhbGwKPiAKPiBUaG9zZSBhcmUgaW1wb3J0YW50LCBhbmQgZGVncmFkZSB+MTUlLiAgVGhhdCBp
cyBhY2NlcHRhYmxlIElNTywgYnV0IGRvCj4geW91IHNlZSBhIHdheSB0byBvcHRpbWlzZSB0aGlz
IChsYXRlcik/CgpOb3QgZWFzeSBJIHRoaW5rLgoKRmlyc3Qgd2UgaGF2ZSB0aGUgdW5hdm9pZGFi
bGUgQVNNIGVudHJ5IGZ1bmN0aW9uIHRoYXQgY2FuJ3QgYmUgZHJvcHBlZCAKYmVjYXVzZSBvZiB0
aGUgQ1JbU09dIGJpdCB0aGUgc2V0IG9uIGVycm9yIG9yIGNsZWFyIG9uIG5vIGVycm9yIGFuZCB0
aGF0IApjYW4ndCBiZSBkb25lIGluIEMuCgpJbiBvdXIgQVNNIFZEU08sIGZpeGVkIHNoaWZ0cyBh
cmUgdXNlZCwgd2hpbGUgaW4gZ2VuZXJpYyBDIFZEU08sIHNoaWZ0cyAKYXJlIGdlbmVyaWMgYW5k
IHJlYWQgZnJvbSB0aGUgVkRTTyBkYXRhLgoKQW5kIHRoZXJlIGlzIHN0aWxsIHNvbWUgZnVubnkg
Y29kZSBnZW5lcmF0ZWQgYnkgR0NDICg4LjEpLCBsaWtlOgoKICA2MjA6CTdkIDI5IDNjIDMwIAlz
cncgICAgIHI5LHI5LHI3CiAgNjI0OgkyMSA4NyAwMCAyMCAJc3ViZmljICByMTIscjcsMzIKICA2
Mjg6CTdkIDA3IDNjIDMxIAlzcncuICAgIHI3LHI4LHI3CiAgNjJjOgk3ZCAwOCA2MCAzMCAJc2x3
ICAgICByOCxyOCxyMTIKICA2MzA6CTdkIDBiIDRiIDc4IAlvciAgICAgIHIxMSxyOCxyOQogIDYz
NDoJMzkgNDAgMDAgMDAgCWxpICAgICAgcjEwLDAKICA2Mzg6CTQwIDgyIDAwIDg0IAlibmUgICAg
IDZiYyA8X19jX2tlcm5lbF9jbG9ja19nZXR0aW1lKzB4MTE0PgogIDYzYzoJODEgMjMgMDAgMjQg
CWx3eiAgICAgcjksMzYocjMpCiAgNjQwOgk4MSAwNSAwMCAwMCAJbHd6ICAgICByOCwwKHI1KQou
Li4KICA2YmM6CTdkIDY5IDViIDc4IAltciAgICAgIHI5LHIxMQogIDZjMDoJN2MgZWEgM2IgNzgg
CW1yICAgICAgcjEwLHI3CiAgNmM0Ogk3ZCAyYiA0YiA3OCAJbXIgICAgICByMTEscjkKICA2Yzg6
CTRiIGZmIGZmIDc0IAliICAgICAgIDYzYyA8X19jX2tlcm5lbF9jbG9ja19nZXR0aW1lKzB4OTQ+
CgpUaGlzIGJyYW5jaCB0byA2YmMgaXMgdG90YWxseSB1c2VsZXNzOgotIGNvcHlpbmcgcjExIGlu
dG8gcjkgaXMgcG9pbnRsZXNzIGFzIHI5IGlzIG92ZXJ3cml0dGVuIGluIDYzYwotIGNvcHlpbmcg
YmFjayByOSBpbnRvIHIxMSBpcyBwb2ludGxlc3MgYXMgcjExIGhhcyBub3QgYmVlbiBtb2RpZmll
ZCAKaW5iZXR3ZWVuLgotIGxvYWRpbmcgcjEwIHdpdGggMCB0aGVuIG92ZXJ3cml0dGluZyByMTAg
d2l0aCByNyB3aGVuIHI3IGlzIG5vdCAwIGlzIApwb2ludGxlc3MgYXMgd2VsbCwgY291bGQgaGF2
ZSBkaXJlY3RseSBwdXQgdGhlIHJlc3VsdCBvZiBzcncuIGluIHIxMC4KCkNocmlzdG9waGUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
