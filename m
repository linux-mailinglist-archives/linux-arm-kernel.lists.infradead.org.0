Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3D71DAE8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtAl6tIiBg0LDFgysCwDuYL9vsaekdQXb6RUuP9rRQc=; b=O2hkfQIsIKXvlG
	gl3g/p6A0KHZswIyUgEWEUAK5a9leIrbX6Am088QSNTfCmw7byhuOkzZUpU94QwqbY1rdk2EnzE8Q
	DBTLsx+aNNdIutzzQZHooY69E71+rhNpp18whS0WgOwHXd22a4QyIS4ySVFY3ZdrsURyi01aZWbfj
	PKfi7AlfQwcJfL5D2vYrztisJBd6pFqNCiaiZpCWbe1Io/WQk5eNc53yi2W8894KjXBGTLY24gp1g
	vSFFy5jfTmPD/nJc250FqyiX8Y6q+p5DBc5wfRrskC2QR9bzNOZ6+CeSZyRd3lqqudR/H8p07IetO
	FObeKTSUhMZJ1LLW9BFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKsR-0004zz-2W; Wed, 20 May 2020 09:19:03 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKsC-0004zL-KO
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:18:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1589966324;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=jnu5hWhBP4JZRIy4PRG4U6miSmGbRgsPoOIk1eFJ53E=;
 b=pbzI3cWQS37lelUQlFZp1ZpbR9RupgTFDNNlGGvCMRYOoVEih6pjPvhLenF+0x544C
 vJbEHfsMsISjH0d0I955cHNqaw2imLuFY1dcEXuODiQzATZO4dxiv8z8AsbjB1VvvAQt
 JnL+0cHEiiMOsdIVOqIi+EYka6ZJBBtItB07V7F88vcYs87cMEkOGt6gB+a5k0WLF65x
 g5FaebTYkVaqglfZTxNwKmmJCwgFofN3paUUsQ2igI870tUiidlwSAVuOclRjPIVBTtS
 qgIWucsj5rEH2bAvPB5qzvFzUeqaDNv0ppql6fz04xbEI5xOyfF+5LehMbprvtl/Zm8c
 VfmA==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9zmgLKehaO2hZDSTWbg/LOA=="
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.7.0 AUTH)
 with ESMTPSA id k09005w4K9IZ4DL
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Wed, 20 May 2020 11:18:35 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Wed, 20 May 2020 11:18:32 +0200
Message-ID: <15745285.MnsZKaK4VV@tauon.chronox.de>
In-Reply-To: <dleftjr1vf2cqf.fsf%l.stelmach@samsung.com>
References: <1748331.j7eDFAdTc1@tauon.chronox.de>
 <CGME20200520091043eucas1p15ecae108007382a95b01e42241cc7a26@eucas1p1.samsung.com>
 <dleftjr1vf2cqf.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_021849_269482_67E07F89 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Wahren <wahrenst@gmx.net>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gTWl0dHdvY2gsIDIwLiBNYWkgMjAyMCwgMTE6MTA6MzIgQ0VTVCBzY2hyaWViIEx1a2FzeiBT
dGVsbWFjaDoKCkhpIEx1a2FzeiwKCj4gSXQgd2FzIDwyMDIwLTA1LTIwIMWbcm8gMDg6MjM+LCB3
aGVuIFN0ZXBoYW4gTXVlbGxlciB3cm90ZToKPiA+IEFtIERpZW5zdGFnLCAxOS4gTWFpIDIwMjAs
IDIzOjI1OjUxIENFU1Qgc2NocmllYiDFgXVrYXN6IFN0ZWxtYWNoOgo+ID4+IFRoZSB2YWx1ZSB3
YXMgZXN0aW1hZGVkIHdpdGggZWFfaWlkWzFdIHVzaW5nIG9uIDEwNDg1NzYwIGJ5dGVzIHJlYWQg
ZnJvbQo+ID4+IHRoZSBSTkcgdmlhIC9kZXYvaHdybmcuIFRoZSBtaW4tZW50cm9weSB2YWx1ZSBj
YWxjdWxhdGVkIHVzaW5nIHRoZSBtb3N0Cj4gPj4gY29tbW9uIHZhbHVlIGVzdGltYXRlIChOSVNU
IFNQIDgwMC05MFBbMl0sIHNlY3Rpb24gNi4zLjEpIHdhcyA3Ljk2NDQ2NC4KPiA+IAo+ID4gSSBh
bSBzb3JyeSwgYnV0IEkgdGhpbmsgSSBkaWQgbm90IG1ha2UgbXlzZWxmIGNsZWFyOiB0ZXN0aW5n
IHJhbmRvbQo+ID4gbnVtYmVycwo+ID4gcG9zdC1wcm9jZXNzaW5nIHdpdGggdGhlIHN0YXRpc3Rp
Y2FsIHRvb2xzIGRvZXMgTk9UIGdpdmUgYW55IGlkZWEgYWJvdXQKPiA+IHRoZQo+ID4gZW50cm9w
eSByYXRlLiBUaHVzLCBhbGwgdGhhdCB3YXMgY2FsY3VsYXRlZCBpcyB0aGUgcHJvcGVyIGltcGxl
bWVudGF0aW9uCj4gPiBvZgo+ID4gdGhlIHBvc3QtcHJvY2Vzc2luZyBvcGVyYXRpb24gYW5kIG5v
dCB0aGUgYWN0dWFsIG5vaXNlIHNvdXJjZS4KPiA+IAo+ID4gV2hhdCBuZWVkcyB0byBoYXBwZW4g
aXMgdGhhdCB3ZSBuZWVkIGFjY2VzcyB0byByYXcsIHVuY29uZGl0aW9uZWQgZGF0YQo+ID4gZnJv
bQo+ID4gdGhlIG5vaXNlIHNvdXJjZSB0aGF0IGlzIGFuYWx5emVkIHdpdGggdGhlIHN0YXRpc3Rp
Y2FsIG1ldGhvZHMuCj4gCj4gSSBkaWQgdW5kZXJzdGFuZCB5b3UgYW5kIEkgYXNzdXJlIHlvdSB0
aGUgZGF0YSBJIHRlc3RlZCB3ZXJlIG9idGFpbmVkCj4gZGlyZWN0bHkgZnJvbSBSTkdzLiBBcyBJ
IHBvaW50ZWQgYmVmb3JlWzFdLCB0aGF0IGlzIGhvdyAvZGV2L2h3cm5nCj4gd29ya3NbMl0uCgpJ
IHVuZGVyc3RhbmQgdGhhdCAvZGV2L2h3cm5nIHB1bGxzIHRoZSBkYXRhIHN0cmFpZ2h0IGZyb20g
dGhlIGhhcmR3YXJlLiBCdXQgCnRoZSBkYXRhIGZyb20gdGhlIGhhcmR3YXJlIHVzdWFsbHkgaXMg
bm90IG9idGFpbmVkIHN0cmFpZ2h0IGZyb20gdGhlIG5vaXNlIApzb3VyY2UuCgpUeXBpY2FsbHkg
eW91IGhhdmUgYSBub2lzZSBzb3VyY2UgKGUuZy4gYSByaW5nIG9zY2lsbGF0b3IpIHdob3NlIGRh
dGEgaXMgCmRpZ2l0aXplZCB0aGVuIGZlZCBpbnRvIGEgY29tcHJlc3Npb24gZnVuY3Rpb24gbGlr
ZSBhbiBMRlNSIG9yIGEgaGFzaC4gVGhlbiBhIApjcnlwdG9ncmFwaGljIG9wZXJhdGlvbiBsaWtl
IGEgQ0JDLU1BQywgaGFzaCBvciBldmVuIGEgRFJCRyBpcyBhcHBsaWVkIHRvIHRoYXQgCmRhdGEg
d2hlbiB0aGUgY2FsbGVyIHdhbnRzIHRvIGhhdmUgcmFuZG9tIG51bWJlcnMuCgpJbiBvcmRlciB0
byBlc3RpbWF0ZSBlbnRyb3B5LCB3ZSBuZWVkIHRoZSByYXcgdW5jb25kaXRpb25lZCBkYXRhIGZy
b20gdGhlLCAKc2F5LCByaW5nIG9zY2lsbGF0b3IgYW5kIG5vdCBmcm9tIHRoZSAoY3J5cHRvZ3Jh
cGhpYykgb3V0cHV0IG9wZXJhdGlvbi4KClRoYXQgc2FpZCwgdGhlIGlsbHVzdHJhdGVkIGV4YW1w
bGUgaXMgdHlwaWNhbCBmb3IgaGFyZHdhcmUgUk5Hcy4gWWV0IGl0IGlzIApuZXZlciBndWFyYW50
ZWVkIHRvIHdvcmsgdGhhdCB3YXkuIFRodXMsIGlmIHlvdSBjYW4gcG9pbnQgdG8gYXJjaGl0ZWN0
dXJlIApkb2N1bWVudGF0aW9uIG9mIHlvdXIgc3BlY2lmaWMgaGFyZHdhcmUgUk5HcyBzaG93aW5n
IHRoYXQgdGhlIGRhdGEgcmVhZCBmcm9tIAp0aGUgaGFyZHdhcmUgaXMgcHVyZSB1bmNvbmRpdGlv
bmVkIG5vaXNlIGRhdGEsIHRoZW4gSSBoYXZlIG5vIG9iamVjdGlvbnMgdG8gCnRoZSBwYXRjaC4K
PiAKPiBJZiBJIGFtIHdyb25nLCBkbyBzaG93IG1lIHRoZSBjb2RlIHRoYXQgcHJvY2Vzc2VzIHRo
ZSBkYXRhIGZyb20gYSBIVyBSTkcKPiBiZWZvcmUgY29weWluZyB0aGVtIHRvIHVzZXIgcHJvdmlk
ZWQgYnVmZmVyWzNdLgoKSSBhbSBub3QgdGFsa2luZyBhYm91dCBhbnkgc29mdHdhcmUgcG9zdC1w
cm9jZXNzaW5nLiBJIGFtIHRhbGtpbmcgYWJvdXQgcG9zdC0KcHJvY2Vzc2luZyB3aXRoaW4gdGhl
IGhhcmR3YXJlLgo+IAo+IFsxXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC81LzE1LzI1Mgo+
IFsyXQo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvYwo+IHVtZW50YXRpb24vYWRtaW4tZ3VpZGUvaHdfcmFu
ZG9tLnJzdD9oPXY1LjYgWzNdCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpCj4gdmVycy9jaGFyL2h3X3Jh
bmRvbS9jb3JlLmM/aD12NS42I24yNTEKPiAKPiBLaW5kIHJlZ2FyZHMsCgoKQ2lhbwpTdGVwaGFu
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
