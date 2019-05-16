Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A9920BDE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EF4Gl6i+x8cGsqjSkuPImSymwRpZTuxJyZL/t2Ayg1U=; b=KqCe7z5IOAXJ7/
	TX7UV1dcPMI4a+FRCCd1ZnUoNNqWcVw3Z/wJkd09eir/LiXE5TSq/vy0jOV4byUQVEe/WJBrGb4oi
	a5d4O5JcSogINwV0GrGhz7WdNbpY5aaQo8bCagT2zaMnMMlqCfEieNs3YvkhNF2tfLEekXI+vDUTo
	p+6H1R6MJ0oBko6gfLMB75XjDCGYSFU9yywcy/UzPTxT0sjL1K/APi0Jefqfgsq7YF5lZ15g74elF
	4JIV+Q7U3x+CNg/pEAFvIE5AlJ9WuzulL9x4fo2a/NpnsosqCfEYoJg2kEbe5rd/LO/onBn+fooWF
	gRMyjKfOyomDYS6RJYMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRInm-0004XI-3I; Thu, 16 May 2019 16:00:14 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRInc-0003bP-HV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:00:06 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 07E472064E;
 Thu, 16 May 2019 17:59:59 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id ECB6920581;
 Thu, 16 May 2019 17:59:58 +0200 (CEST)
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, arm-soc <arm@kernel.org>
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-2-olof@lixom.net>
 <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <aad06de6-b85c-b549-5653-45f9c4ebb384@free.fr>
Date: Thu, 16 May 2019 17:59:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu May 16 17:59:59 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_090004_804160_0F6F052E 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYvMDUvMjAxOSAxNzozMywgTGludXMgVG9ydmFsZHMgd3JvdGU6Cgo+IE9uIFdlZCwgTWF5
IDE1LCAyMDE5IGF0IDExOjQzIFBNIE9sb2YgSm9oYW5zc29uIHdyb3RlOgo+Pgo+PiBTb0MgdXBk
YXRlcywgbW9zdGx5IHJlZmFjdG9yaW5ncyBhbmQgY2xlYW51cHMgb2Ygb2xkIGxlZ2FjeSBwbGF0
Zm9ybXMuCj4+IE1ham9yIHRoZW1lcyB0aGlzIHJlbGVhc2U6Cj4gCj4gSG1tLiBUaGlzIGJyaW5n
cyBpbiBhIG5ldyB3YXJuaW5nOgo+IAo+ICAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1peHA0
eHguYzo3ODoyMDogd2FybmluZzoKPiDigJhpeHA0eHhfcmVhZF9zY2hlZF9jbG9ja+KAmSBkZWZp
bmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCj4gCj4gYmVjYXVzZSB0aGF0IGRy
aXZlcnMgaXMgZW5hYmxlZCBmb3IgYnVpbGQgdGVzdGluZywgYnV0IHRoYXQgZnVuY3Rpb24KPiBp
cyBvbmx5IHVzZWQgdW5kZXIKPiAKPiAgICNpZmRlZiBDT05GSUdfQVJNCj4gICAgICAgICBzY2hl
ZF9jbG9ja19yZWdpc3RlcihpeHA0eHhfcmVhZF9zY2hlZF9jbG9jaywgMzIsIHRpbWVyX2ZyZXEp
Owo+ICAgI2VuZGlmCj4gCj4gSXQncyBub3QgY2xlYXIgd2h5IHRoYXQgI2lmZGVmIGlzIHRoZXJl
LiBUaGlzIGRyaXZlciBvbmx5IGJ1aWxkcwo+IG5vbi1BUk0gd2hlbiBDT01QSUxFX1RFU1QgaXMg
ZW5hYmxlZCwgYW5kIHRoYXQgI2lmZGVmIGFjdHVhbGx5IGJyZWFrcwo+IHRoYXQgYnVpbGQgdGVz
dC4KPiAKPiBJJ20gZ29pbmcgdG8gcmVtb3ZlIHRoYXQgI2lmZGVmIGluIG15IG1lcmdlLCBiZWNh
dXNlIEkgZG8gKm5vdCogd2FudAo+IHRvIHNlZSBuZXcgd2FybmluZ3MsIGFuZCBpdCBkb2Vzbid0
IHNlZW0gdG8gbWFrZSBhbnkgc2Vuc2UuCj4gCj4gTWF5YmUgdGhhdCdzIHRoZSB3cm9uZyByZXNv
bHV0aW9uLCBwbGVhc2UgaG9sbGVyIGFuZCBsZXQgbWUga25vdyBpZgo+IHlvdSB3YW50IHNvbWV0
aGluZyBlbHNlLgoKSGVsbG8gQkRGTCwKCllvdXIgZW1haWwgY2xpZW50IGRpZCBzb21ldGhpbmcg
c3RyYW5nZSBieSBjaGFuZ2luZwoKCWxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwp0bwoJImxpbnV4LWFscGhhQHZnZXIua2VybmVsLm9yZyIgPGxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZz4KCndoaWNoIGlzIG9kZCAgOy0pCgoKQXMgZm9yIHlvdXIgYWN0dWFs
IHJlbWFyaywgSSBub3RlIHRoYXQgT2xvZiBoYXMgYW4gYXJtL2xhdGUgYnJhbmNoCih3aGljaCBJ
IGFzc3VtZSBoZSBwbGFucyB0byBzdWJtaXQgaW4gYSBmZXcgZGF5cz8pIHdoaWNoIGNvbnRhaW5z
CnRoZSBjaGFuZ2UgeW91IG1lbnRpb246CgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20v
bGludXgva2VybmVsL2dpdC9hcm0vYXJtLXNvYy5naXQvbG9nLz9oPWFybS9sYXRlCmh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L2FybS9hcm0tc29jLmdpdC9j
b21taXQvP2g9YXJtL2xhdGUmaWQ9NWNiOWRlNjI3ZTI1NDIxZTJlMmVkYWZmNjM2MGM4NGQzMmNk
M2MwMgoKUmVnYXJkcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
