Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F828D0A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uyRRh5JLcwpK70eXD9i9kVXnbmwDiY9Lv5kOdGPZYag=; b=Vf+AYHnyBp5qMM
	q0chp1etYBHZT2Uq2Ug5WzZOo5suJMhx3kDkAh3eLBRbxqlcjvgLSB+7U7BrNhrAd8XRlVRM1iG56
	0KPUXzks1bHc9XJ3wcove03PTrHio1/vyGk/gOfBAt2UA+U/KLkoRHSFyQ3qQd0rlE/42bMBl1QA7
	f2jm4BHnFT5cEe9wbeMs6ueC0VDspxJEsBONwekGEHjvJHjsnubIFb8MDqTDHGi/ccOdV1oVl2Qvd
	nh30p6C+jGZfIPdIXgAy5oSZhTQ8OwNCTuqbUJrUOfpGdGs+Icfpj4FzojRktWBWuDyXTkY4tssKb
	ZGlkhjms0NuZV0/exM4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqPL-0001pL-Vq; Wed, 14 Aug 2019 10:21:32 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqOc-0001Kt-7R
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:20:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id r20so31221811ota.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:20:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5lSlPgg3xC115OeKKRGpU0WE/kSSKOVNwSmAsaRTAXc=;
 b=PnyJ30aS6+uOzH76/AfSPcyRtnxYsJZqdqhN5PbncUb6rN5BuBu8Pf6ggWyjg8oGIM
 WqFr7MLngtSatGN1QyZpeFluKE5C1IEJLJ5Vabqdpi2ZmOnlk1g4+SDt0vya8QP4wqqa
 z4IB+RFh+EigQdxqdEosyTeZRY2UKNxGO5TjtdoJ8B653ma1l23w8z96usiGycgf2GPP
 ECbThD0qtuv6FcNbhsNwp6Vjana8HzpBpfer2myuHJ+lR9WPrOpFbluHEalKpMM/fASB
 6p/43aLmLDOc4APtvKPStrXaL09ZyTu1eQLoqeoNEsjADkAd7CS0cVn03IyECpr2cBJE
 wvag==
X-Gm-Message-State: APjAAAU98Mbp9H0Nnm5wcK20fTZ53JHQvZTbdTt998nwnlyOOrdfu01W
 2n0HJdWXSIjuljse7eSEuJSH7v2mm7s80IkMX/g=
X-Google-Smtp-Source: APXvYqwp8nNz8kvOejBIjZmKo0UwGElSRWItdKkBCkr/K+Q1M2uPBbQY/Jc+cxAK9yij+FCXBzlHPzvd6LtG7yuVlAQ=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr26113661otk.145.1565778044448; 
 Wed, 14 Aug 2019 03:20:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190814092757.13726-1-geert+renesas@glider.be>
 <20190814092924.13857-1-geert+renesas@glider.be>
 <20190814092924.13857-2-geert+renesas@glider.be>
 <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
In-Reply-To: <20190814093558.xlx5ck54dw2dgb6k@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Aug 2019 12:20:33 +0200
Message-ID: <CAMuHMdWNj-H9B8E9=NeCgLracBuJODfPyBYJERh=vt4oNFUkGw@mail.gmail.com>
Subject: Re: [PATCH 1/3] serial: atmel: Don't check for mctrl_gpio_to_gpiod()
 returning error
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_032046_299181_AA7DA9DC 
X-CRM114-Status: GOOD (  21.12  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Richard Genoud <richard.genoud@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 NXP Linux Team <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMTE6MzYgQU0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gV2VkLCBBdWcg
MTQsIDIwMTkgYXQgMTE6Mjk6MjJBTSArMDIwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
ID4gU2luY2UgY29tbWl0IDFkMjY3ZWE2NTM5ZjI2NjMgKCJzZXJpYWw6IG1jdHJsLWdwaW86IHNp
bXBsaWZ5IGluaXQKPiA+IHJvdXRpbmUiKSwgbWN0cmxfZ3Bpb19pbml0KCkgcmV0dXJucyBmYWls
dXJlIGlmIHRoZSBhc3NpZ25tZW50IHRvIGFueQo+ID4gbWVtYmVyIG9mIHRoZSBncGlvIGFycmF5
IHJlc3VsdHMgaW4gYW4gZXJyb3IgcG9pbnRlci4KPiA+IFNpbmNlIGNvbW1pdCBjMzU5NTIyMTk0
NTkzODE1ICgic2VyaWFsOiBtY3RybF9ncGlvOiBBdm9pZCBwcm9iZSBmYWlsdXJlcwo+ID4gaW4g
Y2FzZSBvZiBtaXNzaW5nIGdwaW9saWIiKSwgbWN0cmxfZ3Bpb190b19ncGlvZCgpIHJldHVybnMg
TlVMTCBpbiB0aGUKPiA+ICFDT05GSUdfR1BJT0xJQiBjYXNlLgo+ID4gSGVuY2UgdGhlcmUgaXMg
bm8gbG9uZ2VyIGEgbmVlZCB0byBjaGVjayBmb3IgbWN0cmxfZ3Bpb190b19ncGlvZCgpCj4gPiBy
ZXR1cm5pbmcgYW4gZXJyb3IgdmFsdWUuICBBIHNpbXBsZSBOVUxMIGNoZWNrIGlzIHN1ZmZpY2ll
bnQuCj4gPgo+ID4gVGhpcyBmb2xsb3dzIHRoZSBzcGlyaXQgb2YgY29tbWl0IDQ0NWRmN2ZmM2Zk
MWEwYTkgKCJzZXJpYWw6IG1jdHJsLWdwaW86Cj4gPiBkcm9wIHVzYWdlcyBvZiBJU19FUlJfT1Jf
TlVMTCIpIGluIHRoZSBtY3RybC1ncGlvIGNvcmUuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogR2Vl
cnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYyB8IDEyICsrKystLS0tLS0tLQo+ID4gIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJpYWwuYyBiL2RyaXZlcnMvdHR5
L3NlcmlhbC9hdG1lbF9zZXJpYWwuYwo+ID4gaW5kZXggMTlhODVkNmZlM2QyMDU0MS4uZTk2MjBh
ODExNjZiN2RjMSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvdHR5L3NlcmlhbC9hdG1lbF9zZXJp
YWwuYwo+ID4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL2F0bWVsX3NlcmlhbC5jCj4gPiBAQCAt
MzAzLDMyICszMDMsMjggQEAgc3RhdGljIHVuc2lnbmVkIGludCBhdG1lbF9nZXRfbGluZXNfc3Rh
dHVzKHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQpCj4gPgo+ID4gICAgICAgbWN0cmxfZ3Bpb19nZXQo
YXRtZWxfcG9ydC0+Z3Bpb3MsICZyZXQpOwo+ID4KPiA+IC0gICAgIGlmICghSVNfRVJSX09SX05V
TEwobWN0cmxfZ3Bpb190b19ncGlvZChhdG1lbF9wb3J0LT5ncGlvcywKPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBVQVJUX0dQSU9fQ1RTKSkpIHsKPiA+
ICsgICAgIGlmIChtY3RybF9ncGlvX3RvX2dwaW9kKGF0bWVsX3BvcnQtPmdwaW9zLCBVQVJUX0dQ
SU9fQ1RTKSkgewo+ID4gICAgICAgICAgICAgICBpZiAocmV0ICYgVElPQ01fQ1RTKQo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIHN0YXR1cyAmPSB+QVRNRUxfVVNfQ1RTOwo+ID4gICAgICAgICAg
ICAgICBlbHNlCj4gPiAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzIHw9IEFUTUVMX1VTX0NU
UzsKPiA+ICAgICAgIH0KPgo+IFRoZSBjaGFuZ2UgaXMgZmluZSwgYnV0IGl0IHNlZW1zIHRoZSBh
dG1lbCBkcml2ZXIgZG9lc24ndCB1c2UgbWN0cmxfZ3Bpbwo+IGFzIGV4cGVjdGVkIChhdCBsZWFz
dCBhcyBleHBlY3RlZCBieSBtZSkuIElNSE8gZHJpdmluZyB0aGUgaGFyZHdhcmUKPiBmdW5jdGlv
biBvZiB0aGUgQ1RTIHBpbiBzaG91bGRuJ3QgYmUgY29uZGl0aW9uYWwgb24gdGhlIHByZXNlbmNl
IG9mIGEKPiBjdHMtZ3Bpby4gSXMgdGhlcmUgYSByZWFzb24gbm90IHRvIGp1c3QgZHJvcCB0aGUg
aWYgY29tcGxldGVseT8KClRoZSBhYm92ZSBjb2RlIHJldHVybnMgdGhlIGhhcmR3YXJlIHN0YXR1
cyBpZiBDVFMgaXMgbm90IGEgR1BJTywgYW5kCnJldHVybnMgKG92ZXJyaWRlcyB3aXRoKSB0aGUg
R1BJTyBzdGF0dXMgaWYgQ1RTIGlzIGEgR1BJTy4KSXNuJ3QgdGhhdCBjb3JyZWN0LCBvciBhbSBJ
IG1pc3Npbmcgc29tZXRoaW5nPwoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAg
ICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2Yg
TGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNv
bnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2Vy
LiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFt
bWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
