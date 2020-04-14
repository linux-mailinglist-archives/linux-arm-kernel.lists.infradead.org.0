Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56DC1A8BA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 21:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zU262Gy5tD4+4C364w8JYRoSujhMncXF2QRAi0FEHxQ=; b=IJkQ1tWe/Gd7kyBydGOnm10iv
	W3XymiNCMzq8r5GtFIT3f4FeAaEVyp2o6SrGOc8aZprpyCEgeJGBCvAIxOtqvH4GuMD9y0+w7ARQ+
	tSVdxWN9Yay6M1jGpGptifPF4ziEC1QPYfWUDypR5CIxPNN/N2mxE0gvAbZy3RNes/xeYVwZKH4mH
	03OsWtsZzwsgOdcfJPfwBO7AvRxVnuhGHxcXcYArkK/H2eYYtyJDOai0Ex9U5N75ay+HXTAWdbKIG
	MqqEiAP+TWNYM5jrpXwCDC8T6FiHbfrzgI9nmke/u+5thpWOyHD1+sFWlriEkWjL8QWWxDsMieTd0
	O/Y8r7Axw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORgX-0002CT-7w; Tue, 14 Apr 2020 19:57:29 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORgO-0002Ba-Cf
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 19:57:21 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 6B92922FEC;
 Tue, 14 Apr 2020 21:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1586894236;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=c1MxhBoeYs71xwy2H0AJkghL+7Y+1QwLOd9ofZWf8mY=;
 b=oYyi/K9Wgv1J8oUv562gbV/e/cxfMAv1K6H8unRKColnTKhwpm+o2zuVXXywnycQemE920
 49lVQd/oeC++cP1U8UAjd2wqxmRkE+CsXw4zAXo8aqoBXwRTVNIy+ObJKwMDB2s3LXJS0A
 SUYA2YwD+G6uEd0VIP7BN8x0gr1wjC0=
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 21:57:15 +0200
From: Michael Walle <michael@walle.cc>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <62d157198a75a59ada15c496deeab49b@walle.cc>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
 <CAMpxmJW1x4Orh1BZ4TUoCsYeaAAZ4NBUNvoMG9JgP0iLvXTOtg@mail.gmail.com>
 <62d157198a75a59ada15c496deeab49b@walle.cc>
Message-ID: <eab972adf53bbac20b5a9e613fcfb5b0@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 6B92922FEC
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-0.400];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_125720_585472_6C0570FA 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyaywgSGkgQmFydG9zeiwgSGkgTGludXMsCgpBbSAyMDIwLTA0LTE0IDIwOjQxLCBzY2hy
aWViIE1pY2hhZWwgV2FsbGU6Cj4gQW0gMjAyMC0wNC0xNCAxOTowMCwgc2NocmllYiBCYXJ0b3N6
IEdvbGFzemV3c2tpOgo+PiB3dC4sIDE0IGt3aSAyMDIwIG8gMTI6MDcgTWljaGFlbCBXYWxsZSA8
bWljaGFlbEB3YWxsZS5jYz4gbmFwaXNhxYIoYSk6Cj4+PiA+Pgo+Pj4gPj4gU28gdGhlIGJlc3Qg
ZnJvbSBhIHVzZXIgcGVyc3BlY3RpdmUgSSd2ZSBjb3VsZCBjb21lIHVwIHdpdGggd2FzOgo+Pj4g
Pj4KPj4+ID4+ICAgIC0+YmFzZV9yZWcgPSBHUElPX1JFR01BUF9BRERSKGFkZHIpOwo+Pj4gPj4K
Pj4+ID4+IEknbSBvcGVuIGZvciBzdWdnZXN0aW9ucy4KPj4+ID4+Cj4+PiA+Cj4+PiA+IE1heWJl
IHNldHRpbmcgdGhlIHBvaW50ZXIgdG8gRVJSX1BUUigtRU5PRU5UKSB3aGljaCB3aWxsIHJlc3Vs
dCBpbgo+Pj4gPiBJU19FUlIoKSByZXR1cm5pbmcgdHJ1ZT8KPj4+IAo+Pj4gVW5mb3J0dW5hdGx5
LCBpdHMgbm90IGEgcG9pbnRlciwgYnV0IG9ubHkgYSByZWd1bGFyIHVuc2lnbmVkIGludCAoaWUK
Pj4+IHRoZSB0eXBlIHRoZSByZWdtYXAgQVBJIGhhcyBmb3IgaXRzICJyZWciIHByb3BlcnR5KS4g
SXQgY291bGQgYmUgYQo+Pj4gcG9pbnRlciBvZiBjb3Vyc2UgYnV0IHRoZW4gdGhlIHVzZXIgd291
bGQgaGF2ZSB0byBhbGxvY2F0ZSBhZGRpdGlvbmFsCj4+PiBtZW1vcnkuCj4+PiAKPj4+IC1taWNo
YWVsCj4+PiAKPj4gCj4+IEVlaywgb2YgY291cnNlIGl0J3Mgbm90IGEgcG9pbnRlci4gSWYgcG9z
c2libGUgSSdkIGxpa2UgdG8gYXZvaWQgdGhpcwo+PiBHUElPX1JFR01BUF9BRERSKCkgbWFjcm8s
IHNvIGhvdyBhYm91dCBoYXZpbmcgc29tZSBzZXBhcmF0ZSBmaWVsZCBmb3IKPj4gaW52YWxpZCBv
ZmZzZXRzIG1ha2luZyBldmVyeSBvZmZzZXQgJ3ZhbGlkJyBieSBkZWZhdWx0Pwo+IAo+IElNSE8g
dGhpcyBoYXMgdGhlIHNhbWUgcHJvYmxlbXMgYXMgbWVudGlvbmVkIGluIHRoZSByZXNwb25zZSB0
byBNYXJrJ3MKPiBpZGVhLiBOb3JtYWxseSwgdGhlIHVzZXIgc2V0cyBvbmx5IHNvbWUgYWRkcmVz
c2VzLCB0aHVzIGhlIGhhcyB0byBtYXJrCj4gYWxsIG90aGVyIGFzIGludmFsaWQuIEFuZCBpZiB5
b3UgYWRkIGFub3RoZXIgYWRkcmVzcywgeW91IGhhdmUgdG8gdG91Y2gKPiBhbGwgdGhlIGRyaXZl
cnMgdG8gbWFyayBpdCBhcyBpbnZhbGlkLgo+IAo+IFdlIGNvdWxkIGFkZCBzb21lIGZvcmNlIGJp
dHMgbGlrZSB0aGUgInVzZV9hY2siIGZsYWcgaW4gdGhlIGJncGlvIAo+IGRyaXZlciwKPiB3aGVy
ZSB5b3UgY2FuIGZvcmNlIHRoZSB1c2Ugb2YgdGhlIHZhbHVlIDAuIEJ1dCBJJ2QgcmVhbGx5IGxp
a2UgdG8gZmluZAo+IGEgYmV0dGVyIHdheS4uCgpTbyB3aGF0IGFib3V0IHRoZSBmb2xsb3dpbmc6
CgojZGVmaW5lIEdQSU9fUkVHTUFQX0FERFJfWkVSTyAodW5zaWduZWQgaW50KSgtMSkKClNvIHRo
aXMgd2F5IHRoZSB1c2VyIG1pZ2h0IGFzc2lnbiB0aGUgYmFzZSBhZGRyZXNzZXMgdGhlIG5vcm1h
bCB3YXkKZXhjZXB0IHdoZW4gaGUgd2FudHMgdG8gdXNlIHplcm8sIGluIHRoYXQgY2FzZSBoZSBo
YXMgdG8gdXNlCgogICAtPmJhc2VfYWRyID0gR1BJT19SRUdNQVBfQUREUl9aRVJPOwoKZ3Bpby1y
ZWdtYXAuYyBjb3VsZCB1c2UgdGhlbjoKCmlmIChiYXNlX2FkZHIpCiAgIHNvbWV0aGluZ191c2Vm
dWwoZ3Bpb19yZWdtYXBfYWRkcihiYXNlX2FkZHIpKTsKCnVuc2lnbmVkIGludCBncGlvX3JlZ21h
cF9hZGRyKHVuc2lnbmVkIGludCBhZGRyKQp7CiAgIHJldHVybiAoYWRkciA9PSBHUElPX1JFR01B
UF9BRERSX1pFUk8pID8gMCA6IGFkZHI7Cn0KCi1taWNoYWVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
