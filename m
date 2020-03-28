Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFC61965FA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 13:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b9I0SLMKW9rE1eTW9u7F//nfrIwqQO8/Fna1pKWvR2Y=; b=OvtZMwvkqSBF7ybstof3wiKYY
	/ZaGn5MJYSvfAM1GZDVwF5ovpWrFQmdqtMtzWQc4D/HPL299hpiD7hpjI4HyeLAe69irU8RwwKTZx
	dSsTLygY673d5VrUQNzYnqsO7dxN3wsHMTq0DO4iS58PxtNiHb4FMJlW/IW3E6iSLqdnH2a5RKjTd
	r40iwYU8v6x/FClCuml9X94/f/6HMxh8FgB8hHrBD1u3VrLK529GwxK96vd7bWv/HdRyhOQZrPNtU
	GXpT117LdEbmOPwEfgB1M25OKG2/G4Xw2BB7n3CH3cYJM8HiA+eSCx5j73mZqHD5MK13f8rhZAsFu
	nGRf3jR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIADE-0001cI-38; Sat, 28 Mar 2020 12:05:16 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIACy-00015V-LG
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 12:05:04 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 06D1423058;
 Sat, 28 Mar 2020 13:04:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1585397092;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n5jtDDhzPSvYKIS+PmQfH6uIuXE3eV4q3g/zF9Fsvio=;
 b=XLgcUGYRO9K8MDB5bv0eN6E/rPVGT7+8hpRkYKa0oYK7kqG+J82GWy9Z9UrVXXM2d3TY/l
 44dxqw9vOcjFA43tDjkZeTHYvo/ZL/wck9Z06bEN5KblEyL2ihn4+V5olaW8sgt5tfgn5X
 sAEssrEkn0SCRxZcAsyH0d9PcQckI6U=
MIME-Version: 1.0
Date: Sat, 28 Mar 2020 13:04:50 +0100
From: Michael Walle <michael@walle.cc>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH 12/18] gpio: add support for the sl28cpld GPIO controller
In-Reply-To: <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
References: <20200317205017.28280-1-michael@walle.cc>
 <20200317205017.28280-13-michael@walle.cc>
 <CAMpxmJW770v6JLdveEe1hkgNEJByVyArhorSyUZBYOyFiVyOeg@mail.gmail.com>
Message-ID: <ef10a6f07f093c282df7fe94057cc7c7@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 06D1423058
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[21]; NEURAL_HAM(-0.00)[-0.578];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_050501_879024_8183D8A3 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Marc Zyngier <maz@kernel.org>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 linux-devicetree <devicetree@vger.kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Guenter Roeck <linux@roeck-us.net>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jason Cooper <jason@lakedaemon.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmFydG9zeiwKCkFtIDIwMjAtMDMtMTggMTA6MTQsIHNjaHJpZWIgQmFydG9zeiBHb2xhc3pl
d3NraToKPiB3dC4sIDE3IG1hciAyMDIwIG8gMjE6NTAgTWljaGFlbCBXYWxsZSA8bWljaGFlbEB3
YWxsZS5jYz4gbmFwaXNhxYIoYSk6Cj4+IAo+PiBUaGlzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIEdQ
SU8gY29udHJvbGxlciBvZiB0aGUgc2wyOCBib2FyZCBtYW5hZ2VtZW50Cj4+IGNvbnRyb2xsZXIu
IFRoaXMgZHJpdmVyIGlzIHBhcnQgb2YgYSBtdWx0aS1mdW5jdGlvbiBkZXZpY2UuCj4+IAo+PiBT
aWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPgo+IAo+IEhpIE1p
Y2hhZWwsCj4gCj4gdGhhbmtzIGZvciB0aGUgZHJpdmVyLiBQbGVhc2UgdGFrZSBhIGxvb2sgYXQg
c29tZSBjb21tZW50cyBiZWxvdy4KPiAKPj4gLS0tCgpbLi5dCgo+PiArI2RlZmluZSBHUElPX1JF
R19ESVIgICAwCj4+ICsjZGVmaW5lIEdQSU9fUkVHX09VVCAgIDEKPj4gKyNkZWZpbmUgR1BJT19S
RUdfSU4gICAgMgo+PiArI2RlZmluZSBHUElPX1JFR19JRSAgICAzCj4+ICsjZGVmaW5lIEdQSU9f
UkVHX0lQICAgIDQKPiAKPiBUaGVzZSB2YWx1ZXMgd291bGQgYmUgbW9yZSBjbGVhciBpZiB0aGV5
IHdlcmUgZGVmaW5lZCBhcyBoZXguCj4gCj4+ICsKPj4gKyNkZWZpbmUgR1BJX1JFR19JTiAgICAg
MAo+PiArCj4+ICsjZGVmaW5lIEdQT19SRUdfT1VUICAgIDAKPiAKPiBQbGVhc2UgYWxzbyB1c2Ug
YSBjb21tb24gcHJlZml4IGV2ZW4gZm9yIGRlZmluZXMuCgpUaGUgR1BJT18sIEdQSV8gYW5kIEdQ
T18gcHJlZml4ZXMgY29ycmVzcG9uZHMgdG8gdGhlIGRpZmZlcmVudApmbGF2b3Vycy4gRG8gdGhl
eSBzdGlsbCBuZWVkIGEgY29tbW9uIHByZWZpeD8gSWUuIHRoZSBHUElfUkVHX0lOCmhhcyBub3Ro
aW5nIHRvIGRvIHdpdGggR1BPX1JFR19PVVQsIG5vciBoYXMgYm90aCBzb21ldGhpbmcKdG8gZG8g
d2l0aCB0aGUgR1BJT19SRUdfSU4gYW5kIEdQSU9fUkVHX09VVC4gSSBjb3VsZCBwcmVmaXggdGhl
bQp3aXRoIFNMMjhDUExEXyB0aG91Z2guIEJ1dCBJIGRvbid0IGtub3cgaWYgdGhhdCBpcyB3aGF0
IHlvdSBoYWQKaW4gbWluZCBiZWNhdXNlIHRoZW4gdGhleSB3b3VsZCBiZSBTTDI4Q1BMRF9HUElP
X1JFR19JTiBhbmQKU0wyOENQTERfR1BJX1JFR19JTiBmb3IgZXhhbXBsZS4KCi1taWNoYWVsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
