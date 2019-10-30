Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B58E99EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QJpUT0aoyalMxTlB1QujwCIofoMAiG/+tMu647CwFmA=; b=PVBrFoNylg6n3au7fns8pfXD1
	xMVUQGj4YGmZVNXsy4Z91uBvbCXogxsvBmDec4hyEffqIs3UPwoJdMEowc4LZiHDlWLisHcQZ8XjP
	4KnyGT0aAyerEGph4PCwCieNs1EVhAnCzVsajvb9b7bBSNlrudsUu5f2b+D/sWkAYhe1en6mUzrse
	f8P9OvZ2J2lkYEI9stJM98hfM4oCTjoSIlC+vWw/Dif1vHjZe8APlh+3iaSyJTkt7Cf3dNjGWojVz
	tZvL5FtoR9Zjnl4/f7lkw8uV2Qiy4EVgHSdgew6AEEP3ftuEX2mpizsPFPR9deWd70QPrWJvi5ei4
	pIn3kFMDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPl9W-0006Y6-Cp; Wed, 30 Oct 2019 10:24:34 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPl9H-0006Wx-SM
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:24:21 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 4734Ld313bz9vC0Y;
 Wed, 30 Oct 2019 11:24:09 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=nljnVkQa; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id VO0eJu24sHJd; Wed, 30 Oct 2019 11:24:09 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 4734Ld1r3Qz9vC0C;
 Wed, 30 Oct 2019 11:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1572431049; bh=ACqajUDrFNpwcC+AioRIkBdQ0r2pymgCUimnqSpGHQg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=nljnVkQa52uPHLLWTFzaQqomoLVUelys6slJi1kyplTKQ9WqNf/IluGEQ3z2q3kTm
 /Hl8b8knPwTuMVdKX1+NWBlAVUbHmhSFz0ym8cmY+Eg8wu5dM08fyjlyuzGyLt4bx/
 dVTxTEdrz1lKfrPzahBqILlmdH6Ac7V9AqkbXzoA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 5904B8B7C0;
 Wed, 30 Oct 2019 11:24:10 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id RF5ZI91XcOtS; Wed, 30 Oct 2019 11:24:10 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id B18758B7AF;
 Wed, 30 Oct 2019 11:24:09 +0100 (CET)
Subject: Re: [PATCH v2 07/23] soc: fsl: qe: merge qe_ic.h into qe_ic.c
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-1-linux@rasmusvillemoes.dk>
 <20191025124058.22580-8-linux@rasmusvillemoes.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <7837553d-4247-7166-8625-77483bfb641d@c-s.fr>
Date: Wed, 30 Oct 2019 11:24:09 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191025124058.22580-8-linux@rasmusvillemoes.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_032420_210366_A0F7222C 
X-CRM114-Status: GOOD (  20.36  )
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
Cc: Scott Wood <oss@buserror.net>,
 Valentin Longchamp <valentin.longchamp@keymile.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAyNS8xMC8yMDE5IMOgIDE0OjQwLCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlIGxvY2FsIHFlX2ljLmggaGVhZGVyIGlzIG9ubHkgdXNlZCBieSBxZV9pYy5jLCBzbyBtZXJn
ZSBpdHMKPiBjb250ZW50cyBpbnRvIHRoZSAuYyBmaWxlLiBUaGlzIGlzIHByZXBhcmF0aW9uIGZv
ciBtb3ZpbmcgdGhlIGRyaXZlcgo+IHRvIGRyaXZlcnMvaXJxY2hpcC8uIEl0IGFsc28gYXZvaWRz
IGNvbmZ1c2lvbiBiZXR3ZWVuIHRoaXMgaGVhZGVyIGFuZAo+IHRoZSBvbmUgYXQgaW5jbHVkZS9z
b2MvZnNsL3FlL3FlX2ljLmgsIHdoaWNoIGlzIGluY2x1ZGVkIGZyb20gYSBudW1iZXIKPiBvZiBw
bGFjZXMgKHFlX2ljLmMgYW1vbmcgb3RoZXJzKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYXNtdXMg
VmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+Cj4gLS0tCj4gICBkcml2ZXJzL3Nv
Yy9mc2wvcWUvcWVfaWMuYyB8ICA5MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4g
ICBkcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMuaCB8IDEwOCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tCj4gICAyIGZpbGVzIGNoYW5nZWQsIDkwIGluc2VydGlvbnMoKyksIDEw
OSBkZWxldGlvbnMoLSkKPiAgIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3NvYy9mc2wvcWUv
cWVfaWMuaAo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMuYyBiL2Ry
aXZlcnMvc29jL2ZzbC9xZS9xZV9pYy5jCj4gaW5kZXggZDQyMDQ5MmI0YzIzLi43YjE4NzBkMjg2
NmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlX2ljLmMKPiArKysgYi9kcml2
ZXJzL3NvYy9mc2wvcWUvcWVfaWMuYwo+IEBAIC0yNiw3ICsyNiw5NiBAQAo+ICAgI2luY2x1ZGUg
PGFzbS9pby5oPgo+ICAgI2luY2x1ZGUgPHNvYy9mc2wvcWUvcWVfaWMuaD4KPiAgIAo+IC0jaW5j
bHVkZSAicWVfaWMuaCIKPiArI2RlZmluZSBOUl9RRV9JQ19JTlRTCQk2NAo+ICsKPiArLyogUUUg
SUMgcmVnaXN0ZXJzIG9mZnNldCAqLwo+ICsjZGVmaW5lIFFFSUNfQ0lDUgkJMHgwMAo+ICsjZGVm
aW5lIFFFSUNfQ0lWRUMJCTB4MDQKPiArI2RlZmluZSBRRUlDX0NSSVBOUgkJMHgwOAo+ICsjZGVm
aW5lIFFFSUNfQ0lQTlIJCTB4MGMKPiArI2RlZmluZSBRRUlDX0NJUFhDQwkJMHgxMAo+ICsjZGVm
aW5lIFFFSUNfQ0lQWUNDCQkweDE0Cj4gKyNkZWZpbmUgUUVJQ19DSVBXQ0MJCTB4MTgKPiArI2Rl
ZmluZSBRRUlDX0NJUFpDQwkJMHgxYwo+ICsjZGVmaW5lIFFFSUNfQ0lNUgkJMHgyMAo+ICsjZGVm
aW5lIFFFSUNfQ1JJTVIJCTB4MjQKPiArI2RlZmluZSBRRUlDX0NJQ05SCQkweDI4Cj4gKyNkZWZp
bmUgUUVJQ19DSVBSVEEJCTB4MzAKPiArI2RlZmluZSBRRUlDX0NJUFJUQgkJMHgzNAo+ICsjZGVm
aW5lIFFFSUNfQ1JJQ1IJCTB4M2MKPiArI2RlZmluZSBRRUlDX0NISVZFQwkJMHg2MAo+ICsKPiAr
LyogSW50ZXJydXB0IHByaW9yaXR5IHJlZ2lzdGVycyAqLwo+ICsjZGVmaW5lIENJUENDX1NISUZU
X1BSSTAJMjkKPiArI2RlZmluZSBDSVBDQ19TSElGVF9QUkkxCTI2Cj4gKyNkZWZpbmUgQ0lQQ0Nf
U0hJRlRfUFJJMgkyMwo+ICsjZGVmaW5lIENJUENDX1NISUZUX1BSSTMJMjAKPiArI2RlZmluZSBD
SVBDQ19TSElGVF9QUkk0CTEzCj4gKyNkZWZpbmUgQ0lQQ0NfU0hJRlRfUFJJNQkxMAo+ICsjZGVm
aW5lIENJUENDX1NISUZUX1BSSTYJNwo+ICsjZGVmaW5lIENJUENDX1NISUZUX1BSSTcJNAoKSSB0
aGluayB5b3Ugc2hvdWxkIGRyb3AgYWxsIHVudXNlZCBjb25zdHMgYW5kIG9ubHkga2VlcCB0aGUg
b25lcyB0aGF0IAphcmUgdXNlZC4KCj4gKwo+ICsvKiBDSUNSIHByaW9yaXR5IG1vZGVzICovCj4g
KyNkZWZpbmUgQ0lDUl9HV0NDCQkweDAwMDQwMDAwCj4gKyNkZWZpbmUgQ0lDUl9HWENDCQkweDAw
MDIwMDAwCj4gKyNkZWZpbmUgQ0lDUl9HWUNDCQkweDAwMDEwMDAwCj4gKyNkZWZpbmUgQ0lDUl9H
WkNDCQkweDAwMDgwMDAwCj4gKyNkZWZpbmUgQ0lDUl9HUlRBCQkweDAwMjAwMDAwCj4gKyNkZWZp
bmUgQ0lDUl9HUlRCCQkweDAwNDAwMDAwCj4gKyNkZWZpbmUgQ0lDUl9IUElUX1NISUZUCQk4Cj4g
KyNkZWZpbmUgQ0lDUl9IUElUX01BU0sJCTB4MDAwMDAzMDAKPiArI2RlZmluZSBDSUNSX0hQX1NI
SUZUCQkyNAo+ICsjZGVmaW5lIENJQ1JfSFBfTUFTSwkJMHgzZjAwMDAwMAo+ICsKPiArLyogQ0lD
TlIgKi8KPiArI2RlZmluZSBDSUNOUl9XQ0MxVF9TSElGVAkyMAo+ICsjZGVmaW5lIENJQ05SX1pD
QzFUX1NISUZUCTI4Cj4gKyNkZWZpbmUgQ0lDTlJfWUNDMVRfU0hJRlQJMTIKPiArI2RlZmluZSBD
SUNOUl9YQ0MxVF9TSElGVAk0CgpTYW1lIGhlcmUKCj4gKwo+ICsvKiBDUklDUiAqLwo+ICsjZGVm
aW5lIENSSUNSX1JUQTFUX1NISUZUCTIwCj4gKyNkZWZpbmUgQ1JJQ1JfUlRCMVRfU0hJRlQJMjgK
ClNhbWUKCgo+ICsKPiArLyogU2lnbmFsIGluZGljYXRvciAqLwo+ICsjZGVmaW5lIFNJR05BTF9N
QVNLCQkzCj4gKyNkZWZpbmUgU0lHTkFMX0hJR0gJCTIKPiArI2RlZmluZSBTSUdOQUxfTE9XCQkw
CgpPbmx5IFNJR05BTF9ISUdIIHNlZW1zIHRvIGJlIHVzZWQuCgpDaHJpc3RvcGhlCgo+ICsKPiAr
c3RydWN0IHFlX2ljIHsKPiArCS8qIENvbnRyb2wgcmVnaXN0ZXJzIG9mZnNldCAqLwo+ICsJdTMy
IF9faW9tZW0gKnJlZ3M7Cj4gKwo+ICsJLyogVGhlIHJlbWFwcGVyIGZvciB0aGlzIFFFSUMgKi8K
PiArCXN0cnVjdCBpcnFfZG9tYWluICppcnFob3N0Owo+ICsKPiArCS8qIFRoZSAibGludXgiIGNv
bnRyb2xsZXIgc3RydWN0ICovCj4gKwlzdHJ1Y3QgaXJxX2NoaXAgaGNfaXJxOwo+ICsKPiArCS8q
IFZJUlEgbnVtYmVycyBvZiBRRSBoaWdoL2xvdyBpcnFzICovCj4gKwl1bnNpZ25lZCBpbnQgdmly
cV9oaWdoOwo+ICsJdW5zaWduZWQgaW50IHZpcnFfbG93Owo+ICt9Owo+ICsKPiArLyoKPiArICog
UUUgaW50ZXJydXB0IGNvbnRyb2xsZXIgaW50ZXJuYWwgc3RydWN0dXJlCj4gKyAqLwo+ICtzdHJ1
Y3QgcWVfaWNfaW5mbyB7Cj4gKwkvKiBMb2NhdGlvbiBvZiB0aGlzIHNvdXJjZSBhdCB0aGUgUUlN
UiByZWdpc3RlciAqLwo+ICsJdTMyCW1hc2s7Cj4gKwo+ICsJLyogTWFzayByZWdpc3RlciBvZmZz
ZXQgKi8KPiArCXUzMgltYXNrX3JlZzsKPiArCj4gKwkvKgo+ICsJICogRm9yIGdyb3VwZWQgaW50
ZXJydXB0cyBzb3VyY2VzIC0gdGhlIGludGVycnVwdCBjb2RlIGFzCj4gKwkgKiBhcHBlYXJzIGF0
IHRoZSBncm91cCBwcmlvcml0eSByZWdpc3Rlcgo+ICsJICovCj4gKwl1OAlwcmlfY29kZTsKPiAr
Cj4gKwkvKiBHcm91cCBwcmlvcml0eSByZWdpc3RlciBvZmZzZXQgKi8KPiArCXUzMglwcmlfcmVn
Owo+ICt9Owo+ICAgCj4gICBzdGF0aWMgREVGSU5FX1JBV19TUElOTE9DSyhxZV9pY19sb2NrKTsK
PiAgIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMuaCBiL2RyaXZlcnMv
c29jL2ZzbC9xZS9xZV9pYy5oCj4gZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMjli
NGQ3NjhlNGE4Li4wMDAwMDAwMDAwMDAKPiAtLS0gYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWVfaWMu
aAo+ICsrKyAvZGV2L251bGwKPiBAQCAtMSwxMDggKzAsMCBAQAo+IC0vKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciAqLwo+IC0vKgo+IC0gKiBkcml2ZXJzL3NvYy9m
c2wvcWUvcWVfaWMuaAo+IC0gKgo+IC0gKiBRVUlDQyBFTkdJTkUgSW50ZXJydXB0IENvbnRyb2xs
ZXIgSGVhZGVyCj4gLSAqCj4gLSAqIENvcHlyaWdodCAoQykgMjAwNiBGcmVlc2NhbGUgU2VtaWNv
bmR1Y3RvciwgSW5jLiBBbGwgcmlnaHRzIHJlc2VydmVkLgo+IC0gKgo+IC0gKiBBdXRob3I6IExp
IFlhbmcgPGxlb2xpQGZyZWVzY2FsZS5jb20+Cj4gLSAqIEJhc2VkIG9uIGNvZGUgZnJvbSBTaGxv
bWkgR3JpZGlzaCA8Z3JpZGlzaEBmcmVlc2NhbGUuY29tPgo+IC0gKi8KPiAtI2lmbmRlZiBfUE9X
RVJQQ19TWVNERVZfUUVfSUNfSAo+IC0jZGVmaW5lIF9QT1dFUlBDX1NZU0RFVl9RRV9JQ19ICj4g
LQo+IC0jaW5jbHVkZSA8c29jL2ZzbC9xZS9xZV9pYy5oPgo+IC0KPiAtI2RlZmluZSBOUl9RRV9J
Q19JTlRTCQk2NAo+IC0KPiAtLyogUUUgSUMgcmVnaXN0ZXJzIG9mZnNldCAqLwo+IC0jZGVmaW5l
IFFFSUNfQ0lDUgkJMHgwMAo+IC0jZGVmaW5lIFFFSUNfQ0lWRUMJCTB4MDQKPiAtI2RlZmluZSBR
RUlDX0NSSVBOUgkJMHgwOAo+IC0jZGVmaW5lIFFFSUNfQ0lQTlIJCTB4MGMKPiAtI2RlZmluZSBR
RUlDX0NJUFhDQwkJMHgxMAo+IC0jZGVmaW5lIFFFSUNfQ0lQWUNDCQkweDE0Cj4gLSNkZWZpbmUg
UUVJQ19DSVBXQ0MJCTB4MTgKPiAtI2RlZmluZSBRRUlDX0NJUFpDQwkJMHgxYwo+IC0jZGVmaW5l
IFFFSUNfQ0lNUgkJMHgyMAo+IC0jZGVmaW5lIFFFSUNfQ1JJTVIJCTB4MjQKPiAtI2RlZmluZSBR
RUlDX0NJQ05SCQkweDI4Cj4gLSNkZWZpbmUgUUVJQ19DSVBSVEEJCTB4MzAKPiAtI2RlZmluZSBR
RUlDX0NJUFJUQgkJMHgzNAo+IC0jZGVmaW5lIFFFSUNfQ1JJQ1IJCTB4M2MKPiAtI2RlZmluZSBR
RUlDX0NISVZFQwkJMHg2MAo+IC0KPiAtLyogSW50ZXJydXB0IHByaW9yaXR5IHJlZ2lzdGVycyAq
Lwo+IC0jZGVmaW5lIENJUENDX1NISUZUX1BSSTAJMjkKPiAtI2RlZmluZSBDSVBDQ19TSElGVF9Q
UkkxCTI2Cj4gLSNkZWZpbmUgQ0lQQ0NfU0hJRlRfUFJJMgkyMwo+IC0jZGVmaW5lIENJUENDX1NI
SUZUX1BSSTMJMjAKPiAtI2RlZmluZSBDSVBDQ19TSElGVF9QUkk0CTEzCj4gLSNkZWZpbmUgQ0lQ
Q0NfU0hJRlRfUFJJNQkxMAo+IC0jZGVmaW5lIENJUENDX1NISUZUX1BSSTYJNwo+IC0jZGVmaW5l
IENJUENDX1NISUZUX1BSSTcJNAo+IC0KPiAtLyogQ0lDUiBwcmlvcml0eSBtb2RlcyAqLwo+IC0j
ZGVmaW5lIENJQ1JfR1dDQwkJMHgwMDA0MDAwMAo+IC0jZGVmaW5lIENJQ1JfR1hDQwkJMHgwMDAy
MDAwMAo+IC0jZGVmaW5lIENJQ1JfR1lDQwkJMHgwMDAxMDAwMAo+IC0jZGVmaW5lIENJQ1JfR1pD
QwkJMHgwMDA4MDAwMAo+IC0jZGVmaW5lIENJQ1JfR1JUQQkJMHgwMDIwMDAwMAo+IC0jZGVmaW5l
IENJQ1JfR1JUQgkJMHgwMDQwMDAwMAo+IC0jZGVmaW5lIENJQ1JfSFBJVF9TSElGVAkJOAo+IC0j
ZGVmaW5lIENJQ1JfSFBJVF9NQVNLCQkweDAwMDAwMzAwCj4gLSNkZWZpbmUgQ0lDUl9IUF9TSElG
VAkJMjQKPiAtI2RlZmluZSBDSUNSX0hQX01BU0sJCTB4M2YwMDAwMDAKPiAtCj4gLS8qIENJQ05S
ICovCj4gLSNkZWZpbmUgQ0lDTlJfV0NDMVRfU0hJRlQJMjAKPiAtI2RlZmluZSBDSUNOUl9aQ0Mx
VF9TSElGVAkyOAo+IC0jZGVmaW5lIENJQ05SX1lDQzFUX1NISUZUCTEyCj4gLSNkZWZpbmUgQ0lD
TlJfWENDMVRfU0hJRlQJNAo+IC0KPiAtLyogQ1JJQ1IgKi8KPiAtI2RlZmluZSBDUklDUl9SVEEx
VF9TSElGVAkyMAo+IC0jZGVmaW5lIENSSUNSX1JUQjFUX1NISUZUCTI4Cj4gLQo+IC0vKiBTaWdu
YWwgaW5kaWNhdG9yICovCj4gLSNkZWZpbmUgU0lHTkFMX01BU0sJCTMKPiAtI2RlZmluZSBTSUdO
QUxfSElHSAkJMgo+IC0jZGVmaW5lIFNJR05BTF9MT1cJCTAKPiAtCj4gLXN0cnVjdCBxZV9pYyB7
Cj4gLQkvKiBDb250cm9sIHJlZ2lzdGVycyBvZmZzZXQgKi8KPiAtCXUzMiBfX2lvbWVtICpyZWdz
Owo+IC0KPiAtCS8qIFRoZSByZW1hcHBlciBmb3IgdGhpcyBRRUlDICovCj4gLQlzdHJ1Y3QgaXJx
X2RvbWFpbiAqaXJxaG9zdDsKPiAtCj4gLQkvKiBUaGUgImxpbnV4IiBjb250cm9sbGVyIHN0cnVj
dCAqLwo+IC0Jc3RydWN0IGlycV9jaGlwIGhjX2lycTsKPiAtCj4gLQkvKiBWSVJRIG51bWJlcnMg
b2YgUUUgaGlnaC9sb3cgaXJxcyAqLwo+IC0JdW5zaWduZWQgaW50IHZpcnFfaGlnaDsKPiAtCXVu
c2lnbmVkIGludCB2aXJxX2xvdzsKPiAtfTsKPiAtCj4gLS8qCj4gLSAqIFFFIGludGVycnVwdCBj
b250cm9sbGVyIGludGVybmFsIHN0cnVjdHVyZQo+IC0gKi8KPiAtc3RydWN0IHFlX2ljX2luZm8g
ewo+IC0JLyogTG9jYXRpb24gb2YgdGhpcyBzb3VyY2UgYXQgdGhlIFFJTVIgcmVnaXN0ZXIgKi8K
PiAtCXUzMgltYXNrOwo+IC0KPiAtCS8qIE1hc2sgcmVnaXN0ZXIgb2Zmc2V0ICovCj4gLQl1MzIJ
bWFza19yZWc7Cj4gLQo+IC0JLyoKPiAtCSAqIEZvciBncm91cGVkIGludGVycnVwdHMgc291cmNl
cyAtIHRoZSBpbnRlcnJ1cHQgY29kZSBhcwo+IC0JICogYXBwZWFycyBhdCB0aGUgZ3JvdXAgcHJp
b3JpdHkgcmVnaXN0ZXIKPiAtCSAqLwo+IC0JdTgJcHJpX2NvZGU7Cj4gLQo+IC0JLyogR3JvdXAg
cHJpb3JpdHkgcmVnaXN0ZXIgb2Zmc2V0ICovCj4gLQl1MzIJcHJpX3JlZzsKPiAtfTsKPiAtCj4g
LSNlbmRpZiAvKiBfUE9XRVJQQ19TWVNERVZfUUVfSUNfSCAqLwo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
