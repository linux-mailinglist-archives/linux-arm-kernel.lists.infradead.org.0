Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9B6FEAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oli+kQX1QSy/+sNEsTSO7NjI5TTcvbX9Dy9VkCMc/n0=; b=sRG7TabJaIMHGt8Cu9Pf8mDEq
	zpmtuYzAkayBUpPnnDF6qYwJXytN29b7sE2ANuzBJ07QUDcIT+kOaTKl/D14ZN7Hrf85OE7GD4tie
	SDQCDa58IRdnCpz0YfeWQBN0KL+e4IxyjrcaZdIyQkb3AuLkTYhU8pJdwMBmT63//j4arD8ylfqNy
	Ri8vObS/RZzQDH1ePOdMl8gvrOfD0XrwXWFOYM2v78+Fo6eYfIAgAfEEIgM+gRiL6vGFZ4lFM/+kg
	Nb71wNBhJvNTQKUaOd1fJH3AC77mj4GtUf1bscor40Tn4egQlcPMtDWxSR0rO8n8KwRphzEjTTD16
	Q0Qwfu3og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLWPW-0003A7-P0; Tue, 30 Apr 2019 17:19:18 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLWPO-00039K-8w
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 17:19:11 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 44tpCv00Zkz9v1kM;
 Tue, 30 Apr 2019 19:19:07 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=UDLJlhBF; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id rKe8bcM0kqZZ; Tue, 30 Apr 2019 19:19:06 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 44tpCt5h8rz9v1kF;
 Tue, 30 Apr 2019 19:19:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1556644746; bh=8M9gBHLm9qLvpKuZX/2ssSbHZfFKU8w8o0K+AXL3j6o=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=UDLJlhBFtSat+7juCpwpai6J+FXOCEyq4VXAoPPRThPSgZT484ylZa/AuqFsDhQQt
 xovxPbswSQzR14ffx8wMPLNOtUo3+ADODFGJqkRt3KwbLYSEjkr/WuOQwkyhL/eypA
 ot7Rx5E4eT0Go6ISIxv7Sdc/0wzZ7J1sQWjS8QBQ=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7E11F8B8F3;
 Tue, 30 Apr 2019 19:19:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id ROkgZ5J4l8t6; Tue, 30 Apr 2019 19:19:08 +0200 (CEST)
Received: from PO15451 (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D37A18B8DF;
 Tue, 30 Apr 2019 19:19:07 +0200 (CEST)
Subject: Re: [PATCH 4/5] soc/fsl/qe: qe.c: support fsl,qe-snums property
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>,
 Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>
References: <20190430133615.25721-1-rasmus.villemoes@prevas.dk>
 <20190430133615.25721-5-rasmus.villemoes@prevas.dk>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <4c1c4fe8-9412-2543-e9bc-83b7e5d7c202@c-s.fr>
Date: Tue, 30 Apr 2019 19:19:07 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430133615.25721-5-rasmus.villemoes@prevas.dk>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_101910_617062_4F6496B3 
X-CRM114-Status: GOOD (  21.93  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>, Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Rob Herring <robh+dt@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAzMC8wNC8yMDE5IMOgIDE1OjM2LCBSYXNtdXMgVmlsbGVtb2VzIGEgw6ljcml0wqA6Cj4g
VGhlIGN1cnJlbnQgY29kZSBhc3N1bWVzIHRoYXQgdGhlIHNldCBvZiBzbnVtIF92YWx1ZXNfIHRv
IHBvcHVsYXRlIHRoZQo+IHNudW1zW10gYXJyYXkgd2l0aCBpcyBhIGZ1bmN0aW9uIG9mIHRoZSBf
bnVtYmVyXyBvZiBzbnVtcwo+IGFsb25lLiBIb3dldmVyLCByZWFkaW5nIHRhYmxlIDQtMzAsIGFu
ZCBpdHMgZm9vdG5vdGVzLCBvZiB0aGUgUVVJQ0MKPiBFbmdpbmUgQmxvY2sgUmVmZXJlbmNlIE1h
bnVhbCBzaG93cyB0aGF0IHRoYXQgaXMgYSBiaXQgdG9vIG5haXZlLgo+IAo+IEFzIGFuIGFsdGVy
bmF0aXZlLCB0aGlzIGludHJvZHVjZXMgYSBuZXcgYmluZGluZyBmc2wscWUtc251bXMsIHdoaWNo
Cj4gYXV0b21hdGljYWxseSBlbmNvZGVzIGJvdGggdGhlIG51bWJlciBvZiBzbnVtcyBhbmQgdGhl
IGFjdHVhbCB2YWx1ZXMgdG8KPiB1c2UuIENvbnZlbmllbnRseSwgb2ZfcHJvcGVydHlfcmVhZF92
YXJpYWJsZV91OF9hcnJheSBkb2VzIGV4YWN0bHkKPiB3aGF0IHdlIG5lZWQuCj4gCj4gRm9yIGV4
YW1wbGUsIGZvciB0aGUgTVBDODMwOSwgb25lIHdvdWxkIHNwZWNpZnkgdGhlIHByb3BlcnR5IGFz
Cj4gCj4gICAgICAgICAgICAgICAgIGZzbCxxZS1zbnVtcyA9IC9iaXRzLyA4IDwKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAweDg4IDB4ODkgMHg5OCAweDk5IDB4YTggMHhhOSAweGI4IDB4YjkK
PiAgICAgICAgICAgICAgICAgICAgICAgICAweGM4IDB4YzkgMHhkOCAweGQ5IDB4ZTggMHhlOT47
Cj4gCj4gU2lnbmVkLW9mZi1ieTogUmFzbXVzIFZpbGxlbW9lcyA8cmFzbXVzLnZpbGxlbW9lc0Bw
cmV2YXMuZGs+Cj4gLS0tCj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvZnNsL2NwbV9x
ZS9xZS50eHQgICAgICB8ICA4ICsrKysrKystCj4gICBkcml2ZXJzL3NvYy9mc2wvcWUvcWUuYyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE0ICsrKysrKysrKysrKystCj4gICAyIGZpbGVz
IGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvZnNsL2NwbV9xZS9xZS50
eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL2ZzbC9jcG1fcWUvcWUu
dHh0Cj4gaW5kZXggZDdhZmFmZjVmYWZmLi4wNWY1ZjQ4NTU2MmEgMTAwNjQ0Cj4gLS0tIGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9mc2wvY3BtX3FlL3FlLnR4dAo+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvZnNsL2NwbV9xZS9xZS50
eHQKPiBAQCAtMTgsNyArMTgsOCBAQCBSZXF1aXJlZCBwcm9wZXJ0aWVzOgo+ICAgLSByZWcgOiBv
ZmZzZXQgYW5kIGxlbmd0aCBvZiB0aGUgZGV2aWNlIHJlZ2lzdGVycy4KPiAgIC0gYnVzLWZyZXF1
ZW5jeSA6IHRoZSBjbG9jayBmcmVxdWVuY3kgZm9yIFFVSUNDIEVuZ2luZS4KPiAgIC0gZnNsLHFl
LW51bS1yaXNjczogZGVmaW5lIGhvdyBtYW55IFJJU0MgZW5naW5lcyB0aGUgUUUgaGFzLgo+IC0t
IGZzbCxxZS1udW0tc251bXM6IGRlZmluZSBob3cgbWFueSBzZXJpYWwgbnVtYmVyKFNOVU0pIHRo
ZSBRRSBjYW4gdXNlIGZvciB0aGUKPiArLSBmc2wscWUtc251bXM6IFRoaXMgcHJvcGVydHkgaGFz
IHRvIGJlIHNwZWNpZmllZCBhcyAnL2JpdHMvIDgnIHZhbHVlLAo+ICsgIGRlZmluaW5nIHRoZSBh
cnJheSBvZiBzZXJpYWwgbnVtYmVyIChTTlVNKSB2YWx1ZXMgZm9yIHRoZSB2aXJ0dWFsCj4gICAg
IHRocmVhZHMuCj4gICAKPiAgIE9wdGlvbmFsIHByb3BlcnRpZXM6Cj4gQEAgLTM0LDYgKzM1LDEx
IEBAIFJlY29tbWVuZGVkIHByb3BlcnRpZXMKPiAgIC0gYnJnLWZyZXF1ZW5jeSA6IHRoZSBpbnRl
cm5hbCBjbG9jayBzb3VyY2UgZnJlcXVlbmN5IGZvciBiYXVkLXJhdGUKPiAgICAgZ2VuZXJhdG9y
cyBpbiBIei4KPiAgIAo+ICtEZXByZWNhdGVkIHByb3BlcnRpZXMKPiArLSBmc2wscWUtbnVtLXNu
dW1zOiBkZWZpbmUgaG93IG1hbnkgc2VyaWFsIG51bWJlcihTTlVNKSB0aGUgUUUgY2FuIHVzZQo+
ICsgIGZvciB0aGUgdGhyZWFkcy4gVXNlIGZzbCxxZS1zbnVtcyBpbnN0ZWFkIHRvIG5vdCBvbmx5
IHNwZWNpZnkgdGhlCj4gKyAgbnVtYmVyIG9mIHNudW1zLCBidXQgYWxzbyB0aGVpciB2YWx1ZXMu
Cj4gKwo+ICAgRXhhbXBsZToKPiAgICAgICAgcWVAZTAxMDAwMDAgewo+ICAgCSNhZGRyZXNzLWNl
bGxzID0gPDE+Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9mc2wvcWUvcWUuYyBiL2RyaXZl
cnMvc29jL2ZzbC9xZS9xZS5jCj4gaW5kZXggYWZmOWQxMzczNTI5Li5hZjNjMmIyYjI2OGYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9zb2MvZnNsL3FlL3FlLmMKPiArKysgYi9kcml2ZXJzL3NvYy9m
c2wvcWUvcWUuYwo+IEBAIC0yODMsNyArMjgzLDYgQEAgRVhQT1JUX1NZTUJPTChxZV9jbG9ja19z
b3VyY2UpOwo+ICAgICovCj4gICBzdGF0aWMgdm9pZCBxZV9zbnVtc19pbml0KHZvaWQpCj4gICB7
Cj4gLQlpbnQgaTsKCldoeSBkbyB5b3UgbW92ZSB0aGlzIG9uZSA/Cgo+ICAgCXN0YXRpYyBjb25z
dCB1OCBzbnVtX2luaXRfNzZbXSA9IHsKPiAgIAkJMHgwNCwgMHgwNSwgMHgwQywgMHgwRCwgMHgx
NCwgMHgxNSwgMHgxQywgMHgxRCwKPiAgIAkJMHgyNCwgMHgyNSwgMHgyQywgMHgyRCwgMHgzNCwg
MHgzNSwgMHg4OCwgMHg4OSwKPiBAQCAtMzA0LDkgKzMwMywyMiBAQCBzdGF0aWMgdm9pZCBxZV9z
bnVtc19pbml0KHZvaWQpCj4gICAJCTB4MjgsIDB4MjksIDB4MzgsIDB4MzksIDB4NDgsIDB4NDks
IDB4NTgsIDB4NTksCj4gICAJCTB4NjgsIDB4NjksIDB4NzgsIDB4NzksIDB4ODAsIDB4ODEsCj4g
ICAJfTsKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqcWU7Cj4gICAJY29uc3QgdTggKnNudW1faW5p
dDsKPiArCWludCBpOwo+ICAgCj4gICAJYml0bWFwX3plcm8oc251bV9zdGF0ZSwgUUVfTlVNX09G
X1NOVU0pOwo+ICsJcWUgPSBxZV9nZXRfZGV2aWNlX25vZGUoKTsKPiArCWlmIChxZSkgewo+ICsJ
CWkgPSBvZl9wcm9wZXJ0eV9yZWFkX3ZhcmlhYmxlX3U4X2FycmF5KHFlLCAiZnNsLHFlLXNudW1z
IiwKPiArCQkJCQkJICAgICAgIHNudW1zLCAxLCBRRV9OVU1fT0ZfU05VTSk7Cj4gKwkJb2Zfbm9k
ZV9wdXQocWUpOwo+ICsJCWlmIChpID4gMCkgewo+ICsJCQlxZV9udW1fb2Zfc251bSA9IGk7Cj4g
KwkJCXJldHVybjsKCkluIHRoYXQgY2FzZSB5b3Ugc2tpcCB0aGUgcmVzdCBvZiB0aGUgaW5pdCA/
IENhbiB5b3UgZXhwbGFpbiA/CgpDaHJpc3RvcGhlCgo+ICsJCX0KPiArCX0KPiArCj4gICAJcWVf
bnVtX29mX3NudW0gPSBxZV9nZXRfbnVtX29mX3NudW1zKCk7Cj4gICAKPiAgIAlpZiAocWVfbnVt
X29mX3NudW0gPT0gNzYpCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
