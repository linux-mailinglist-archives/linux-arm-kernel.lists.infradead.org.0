Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6B41A89E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BIv0j0ITkJPUfR94OcD5ELNhb3/P9/FqsF1o4RHdl2Y=; b=LEXTgrbgvkJtPNDkE4obj09Eg
	vQy3IKPHMsM6n6LnkhL8bQPVi6hy39aigsOrzVV+RTU+auYpgozdIfiMpe4/WR3TdpgcNWTdp3K60
	18ZyHI61QtSS+WNo0OpfDWoM/vIPgvGwnU8/fkJf47+8dc+lW+piD7RvZJNS+ARNE9LZbrdyyPROd
	cfYUA7w5xP0j1+iu1H5Vz0RelSfpzNxKqpIRCagrJ84JjLY9tAqnxBTu5AtiOjPvdp73ad7edrT4l
	S/a0N2DQ/u4ciR6LoTZF9TK0AK0pilIF4xu60nYjAKLhUvu3aQLgUcesa6L+camxDEYAaO0EBdSe5
	6lde03LMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOQVR-0007Se-NR; Tue, 14 Apr 2020 18:41:57 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOQVJ-0007S5-O3
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:41:51 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 02BB72222E;
 Tue, 14 Apr 2020 20:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1586889706;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l8iSoKOFISTm7e3WSV4reMrghBve1U8G6s6rKNmMUNA=;
 b=rtveXxXS06F/NYmV9F2bGS5feXtMfE9gJBoboXZn8qEe9Lv/Pdw+PkB3WYbQaCUuxLEI6I
 01s6XbVlOTMD8dnUpTguXYKOq3sSaQOCnztQCPF9doXoASZlztSVASr7gO1ILou1R9B2WC
 mzBh5hFIxbe65adMWQoMX24W8N21isE=
MIME-Version: 1.0
Date: Tue, 14 Apr 2020 20:41:45 +0200
From: Michael Walle <michael@walle.cc>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: Re: [PATCH v2 10/16] gpio: add a reusable generic gpio_chip using
 regmap
In-Reply-To: <CAMpxmJW1x4Orh1BZ4TUoCsYeaAAZ4NBUNvoMG9JgP0iLvXTOtg@mail.gmail.com>
References: <20200402203656.27047-1-michael@walle.cc>
 <20200402203656.27047-11-michael@walle.cc>
 <CAMpxmJVE3PgVCxkQ-ryc5=KSrKcpdmk1cnJUxJBz9QFCx-e_+A@mail.gmail.com>
 <80bd8661ec8a1f5eda3f09a267846eaa@walle.cc>
 <CAMpxmJVC7e9JnHzBo-h8M1+KmcA32=Rvxo7+znH=-kAbcCr_LQ@mail.gmail.com>
 <e0388a2137e23d76b2415a7549c01dd1@walle.cc>
 <CAMpxmJW1x4Orh1BZ4TUoCsYeaAAZ4NBUNvoMG9JgP0iLvXTOtg@mail.gmail.com>
Message-ID: <62d157198a75a59ada15c496deeab49b@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 02BB72222E
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[23]; NEURAL_HAM(-0.00)[-1.082];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,linaro.org,kernel.org,suse.com,roeck-us.net,gmail.com,pengutronix.de,linux-watchdog.org,nxp.com,linutronix.de,lakedaemon.net,linuxfoundation.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_114149_936133_81292331 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
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

QW0gMjAyMC0wNC0xNCAxOTowMCwgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+IHd0Liwg
MTQga3dpIDIwMjAgbyAxMjowNyBNaWNoYWVsIFdhbGxlIDxtaWNoYWVsQHdhbGxlLmNjPiBuYXBp
c2HFgihhKToKPj4gPj4KPj4gPj4gU28gdGhlIGJlc3QgZnJvbSBhIHVzZXIgcGVyc3BlY3RpdmUg
SSd2ZSBjb3VsZCBjb21lIHVwIHdpdGggd2FzOgo+PiA+Pgo+PiA+PiAgICAtPmJhc2VfcmVnID0g
R1BJT19SRUdNQVBfQUREUihhZGRyKTsKPj4gPj4KPj4gPj4gSSdtIG9wZW4gZm9yIHN1Z2dlc3Rp
b25zLgo+PiA+Pgo+PiA+Cj4+ID4gTWF5YmUgc2V0dGluZyB0aGUgcG9pbnRlciB0byBFUlJfUFRS
KC1FTk9FTlQpIHdoaWNoIHdpbGwgcmVzdWx0IGluCj4+ID4gSVNfRVJSKCkgcmV0dXJuaW5nIHRy
dWU/Cj4+IAo+PiBVbmZvcnR1bmF0bHksIGl0cyBub3QgYSBwb2ludGVyLCBidXQgb25seSBhIHJl
Z3VsYXIgdW5zaWduZWQgaW50IChpZQo+PiB0aGUgdHlwZSB0aGUgcmVnbWFwIEFQSSBoYXMgZm9y
IGl0cyAicmVnIiBwcm9wZXJ0eSkuIEl0IGNvdWxkIGJlIGEKPj4gcG9pbnRlciBvZiBjb3Vyc2Ug
YnV0IHRoZW4gdGhlIHVzZXIgd291bGQgaGF2ZSB0byBhbGxvY2F0ZSBhZGRpdGlvbmFsCj4+IG1l
bW9yeS4KPj4gCj4+IC1taWNoYWVsCj4+IAo+IAo+IEVlaywgb2YgY291cnNlIGl0J3Mgbm90IGEg
cG9pbnRlci4gSWYgcG9zc2libGUgSSdkIGxpa2UgdG8gYXZvaWQgdGhpcwo+IEdQSU9fUkVHTUFQ
X0FERFIoKSBtYWNybywgc28gaG93IGFib3V0IGhhdmluZyBzb21lIHNlcGFyYXRlIGZpZWxkIGZv
cgo+IGludmFsaWQgb2Zmc2V0cyBtYWtpbmcgZXZlcnkgb2Zmc2V0ICd2YWxpZCcgYnkgZGVmYXVs
dD8KCklNSE8gdGhpcyBoYXMgdGhlIHNhbWUgcHJvYmxlbXMgYXMgbWVudGlvbmVkIGluIHRoZSBy
ZXNwb25zZSB0byBNYXJrJ3MKaWRlYS4gTm9ybWFsbHksIHRoZSB1c2VyIHNldHMgb25seSBzb21l
IGFkZHJlc3NlcywgdGh1cyBoZSBoYXMgdG8gbWFyawphbGwgb3RoZXIgYXMgaW52YWxpZC4gQW5k
IGlmIHlvdSBhZGQgYW5vdGhlciBhZGRyZXNzLCB5b3UgaGF2ZSB0byB0b3VjaAphbGwgdGhlIGRy
aXZlcnMgdG8gbWFyayBpdCBhcyBpbnZhbGlkLgoKV2UgY291bGQgYWRkIHNvbWUgZm9yY2UgYml0
cyBsaWtlIHRoZSAidXNlX2FjayIgZmxhZyBpbiB0aGUgYmdwaW8gCmRyaXZlciwKd2hlcmUgeW91
IGNhbiBmb3JjZSB0aGUgdXNlIG9mIHRoZSB2YWx1ZSAwLiBCdXQgSSdkIHJlYWxseSBsaWtlIHRv
IGZpbmQKYSBiZXR0ZXIgd2F5Li4KCi1taWNoYWVsCgo+IAo+IExpbnVzOiBkbyB5b3UgaGF2ZSBh
IGJldHRlciBpZGVhPwo+IAo+IEJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
