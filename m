Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54EE1F1477
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 10:28:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=du9/BaI9ghd92PegAzZVeqpWJq1QQoC+u/G81eJc5LE=; b=B1mROt38Y7bAli
	fyIt13PhDOHPVW/FVB4VYKpZGzU9cDvd+F7D1d/LS5eEymX5W+I3JcQPb5+HzrTp7ytYVDsVd5LHH
	WI1pdFX0cdKj890ob83fFoV2Ja++rAYx/5fEQbgimmdCB2CcT7sBMaqPPumdV6aB3Iqr9NehpyYiD
	5K4PJfRKbDzfzuogYAHzkp8O2ksdEJrv6uka0b33EvBYqN41nipBk8Px6rZgoc+bfp7HapCFbEjdt
	DMUh023e+a0bIPdAHTEb8qiwW05zT9Z7VoHF2Dv/b0b0qqnlisHyO2Wut3qVOh1z2M415AavhtV3L
	ny+SlUOLrcJY6HJXCSSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiD97-0000k9-LO; Mon, 08 Jun 2020 08:28:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiD8z-0000jS-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 08:28:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id p5so16358413wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 01:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Kba7qPUxHVUKOanqaaBgtcI9IxnJIhKLPI39GydfXUw=;
 b=o7x0iQeSI/uwP7xJ7s/u2wJNQdANwPbv2ta24+Sx1h0vxNF5HxpC3+25MhA0PQ8Gjl
 dKjm7vb2Ht1j7Gzu0kjzTdTBOdMnvlhGwosvxfPaDbiMq618LrkYB1ynOAiejE+KDUNt
 i+5NbQDjhNNpiCSMFE6TklC8DDvCNHDn4SfaILmPmsRiPxYivhSSIYqkRzoa5427VdA6
 lW+ze0WQ0JYHLZqvZB6IdbmgY6PPkzBJgypm9ki3yPY7YSf5EXjbhfVEjHE6wR+qbo6I
 dvp+IK2TyP9Nzuiun7EUGStVXIWuMjnL7q5BMOz+/5eHr+0DeFgljiQZMgpG6R9pGRYw
 12XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Kba7qPUxHVUKOanqaaBgtcI9IxnJIhKLPI39GydfXUw=;
 b=cR8CwQE+81/yFhLlb98oRASBSaZulKcPXZPkqPgF7FhPVKWcN965xmZDWCLd0+x9hJ
 +tH4nlMoeETR7wL1Wfks87cffR4JKxiYZ9NHTmeY71qdhBOm1T22VmLWCBL6/RQK5h3O
 Ju8L+GMYYZeM+j4HMeutaAFzHxvPsYb3eK9mIeTBu9ObR65hCUYBHG4ZIt5keyXWcmUJ
 7yHgT83pMJPSIFMG4+pVNDLpNSg005+kTMdYjSqLGxlSc3C6d1tJ4RfSNk4ZXooIvKK3
 6qyZ6LPgqHH1sr+kDHmkBsCYSqccH81Zyslng0AR1FCdEe1E0UJ+TQsuVpl8woVW75mN
 oa5g==
X-Gm-Message-State: AOAM532zzJoivTBC67OU74hH3ygwP5f3uogQpVzsd7LD4HdbqDvFCQcK
 OQ5s/PAPdIMVcCKaDPp5hb9kqg==
X-Google-Smtp-Source: ABdhPJwynnrOTei83pcLfW4D02VO6Er3aYpLlO//t7+3zbz9KWHvX2TYAeyuYi6k74iArY5EinOp8Q==
X-Received: by 2002:a5d:6750:: with SMTP id l16mr22217026wrw.295.1591604910095; 
 Mon, 08 Jun 2020 01:28:30 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id v27sm23608100wrv.81.2020.06.08.01.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 01:28:29 -0700 (PDT)
Date: Mon, 8 Jun 2020 09:28:27 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200608082827.GB3567@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc>
 <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc052a5c77171014ecc465b1da8b7ef8@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_012833_953679_0643CFB3 
X-CRM114-Status: GOOD (  31.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Mark Brown <broonie@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Um9iLCBzb21ldGhpbmcgZm9yIHlvdSBiZWxvdy4KCk9uIFNhdCwgMDYgSnVuIDIwMjAsIE1pY2hh
ZWwgV2FsbGUgd3JvdGU6Cj4gQW0gMjAyMC0wNi0wNiAxMzo0Niwgc2NocmllYiBNYXJrIEJyb3du
Ogo+ID4gT24gRnJpLCBKdW4gMDUsIDIwMjAgYXQgMTA6MDc6MzZQTSArMDIwMCwgTWljaGFlbCBX
YWxsZSB3cm90ZToKPiA+ID4gQW0gMjAyMC0wNi0wNSAxMjo1MCwgc2NocmllYiBNYXJrIEJyb3du
Ogo+ID4gCj4gPiA+ID4gSSBoYXZlIG5vIGlkZWEgd2hhdCB5b3UgYXJlIHRoaW5raW5nIG9mIHdo
ZW4geW91IHNheSAic2ltcGxlLXJlZ21hcCIgc28KPiA+ID4gPiBpdCBpcyBkaWZmaWN1bHQgdG8g
Y29tbWVudC4KPiA+IAo+ID4gPiBJIGd1ZXNzLCBMZWUgaXMgc3VnZ2VzdGluZyB0byBiZSBhYmxl
IHRvIGNyZWF0ZSBhIHJlZ21hcCBpbnN0YW5jZSB2aWEKPiA+ID4gZGV2aWNlIHRyZWUgKGFuZCBw
b3B1bGF0ZSBpdHMgY2hpbGQgbm9kZXM/KS4gTGlrZQo+ID4gPiAgIGNvbXBhdGlibGUgPSAic3lz
Y29uIiwgInNpbXBsZS1tZmQiOwo+ID4gPiBidXQgZm9yIGFueSByZWdtYXAsIG5vdCBqdXN0IE1N
SU8uCgpCaW5nbyEKCj4gPiBJIGRvbid0IHVuZGVyc3RhbmQgd2h5IHRoaXMgd291bGQgYmUgYW55
dGhpbmcgc2VwYXJhdGUgdG8KPiA+IHNpbXBsZS1tZmQuCj4gCj4gRG9uJ3QganVzdCBzaW1wbGUt
bWZkIHRlbGxzIHRoZSBvZiBjb3JlLCB0byBwcm9iZSB0aGUgY2hpbGRyZW4gdGhpcwo+IG5vZGU/
IFdoZXJlIGRvZXMgdGhlIHJlZ21hcCB0aGVuIGNvbWUgZnJvbT8KClJpZ2h0LiAgSSdtIHN1Z2dl
c3RpbmcgYSBtZWFucyB0byBleHRyYXBvbGF0ZSBjb21wbGV4IHNoYXJlZCBhbmQKc29tZXRpbWVz
IGludGVydHdpbmVkIGJhdGNoZXMgb2YgcmVnaXN0ZXIgc2V0cyB0byBiZSBjb25zdW1lZCBieQpt
dWx0aXBsZSAoc3ViLSlkZXZpY2VzIHNwYW5uaW5nIGRpZmZlcmVudCBzdWJzeXN0ZW1zLgoKQWN0
dWFsbHkgc2NyYXAgdGhhdC4gIFRoZSBtb3N0IGNvbW1vbiBjYXNlIEkgc2VlIGlzIGEgc2luZ2xl
IFJlZ21hcApjb3ZlcmluZyBhbGwgY2hpbGQtZGV2aWNlcy4gIEl0IHdvdWxkIGJlIGdyZWF0IGlm
IHRoZXJlIHdhcyBhIHdheSBpbgp3aGljaCB3ZSBjb3VsZCBtYWtlIGFuIGFzc3VtcHRpb24gdGhh
dCB0aGUgZW50aXJlIHJlZ2lzdGVyIGFkZHJlc3MKc3BhY2UgZm9yIGEgJ3RhZ2dlZCcgKE1GRCkg
ZGV2aWNlIGlzIHRvIGJlIHNoYXJlZCAodmlhIFJlZ21hcCkgYmV0d2VlbgplYWNoIG9mIHRoZSBk
ZXZpY2VzIGRlc2NyaWJlZCBieSBpdHMgY2hpbGQtbm9kZXMuICBQcm9iYWJseSBieSBwaWNraW5n
CnVwIG9uIHRoZSAnc2ltcGxlLW1mZCcgY29tcGF0aWJsZSBzdHJpbmcgaW4gdGhlIGZpcnN0IGlu
c3RhbmNlLgoKUm9iLCBpcyB0aGUgYWJvdmUgc29tZXRoaW5nIHlvdSB3b3VsZCBjb250ZW1wbGF0
ZT8KCk1pY2hhZWwsIGRvIHlvdXIgcmVnaXN0ZXIgYWRkcmVzc2VzIG92ZXJsYXAgaS5lLiBhcmUg
dGhleSBpbnRlcm1pbmdsZWQKd2l0aCBvbmUgYW5vdGhlcj8gIERvIG11bHRpcGxlIGNoaWxkIGRl
dmljZXMgbmVlZCBhY2Nlc3MgdG8gdGhlIHNhbWUKcmVnaXN0ZXJzIGkuZS4gYXJlIHRoZXkgc2hh
cmVkPwoKPiA+ID4gQnV0LCB0aGVyZSBpcyBtb3JlIGluIG15IGRyaXZlcjoKPiA+ID4gICgxKSB0
aGVyZSBpcyBhIHZlcnNpb24gY2hlY2sKCklmIHdlIGNhbiByaWQgdGhlIFJlZ21hcCBkZXBlbmRl
bmN5LCB0aGVuIGNyZWF0aW5nIGFuIGVudGlyZSBkcml2ZXIgdG8KY29uZHVjdCBhIHZlcnNpb24g
Y2hlY2sgaXMgdW5qdXN0aWZpYWJsZS4gIFRoaXMgY291bGQgYmVjb21lIGFuIGlubGluZQpmdW5j
dGlvbiB3aGljaCBpcyBjYWxsZWQgYnkgZWFjaCBvZiB0aGUgc3ViLWRldmljZXMgaW5zdGVhZCwg
Zm9yCmV4YW1wbGUuCgo+ID4gPiAgKDIpIHRoZXJlIGlzIGFub3RoZXIgZnVuY3Rpb24gZm9yIHdo
aWNoIHRoZXJlIGlzIG5vIHN1aXRhYmxlIGxpbnV4Cj4gPiA+ICAgICAgc3Vic3lzdGVtIEknbSBh
d2FyZSBvZiBhbmQgdGh1cyB3aGljaCBJJ2QgbGlrZSB0byB1cyBzeXNmcwo+ID4gPiAgICAgIGF0
dHJpYnV0ZXMgZm9yOiBUaGlzIGNvbnRyb2xsZXIgc3VwcG9ydHMgMTYgbm9uLXZvbGF0aWxlCj4g
PiA+ICAgICAgY29uZmlndXJhdGlvbiBiaXRzLiAodGhpcyBpcyBzdGlsbCBUQkQpCgpUaGVyZSBp
cyBhIHBsYWNlIGZvciBldmVyeXRoaW5nIGluIExpbnV4LgoKV2hhdCBkbyB0aGVzZSBiaXRzIGNv
bmZpZ3VyZT8KCj4gPiBUQkggSSdkIGFsc28gc2F5IHRoYXQgdGhlIGVudW1lcmF0aW9uIG9mIHRo
ZSBzdWJkZXZpY2VzIGZvciB0aGlzCj4gPiBkZXZpY2Ugc2hvdWxkIGJlIGluIHRoZSBkZXZpY2Ug
cmF0aGVyIHRoYW4gdGhlIERULCB0aGV5IGRvbid0Cj4gPiBzZWVtIHRvIGJlIHRoaW5ncyB0aGF0
IGV4aXN0IG91dHNpZGUgb2YgdGhpcyBvbmUgZGV2aWNlLgo+IAo+IFdlJ3JlIGdvaW5nIGNpcmNs
ZXMgaGVyZSwgZm9ybWVybHkgdGhleSB3ZXJlIGVudW1lcmF0ZWQgaW4gdGhlIE1GRC4KPiBZZXMs
IHRoZXkgYXJlIGRldmljZXMgd2hpY2ggYXJlbid0IGxpa2VseSBiZSB1c2VkIG91dHNpZGUgYQo+
ICJzbDI4Y3BsZCIsIGJ1dCB0aGVyZSBtaWdodCB0aGVyZSBtaWdodCBiZSBvdGhlciB2ZXJzaW9u
cyBvZiB0aGUKPiBzbDI4Y3BsZCB3aXRoIG90aGVyIGNvbXBvbmVudHMgb24gZGlmZmVyZW50IGJh
c2UgYWRkcmVzc2VzLiBJCj4gZG9uJ3QgY2FyZSBpZiB0aGV5IGFyZSBlbnVtZXJhdGVkIGluIERU
IG9yIE1GRCwgYWN0dWFsbHksIEknZAo+IHByZWZlciB0aGUgbGF0dGVyLiBfQnV0XyBJIHdvdWxk
IGxpa2UgdG8gaGF2ZSB0aGUgZGV2aWNlIHRyZWUKPiBwcm9wZXJ0aWVzIGZvciBpdHMgc3ViZGV2
aWNlcywgZS5nLiB0aGUgb25lcyBmb3IgdGhlIHdhdGNoZG9nIG9yCj4gd2hhdGV2ZXIgY29tcG9u
ZW50cyB0aGVyZSBtaWdodCBiZSBpbiB0aGUgZnV0dXJlLgoKWy4uLl0KCj4gTUZEIGNvcmUgY2Fu
Cj4gbWF0Y2ggYSBkZXZpY2UgdHJlZSBub2RlIHRvZGF5OyBidXQgb25seSBvbmUgcGVyIHVuaXF1
ZSBjb21wYXRpYmxlCj4gc3RyaW5nLiBTbyB3aGF0IHNob3VsZCBJIHVzZSB0byBkaWZmZXJlbnRp
YXRlIHRoZSBkaWZmZXJlbnQKPiBzdWJkZXZpY2VzPwoKUmlnaHQuICBJIGhhdmUgYmVlbiBhd2Fy
ZSBvZiB0aGlzIGlzc3VlLiAgVGhlIG9ubHkgc3VpdGFibGUgc29sdXRpb24KdG8gdGhpcyB3b3Vs
ZCBiZSB0byBtYXRjaCBvbiAncmVnJy4KCkZZSTogSSBwbGFuIHRvIGZpeCB0aGlzLgoKSWYgeW91
ciByZWdpc3RlciBtYXAgbmVlZHMgdG8gY2hhbmdlLCB0aGVuIEkgc3VnZ2VzdCB0aGF0IHRoaXMg
aXMKZWl0aGVyIGEgbmV3IGRldmljZSBvciBhdCBsZWFzdCBhIGRpZmZlcmVudCB2ZXJzaW9uIG9m
IHRoZSBkZXZpY2UgYW5kCndvdWxkIGFsc28gaGF2ZSB0byBiZSByZXByZXNlbnRlZCBhcyBkaWZm
ZXJlbnQgKHN1Yi0pbWZkX2NlbGwuCgo+IFJvYiBzdWdnZXN0ZWQgdGhlIGludGVybmFsIG9mZnNl
dCwgd2hpY2ggSSBkaWQgaGVyZS4KCkZXSVcsIEkgZG9uJ3QgbGlrZSB0aGlzIGlkZWEuICBEVHMg
c2hvdWxkIG5vdCBoYXZlIHRvIGJlIG1vZGlmaWVkCihlaXRoZXIgaW4gdGhlIGZpcnN0IGluc3Rh
bmNlIG9yIHN1YnNlcXVlbnRseSkgb3Igc3BlY2lmaWNhbGx5CmRlc2lnbmVkIHRvIHBhdGNoIGlu
YWRlcXVhY2llcyBpbiBhbnkgZ2l2ZW4gT1MuCgo+IEJ1dCB0aGVuLCB0aGVyZSBpcyBsZXNzIHVz
ZSBpbiBkdXBsaWNhdGluZyB0aGUgb2Zmc2V0cyBpbiB0aGUgTUZECj4ganVzdCB0byBoYXZlIHRo
ZSBNRkQgZW51bWVyYXRlIHRoZSBzdWJkZXZpY2VzIGFuZCB0aGVuIG1hdGNoCj4gdGhlIGRldmlj
ZSB0cmVlIG5vZGVzIGFnYWluc3QgaXQuIEkgY2FuIGp1c3QgdXNlCj4gb2ZfcGxhdGZvcm1fcG9w
dWxhdGUoKSB0byBlbnVtZXJhdGUgdGhlIGNoaWxkcmVuIGFuZCBJIHdvbid0Cj4gaGF2ZSB0byBk
dXBsaWNhdGUgdGhlIGJhc2UgYWRkcmVzc2VzLgoKV2hpY2ggaXMgZmluZS4gIEhvd2V2ZXIgdGhp
cyBjYXVzZXMgYSBkaWZmZXJlbnQgaXNzdWUgZm9yIHlvdS4gIEJ5CnN0cmlwcGluZyBvdXQgdGhl
IE1GRCBjb2RlIHlvdSByZW5kZXIgdGhlIE1GRCBwb3J0aW9uIHNlZW1pbmdseQpzdXBlcmZsdW91
cy4gIEFub3RoZXIgaXNzdWUgZHJpdmVyIGF1dGhvcnMgY29tbW9ubHkgY29udGVuZCB3aXRoLgoK
PiBTbyBoZXJlIHdlIGFyZSwgYW55IGlkZWFzIGFwcHJlY2lhdGVkLgoKV29ya2luZyBvbiBpdCEK
Ci0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFk
CkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cg
TGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
