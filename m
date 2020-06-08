Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB801F1F3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 20:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSQCAjJNSfc5o2IWKTDJEJj5r1Ji8BrD63srHnuUKro=; b=TILcJKJJS7CC5A
	3sPT/BYndcYS1D4YQQ78xS4vteZXjHM6pcryUUkKjqdwQGO2pisvjtsctFNgOsw/mCnt2/QTS/bQV
	83QBCGzLsEu5B+0W/xPBFqrsluzaXcwiEDXTy8Mdp/G3PZetbmKzwgoDrTi5sLiIELLRQJKvHtiVB
	UtRxY8tp88R4VdPE4cEF3UJqQ5goIAJD/AO9QRjkY+bA9hW/XKGIwFTQo33YuIFDjSmyH0tv4RfAQ
	usnqBBTUGQSxLHmdENMdwE2N/jpu21jeD2ydNMN5aED7L/9Py4W/T6iwQxz6kvBhkO4S5NYNPSrMy
	uX8q+8hM0BBsbD7qeQ2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMlr-0003H3-Kt; Mon, 08 Jun 2020 18:45:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiMlj-00038a-TS
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 18:45:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so18570856wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 11:45:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ySspVCbCwHhpHyThSAZlpsL4E+rejtUqHxn7Z7vlWxo=;
 b=XaqIR5YYixt9BOP0z0KEUXloA92HRuoRKrairYtC9RkYMC9IpeWZNFhdtm3Ew0S0ik
 23GSnPKbcQ0iLuaO471GEgonjcDLwGaP8Kz5RZsF4qDAQJYhxfHq+SDj1wQnRnQsuPdk
 cRlIG+/OaEkp5nBrighVcnPHmVE9LKqgwSYhcc/FBr6yOKQxY1fsLjRZLIKWqRlMxgFK
 FBCq5icjXeGFENyFVicmG3XnbNL2HRcP8U3PYSH+QTyH+qDr5UGNuKjp33ymGS9uNwRR
 NsYdveDqU59LDwexizMe7iEdZ45qmTF7FMjUFX8k1NOHb97L6aRezBMZUufezBduirpN
 Wctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ySspVCbCwHhpHyThSAZlpsL4E+rejtUqHxn7Z7vlWxo=;
 b=egALLvifUmi1x6Jzwde4hZv8fc0NmalpxaIE8v10OwxG+Bqq86gSdxT5rAe52c2OSp
 fc4J1r6CtAJlxN/3FT6Pwmcn1aYdfL6qYXMzyggfbnlnlVXWYc/tq6vWjt6hSOVytSTN
 QtiQoBhGfs+ZT74w5X3w+pT+H2YUTTUHd8t7ioqnwOD9vlCaT3iauAlsAGtXIvUJ1juQ
 sDPZLV+UxwmJ85gEtqLrIXOWb+W2NAkMtg6xwZP+NIsNDPdmaMXLDCkgrN+piX9/SIzQ
 7hIXZLGvhv4oi/tAVkYDFBFdowkMidwnfuhHkZypHPnRzG8kC3JDapS5ha3PAU9FMVFG
 iHjg==
X-Gm-Message-State: AOAM533vhm8LRTNHIIeTQJA6LhcLbgozJ3VHSmS7YemDRuFAUqYOquSN
 ZaiBIfCqEM7Nu8Mwf98ywTZxBg==
X-Google-Smtp-Source: ABdhPJwJkROAZGlSnvebAmkphxhPvdl6ye0SyhN4iF5a2R8kuYku/y1mSAp6OBUwhp5UgMqFn2jP+w==
X-Received: by 2002:adf:d851:: with SMTP id k17mr216774wrl.30.1591641910077;
 Mon, 08 Jun 2020 11:45:10 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id u12sm576259wrq.90.2020.06.08.11.45.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:45:09 -0700 (PDT)
Date: Mon, 8 Jun 2020 19:45:07 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
Message-ID: <20200608184507.GC4106@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
 <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
 <20200608142413.GA4106@dell>
 <7566ef30fea9740f427f392aabde0eac@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7566ef30fea9740f427f392aabde0eac@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_114511_952066_C99C27A3 
X-CRM114-Status: GOOD (  25.19  )
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-watchdog@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
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

T24gTW9uLCAwOCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNi0w
OCAxNjoyNCwgc2NocmllYiBMZWUgSm9uZXM6Cj4gPiBPbiBNb24sIDI1IE1heSAyMDIwLCBNaWNo
YWVsIFdhbGxlIHdyb3RlOgo+ID4gPiBBbSAyMDIwLTA1LTE1IDEyOjI4LCBzY2hyaWViIExlZSBK
b25lczoKPiA+ID4gPiBPbiBUaHUsIDMwIEFwciAyMDIwLCBNaWNoYWVsIFdhbGxlIHdyb3RlOgo+
ID4gPiA+Cj4gPiA+ID4gPiBIaSBMZWUsCj4gPiA+ID4gPgo+ID4gPiA+ID4gQW0gMjAyMC0wNC0y
MyAxOTo0NSwgc2NocmllYiBNaWNoYWVsIFdhbGxlOgo+ID4gPiA+ID4gPiBUaGVyZSBtaWdodCBi
ZSBtdWx0aXBsZSBjaGlsZHJlbiB3aXRoIHRoZSBkZXZpY2UgdHJlZSBjb21wYXRpYmxlLCBmb3IK
PiA+ID4gPiA+ID4gZXhhbXBsZSBpZiBhIE1GRCBoYXMgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIHRo
ZSBzYW1lIGZ1bmN0aW9uLiBJbiB0aGlzCj4gPiA+ID4gPiA+IGNhc2Ugb25seSB0aGUgZmlyc3Qg
aXMgbWF0Y2hlZCBhbmQgdGhlIG90aGVyIGNoaWxkcmVuIGdldCBhIHdyb25nCj4gPiA+ID4gPiA+
IG9mX25vZGUgcmVmZXJlbmNlLgo+ID4gPiA+ID4gPiBBZGQgYSBuZXcgb3B0aW9uIHRvIG1hdGNo
IGFsc28gYWdhaW5zdCB0aGUgdW5pdCBhZGRyZXNzIG9mIHRoZSBjaGlsZAo+ID4gPiA+ID4gPiBu
b2RlLiBBZGRpdG9uYWxseSwgYSBuZXcgaGVscGVyIE9GX01GRF9DRUxMX1JFRyBpcyBhZGRlZC4K
PiA+IAo+ID4gWy4uLl0KPiA+IAo+ID4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9tZmQvY29yZS5oIGIvaW5jbHVkZS9saW51eC9tZmQvY29yZS5oCj4gPiA+ID4gPiA+IGluZGV4
IGQwMWQxMjk5ZTQ5ZC4uYzJjMGFkNmIxNGYzIDEwMDY0NAo+ID4gPiA+ID4gPiAtLS0gYS9pbmNs
dWRlL2xpbnV4L21mZC9jb3JlLmgKPiA+ID4gPiA+ID4gKysrIGIvaW5jbHVkZS9saW51eC9tZmQv
Y29yZS5oCj4gPiA+ID4gPiA+IEBAIC0xMyw4ICsxMywxMSBAQAo+ID4gPiA+ID4gPiAgI2luY2x1
ZGUgPGxpbnV4L3BsYXRhb3JtX2RldmljZS5oPgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiAgI2Rl
ZmluZSBNRkRfUkVTX1NJWkUoYXJyKSAoc2l6ZW9mKGFycikgLyBzaXplb2Yoc3RydWN0IHJlc291
cmNlKSkKPiA+ID4gPiA+ID4gKyNkZWZpbmUgTUZEX09GX1JFR19WQUxJRAlCSVQoMzEpCj4gPiA+
ID4KPiA+ID4gPiBXaGF0IGFib3V0IDY0Yml0IHBsYXRmb3Jtcz8KPiA+ID4gCj4gPiA+IFRoZSBp
ZGVhIHdhcyB0byBoYXZlIHRoaXMgYXMgYSBsb2dpY2FsIG51bWJlci4gSS5lLiBmb3Igbm93IHlv
dSBtYXkKPiA+ID4gb25seQo+ID4gPiBoYXZlIG9uZSBzdWJkZXZpY2UgcGVyIHVuaXF1ZSBjb21w
YXRpYmxlIHN0cmluZy4gSW4gZmFjdCwgaWYgeW91Cj4gPiA+IGhhdmUgYQo+ID4gPiBsb29rIGF0
IHRoZSBhYjg1MDAuYywgdGhlcmUgYXJlIG11bHRpcGxlICJzdGVyaWNzc29uLGFiODUwMC1wd20i
Cj4gPiA+IHN1YmRldmljZXMuIEJ1dCB0aGVyZSBpcyBvbmx5IG9uZSBEVCBub2RlIGZvciBhbGwg
dGhyZWUgb2YgaXQuIEkgZ3Vlc3MKPiA+ID4gdGhpcyB3b3JrcyBhcyBsb25nIGFzIHlvdSBkb24n
dCB1c2UgcGhhbmRsZXMgdG8gcmVmZXJlbmNlIHRoZSBwd20gbm9kZQo+ID4gPiBpbiB0aGUgZGV2
aWNlIHRyZWUuIE9yIHlvdSBkb24ndCB3YW50IHRvIHVzZSBkZXZpY2UgdHJlZSBwcm9wZXJ0aWVz
Cj4gPiA+IHBlciBzdWJkZXZpY2UgKGZvciBleGFtcGxlIHRoZSAidGltZW91dC1zZWMiIG9mIGEg
d2F0Y2hkb2cgZGV2aWNlKS4KPiA+IAo+ID4gVGhpcyBpcyBub3QgYSBnb29kIGV4YW1wbGUsIGFz
IHRoZSAic3Rlcmljc3NvbixhYjg1MDAtcHdtIiBpcwo+ID4gbGVnaXRpbWF0ZS4gIEhlcmUgd2Ug
YXJlIHJlZ2lzdGVyaW5nIDMgcG90ZW50aWFsIGRldmljZXMsIGJ1dCBvbmx5Cj4gPiBpbnN0YW50
aWF0aW5nIDEgb2YgdGhlbS4KPiAKPiBNaD8KPiAKPiBzdGF0aWMgY29uc3Qgc3RydWN0IG1mZF9j
ZWxsIGFiODUwMF9kZXZzW10gPSB7Cj4gLi4KPiAgICAgICAgT0ZfTUZEX0NFTEwoImFiODUwMC1w
d20iLAo+ICAgICAgICAgICAgICAgICAgICAgTlVMTCwgTlVMTCwgMCwgMSwgInN0ZXJpY3Nzb24s
YWI4NTAwLXB3bSIpLAo+ICAgICAgICAgT0ZfTUZEX0NFTEwoImFiODUwMC1wd20iLAo+ICAgICAg
ICAgICAgICAgICAgICAgTlVMTCwgTlVMTCwgMCwgMiwgInN0ZXJpY3Nzb24sYWI4NTAwLXB3bSIp
LAo+ICAgICAgICAgT0ZfTUZEX0NFTEwoImFiODUwMC1wd20iLAo+ICAgICAgICAgICAgICAgICAg
ICAgTlVMTCwgTlVMTCwgMCwgMywgInN0ZXJpY3Nzb24sYWI4NTAwLXB3bSIpLAo+IC4uCj4gfQo+
IAo+IEFuZCBpbiBwd20tYWI4NTAwLmMgdGhlcmUgYXJlIHRocmVlIG9mZnNldHMgYmFzZWQgb24g
dGhlIHBkZXYtPmlkLgo+IAo+IEFtIEkgbWlzc2luZyBzb21ldGhpbmcgaGVyZT8KClNjcmFwIHdo
YXQgSSBzYWlkIGFib3ZlLgoKRm9yIHNvbWUgcmVhc29uIEkgaGFkIG9mX3BsYXRmb3JtX3BvcHVs
YXRlKCkgaW4gbXkgaGVhZC4KClRoaXMgd2lsbCByZWdpc3RlciBhbmQgZW51bWVyYXRlIDMgZGV2
aWNlcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0g
RGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZv
ciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
