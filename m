Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2327AF4190
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 08:58:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKAKnnJaMh8XAPCil189A+U0HD6G2Fozv23mUdUdkwk=; b=AwQoNiMm5JsDOI
	gknr42dHerGOBZtzCWPrrIxlAXAfG7OtBD5pRC85bEMd/9do+AxBwAgaK5U5AQgPQrRHGArdbzxNI
	kM4D9skRT+iNNLN0T/a9M71gYbE6VyDc43DBb9ovCQsyUp6P2kXsX2Vr69VSdbn94W0y6JGZpj/ny
	G0bJOsJL0KrSVb1cllDnpQ92AvPKjqMWD9nBnR5X+ELmsctCZO1+wxi74AzngYINMLsC03quTyAJE
	A/gdYK2z3CZ/Rc95p8dPTQTLNIgSWySPmDep2ISKWcNquE95EJh1VHuRiIpimdDTU+8fKatAFl93d
	VFtZDfueLHm9PCzsFkLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzA1-0002iY-95; Fri, 08 Nov 2019 07:58:25 +0000
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSz9s-0002hp-Lz
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 07:58:18 +0000
Received: from player732.ha.ovh.net (unknown [10.108.35.122])
 by mo4.mail-out.ovh.net (Postfix) with ESMTP id BE7BE20C988
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  8 Nov 2019 08:58:10 +0100 (CET)
Received: from kaod.org (lfbn-1-2229-223.w90-76.abo.wanadoo.fr [90.76.50.223])
 (Authenticated sender: clg@kaod.org)
 by player732.ha.ovh.net (Postfix) with ESMTPSA id E30F3BC89B87;
 Fri,  8 Nov 2019 07:57:57 +0000 (UTC)
Subject: Re: [PATCH] watchdog: aspeed: Fix clock behaviour for ast2600
To: Joel Stanley <joel@jms.id.au>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, linux-watchdog@vger.kernel.org
References: <20191108032905.22463-1-joel@jms.id.au>
From: =?UTF-8?Q?C=c3=a9dric_Le_Goater?= <clg@kaod.org>
Message-ID: <b82e1ba9-7ad3-6fbe-710f-51afc573f738@kaod.org>
Date: Fri, 8 Nov 2019 08:57:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191108032905.22463-1-joel@jms.id.au>
Content-Language: en-US
X-Ovh-Tracer-Id: 2310628085550451479
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedruddvtddgudduiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjqdffgfeufgfipdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpefuvfhfhffkffgfgggjtgfgsehtkeertddtfeejnecuhfhrohhmpeevrogurhhitggpnfgvpgfiohgrthgvrhcuoegtlhhgsehkrghougdrohhrgheqnecukfhppedtrddtrddtrddtpdeltddrjeeirdehtddrvddvfeenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeefvddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegtlhhgsehkrghougdrohhrghdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhtshdrihhnfhhrrgguvggrugdrohhrghenucevlhhushhtvghrufhiiigvpedt
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_235816_863660_EE6228D1 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.105.57.129 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Jeffery <andrew@aj.id.au>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMTEvMjAxOSAwNDoyOSwgSm9lbCBTdGFubGV5IHdyb3RlOgo+IFRoZSBhc3QyNjAwIG5v
IGxvbmdlciB1c2VzIGJpdCA0IGluIHRoZSBjb250cm9sIHJlZ2lzdGVyIHRvIGluZGljYXRlIGEK
PiAxTUh6IGNsb2NrIChJdCBub3cgY29udHJvbHMgd2VhdGhlciB0aGlzIHdhdGNoZG9nIGlzIHJl
c2V0IGJ5IGEgU09DCj4gcmVzZXQpLiBUaGlzIG1lYW5zIHdlIGRvIG5vdCB3YW50IHRvIHNldCBp
dC4gSXQgYWxzbyBkb2VzIG5vdCBuZWVkIHRvIGJlCj4gc2V0IGZvciB0aGUgYXN0MjUwMCwgYXMg
aXQgaXMgcmVhZC1vbmx5IG9uIHRoYXQgU29DLgo+IAo+IFRoZSBjb21tZW50IG5leHQgdG8gdGhl
IGNsb2NrIHJhdGUgc2VsZWN0aW9uIHdhbmRlcmVkIGF3YXkgZnJvbSB3aGVyZSBpdAo+IHdhcyBz
ZXQsIHNvIHB1dCBpdCBiYWNrIG5leHQgdG8gdGhlIHJlZ2lzdGVyIHNldHRpbmcgaXQncyBkZXNj
cmliaW5nLgo+IAo+IEZpeGVzOiBiMzUyOGI0ODc0NDggKCJ3YXRjaGRvZzogYXNwZWVkOiBBZGQg
c3VwcG9ydCBmb3IgQVNUMjYwMCIpCj4gU2lnbmVkLW9mZi1ieTogSm9lbCBTdGFubGV5IDxqb2Vs
QGptcy5pZC5hdT4KCgoKUmV2aWV3ZWQtYnk6IEPDqWRyaWMgTGUgR29hdGVyIDxjbGdAa2FvZC5v
cmc+CgoKPiAtLS0KPiAgZHJpdmVycy93YXRjaGRvZy9hc3BlZWRfd2R0LmMgfCAxNiArKysrKysr
KysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3dhdGNoZG9nL2FzcGVlZF93ZHQuYyBiL2Ry
aXZlcnMvd2F0Y2hkb2cvYXNwZWVkX3dkdC5jCj4gaW5kZXggNGVjMDkwNmJmMTJjLi43ZTAwOTYw
NjUxZmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy93YXRjaGRvZy9hc3BlZWRfd2R0LmMKPiArKysg
Yi9kcml2ZXJzL3dhdGNoZG9nL2FzcGVlZF93ZHQuYwo+IEBAIC0yNTgsMTEgKzI1OCw2IEBAIHN0
YXRpYyBpbnQgYXNwZWVkX3dkdF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+
ICAJaWYgKElTX0VSUih3ZHQtPmJhc2UpKQo+ICAJCXJldHVybiBQVFJfRVJSKHdkdC0+YmFzZSk7
Cj4gIAo+IC0JLyoKPiAtCSAqIFRoZSBhc3QyNDAwIHdkdCBjYW4gcnVuIGF0IFBDTEssIG9yIDFN
SHouIFRoZSBhc3QyNTAwIG9ubHkKPiAtCSAqIHJ1bnMgYXQgMU1Iei4gV2UgY2hvc2UgdG8gYWx3
YXlzIHJ1biBhdCAxTUh6LCBhcyB0aGVyZSdzIG5vCj4gLQkgKiBnb29kIHJlYXNvbiB0byBoYXZl
IGEgZmFzdGVyIHdhdGNoZG9nIGNvdW50ZXIuCj4gLQkgKi8KPiAgCXdkdC0+d2RkLmluZm8gPSAm
YXNwZWVkX3dkdF9pbmZvOwo+ICAJd2R0LT53ZGQub3BzID0gJmFzcGVlZF93ZHRfb3BzOwo+ICAJ
d2R0LT53ZGQubWF4X2h3X2hlYXJ0YmVhdF9tcyA9IFdEVF9NQVhfVElNRU9VVF9NUzsKPiBAQCAt
Mjc4LDcgKzI3MywxNiBAQCBzdGF0aWMgaW50IGFzcGVlZF93ZHRfcHJvYmUoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldikKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCWNvbmZpZyA9IG9mZGlk
LT5kYXRhOwo+ICAKPiAtCXdkdC0+Y3RybCA9IFdEVF9DVFJMXzFNSFpfQ0xLOwo+ICsJLyoKPiAr
CSAqIE9uIGNsb2NrIHJhdGVzOgo+ICsJICogIC0gYXN0MjQwMCB3ZHQgY2FuIHJ1biBhdCBQQ0xL
LCBvciAxTUh6Cj4gKwkgKiAgLSBhc3QyNTAwIG9ubHkgcnVucyBhdCAxTUh6LCBoYXJkIGNvZGlu
ZyBiaXQgNCB0byAxCj4gKwkgKiAgLSBhc3QyNjAwIGFsd2F5cyBydW5zIGF0IDFNSHoKPiArCSAq
Cj4gKwkgKiBTZXQgdGhlIGFzdDI0MDAgdG8gcnVuIGF0IDFNSHogYXMgaXQgc2ltcGxpZmllcyB0
aGUgZHJpdmVyLgo+ICsJICovCj4gKwlpZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJh
c3BlZWQsYXN0MjQwMC13ZHQiKSkKPiArCQl3ZHQtPmN0cmwgPSBXRFRfQ1RSTF8xTUhaX0NMSzsK
PiAgCj4gIAkvKgo+ICAJICogQ29udHJvbCByZXNldCBvbiBhIHBlci1kZXZpY2UgYmFzaXMgdG8g
ZW5zdXJlIHRoZQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
