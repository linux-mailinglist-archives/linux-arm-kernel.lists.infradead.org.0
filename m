Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D33C97DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 07:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGTP0CBk5QYWgYXs6dlN2Wu7uZO2/Prf91bU1oTDggk=; b=BphC1Gcd8dDS8l
	gshpbKRpWW5fJ7cPi89BB1TG+QB19ZARgaiUitT42HCwyDSozHjZm1PwJcDEGUUtJQXCr8tVZlPju
	6C/S1q30AfNR0MJQrbQxbqbtfmXBwiAufR+6ZSxLfxXq10Am3icI8S3O0wnuwA+gcWYWVsBxijPpj
	8A7SZT2c3LLSmMQolkP2gkK8GiBAVb8yqzQhZvYRPUNWUj3MAPPGozhiU57CySSPmn3mrG4s7UC8b
	TRh15J3XeuLTc0p3/ONrJDxQRTAP8eScVjQJnM10ZS/ylYdJ70mPrJprT9d26Veb1YaHzkhbCNSTs
	PAnEDF36knIWRkglrriw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtTa-0007uW-RM; Thu, 03 Oct 2019 05:16:30 +0000
Received: from mailoutvs4.siol.net ([185.57.226.195] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtTT-0007tH-94
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 05:16:25 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 2941F520E78;
 Thu,  3 Oct 2019 07:16:11 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id uo2TMQr76LRD; Thu,  3 Oct 2019 07:16:10 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C1F2D521B43;
 Thu,  3 Oct 2019 07:16:10 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 35AA5521111;
 Thu,  3 Oct 2019 07:16:10 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index
 count
Date: Thu, 03 Oct 2019 07:16:09 +0200
Message-ID: <12199603.8LrTjBMqpV@jernej-laptop>
In-Reply-To: <20191002220650.GB24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-3-jernej.skrabec@siol.net>
 <20191002220650.GB24151@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_221623_482606_8F8D6250 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.195 listed in list.dnswl.org]
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

RG5lIMSNZXRydGVrLCAwMy4gb2t0b2JlciAyMDE5IG9iIDAwOjA2OjUwIENFU1QgamUgUGF1bCBL
b2NpYWxrb3dza2kgCm5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gV2VkIDAyIE9jdCAxOSwgMjE6
MzUsIEplcm5laiBTa3JhYmVjIHdyb3RlOgo+ID4gUmVmZXJlbmNlIGluZGV4IGNvdW50IGluIFZF
X0gyNjRfUFBTIHNob3VsZCBjb21lIGZyb20gUFBTIGNvbnRyb2wuCj4gPiBIb3dldmVyLCB0aGlz
IGlzIG5vdCByZWFsbHkgaW1wb3J0YW50LCBiZWNhdXNlIHJlZmVyZW5jZSBpbmRleCBjb3VudCBp
cwo+ID4gaW4gb3VyIGNhc2UgYWx3YXlzIG92ZXJyaWRkZW4gYnkgdGhhdCBmcm9tIHNsaWNlIGhl
YWRlci4KPiAKPiBUaGFua3MgZm9yIHRoZSBmaXh1cCEKPiAKPiBPdXIgbGlidmEgdXNlcnNwYWNl
IGFuZCB2NGwyLXJlcXVlc3QgdGVzdGluZyB0b29sIGN1cnJlbnRseSBkb24ndCBwcm92aWRlCj4g
dGhpcywgYnV0IEkgaGF2ZSBhIHBlbmRpbmcgbWVyZ2UgcmVxdWVzdCBhZGRpbmcgaXQgZm9yIHRo
ZSBoYW50cm8gc28gaXQncwo+IGdvb2QgdG8gZ28uCgpBY3R1YWxseSwgSSB0aGluayB0aGlzIGlz
IGp1c3QgY29zbWV0aWMgYW5kIGl0IHdvdWxkIHdvcmsgZXZlbiBpZiBpdCB3b3VsZCBiZSAKYWx3
YXlzIDAuIFdlIGFsd2F5cyBvdmVycmlkZSB0aGlzIG51bWJlciBpbiBTSFMyIHJlZ2lzdGVyIHdp
dGggClZFX0gyNjRfU0hTMl9OVU1fUkVGX0lEWF9BQ1RJVkVfT1ZSRCBmbGFnIGFuZCByZWNlbnRs
eSB0aGVyZSB3YXMgYSBwYXRjaCBtZXJnZWQgCnRvIGNsYXJpZnkgdGhhdCB2YWx1ZSBpbiBzbGlj
ZSBwYXJhbWV0ZXJzIHNob3VsZCBiZSB0aGUgb25lIHRoYXQncyBzZXQgb24gCmRlZmF1bHQgdmFs
dWUgaWYgb3ZlcnJpZGUgZmxhZyBpcyBub3Qgc2V0IGluIGJpdHN0cmVhbToKaHR0cHM6Ly9naXQu
bGludXh0di5vcmcvbWVkaWFfdHJlZS5naXQvY29tbWl0Lz8KaWQ9MTg3ZWY3YzVjNzgxNTNhY2Rj
ZThjODcxNGU1OTE4YjEwMThjNzEwYgoKV2VsbCwgd2UgY291bGQgYWx3YXlzIGNvbXBhcmUgZGVm
YXVsdCBhbmQgdmFsdWUgaW4gc2xpY2UgcGFyYW1ldGVycywgYnV0IEkgCnJlYWxseSBkb24ndCBz
ZWUgdGhlIGJlbmVmaXQgb2YgZG9pbmcgdGhhdCBleHRyYSB3b3JrLgoKQmVzdCByZWdhcmRzLApK
ZXJuZWoKCj4gCj4gQWNrZWQtYnk6IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3Nr
aUBib290bGluLmNvbT4KPiAKPiBDaGVlcnMsCj4gCj4gUGF1bAo+IAo+ID4gU2lnbmVkLW9mZi1i
eTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gLS0tCj4gPiAK
PiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY0LmMgfCA4
ICsrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlv
bnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9zdW54aS9j
ZWRydXMvY2VkcnVzX2gyNjQuYwo+ID4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2Vk
cnVzL2NlZHJ1c19oMjY0LmMgaW5kZXgKPiA+IGJkODQ4MTQ2ZWFkYS4uNGEwZTY5ODU1YzdmIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXNf
aDI2NC5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1
c19oMjY0LmMKPiA+IEBAIC0zNjQsMTIgKzM2NCw4IEBAIHN0YXRpYyB2b2lkIGNlZHJ1c19zZXRf
cGFyYW1zKHN0cnVjdCBjZWRydXNfY3R4ICpjdHgsCj4gPiAKPiA+ICAJLy8gcGljdHVyZSBwYXJh
bWV0ZXJzCj4gPiAgCXJlZyA9IDA7Cj4gPiAKPiA+IC0JLyoKPiA+IC0JICogRklYTUU6IHRoZSBr
ZXJuZWwgaGVhZGVycyBhcmUgYWxsb3dpbmcgdGhlIGRlZmF1bHQgdmFsdWUgdG8KPiA+IC0JICog
YmUgcGFzc2VkLCBidXQgdGhlIGxpYnZhIGRvZXNuJ3QgZ2l2ZSB1cyB0aGF0Lgo+ID4gLQkgKi8K
PiA+IC0JcmVnIHw9IChzbGljZS0+bnVtX3JlZl9pZHhfbDBfYWN0aXZlX21pbnVzMSAmIDB4MWYp
IDw8IDEwOwo+ID4gLQlyZWcgfD0gKHNsaWNlLT5udW1fcmVmX2lkeF9sMV9hY3RpdmVfbWludXMx
ICYgMHgxZikgPDwgNTsKPiA+ICsJcmVnIHw9IChwcHMtPm51bV9yZWZfaWR4X2wwX2RlZmF1bHRf
YWN0aXZlX21pbnVzMSAmIDB4MWYpIDw8IDEwOwo+ID4gKwlyZWcgfD0gKHBwcy0+bnVtX3JlZl9p
ZHhfbDFfZGVmYXVsdF9hY3RpdmVfbWludXMxICYgMHgxZikgPDwgNTsKPiA+IAo+ID4gIAlyZWcg
fD0gKHBwcy0+d2VpZ2h0ZWRfYmlwcmVkX2lkYyAmIDB4MykgPDwgMjsKPiA+ICAJaWYgKHBwcy0+
ZmxhZ3MgJiBWNEwyX0gyNjRfUFBTX0ZMQUdfRU5UUk9QWV9DT0RJTkdfTU9ERSkKPiA+ICAJCj4g
PiAgCQlyZWcgfD0gVkVfSDI2NF9QUFNfRU5UUk9QWV9DT0RJTkdfTU9ERTsKCgoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
