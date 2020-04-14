Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132C21A7831
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zDhJOLWX8Y6sAJoaIF2okZHaHZ3gDpH0WVsIZPFy/7Q=; b=lE63EzxsGrDoPdIY4Dg040XRC
	3R1+xA82iF1/1N7YARDWq4REYdi5bK6acsji7J+StGnx+fxGdQNs/dCR9ZNPAbNfbVFq1xbLba1q4
	Z/LRZ152RqSPsuqlwTyv+6wE5LUhNylrmJA6Ygfx6wJL5hxezJ2rSIYqb9IHRlxKi+eMQmd8xM/mH
	lDflhnXrbyDnkzMOtfgsJo76Lg2XcnApmHOCpI+j1uoT5Zmoni9GY3q94JcJal+i130sZC2FK6GDM
	aQKbTpzyPO7chYZCB2hZ3j3ZdgV2klU6PectYF2zwb8CGvBWKvXu/Hy9XWUVX0M06fN3ZopWeykVU
	XtEY1kpOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIYx-0003hA-3g; Tue, 14 Apr 2020 10:13:03 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIYn-0003gM-EK
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:12:55 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3CF8C22EEB;
 Tue, 14 Apr 2020 12:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1586858831;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=APa0klHYbq0nRnZCFsgw5rX3mQ0o6Wd2E6ZRzR/tOMM=;
 b=uLyAAYMIctXbXn9cwOwmR55h8ibp43+Djfg86KlNcR7vgHgZZwlDgYiRikLd5qtnEMmsMc
 PzDJsZxopbkE54MxXLnOoNx1pAf8tR0ohLsnwK7dyAuGExIalFgJsLgv7Fxr4qrCcCMQhy
 F83tczkLaB8z8xbA7ARkBZ9/CpoYSSU=
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 12:07:01 +0200
From: Michael Walle <michael@walle.cc>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
Message-ID: <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 3CF8C22EEB
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-1.081];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_031253_791043_DCDF20CF 
X-CRM114-Status: GOOD (  32.59  )
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

QW0gMjAyMC0wNC0xNCAxMTo1MCwgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+IHBvbi4s
IDYga3dpIDIwMjAgbyAxMjoxMCBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPiBuYXBp
c2HFgihhKToKPj4gCj4+IAo+PiBIaSBCYXJ0b3N6LCBIaSBNYXJrIEJyb3duLAo+PiAKPj4gQW0g
MjAyMC0wNC0wNiAwOTo0Nywgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+PiA+IGN6dy4s
IDIga3dpIDIwMjAgbyAyMjozNyBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPiBuYXBp
c2HFgihhKToKPj4gPj4KPj4gPj4gVGhlcmUgYXJlIHF1aXRlIGEgbG90IHNpbXBsZSBHUElPIGNv
bnRyb2xsZXIgd2hpY2ggYXJlIHVzaW5nIHJlZ21hcCB0bwo+PiA+PiBhY2Nlc3MgdGhlIGhhcmR3
YXJlLiBUaGlzIGRyaXZlciB0cmllcyB0byBiZSBhIGJhc2UgdG8gdW5pZnkgZXhpc3RpbmcKPj4g
Pj4gY29kZSBpbnRvIG9uZSBwbGFjZS4gVGhpcyB3b24ndCBjb3ZlciBldmVyeXRoaW5nIGJ1dCBp
dCBzaG91bGQgYmUgYQo+PiA+PiBnb29kCj4+ID4+IHN0YXJ0aW5nIHBvaW50Lgo+PiA+Pgo+PiA+
PiBJdCBkb2VzIG5vdCBpbXBsZW1lbnQgaXRzIG93biBpcnFfY2hpcCBiZWNhdXNlIHRoZXJlIGlz
IGFscmVhZHkgYQo+PiA+PiBnZW5lcmljIG9uZSBmb3IgcmVnbWFwIGJhc2VkIGRldmljZXMuIElu
c3RlYWQsIHRoZSBpcnFfY2hpcCB3aWxsIGJlCj4+ID4+IGluc3RhbmNpYXRlZCBpbiB0aGUgcGFy
ZW50IGRyaXZlciBhbmQgaXRzIGlycSBkb21haW4gd2lsbCBiZSBhc3NvY2lhdGUKPj4gPj4gdG8g
dGhpcyBkcml2ZXIuCj4+ID4+Cj4+ID4+IEZvciBub3cgaXQgY29uc2lzdHMgb2YgdGhlIHVzdWFs
IHJlZ2lzdGVycywgbGlrZSBzZXQgKGFuZCBhbiBvcHRpb25hbAo+PiA+PiBjbGVhcikgZGF0YSBy
ZWdpc3RlciwgYW4gaW5wdXQgcmVnaXN0ZXIgYW5kIGRpcmVjdGlvbiByZWdpc3RlcnMuCj4+ID4+
IE91dC1vZi10aGUtYm94LCBpdCBzdXBwb3J0cyBjb25zZWN1dGl2ZSByZWdpc3RlciBtYXBwaW5n
cyBhbmQgbWFwcGluZ3MKPj4gPj4gd2hlcmUgdGhlIHJlZ2lzdGVycyBoYXZlIGdhcHMgYmV0d2Vl
biB0aGVtIHdpdGggYSBsaW5lYXIgbWFwcGluZwo+PiA+PiBiZXR3ZWVuCj4+ID4+IEdQSU8gb2Zm
c2V0IGFuZCBiaXQgcG9zaXRpb24uIEZvciB3ZWlyZGVyIG1hcHBpbmdzIHRoZSB1c2VyIGNhbgo+
PiA+PiByZWdpc3Rlcgo+PiA+PiBpdHMgb3duIC54bGF0ZSgpLgo+PiA+Pgo+PiA+PiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPgo+PiA+Cj4+ID4gSGkgTWlj
aGFlbCwKPj4gPgo+PiA+IFRoYW5rcyBmb3IgZG9pbmcgdGhpcyEgV2hlbiBsb29raW5nIGF0IG90
aGVyIGdlbmVyaWMgZHJpdmVyczoKPj4gPiBncGlvLW1taW8gYW5kIGdwaW8tcmVnIEkgY2FuIHNl
ZSB0aGVyZSBhcmUgc29tZSBjb3JuZXItY2FzZXMgYW5kIG1vcmUKPj4gPiBzcGVjaWZpYyBjb25m
aWd1cmF0aW9uIG9wdGlvbnMgd2UgY291bGQgYWRkCj4+IAo+PiBJIGRpZG4ndCB3YW50IHRvIGNv
cHkgZXZlcnkgYml0IHdpdGhvdXQgYmVpbmcgYWJsZSB0byB0ZXN0IGl0Lgo+PiAKPiAKPiBTdXJl
LCBJIGRpZG4ndCBtZWFuIHdlIG5lZWQgdG8gZG8gaXQgbm93IC0ganVzdCBzZXQgaXQgYXMgdGhl
IGZ1dHVyZSAKPiBnb2FsLgo+IAo+PiA+IGJ1dCBpdCdzIG5vdCBhIGJsb2NrZXIsCj4+ID4gd2Un
bGwgcHJvYmFibHkgYmUgZXh0ZW5kaW5nIHRoaXMgb25lIGFzIHdlIGNvbnZlcnQgbW9yZSBkcml2
ZXJzIHRvCj4+ID4gdXNpbmcgaXQuCj4+IAo+PiBjb3JyZWN0LCB0aGF0IHdhcyBhbHNvIG15IHBs
YW4uCj4+IAo+PiA+IFBlcnNvbmFsbHkgSSdkIGxvdmUgdG8gc2VlIGdwaW8tbW1pbyBhbmQgZ3Bp
by1yZWcgcmVtb3ZlZAo+PiA+IGFuZCByZXBsYWNlZCBieSBhIHNpbmdsZSwgZ2VuZXJpYyByZWdt
YXAgaW50ZXJmYWNlIGV2ZW50dWFsbHkuCj4+IAo+PiBhZ3JlZWQuCj4+IAo+PiAKPiAKPiBbc25p
cCFdCj4gCj4+ID4+ICsKPj4gPj4gKy8qKgo+PiA+PiArICogZ3Bpb19yZWdtYXBfc2ltcGxlX3hs
YXRlKCkgLSB0cmFuc2xhdGUgYmFzZS9vZmZzZXQgdG8gcmVnL21hc2sKPj4gPj4gKyAqCj4+ID4+
ICsgKiBVc2UgYSBzaW1wbGUgbGluZWFyIG1hcHBpbmcgdG8gdHJhbnNsYXRlIHRoZSBvZmZzZXQg
dG8gdGhlCj4+ID4+IGJpdG1hc2suCj4+ID4+ICsgKi8KPj4gPj4gK2ludCBncGlvX3JlZ21hcF9z
aW1wbGVfeGxhdGUoc3RydWN0IGdwaW9fcmVnbWFwICpncGlvLCB1bnNpZ25lZCBpbnQKPj4gPj4g
YmFzZSwKPj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgb2Zm
c2V0LAo+PiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGludCAqcmVn
LCB1bnNpZ25lZCBpbnQgKm1hc2spCj4+ID4+ICt7Cj4+ID4+ICsgICAgICAgdW5zaWduZWQgaW50
IGxpbmUgPSBvZmZzZXQgJSBncGlvLT5uZ3Bpb19wZXJfcmVnOwo+PiA+PiArICAgICAgIHVuc2ln
bmVkIGludCBzdHJpZGUgPSBvZmZzZXQgLyBncGlvLT5uZ3Bpb19wZXJfcmVnOwo+PiA+PiArCj4+
ID4+ICsgICAgICAgKnJlZyA9IGJhc2UgKyBzdHJpZGUgKiBncGlvLT5yZWdfc3RyaWRlOwo+PiA+
PiArICAgICAgICptYXNrID0gQklUKGxpbmUpOwo+PiA+PiArCj4+ID4+ICsgICAgICAgcmV0dXJu
IDA7Cj4+ID4+ICt9Cj4+ID4+ICtFWFBPUlRfU1lNQk9MX0dQTChncGlvX3JlZ21hcF9zaW1wbGVf
eGxhdGUpOwo+PiA+Cj4+ID4gV2h5IGRvZXMgdGhpcyBuZWVkIHRvIGJlIGV4cG9ydGVkPwo+PiAK
Pj4gTWgsIHRoZSBpZGVhIHdhcyB0aGF0IGEgdXNlciBjb3VsZCBhbHNvIHNldCB0aGlzIHhsYXRl
KCkgYnkgaGltc2VsZiAKPj4gKGZvcgo+PiB3aGF0ZXZlciByZWFzb24pLiBCdXQgc2luY2UgaXQg
aXMgdGhlIGRlZmF1bHQsIGl0IGlzIG5vdCByZWFsbHkKPj4gbmVjZXNzYXJ5Lgo+PiBUaGF0IGJl
aW5nIHNhaWQsIEkgZG9uJ3QgY2FyZSBpZiBpdHMgb25seSBsb2NhbCB0byB0aGlzIG1vZHVsZS4K
Pj4gCj4gCj4gTGV0J3Mgb25seSBleHBvcnQgc3ltYm9scyB0aGF0IGhhdmUgZXh0ZXJuYWwgdXNl
cnMgdGhlbi4KPiAKPiBbc25pcCFdCj4gCj4+ID4+ICsKPj4gPj4gK01PRFVMRV9BVVRIT1IoIk1p
Y2hhZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+Iik7Cj4+ID4+ICtNT0RVTEVfREVTQ1JJUFRJ
T04oIkdQSU8gZ2VuZXJpYyByZWdtYXAgZHJpdmVyIGNvcmUiKTsKPj4gPj4gK01PRFVMRV9MSUNF
TlNFKCJHUEwiKTsKPj4gPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAu
aCBiL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaAo+PiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0
NAo+PiA+PiBpbmRleCAwMDAwMDAwMDAwMDAuLmFkNjM5NTVlMGU0Mwo+PiA+PiAtLS0gL2Rldi9u
dWxsCj4+ID4+ICsrKyBiL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaAo+PiA+PiBAQCAtMCww
ICsxLDg4IEBACj4+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5
ICovCj4+ID4+ICsKPj4gPj4gKyNpZm5kZWYgX0xJTlVYX0dQSU9fUkVHTUFQX0gKPj4gPj4gKyNk
ZWZpbmUgX0xJTlVYX0dQSU9fUkVHTUFQX0gKPj4gPj4gKwo+PiA+PiArc3RydWN0IGdwaW9fcmVn
bWFwX2FkZHIgewo+PiA+PiArICAgICAgIHVuc2lnbmVkIGludCBhZGRyOwo+PiA+PiArICAgICAg
IGJvb2wgdmFsaWQ7Cj4+ID4+ICt9Owo+PiA+Cj4+ID4gSSdtIG5vdCBxdWl0ZSBzdXJlIHdoYXQg
dGhlIG1lYW5pbmcgYmVoaW5kIHRoZSB2YWxpZCBmaWVsZCBoZXJlIGlzLgo+PiA+IFdoZW4gd291
bGQgd2UgcG90ZW50aWFsbHkgc2V0IGl0IHRvIGZhbHNlPwo+PiAKPj4gU29tZSBiYXNlIGFkZHJl
c3NlcyBhcmUgb3B0aW9uYWwsIGJ1dCBvbiB0aGUgb3RoZXIgaGFuZCwgYSBiYXNlIAo+PiBhZGRy
ZXNzCj4+IG9mIDAgY291bGQgYWxzbyBiZSB2YWxpZC4gU28gSSBjYW5ub3QgdXNlIDAgYXMgYW4g
aW5kaWNhdG9yIHdoZXRoZXIgYQo+PiBiYXNlIGFkZHJlc3MgaXMgc2V0IG9yIG5vdC4gVGhlIGdl
bmVyaWMgbW1pbyBkcml2ZXIgaGFzIHNvbWUgc3BlY2lhbAo+PiBjYXNlIGZvciB0aGUgYWNrIGJh
c2UsIHdoZXJlIHRoZXJlIGlzIGEgdXNlX2FjayBmbGFnIHdoaWNoIGZvcmNlcyB0bwo+PiB1c2Ug
dGhlIGFjayByZWdpc3RlciBldmVuIGlmIGl0cyB6ZXJvLiBTbyBJJ3ZlIGhhZCBhIGxvb2sgYXQg
dGhlIAo+PiBrZXJuZWwKPj4gaWYgdGhlcmUgaXMgYSBiZXR0ZXIgaWRpb20gZm9yIHRoYXQsIGJ1
dCBJIGhhdmVuJ3QgZm91bmQgYW55dGhpbmcuCj4+IAo+PiBTbyB0aGUgYmVzdCBmcm9tIGEgdXNl
ciBwZXJzcGVjdGl2ZSBJJ3ZlIGNvdWxkIGNvbWUgdXAgd2l0aCB3YXM6Cj4+IAo+PiAgICAtPmJh
c2VfcmVnID0gR1BJT19SRUdNQVBfQUREUihhZGRyKTsKPj4gCj4+IEknbSBvcGVuIGZvciBzdWdn
ZXN0aW9ucy4KPj4gCj4gCj4gTWF5YmUgc2V0dGluZyB0aGUgcG9pbnRlciB0byBFUlJfUFRSKC1F
Tk9FTlQpIHdoaWNoIHdpbGwgcmVzdWx0IGluCj4gSVNfRVJSKCkgcmV0dXJuaW5nIHRydWU/CgpV
bmZvcnR1bmF0bHksIGl0cyBub3QgYSBwb2ludGVyLCBidXQgb25seSBhIHJlZ3VsYXIgdW5zaWdu
ZWQgaW50IChpZQp0aGUgdHlwZSB0aGUgcmVnbWFwIEFQSSBoYXMgZm9yIGl0cyAicmVnIiBwcm9w
ZXJ0eSkuIEl0IGNvdWxkIGJlIGEKcG9pbnRlciBvZiBjb3Vyc2UgYnV0IHRoZW4gdGhlIHVzZXIg
d291bGQgaGF2ZSB0byBhbGxvY2F0ZSBhZGRpdGlvbmFsCm1lbW9yeS4KCi1taWNoYWVsCgo+IAo+
PiA+Cj4+ID4+ICsjZGVmaW5lIEdQSU9fUkVHTUFQX0FERFIoX2FkZHIpIFwKPj4gPj4gKyAgICAg
ICAoKHN0cnVjdCBncGlvX3JlZ21hcF9hZGRyKSB7IC5hZGRyID0gX2FkZHIsIC52YWxpZCA9IHRy
dWUgfSkKPj4gPj4gKwo+PiA+PiArLyoqCj4+ID4+ICsgKiBzdHJ1Y3QgZ3Bpb19yZWdtYXAgLSBE
ZXNjcmlwdGlvbiBvZiBhIGdlbmVyaWMgcmVnbWFwIGdwaW9fY2hpcC4KPj4gPj4gKyAqCj4+ID4+
ICsgKiBAcGFyZW50OiAgICAgICAgICAgIFRoZSBwYXJlbnQgZGV2aWNlCj4+ID4+ICsgKiBAcmVn
bWFwOiAgICAgICAgICAgIFRoZSByZWdtYXAgdXNlIHRvIGFjY2VzcyB0aGUgcmVnaXN0ZXJzCj4+
ID4KPj4gPiBzL3VzZS91c2VkLwo+PiA+Cj4+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIGdp
dmVuLCB0aGUgbmFtZSBvZiB0aGUgZGV2aWNlIGlzIHVzZWQKPj4gPj4gKyAqIEBsYWJlbDogICAg
ICAgICAgICAgKE9wdGlvbmFsKSBEZXNjcmlwdGl2ZSBuYW1lIGZvciBHUElPCj4+ID4+IGNvbnRy
b2xsZXIuCj4+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIElmIG5vdCBnaXZlbiwgdGhlIG5h
bWUgb2YgdGhlIGRldmljZSBpcyB1c2VkLgo+PiA+PiArICogQG5ncGlvOiAgICAgICAgICAgICBO
dW1iZXIgb2YgR1BJT3MKPj4gPj4gKyAqIEByZWdfZGF0X2Jhc2U6ICAgICAgKE9wdGlvbmFsKSAo
aW4pIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+PiA+PiArICogQHJlZ19zZXRfYmFzZTogICAgICAo
T3B0aW9uYWwpIHNldCByZWdpc3RlciBiYXNlIGFkZHJlc3MKPj4gPj4gKyAqIEByZWdfY2xyX2Jh
c2U6ICAgICAgKE9wdGlvbmFsKSBjbGVhciByZWdpc3RlciBiYXNlIGFkZHJlc3MKPj4gPj4gKyAq
IEByZWdfZGlyX2luX2Jhc2U6ICAgKE9wdGlvbmFsKSBvdXQgc2V0dGluZyByZWdpc3RlciBiYXNl
IGFkZHJlc3MKPj4gPj4gKyAqIEByZWdfZGlyX291dF9iYXNlOiAgKE9wdGlvbmFsKSBpbiBzZXR0
aW5nIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+PiA+PiArICogQHJlZ19zdHJpZGU6ICAgICAgICAg
ICAgICAgIChPcHRpb25hbCkgTWF5IGJlIHNldCBpZiB0aGUgcmVnaXN0ZXJzCj4+ID4+IChvZiB0
aGUKPj4gPj4gKyAqICAgICAgICAgICAgICAgICAgICAgc2FtZSB0eXBlLCBkYXQsIHNldCwgZXRj
KSBhcmUgbm90IGNvbnNlY3V0aXZlLgo+PiA+PiArICogQG5ncGlvX3Blcl9yZWc6ICAgICBOdW1i
ZXIgb2YgR1BJT3MgcGVyIHJlZ2lzdGVyCj4+ID4+ICsgKiBAaXJxX2RvbWFpbjogICAgICAgICAg
ICAgICAgKE9wdGlvbmFsKSBJUlEgZG9tYWluIGlmIHRoZQo+PiA+PiBjb250cm9sbGVyIGlzCj4+
ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIGludGVycnVwdC1jYXBhYmxlCj4+ID4+ICsgKiBA
cmVnX21hc2tfeGxhdGU6ICAgICAoT3B0aW9uYWwpIFRyYW5zbGF0ZXMgYmFzZSBhZGRyZXNzIGFu
ZCBHUElPCj4+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIG9mZnNldCB0byBhIHJlZ2lzdGVy
L2JpdG1hc2sgcGFpci4gSWYgbm90Cj4+ID4+ICsgKiAgICAgICAgICAgICAgICAgICAgIGdpdmVu
IHRoZSBkZWZhdWx0IGdwaW9fcmVnbWFwX3NpbXBsZV94bGF0ZSgpCj4+ID4+ICsgKiAgICAgICAg
ICAgICAgICAgICAgIGlzIHVzZWQuCj4+ID4+ICsgKiBAdG9faXJxOiAgICAgICAgICAgIChPcHRp
b25hbCkgTWFwcyBHUElPIG9mZnNldCB0byBhIGlycSBudW1iZXIuCj4+ID4+ICsgKiAgICAgICAg
ICAgICAgICAgICAgIEJ5IGRlZmF1bHQgYXNzdW1lcyBhIGxpbmVhciBtYXBwaW5nIG9mIHRoZQo+
PiA+PiArICogICAgICAgICAgICAgICAgICAgICBnaXZlbiBpcnFfZG9tYWluLgo+PiA+PiArICog
QGRyaXZlcl9kYXRhOiAgICAgICBQb2ludGVyIHRvIHRoZSBkcml2ZXJzIHByaXZhdGUgZGF0YS4g
Tm90IHVzZWQKPj4gPj4gYnkKPj4gPj4gKyAqICAgICAgICAgICAgICAgICAgICAgZ3Bpby1yZWdt
YXAuCj4+ID4+ICsgKgo+PiA+PiArICogVGhlIHJlZ19tYXNrX3hsYXRlIHRyYW5zbGF0ZXMgYSBn
aXZlbiBiYXNlIGFkZHJlc3MgYW5kIEdQSU8gb2Zmc2V0Cj4+ID4+IHRvCj4+ID4+ICsgKiByZWdp
c3RlciBhbmQgbWFzayBwYWlyLiBUaGUgYmFzZSBhZGRyZXNzIGlzIG9uZSBvZiB0aGUgZ2l2ZW4K
Pj4gPj4gcmVnXypfYmFzZS4KPj4gPj4gKyAqLwo+PiA+PiArc3RydWN0IGdwaW9fcmVnbWFwIHsK
Pj4gPgo+PiA+IEknZCBwcmVmZXIgdG8gZm9sbG93IGEgcGF0dGVybiBzZWVuIGluIG90aGVyIHN1
Y2ggQVBJcyBvZiBjYWxsaW5nIHRoaXMKPj4gPiBzdHJ1Y3R1cmUgZ3Bpb19yZWdtYXBfY29uZmln
IGFuZCBjcmVhdGluZyBhbm90aGVyIHByaXZhdGUgc3RydWN0dXJlCj4+ID4gY2FsbGVkIGdwaW9f
cmVnbWFwIHVzZWQgaW4gY2FsbGJhY2tzIHRoYXQgd291bGQgb25seSBjb250YWluIG5lY2Vzc2Fy
eQo+PiA+IGZpZWxkcy4KPj4gCj4+IHNvbWV0aGluZyBsaWtlIHRoZSBmb2xsb3dpbmc/Cj4+IAo+
PiBzdHJ1Y3QgZ3Bpb19yZWdtYXAgKmdwaW9fcmVnbWFwX3JlZ2lzdGVyKHN0cnVjdCBncGlvX3Jl
Z21hcF9jb25maWcgKikKPj4gCj4+IGJ1dCBpZiB0aGF0IHN0cnVjdHVyZSBpcyBwcml2YXRlLCBo
b3cgY2FuIGEgY2FsbGJhY2sgYWNjZXNzIGluZGl2aWR1YWwKPj4gZWxlbWVudHM/IE9yIGRvIHlv
dSBtZWFuIHByaXZhdGUgaW4gImxvY2FsIHRvIHRoZSBncGlvIGRyaXZlcnMiPwo+PiAKPiAKPiBF
aXRoZXIgbWFraW5nIHRoZSBzdHJ1Y3R1cmUgbG9jYWwgdG8gZHJpdmVycy9ncGlvIG9yIG1ha2lu
ZyBpdAo+IGVudGlyZWx5IG9wYXF1ZSBhbmQgcHJvdmlkaW5nIGFjY2Vzc29yIGZ1bmN0aW9ucy4g
RGVwZW5kaW5nIG9uIGhvdwo+IG11Y2ggb2YgdGhlIHN0cnVjdHVyZSBvbmUgbWF5IHdhbnQgdG8g
YWNjZXNzLgo+IAo+PiBBbHNvIEkgd2FzIHVuc3VyZSBhYm91dCB0aGUgbmFtaW5nLCBlZy4gc29t
ZSB1c2UKPj4gc3R1ZmZfcmVnaXN0ZXIoKS9zdHVmZl91bnJlZ2lzdGVyKCkgYW5kIHNvbWUgCj4+
IHN0dWZmX2FkZCgpL3N0dWZmX3JlbW92ZSgpLgo+PiAKPiAKPiByZWdpc3Rlci91bnJlZ2lzdGVy
IGlzIGZpbmUgd2l0aCBtZS4KPiAKPiBCYXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
