Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC83019A271
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 01:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wsiis8tvr1XDQozbq04BsZew8vRlfNAefiL087cQGhM=; b=IgZfRAVdaBKI2l
	fnHozCpufz3Yn7foSJRKt4LIv/BkM3c9cFlL3S/ZRs6Dv0jHJBrsRkIE974A7Id5XOCfudxwMXEW8
	1a7AvhIvDw2FrjdiZdXKDxUzL8P/kDknjry+bib70wFQ07e/drAK7OrpbbZEMsgxeA1da0VUsbiZB
	L66MpP44w+hRNADByhMlvXaGcTEFvOqQ24ZvcJI2NxiDxDIhM0UfKyWidkVwFtIxEZUYRakSOu2UC
	p3RDzyqbLvZHAqv5ZD+vSfo2Q5HWpjDHcfmvrBWnoE46MoaT2Q7+yC3rWkBW0EEna1xjwAVnia65r
	dYhTMEP3+PhD6jvuSHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJQIE-00038o-G5; Tue, 31 Mar 2020 23:27:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJQI5-00038L-Fu; Tue, 31 Mar 2020 23:27:30 +0000
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
 [209.85.208.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B926621473;
 Tue, 31 Mar 2020 23:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585697249;
 bh=x7DzV0s4ROjdZWJe2RxSIJB/ii7d/wsIeF2JinMwFOo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0xWtKYorfntJUn3zsbp0ID4Nl7w4wPpnZO5Ggo8YLC3vMGTIxNDHex5Hd9S2Qltpd
 nZuYpuIZWwZzhl09dXzcPj3wemdniZPT8qIfIyFahD2+ug3yUOrGMLmzgVHPaHUZX0
 WRzXsVyRAKP+T6V8EVv46Y/i8io7KfBvZvibs6jQ=
Received: by mail-ed1-f46.google.com with SMTP id e5so27452463edq.5;
 Tue, 31 Mar 2020 16:27:28 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3MHfnjPUJtbW5e8P2gp6x/yGAv7sMinogmAGwl6jTdC3f/Ymgu
 uQeK7UdGJRupCYVcHQmMKsikwHstRxwuZ/tT8A==
X-Google-Smtp-Source: ADFU+vtBb1KxI4+vTeZ5U2HQ3nMwxxGyWPlJXzhWQefQTTzE7BevfFVF32dfd5Ohkz+crkUGgNF6LeglDGiRNsaNUxQ=
X-Received: by 2002:a50:9f07:: with SMTP id b7mr18189302edf.148.1585697247066; 
 Tue, 31 Mar 2020 16:27:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200331214609.1742152-1-enric.balletbo@collabora.com>
 <20200331214609.1742152-2-enric.balletbo@collabora.com>
In-Reply-To: <20200331214609.1742152-2-enric.balletbo@collabora.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 1 Apr 2020 07:27:16 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9S_tWeB5VAVYv8mtFOgtAqw=9ts+a5ugEkaYFvKujosQ@mail.gmail.com>
Message-ID: <CAAOTY_9S_tWeB5VAVYv8mtFOgtAqw=9ts+a5ugEkaYFvKujosQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] clk / soc: mediatek: Bind clock and gpu driver for
 mt2712
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_162729_573571_EB58106D 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Matthias Brugger <mbrugger@suse.com>, Richard Fontana <rfontana@redhat.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, matthias.bgg@kernel.org,
 linux-kernel@vger.kernel.org, ulrich.hecht+renesas@gmail.com,
 Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, hsinyi@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Allison Randal <allison@lohutok.net>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEVucmljOgoKRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9AY29sbGFi
b3JhLmNvbT4g5pa8IDIwMjDlubQ05pyIMeaXpSDpgLHkuIkg5LiK5Y2INTo0N+Wvq+mBk++8mgo+
Cj4gTm93IHRoYXQgdGhlIG1tc3lzIGRyaXZlciBpcyB0aGUgdG9wLWxldmVsIGVudHJ5IHBvaW50
IGZvciB0aGUKPiBtdWx0aW1lZGlhIHN1YnN5c3RlbSwgd2UgY291bGQgYmluZCB0aGUgY2xvY2sg
YW5kIHRoZSBncHUgZHJpdmVyIG9uCj4gdGhvc2UgZGV2aWNlcyB0aGF0IGlzIGV4cGVjdGVkIHRv
IHdvcmssIHNvIHRoZSBkcm0gZHJpdmVyIGlzCj4gaW50YW50aWF0ZWQgYnkgdGhlIG1tc3lzIGRy
aXZlciBhbmQgZGlzcGxheSwgaG9wZWZ1bGx5LCB3b3JraW5nIGFnYWluIG9uCj4gdGhvc2UgZGV2
aWNlcy4KClJldmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9y
Zz4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxs
ZXRib0Bjb2xsYWJvcmEuY29tPgo+IC0tLQo+IElmIHlvdSBoYXZlIHRoaXMgaGFyZHdhcmUsIHBs
ZWFzZSBraW5kbHkgcHJvdmlkZSB5b3VyIHRlc3RlZCB0YWcuIE9ubHkKPiBidWlsZCB0ZXN0ZWQu
Cj4KPiAgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10MjcxMi1tbS5jIHwgOCArKy0tLS0tLQo+
ICBkcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYyAgICAgfCA4ICsrKysrKysrCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQyNzEyLW1tLmMgYi9kcml2ZXJzL2Ns
ay9tZWRpYXRlay9jbGstbXQyNzEyLW1tLmMKPiBpbmRleCAxYzU5NDhiZTM1ZjMuLjY2MGMxZjYz
MjkzZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQyNzEyLW1tLmMK
PiArKysgYi9kcml2ZXJzL2Nsay9tZWRpYXRlay9jbGstbXQyNzEyLW1tLmMKPiBAQCAtMTI4LDkg
KzEyOCwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG10a19nYXRlIG1tX2Nsa3NbXSA9IHsKPgo+
ICBzdGF0aWMgaW50IGNsa19tdDI3MTJfbW1fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgewo+ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAr
ICAgICAgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IGRldi0+cGFyZW50LT5vZl9ub2RlOwo+
ICAgICAgICAgc3RydWN0IGNsa19vbmVjZWxsX2RhdGEgKmNsa19kYXRhOwo+ICAgICAgICAgaW50
IHI7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGUgPSBwZGV2LT5kZXYub2Zfbm9k
ZTsKPgo+ICAgICAgICAgY2xrX2RhdGEgPSBtdGtfYWxsb2NfY2xrX2RhdGEoQ0xLX01NX05SX0NM
Syk7Cj4KPiBAQCAtMTQ2LDExICsxNDcsNiBAQCBzdGF0aWMgaW50IGNsa19tdDI3MTJfbW1fcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIHJldHVybiByOwo+ICB9
Cj4KPiAtc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgb2ZfbWF0Y2hfY2xrX210Mjcx
Ml9tbVtdID0gewo+IC0gICAgICAgeyAuY29tcGF0aWJsZSA9ICJtZWRpYXRlayxtdDI3MTItbW1z
eXMiLCB9LAo+IC0gICAgICAge30KPiAtfTsKPiAtCj4gIHN0YXRpYyBzdHJ1Y3QgcGxhdGZvcm1f
ZHJpdmVyIGNsa19tdDI3MTJfbW1fZHJ2ID0gewo+ICAgICAgICAgLnByb2JlID0gY2xrX210Mjcx
Ml9tbV9wcm9iZSwKPiAgICAgICAgIC5kcml2ZXIgPSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c29jL21lZGlhdGVrL210ay1tbXN5cy5jIGIvZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1tc3lz
LmMKPiBpbmRleCAwNWUzMjJjOWMzMDEuLmM3ZDNiN2JjZmEzMiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3NvYy9tZWRpYXRlay9tdGstbW1zeXMuYwo+ICsrKyBiL2RyaXZlcnMvc29jL21lZGlhdGVr
L210ay1tbXN5cy5jCj4gQEAgLTgwLDYgKzgwLDEwIEBAIHN0cnVjdCBtdGtfbW1zeXNfZHJpdmVy
X2RhdGEgewo+ICAgICAgICAgY29uc3QgY2hhciAqY2xrX2RyaXZlcjsKPiAgfTsKPgo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IG10a19tbXN5c19kcml2ZXJfZGF0YSBtdDI3MTJfbW1zeXNfZHJpdmVy
X2RhdGEgPSB7Cj4gKyAgICAgICAuY2xrX2RyaXZlciA9ICJjbGstbXQyNzEyLW1tIiwKPiArfTsK
PiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbXRrX21tc3lzX2RyaXZlcl9kYXRhIG10ODE3M19t
bXN5c19kcml2ZXJfZGF0YSA9IHsKPiAgICAgICAgIC5jbGtfZHJpdmVyID0gImNsay1tdDgxNzMt
bW0iLAo+ICB9Owo+IEBAIC0zMTksNiArMzIzLDEwIEBAIHN0YXRpYyBpbnQgbXRrX21tc3lzX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIH0KPgo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCBvZl9tYXRjaF9tdGtfbW1zeXNbXSA9IHsKPiArICAgICAgIHsK
PiArICAgICAgICAgICAgICAgLmNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQyNzEyLW1tc3lzIiwK
PiArICAgICAgICAgICAgICAgLmRhdGEgPSAmbXQyNzEyX21tc3lzX2RyaXZlcl9kYXRhLAo+ICsg
ICAgICAgfSwKPiAgICAgICAgIHsKPiAgICAgICAgICAgICAgICAgLmNvbXBhdGlibGUgPSAibWVk
aWF0ZWssbXQ4MTczLW1tc3lzIiwKPiAgICAgICAgICAgICAgICAgLmRhdGEgPSAmbXQ4MTczX21t
c3lzX2RyaXZlcl9kYXRhLAo+IC0tCj4gMi4yNS4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0
Cj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
