Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F22621E0BB7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 12:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZJA+Nx7BpvljfhjtxZ0byfZ5EZLykdR3ZgHLDzeAmHk=; b=b2Loj8R0+zowxIlqZB0NXlG/s
	YtqaxO27VPoVNdCJ4VseVCSxUAhk6kSML8MfLcIbZaIldNmPMIkjwnon6VGK9TtW8pbhs2x1XOV62
	05Hxbtzwf6aSH3fM31eXKgo8YQgngGZu0BkokPUgLRWGChn11pf90gbEWnImMNoetjD+Vq7ihHOk3
	1UGdfIMFQglNdtR7/lOMayLFksWibeL4GU5xuu71ehCdPwNvvrnaam9Qono1QfRi0zwMlAH8GqOOB
	MDZ09h/nL+bdfrp1v/fpUEy304YNrwqGWfd8Pq0NvauOu6y/dWYxHOdpU8lBSBbwluQhsOMkVSGjL
	sx/9aGdlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdAEa-0003QE-Dr; Mon, 25 May 2020 10:21:28 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdADs-0002tu-7v
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 10:20:48 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id B2E8E224C1;
 Mon, 25 May 2020 12:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1590402035;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DaBHew0vxxdSiEHFxN0/9/jK/7HdYOSYbRfKY5g0cf4=;
 b=ea1g/amuAFXkMGyk8b01UJ7SrnTfSaaC0mLpqaKs3JWGpnTuJMhPFxCjrOrj5hGTBW8g1t
 mYu/alo7xbuCw9vBpCPuDGeqDHA+jdYpRLceu125oZwEWGtTah1zfrAEd2LfXjKMyULS3n
 5CBwJkAWm0vxbZD5i+M/5MsdB4Z8DEI=
MIME-Version: 1.0
Date: Mon, 25 May 2020 12:20:25 +0200
From: Michael Walle <michael@walle.cc>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v3 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <CAMpxmJXctc5cbrjSeJxa7DfmjiVsbyhqAbEKt-gtayKhQj0Cnw@mail.gmail.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-11-michael@walle.cc>
 <CAMpxmJV3XTOxuoKeV-z2d75qWqHkgvV9419tfe3idDeKwoeoLA@mail.gmail.com>
 <75bff2917be1badd36af9f980cf59d2c@walle.cc>
 <CAMpxmJXctc5cbrjSeJxa7DfmjiVsbyhqAbEKt-gtayKhQj0Cnw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <951244aab2ff553a463f7431ba09bf27@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_032044_583277_5FA45EED 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
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

QW0gMjAyMC0wNS0yNSAxMTowNSwgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+IHd0Liwg
MTIgbWFqIDIwMjAgbyAxNjo0MSBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPiBuYXBp
c2HFgihhKToKPj4gCj4+ID4+ICsKPj4gPj4gK01PRFVMRV9BVVRIT1IoIk1pY2hhZWwgV2FsbGUg
PG1pY2hhZWxAd2FsbGUuY2M+Iik7Cj4+ID4+ICtNT0RVTEVfREVTQ1JJUFRJT04oIkdQSU8gZ2Vu
ZXJpYyByZWdtYXAgZHJpdmVyIGNvcmUiKTsKPj4gPj4gK01PRFVMRV9MSUNFTlNFKCJHUEwiKTsK
Pj4gPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaCBiL2luY2x1ZGUv
bGludXgvZ3Bpby1yZWdtYXAuaAo+PiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiA+PiBpbmRl
eCAwMDAwMDAwMDAwMDAuLmE4NjhjYmNkZTZlOQo+PiA+PiAtLS0gL2Rldi9udWxsCj4+ID4+ICsr
KyBiL2luY2x1ZGUvbGludXgvZ3Bpby1yZWdtYXAuaAo+PiA+PiBAQCAtMCwwICsxLDY5IEBACj4+
ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCj4+ID4+ICsK
Pj4gPj4gKyNpZm5kZWYgX0xJTlVYX0dQSU9fUkVHTUFQX0gKPj4gPj4gKyNkZWZpbmUgX0xJTlVY
X0dQSU9fUkVHTUFQX0gKPj4gPj4gKwo+PiA+PiArc3RydWN0IGdwaW9fcmVnbWFwOwo+PiA+PiAr
Cj4+ID4+ICsjZGVmaW5lIEdQSU9fUkVHTUFQX0FERFJfWkVSTyAoKHVuc2lnbmVkIGxvbmcpKC0x
KSkKPj4gPj4gKyNkZWZpbmUgR1BJT19SRUdNQVBfQUREUihhZGRyKSAoKGFkZHIpID8gOiBHUElP
X1JFR01BUF9BRERSX1pFUk8pCj4+ID4+ICsKPj4gPgo+PiA+IFdoYXQgaWYgdGhlIGFkZHIgaXMg
YWN0dWFsbHkgMD8KPj4gCj4+IFRoZW4gdGhlIGRyaXZlciBoYXMgdG8gc2V0IEdQSU9fUkVHTUFQ
X0FERFJfWkVSTyBvciB1c2UgdGhlIAo+PiBjb252ZW5pZW5jZQo+PiBtYWNybyBHUElPX1JFR01B
UF9BRERSLgo+PiAKPj4gU28geW91IGNhbiBoYXZlCj4+IAo+PiAgICBzdHJ1Y3QgZ3Bpb19yZWdt
YXBfY29uZmlnIGNvbmZpZyA9IHsgMCB9Owo+PiAgICBjb25maWcucmVnX2RhdF9iYXNlID0gMHgx
MDsKPj4gICAgY29uZmlnLnJlZ19kaXJfb3V0X2Jhc2UgPSAweDIwOwo+PiAKPj4gb3IKPj4gCj4+
ICAgIGNvbmZpZy5yZWdfZGF0X2Jhc2UgPSBHUElPX1JFR01BUF9BRERSX1pFUk87Cj4+IAo+PiBv
ciBpZiB5b3UgY2FuJ3QgYmUgc3VyZSBpZiB0aGUgUkhTIHZhbHVlIG1pZ2h0IGJlIHplcm86Cj4+
IAo+PiAgICBjb25maWcucmVnX2RhdF9iYXNlID0gR1BJT19SRUdNQVBfQUREUihyZWcpOwo+PiAK
Pj4gCj4+ID4gTWF5YmUgZHJvcCBHUElPX1JFR01BUF9BRERSIGFuZCByZXF1aXJlIHVzZXJzIHRv
IHNldCB1bnVzZWQgcmVnaXN0ZXJzCj4+ID4gdG8gR1BJT19SRUdNQVBfQUREUl9aRVJPPwo+PiAK
Pj4gVGhhdHMgYmFkIGJlY2F1c2U6Cj4+ICAgKiB5b3UnZCBoYXZlIHRvIHNldCBwbGVudHkgb2Yg
dW51c2VkIGJhc2UgcmVnaXN0ZXJzIGZvciBhIHNpbXBsZSAKPj4gZHJpdmVyCj4+ICAgKiBpZiB0
aGVyZSB3aWxsIGJlIGFkZGl0aW9uYWwgcHJvcGVydGllcyBpbiB0aGUgZnV0dXJlLCB5b3UgaGF2
ZSB0bwo+PiB0b3VjaAo+PiAgICAgYWxsIG90aGVyIGRyaXZlcnMsIGJlY2F1c2UgdGhleSBhcmUg
aW5pdGlhbGl6ZWQgYXMgMCAoaWUuIHZhbGlkIAo+PiByZWcKPj4gMCkuCj4+IAo+PiA+PiArLyoq
Cj4+ID4+ICsgKiBzdHJ1Y3QgZ3Bpb19yZWdtYXBfY29uZmlnIC0gRGVzY3JpcHRpb24gb2YgYSBn
ZW5lcmljIHJlZ21hcAo+PiA+PiBncGlvX2NoaXAuCj4+ID4+ICsgKgo+PiA+PiArICogQHBhcmVu
dDogICAgICAgICAgICBUaGUgcGFyZW50IGRldmljZQo+PiA+PiArICogQHJlZ21hcDogICAgICAg
ICAgICBUaGUgcmVnbWFwIHVzZWQgdG8gYWNjZXNzIHRoZSByZWdpc3RlcnMKPj4gPj4gKyAqICAg
ICAgICAgICAgICAgICAgICAgZ2l2ZW4sIHRoZSBuYW1lIG9mIHRoZSBkZXZpY2UgaXMgdXNlZAo+
PiA+PiArICogQGxhYmVsOiAgICAgICAgICAgICAoT3B0aW9uYWwpIERlc2NyaXB0aXZlIG5hbWUg
Zm9yIEdQSU8KPj4gPj4gY29udHJvbGxlci4KPj4gPj4gKyAqICAgICAgICAgICAgICAgICAgICAg
SWYgbm90IGdpdmVuLCB0aGUgbmFtZSBvZiB0aGUgZGV2aWNlIGlzIHVzZWQuCj4+ID4+ICsgKiBA
bmdwaW86ICAgICAgICAgICAgIE51bWJlciBvZiBHUElPcwo+PiA+PiArICogQHJlZ19kYXRfYmFz
ZTogICAgICAoT3B0aW9uYWwpIChpbikgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzCj4+ID4+ICsgKiBA
cmVnX3NldF9iYXNlOiAgICAgIChPcHRpb25hbCkgc2V0IHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+
PiA+PiArICogQHJlZ19jbHJfYmFzZTogICAgICAoT3B0aW9uYWwpIGNsZWFyIHJlZ2lzdGVyIGJh
c2UgYWRkcmVzcwo+PiA+PiArICogQHJlZ19kaXJfaW5fYmFzZTogICAoT3B0aW9uYWwpIG91dCBz
ZXR0aW5nIHJlZ2lzdGVyIGJhc2UgYWRkcmVzcwo+PiA+PiArICogQHJlZ19kaXJfb3V0X2Jhc2U6
ICAoT3B0aW9uYWwpIGluIHNldHRpbmcgcmVnaXN0ZXIgYmFzZSBhZGRyZXNzCj4+ID4KPj4gPiBU
aGUgdHdvIGFib3ZlIGFyZSBpbnZlcnRlZCBJIHRoaW5rPwo+PiBnb29kIGNhdGNoLgo+PiAKPj4g
PiBBbHNvOiB3aHkgdGhlIGxpbWl0YXRpb24gb2Ygb25seSBzdXBwb3J0aW5nIG9uZSBhdCBhIHRp
bWU/Cj4+IAo+PiB0aGV5IHNob3VsZCBiZSBleGNsdXNpdmUsIGVpdGhlciB5b3UgaGF2ZSBhIHJl
Z2lzdGVyIHdoZXJlIHlvdSBzZXQgdGhlCj4+IG91dHB1dCBiaXRzIHRvIG9uZSwgb3IgdGhlIGlu
cHV0IGJpdHMuIE1heWJlIHRoaXMgbmVlZCBhIGJpdCBtb3JlCj4+IGNvbnRleHQKPj4gYWJvdmUu
IGluIGdwaW8tbW1pby5jIHlvdSBjYW4gc2V0IGJvdGggYW5kIGJvdGggYXJlIHVzZWQgaW4KPj4g
c2V0X2RpcmVjdGlvbigpLCBidXQgb25seSBvbmUgaXMgcmVhZCBpbiBnZXRfZGlyZWN0aW9uKCku
Cj4+IAo+PiBUaGF0IGJlaW5nIHNhaWQsIEkgaGF2ZSBubyBzdHJvbmcgb3BpbmlvbiB3ZXRoZXIg
dGhleSBzaG91bGQgYmUKPj4gZXhjbHVzaXZlCj4+IG9yIG5vdCwgYmVzaWRlcyB0aGUgc3ltbWV0
cnkgb2Ygc2V0Xy9nZXRfZGlyZWN0aW9uKCkuCj4+IAo+PiAtbWljaGFlbAo+PiAKPiAKPiBTb3Jy
eSBmb3IgdGhlIGxhdGUgcmVzcG9uc2UsIHlvdXIgY29tbWVudHMgbWFrZSBzZW5zZSB0byBtZS4g
QXJlIHlvdQo+IGdvaW5nIHRvIHN1Ym1pdCBhIHY0IGJlZm9yZSB0aGUgdjUuOCBtZXJnZSB3aW5k
b3c/CgpJJ20gY3VycmVudGx5IHN0dWNrIHdpdGggaG93IHRvIGhhbmRsZSB0aGUgTUZEIHBhcnQu
IEllLiBSb2IgZG9lc24ndApzZWVtIHRvIGxpa2UgdGhlIGxvZ2ljaWFsIGRldmljZSBudW1iZXJp
bmcgLSBvciBhdCBsZWFzdCB0aGVyZSB3YXNuJ3QKYW4gYW5zd2VyIHRvIHRoYXQgb25lIGFueW1v
cmUsIHNlZSBwYXRjaCA1LzE2LgoKSWYgeW91IGxpa2UgSSBjb3VsZCBzdWJtaXQgdGhpcyBwYXRj
aCBvbiBpdHMgb3duLiBCdXQgdGhlbiB0aGVyZQp3b3VsZG4ndCBiZSBhIHVzZXIgZm9yIGl0LgoK
LW1pY2hhZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
