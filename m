Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 502331DFA5A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 20:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+Uz+FK70oB/KFfiq/n8aRelfSDe80Kad0U9+Ude9a0=; b=J47U8rDNJH057M
	UnW+7JzqpxhgpjkR8e2yFjmp1EiZ4MtDrwLx3Cm5MEbEUroAdTdoUfBzcrY8nm1YZwx9OJXuuRZSZ
	33ONdyga1/6LEllZ10fRkNu3A8wHL85X+xyNbz6zbbQdYzgD78TureJXeIoxlst5ZNIJUyAgdE5Pp
	AFgVsc9gXWWP0ZEjVLo4zGUZt9UlOm13T2oqu3tznALwdSGpZQstjk/jynFPH8/CnQOKFUqQSJL/V
	DZu12smc3SjJKaFcM4Pmpz+xvK7SQ6Z8bLXvDJTgNDy/XMeDrtKvdQmVoUvUnvIijXtHgOVKUuXLH
	qc1BU1YAgN2cOV3guE5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcZAg-00040Y-JW; Sat, 23 May 2020 18:46:58 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcZAW-0003zj-Ln
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 18:46:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1590259593;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=EG0M3Hyxz4BV7j1+OKdBXWmu8BWCl4V9Gc3tOojvV2Y=;
 b=hTaMye3N+yvi7vgEFCCukb5mUQK/ZPTAg483iz9g5a5PnEXUoz+feQYOsYzmjLuKF0
 xiHMCKi76+XxkCbhy8n7IHYeFHJVoV2bMZBB2JiIU/crKnuLGSelO0P4SPCu7kSP6ARb
 QrkIINmb+57bwK6EDC5gPCILjGVfqJkpH9X0s826Tqm1AusWaw07UU1E8a6prwFaxaEI
 7PLB6k+46cqhOJ1NhiHf0N64WyZaGbPaVs9509Mo8ZV5Ev5cVLPEktFj4DWEYOrtD7Kt
 GkV0NCIEJR4Cn14m+2lLb0K5sco/vd/NoUxK8S/dp2e/f35LgZCNs47xUzMVjsp+x7A0
 Vojg==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPbJ/SdwHc="
X-RZG-CLASS-ID: mo00
Received: from positron.chronox.de by smtp.strato.de (RZmta 46.7.0 DYNA|AUTH)
 with ESMTPSA id k09005w4NIkQI1J
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Sat, 23 May 2020 20:46:26 +0200 (CEST)
From: Stephan =?ISO-8859-1?Q?M=FCller?= <smueller@chronox.de>
To: Stefan Wahren <stefan.wahren@i2se.com>,
 Lukasz Stelmach <l.stelmach@samsung.com>
Subject: Re: [PATCH v2 1/2] hwrng: iproc-rng200 - Set the quality value
Date: Sat, 23 May 2020 20:46:26 +0200
Message-ID: <3080190.aeNJFYEL58@positron.chronox.de>
In-Reply-To: <dleftjftbtyubp.fsf%l.stelmach@samsung.com>
References: <573b2eff-3c74-90e9-50fa-644264d0a0e5@i2se.com>
 <CGME20200521191415eucas1p2d112a86171b23dcf255e7da53a56f4f3@eucas1p2.samsung.com>
 <dleftjftbtyubp.fsf%l.stelmach@samsung.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_114649_304171_FE95307E 
X-CRM114-Status: GOOD (  20.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:3 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Kukjin Kim <kgene@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Markus Elfring <elfring@users.sourceforge.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QW0gRG9ubmVyc3RhZywgMjEuIE1haSAyMDIwLCAyMToxNDowMiBDRVNUIHNjaHJpZWIgTHVrYXN6
IFN0ZWxtYWNoOgoKSGkgTHVrYXN6LAoKPiBJdCB3YXMgPDIwMjAtMDUtMjEgY3p3IDEzOjAwPiwg
d2hlbiBTdGVmYW4gV2FocmVuIHdyb3RlOgo+ID4gSGkgTHVrYXN6LAo+ID4gCj4gPiBBbSAxOS4w
NS4yMCB1bSAyMzoyNSBzY2hyaWViIMWBdWthc3ogU3RlbG1hY2g6Cj4gPj4gVGhlIHZhbHVlIHdh
cyBlc3RpbWFkZWQgd2l0aCBlYV9paWRbMV0gdXNpbmcgb24gMTA0ODU3NjAgYnl0ZXMgcmVhZCBm
cm9tCj4gPj4gdGhlIFJORyB2aWEgL2Rldi9od3JuZy4gVGhlIG1pbi1lbnRyb3B5IHZhbHVlIGNh
bGN1bGF0ZWQgdXNpbmcgdGhlIG1vc3QKPiA+PiBjb21tb24gdmFsdWUgZXN0aW1hdGUgKE5JU1Qg
U1AgODAwLTkwUFsyXSwgc2VjdGlvbiA2LjMuMSkgd2FzIDcuOTY0NDY0Lgo+ID4gCj4gPiBjb3Vs
ZCB5b3UgcGxlYXNlIG1lbnRpb24gaW4gdGhlIGNvbW1pdCB0aGUgdXNlZCBoYXJkd2FyZQo+ID4g
aW1wbGVtZW50YXRpb24ocykgb2YgaXByb2Mtcm5nMjAwIHRvIGdldCB0aGlzIHF1YWxpdHk/Cj4g
PiAKPiA+IEFGQUlLIHRoZXJlIGlzIHN0aWxsIG5vIHB1YmxpYyByZWdpc3RlciBkZXNjcmlwdGlv
biBhdCBsZWFzdCBmb3IgdGhlCj4gPiBiY20yNzExLiBTbyBpcyBpdCBzYWZlIHRvIGFzc3VtZSB0
aGF0IHRoZSBzdWdnZXN0ZWQgcXVhbGl0eSBhcHBsaWVzIHRvCj4gPiBhbGwgcG9zc2libGUgY29u
ZmlndXJhdGlvbnM/Cj4gCj4gSSd2ZSBsZWFybnQgdGhhdCB0aGVyZSBpcyBhIHBvc3QtcHJvY2Vz
c2luZyB1bml0IGluIFJORzIwMCB0aGF0IHRlc3RzCj4gdGhlIG91dHB1dCBvZiB0aGUgbm9pc2Ug
Z2VuZXJhdG9yIGFuZCBmaWxscyBGSUZPIG9ubHkgd2l0aCBkYXRhIHRoYXQKPiBwYXNzZXMgRklQ
UyB0ZXN0cy4gVW5saWtlIHNpbW1pbGFyIHVuaXQgaW4gRXh5bm9zLCBpdCBjYW5ub3QgYmUgZGlz
YWJsZWQKPiBvciBieXBhc3NlZC4gVGhlcmVmb3JlLCBhZnRlciBTdGVwaGFuIE11ZWxsZXIncyB0
aG9yb3VnaCBleHBsYW5hdGlvbnMgSQo+IGFtIGNvbnNpZGVyaW5nIGRyb3BwaW5nIHRoaXMgcGF0
Y2ggaW4gdjMuCgpJZiB5b3Ugd291bGQgYmUgbW9yZSBjbGVhciB3aGF0IHRoYXQgRklQUyB0ZXN0
IGlzIGFsbCBhYm91dCwgd2UgbWF5IGJlIGFibGUgdG8gCmlkZW50aWZ5IHdoZXRoZXIgaXQgYWZm
ZWN0cyB0aGUgZW50cm9weSBiZWhhdmlvciBvciBub3QuIEUuZy4gaWYgaXQgaXMgdGhlIApTUDgw
MC05MEIgaGVhbHRoIHRlc3QgZm9sbG93aW5nIFNQODgwLTkwQiBzZWN0aW9uIDQuNCwgdGhpcyBk
b2VzIG5vdCBhZmZlY3QgCmVudHJvcHkgYW5kIHlvdSBjb3VsZCBhcHBseSB5b3VyIGNhbGN1bGF0
aW9uLgo+IAo+IEhvd2V2ZXIsIEkgc3RpbCBhbSBzdGlsbCBub3QgMTAwJSBjb252aW5jZWQgdGhh
dCBpdCBpcyBpbXBvc3NpYmxlIHRvCj4gYXNzaWduIHRoZSBxdWFsaXR5IGEgcmVhc29uYWJsZSBu
b24temVybyB2YWx1ZSBpbiBzdWNoIGNhc2UuCj4gCj4gPiBUaGFua3MKPiA+IFN0ZWZhbgo+ID4g
Cj4gPj4gWzFdCj4gPj4gaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS91cmw/az1kYTQ3MzVi
Mi04N2Q5OWIyOC1kYTQ2YmVmZC0wY2M0N2EzMzZmCj4gPj4gYWUtZTFjMjEwODBiYzZhYjFlNCZx
PTEmdT1odHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20lMkZ1c25pc3Rnb3YlMkZTUDgwMC05MAo+ID4+
IEJfRW50cm9weUFzc2Vzc21lbnQgWzJdCj4gPj4gaHR0cHM6Ly9jc3JjLm5pc3QuZ292L3B1Ymxp
Y2F0aW9ucy9kZXRhaWwvc3AvODAwLTkwYi9maW5hbAo+ID4+IAo+ID4+IFNpZ25lZC1vZmYtYnk6
IMWBdWthc3ogU3RlbG1hY2ggPGwuc3RlbG1hY2hAc2Ftc3VuZy5jb20+Cj4gPj4gLS0tCj4gPj4g
Cj4gPj4gIGRyaXZlcnMvY2hhci9od19yYW5kb20vaXByb2Mtcm5nMjAwLmMgfCAxICsKPiA+PiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPj4gCj4gPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvY2hhci9od19yYW5kb20vaXByb2Mtcm5nMjAwLmMKPiA+PiBiL2RyaXZlcnMvY2hhci9o
d19yYW5kb20vaXByb2Mtcm5nMjAwLmMgaW5kZXggMzJkOWZlNjFhMjI1Li45NTY2OWVjZTA1MGYK
PiA+PiAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL2NoYXIvaHdfcmFuZG9tL2lwcm9jLXJuZzIw
MC5jCj4gPj4gKysrIGIvZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9pcHJvYy1ybmcyMDAuYwo+ID4+
IEBAIC0xOTksNiArMTk5LDcgQEAgc3RhdGljIGludCBpcHJvY19ybmcyMDBfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZQo+ID4+ICpwZGV2KT4+IAo+ID4+ICAJcHJpdi0+cm5nLnJlYWQgPSBp
cHJvY19ybmcyMDBfcmVhZCwKPiA+PiAgCXByaXYtPnJuZy5pbml0ID0gaXByb2Nfcm5nMjAwX2lu
aXQsCj4gPj4gIAlwcml2LT5ybmcuY2xlYW51cCA9IGlwcm9jX3JuZzIwMF9jbGVhbnVwLAo+ID4+
IAo+ID4+ICsJcHJpdi0+cm5nLnF1YWxpdHkgPSAxMDAwLAo+ID4+IAo+ID4+ICAJLyogUmVnaXN0
ZXIgZHJpdmVyICovCj4gPj4gIAlyZXQgPSBkZXZtX2h3cm5nX3JlZ2lzdGVyKGRldiwgJnByaXYt
PnJuZyk7CgoKQ2lhbwpTdGVwaGFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
