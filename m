Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DA0CB063
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 22:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QXTlLgQ+I507sKjjetf1lbIbEOH2YtaJ2syD0rH3mM=; b=VvPVXkE6TTcnbA
	jWHemQpZBkviNTNH8LPeJeR7aTHOJb1OfuiIe0Mf4+iNR/BZlWrRosm5Dha9FBPgWccjfSKJVr7pl
	PdAV0GjTiuDA90PSv0Tss+IABJYo2wCc5ZStVU8IOpCPgS8Rl5ZvFPYWbIYKxohmewSsdMoRCSwcx
	MSPh1nImYivtr8KgZQfKU+Ur7A7oIdH2gzbA/NDHxWehU+CN0fMLDXr3GfmgqXEsUTWPLVAtr5Jqn
	kxziLNhAz/K620k4flq+y4LTa85zQRLjGUlmXyO2cEdLRimPQZaDTI4qlVXO+FfRgrQKhe2pABk2W
	cwenVqMe8c/SK4c5rhtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG7xy-0002UP-CD; Thu, 03 Oct 2019 20:44:50 +0000
Received: from mailoutvs60.siol.net ([185.57.226.251] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG7xp-0002TG-1S
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 20:44:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 781D6521BD2;
 Thu,  3 Oct 2019 22:44:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ERiZe1TyEwxX; Thu,  3 Oct 2019 22:44:35 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 0A61052438D;
 Thu,  3 Oct 2019 22:44:35 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 6440B52437F;
 Thu,  3 Oct 2019 22:44:31 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Date: Thu, 03 Oct 2019 22:44:31 +0200
Message-ID: <3413755.LxPTGpI9pz@jernej-laptop>
In-Reply-To: <20191003202846.GA2800@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <12199603.8LrTjBMqpV@jernej-laptop> <20191003202846.GA2800@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_134441_395060_2BC4572A 
X-CRM114-Status: GOOD (  27.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.251 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAwMy4gb2t0b2JlciAyMDE5IG9iIDIyOjI4OjQ2IENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gVGh1IDAzIE9jdCAxOSwgMDc6
MTYsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERuZSDEjWV0cnRlaywgMDMuIG9rdG9iZXIg
MjAxOSBvYiAwMDowNjo1MCBDRVNUIGplIFBhdWwgS29jaWFsa293c2tpCj4gPiAKPiA+IG5hcGlz
YWwoYSk6Cj4gPiA+IEhpLAo+ID4gPiAKPiA+ID4gT24gV2VkIDAyIE9jdCAxOSwgMjE6MzUsIEpl
cm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gPiA+IFJlZmVyZW5jZSBpbmRleCBjb3VudCBpbiBWRV9I
MjY0X1BQUyBzaG91bGQgY29tZSBmcm9tIFBQUyBjb250cm9sLgo+ID4gPiA+IEhvd2V2ZXIsIHRo
aXMgaXMgbm90IHJlYWxseSBpbXBvcnRhbnQsIGJlY2F1c2UgcmVmZXJlbmNlIGluZGV4IGNvdW50
Cj4gPiA+ID4gaXMKPiA+ID4gPiBpbiBvdXIgY2FzZSBhbHdheXMgb3ZlcnJpZGRlbiBieSB0aGF0
IGZyb20gc2xpY2UgaGVhZGVyLgo+ID4gPiAKPiA+ID4gVGhhbmtzIGZvciB0aGUgZml4dXAhCj4g
PiA+IAo+ID4gPiBPdXIgbGlidmEgdXNlcnNwYWNlIGFuZCB2NGwyLXJlcXVlc3QgdGVzdGluZyB0
b29sIGN1cnJlbnRseSBkb24ndAo+ID4gPiBwcm92aWRlCj4gPiA+IHRoaXMsIGJ1dCBJIGhhdmUg
YSBwZW5kaW5nIG1lcmdlIHJlcXVlc3QgYWRkaW5nIGl0IGZvciB0aGUgaGFudHJvIHNvCj4gPiA+
IGl0J3MKPiA+ID4gZ29vZCB0byBnby4KPiA+IAo+ID4gQWN0dWFsbHksIEkgdGhpbmsgdGhpcyBp
cyBqdXN0IGNvc21ldGljIGFuZCBpdCB3b3VsZCB3b3JrIGV2ZW4gaWYgaXQgd291bGQKPiA+IGJl
IGFsd2F5cyAwLiBXZSBhbHdheXMgb3ZlcnJpZGUgdGhpcyBudW1iZXIgaW4gU0hTMiByZWdpc3Rl
ciB3aXRoCj4gPiBWRV9IMjY0X1NIUzJfTlVNX1JFRl9JRFhfQUNUSVZFX09WUkQgZmxhZyBhbmQg
cmVjZW50bHkgdGhlcmUgd2FzIGEgcGF0Y2gKPiA+IG1lcmdlZCB0byBjbGFyaWZ5IHRoYXQgdmFs
dWUgaW4gc2xpY2UgcGFyYW1ldGVycyBzaG91bGQgYmUgdGhlIG9uZSB0aGF0J3MKPiA+IHNldCBv
biBkZWZhdWx0IHZhbHVlIGlmIG92ZXJyaWRlIGZsYWcgaXMgbm90IHNldCBpbiBiaXRzdHJlYW06
Cj4gPiBodHRwczovL2dpdC5saW51eHR2Lm9yZy9tZWRpYV90cmVlLmdpdC9jb21taXQvPwo+ID4g
aWQ9MTg3ZWY3YzVjNzgxNTNhY2RjZThjODcxNGU1OTE4YjEwMThjNzEwYgo+ID4gCj4gPiBXZWxs
LCB3ZSBjb3VsZCBhbHdheXMgY29tcGFyZSBkZWZhdWx0IGFuZCB2YWx1ZSBpbiBzbGljZSBwYXJh
bWV0ZXJzLCBidXQgSQo+ID4gcmVhbGx5IGRvbid0IHNlZSB0aGUgYmVuZWZpdCBvZiBkb2luZyB0
aGF0IGV4dHJhIHdvcmsuCj4gCj4gVGhhbmtzIGZvciB0aGUgZGV0YWlsZWQgZXhwbGFuYXRpb24h
IFNvIEkganVzdCByZWFsaXplZCB0aGF0IGZvciBIRVZDLCBJCj4gZGlkbid0IGV2ZW4gaW5jbHVk
ZSB0aGUgZGVmYXVsdCB2YWx1ZSBpbiBQUFMgYW5kIG9ubHkgd2VudCBmb3IgdGhlCj4gcGVyLXNs
aWNlIHZhbHVlLiBUaGUgSEVWQyBoYXJkd2FyZSBibG9jayBhcHBhcmVudGx5IG9ubHkgbmVlZHMg
dGhlIGZpZWxkcwo+IG9uY2UgYXQgc2xpY2UgbGV2ZWwsIGFuZCBieSBsb29raW5nIGF0IHRoZSBz
cGVjLCBvbmx5IG9uZSBvZiB0aGUgdHdvIHNldCBvZgo+IGZpZWxkcyB3aWxsIGJlIHVzZWQuCj4g
Cj4gU28gcGVyaGFwcyB3ZSBjb3VsZCBkbyB0aGUgc2FtZSBmb3IgSC4yNjQgYW5kIG9ubHkgaGF2
ZSB0aGUgc2V0IG9mIGZpZWxkcwo+IG9uY2UgaW4gdGhlIHNsaWNlIHBhcmFtcywgc28gdGhhdCBi
b3RoIGNvZGVjcyBhcmUgY29uc2lzdGVudC4gVXNlcnNwYWNlIGNhbgo+IGp1c3QgY2hlY2sgdGhl
IGZsYWcgdG8ga25vdyB3aGV0aGVyIGl0IHNob3VsZCBwdXQgdGhlIFBQUyBkZWZhdWx0IG9yCj4g
c2xpY2Utc3BlY2lmaWMgdmFsdWUgaW4gdGhlIHNsaWNlLXNwZWNpZmljIGNvbnRyb2wuCj4gCj4g
V2hhdCBkbyB5b3UgdGhpbms/CgpJIHRoaW5rIHRoYXQgdGhlcmUgd291bGQgYmUgbGVzcyBjb25m
dXNpb24gaWYgb25seSB2YWx1ZSBpbiBzbGljZSBwYXJhbXMgd291bGQgCmV4aXN0cy4gQnV0IHNp
bmNlIFBoaWxpcHAgcmF0aGVyIG1hZGUgY2xhcmlmaWNhdGlvbiBpbiBkb2N1bWVudGF0aW9uLCBt
YXliZSBoZSAKc2VlcyBiZW5lZml0IGhhdmluZyBib3RoIHZhbHVlcz8KCkJlc3QgcmVnYXJkcywK
SmVybmVqCgo+IAo+IENoZWVycywKPiAKPiBQYXVsCj4gCj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBK
ZXJuZWoKPiA+IAo+ID4gPiBBY2tlZC1ieTogUGF1bCBLb2NpYWxrb3dza2kgPHBhdWwua29jaWFs
a293c2tpQGJvb3RsaW4uY29tPgo+ID4gPiAKPiA+ID4gQ2hlZXJzLAo+ID4gPiAKPiA+ID4gUGF1
bAo+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNr
cmFiZWNAc2lvbC5uZXQ+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gCj4gPiA+ID4gIGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9zdW54aS9jZWRydXMvY2VkcnVzX2gyNjQuYyB8IDggKystLS0tLS0KPiA+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiA+ID4g
PiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1
cy9jZWRydXNfaDI2NC5jCj4gPiA+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2Vk
cnVzL2NlZHJ1c19oMjY0LmMgaW5kZXgKPiA+ID4gPiBiZDg0ODE0NmVhZGEuLjRhMGU2OTg1NWM3
ZiAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVz
L2NlZHJ1c19oMjY0LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkv
Y2VkcnVzL2NlZHJ1c19oMjY0LmMKPiA+ID4gPiBAQCAtMzY0LDEyICszNjQsOCBAQCBzdGF0aWMg
dm9pZCBjZWRydXNfc2V0X3BhcmFtcyhzdHJ1Y3QgY2VkcnVzX2N0eAo+ID4gPiA+ICpjdHgsCj4g
PiA+ID4gCj4gPiA+ID4gIAkvLyBwaWN0dXJlIHBhcmFtZXRlcnMKPiA+ID4gPiAgCXJlZyA9IDA7
Cj4gPiA+ID4gCj4gPiA+ID4gLQkvKgo+ID4gPiA+IC0JICogRklYTUU6IHRoZSBrZXJuZWwgaGVh
ZGVycyBhcmUgYWxsb3dpbmcgdGhlIGRlZmF1bHQgdmFsdWUgdG8KPiA+ID4gPiAtCSAqIGJlIHBh
c3NlZCwgYnV0IHRoZSBsaWJ2YSBkb2Vzbid0IGdpdmUgdXMgdGhhdC4KPiA+ID4gPiAtCSAqLwo+
ID4gPiA+IC0JcmVnIHw9IChzbGljZS0+bnVtX3JlZl9pZHhfbDBfYWN0aXZlX21pbnVzMSAmIDB4
MWYpIDw8IDEwOwo+ID4gPiA+IC0JcmVnIHw9IChzbGljZS0+bnVtX3JlZl9pZHhfbDFfYWN0aXZl
X21pbnVzMSAmIDB4MWYpIDw8IDU7Cj4gPiA+ID4gKwlyZWcgfD0gKHBwcy0+bnVtX3JlZl9pZHhf
bDBfZGVmYXVsdF9hY3RpdmVfbWludXMxICYgMHgxZikgPDwgMTA7Cj4gPiA+ID4gKwlyZWcgfD0g
KHBwcy0+bnVtX3JlZl9pZHhfbDFfZGVmYXVsdF9hY3RpdmVfbWludXMxICYgMHgxZikgPDwgNTsK
PiA+ID4gPiAKPiA+ID4gPiAgCXJlZyB8PSAocHBzLT53ZWlnaHRlZF9iaXByZWRfaWRjICYgMHgz
KSA8PCAyOwo+ID4gPiA+ICAJaWYgKHBwcy0+ZmxhZ3MgJiBWNEwyX0gyNjRfUFBTX0ZMQUdfRU5U
Uk9QWV9DT0RJTkdfTU9ERSkKPiA+ID4gPiAgCQo+ID4gPiA+ICAJCXJlZyB8PSBWRV9IMjY0X1BQ
U19FTlRST1BZX0NPRElOR19NT0RFOwoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
