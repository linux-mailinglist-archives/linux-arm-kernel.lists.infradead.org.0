Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E3D1D4AEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8f2udnvdRnKeWn1IhUsUIYhdxCylvAYR022XKlstvB8=; b=VOjhhH5k0Y2xno
	ddXJ7OONiq5F8Ch9bDcUU7E4/XUdTxv0Z6EzSqiCet/luJKa3uKA2n79B8dQktjMB7rKNw2qKe4ug
	XVUknKdN7AKGKINbOx3REHtZU0p90L+ww9aGk2KdCELUW6oVTCC/mqcMLRYw8zM2OFvlokhVHZkL+
	Yb43GcDTUgpop5+kN1d+S5vPsH6hI0Sg1qB9TduwjrttaYT/znjlryos1qpO3uI8mAGDdFfR9/KS4
	xV+ASMyz+DA1yh+t3FV/MTSI77oe78u/bci1M4LKspFFitQmqy7qe2TrrZ++KhsyASwKM6GV7pxPU
	lKKcmZftuiavod5yo6pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXaX-00035D-RB; Fri, 15 May 2020 10:29:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXaH-00032u-Tl
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:29:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id j5so2949996wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 03:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xpA4uoROidais1iNpnkNzF9vq5C6X235V0wZ35uHdEI=;
 b=CXEYEEqcvkty6QbjHU8IC9+4m00nYkEX+SNv9RcxVR5/SFF+YXke+BvJ6oVoOabQdZ
 zNfD971SDDWzHM8i6tMy7Ide1qyTwoimukooCDQG010KoMF5GvG2qiwCDrJzTOJ/ST1J
 prbm8Ynnzt8vqseddRKMMZbinTDqtdohbq4rUwGgpc6TUwZFSsD+mzok7VbjTnaA+NPE
 7SxmiCj38OP6B2dbzDqJc0ZqywE58/rTxvAnd+HOSQ/e7PuK5vIet7N3V1P5fBuJTFqx
 810hQ3AwpINxJ1EOF2q5K54I50ZckVeqd/fsfxWyzTJVbsxau3rGuKWQxQF/tGuS+Hp3
 egGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xpA4uoROidais1iNpnkNzF9vq5C6X235V0wZ35uHdEI=;
 b=PGM5ajjzTSlZpMwx78wHffzcz1xrXJf/HZ21BFyU1w5LWwepq3Q+ou5yVKn80ZePwQ
 qQkkezpPNl+wrqbJL9kfsF5qmuGimK8lqG+rjiFgE6lVQ1LEB8nktSUXegTdTXyrbi2f
 MAHY65Xio4cXtNVkrX0KLv5dOq6J5mb902eQK1DyJ9MYi2D9RAkNpuejKD53Bsxj0y/X
 sHQXgNHCbuCjgtWOcmcnczCchqiEoPzt/AELzDObN7lh7guxHDctZkBt5QFcMLyp8ije
 BCOPOrUR8FDA22ctzGICHpDeT4pj/SFUfPxUVFyGKBdqflz7PVXu95QFB2T4h7NZgaK+
 MWyQ==
X-Gm-Message-State: AOAM531HsWrwn62+3OX4FYlRnFRmFLk9PP/mwmVAEF+RvBRtflewRmSU
 4f0VhQHNL8BZAA+fwnOtcmo+kg==
X-Google-Smtp-Source: ABdhPJxTv+9YnkgoMuYBGuW3wQDNEiVk0bNzw09WJsjwgIV7JP0J+YUnU47dJL1yqsEb92xCMVOBXw==
X-Received: by 2002:adf:a1d7:: with SMTP id v23mr3514719wrv.155.1589538531500; 
 Fri, 15 May 2020 03:28:51 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id j16sm2878629wru.13.2020.05.15.03.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:28:50 -0700 (PDT)
Date: Fri, 15 May 2020 11:28:48 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
Message-ID: <20200515102848.GH271301@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_032854_029912_E871F45F 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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

T24gVGh1LCAzMCBBcHIgMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gSGkgTGVlLAo+IAo+
IEFtIDIwMjAtMDQtMjMgMTk6NDUsIHNjaHJpZWIgTWljaGFlbCBXYWxsZToKPiA+IFRoZXJlIG1p
Z2h0IGJlIG11bHRpcGxlIGNoaWxkcmVuIHdpdGggdGhlIGRldmljZSB0cmVlIGNvbXBhdGlibGUs
IGZvcgo+ID4gZXhhbXBsZSBpZiBhIE1GRCBoYXMgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIHRoZSBz
YW1lIGZ1bmN0aW9uLiBJbiB0aGlzCj4gPiBjYXNlIG9ubHkgdGhlIGZpcnN0IGlzIG1hdGNoZWQg
YW5kIHRoZSBvdGhlciBjaGlsZHJlbiBnZXQgYSB3cm9uZwo+ID4gb2Zfbm9kZSByZWZlcmVuY2Uu
Cj4gPiBBZGQgYSBuZXcgb3B0aW9uIHRvIG1hdGNoIGFsc28gYWdhaW5zdCB0aGUgdW5pdCBhZGRy
ZXNzIG9mIHRoZSBjaGlsZAo+ID4gbm9kZS4gQWRkaXRvbmFsbHksIGEgbmV3IGhlbHBlciBPRl9N
RkRfQ0VMTF9SRUcgaXMgYWRkZWQuCj4gCj4gCj4gRG8geW91IHRoaW5rIHRoaXMgaXMgZmVhc2li
bGU/IEkgZ3Vlc3MgdGhpcyBpcyB0aGUgYmlnZ2VzdCB1bmNlcnRhaW50eQo+IGZvciBtZSBhdCB0
aGUgbW9tZW50IGluIHRoaXMgcGF0Y2ggc2VyaWVzLgoKSSB0aGluayBpdCBzb3VuZHMgZmluZSBp
biBwcmluY2lwbGUuICBTbyBsb25nIGFzIGl0IGRvZXNuJ3QgY2hhbmdlIHRoZQpleGlzdGluZyBi
ZWhhdmlvdXIgd2hlbiBvZl9yZWcgaXNuJ3Qgc2V0LgoKPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
ZWwgV2FsbGUgPG1pY2hhZWxAd2FsbGUuY2M+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21mZC9tZmQt
Y29yZS5jICAgfCAyOSArKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+ID4gIGluY2x1ZGUv
bGludXgvbWZkL2NvcmUuaCB8IDI2ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gPiAgMiBm
aWxlcyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWZkL21mZC1jb3JlLmMgYi9kcml2ZXJzL21mZC9tZmQtY29y
ZS5jCj4gPiBpbmRleCBlNzM1NTY1OTY5YjMuLjRlY2IzNzYzMzhmNyAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvbWZkL21mZC1jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMvbWZkL21mZC1jb3JlLmMK
PiA+IEBAIC0xMTcsNiArMTE3LDcgQEAgc3RhdGljIGludCBtZmRfYWRkX2RldmljZShzdHJ1Y3Qg
ZGV2aWNlICpwYXJlbnQsIGludAo+ID4gaWQsCj4gPiAgCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAg
PSBOVUxMOwo+ID4gIAlpbnQgcmV0ID0gLUVOT01FTTsKPiA+ICAJaW50IHBsYXRmb3JtX2lkOwo+
ID4gKwl1MzIgb2ZfcmVnOwo+ID4gIAlpbnQgcjsKPiA+IAo+ID4gIAlpZiAoaWQgPT0gUExBVEZP
Uk1fREVWSURfQVVUTykKPiA+IEBAIC0xNTEsMTYgKzE1MiwyNiBAQCBzdGF0aWMgaW50IG1mZF9h
ZGRfZGV2aWNlKHN0cnVjdCBkZXZpY2UgKnBhcmVudCwKPiA+IGludCBpZCwKPiA+IAo+ID4gIAlp
ZiAocGFyZW50LT5vZl9ub2RlICYmIGNlbGwtPm9mX2NvbXBhdGlibGUpIHsKPiA+ICAJCWZvcl9l
YWNoX2NoaWxkX29mX25vZGUocGFyZW50LT5vZl9ub2RlLCBucCkgewo+ID4gLQkJCWlmIChvZl9k
ZXZpY2VfaXNfY29tcGF0aWJsZShucCwgY2VsbC0+b2ZfY29tcGF0aWJsZSkpIHsKPiA+IC0JCQkJ
aWYgKCFvZl9kZXZpY2VfaXNfYXZhaWxhYmxlKG5wKSkgewo+ID4gLQkJCQkJLyogSWdub3JlIGRp
c2FibGVkIGRldmljZXMgZXJyb3IgZnJlZSAqLwo+ID4gLQkJCQkJcmV0ID0gMDsKPiA+IC0JCQkJ
CWdvdG8gZmFpbF9hbGlhczsKPiA+IC0JCQkJfQo+ID4gLQkJCQlwZGV2LT5kZXYub2Zfbm9kZSA9
IG5wOwo+ID4gLQkJCQlwZGV2LT5kZXYuZndub2RlID0gJm5wLT5md25vZGU7Cj4gPiAtCQkJCWJy
ZWFrOwo+ID4gKwkJCWlmICghb2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsIGNlbGwtPm9mX2Nv
bXBhdGlibGUpKQo+ID4gKwkJCQljb250aW51ZTsKPiA+ICsKPiA+ICsJCQkvKiBhbHNvIG1hdGNo
IHRoZSB1bml0IGFkZHJlc3MgaWYgc2V0ICovCgpQbGVhc2UgdXNlIGNvcnJlY3QgZ3JhbW1hciBp
biBjb21tZW50cyAobGVhdmluZyBvZmYgdGhlIGZ1bGwtc3RvcCkuCgo+ID4gKwkJCWlmIChjZWxs
LT5vZl9yZWcgJiBNRkRfT0ZfUkVHX1ZBTElEKSB7Cj4gPiArCQkJCWlmIChvZl9wcm9wZXJ0eV9y
ZWFkX3UzMihucCwgInJlZyIsICZvZl9yZWcpKQo+ID4gKwkJCQkJY29udGludWU7Cj4gPiArCQkJ
CWlmICgoY2VsbC0+b2ZfcmVnICYgTUZEX09GX1JFR19NQVNLKSAhPSBvZl9yZWcpCj4gPiArCQkJ
CQljb250aW51ZTsKPiA+ICAJCQl9Cj4gPiArCj4gPiArCQkJaWYgKCFvZl9kZXZpY2VfaXNfYXZh
aWxhYmxlKG5wKSkgewo+ID4gKwkJCQkvKiBJZ25vcmUgZGlzYWJsZWQgZGV2aWNlcyBlcnJvciBm
cmVlICovCj4gPiArCQkJCXJldCA9IDA7Cj4gPiArCQkJCWdvdG8gZmFpbF9hbGlhczsKPiA+ICsJ
CQl9Cj4gPiArCj4gPiArCQkJcGRldi0+ZGV2Lm9mX25vZGUgPSBucDsKPiA+ICsJCQlwZGV2LT5k
ZXYuZndub2RlID0gJm5wLT5md25vZGU7Cj4gPiArCQkJYnJlYWs7Cj4gPiAgCQl9Cj4gPiAgCX0K
PiA+IAo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvbWZkL2NvcmUuaCBiL2luY2x1ZGUv
bGludXgvbWZkL2NvcmUuaAo+ID4gaW5kZXggZDAxZDEyOTllNDlkLi5jMmMwYWQ2YjE0ZjMgMTAw
NjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L21mZC9jb3JlLmgKPiA+ICsrKyBiL2luY2x1ZGUv
bGludXgvbWZkL2NvcmUuaAo+ID4gQEAgLTEzLDggKzEzLDExIEBACj4gPiAgI2luY2x1ZGUgPGxp
bnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ID4gCj4gPiAgI2RlZmluZSBNRkRfUkVTX1NJWkUoYXJy
KSAoc2l6ZW9mKGFycikgLyBzaXplb2Yoc3RydWN0IHJlc291cmNlKSkKPiA+ICsjZGVmaW5lIE1G
RF9PRl9SRUdfVkFMSUQJQklUKDMxKQoKV2hhdCBhYm91dCA2NGJpdCBwbGF0Zm9ybXM/Cgo+ID4g
KyNkZWZpbmUgTUZEX09GX1JFR19NQVNLCQlHRU5NQVNLKDMwLCAwKQo+ID4gCj4gPiAtI2RlZmlu
ZSBNRkRfQ0VMTF9BTEwoX25hbWUsIF9yZXMsIF9wZGF0YSwgX3Bkc2l6ZSwgX2lkLCBfY29tcGF0
LAo+ID4gX21hdGNoKVwKPiA+ICsjZGVmaW5lIE1GRF9DRUxMX0FMTChfbmFtZSwgX3JlcywgX3Bk
YXRhLCBfcGRzaXplLCBfaWQsIF9jb21wYXQsCVwKPiA+ICsJCSAgICAgX29mX3JlZywgX21hdGNo
KQkJCQkJXAo+ID4gIAl7CQkJCQkJCQlcCj4gPiAgCQkubmFtZSA9IChfbmFtZSksCQkJCQlcCj4g
PiAgCQkucmVzb3VyY2VzID0gKF9yZXMpLAkJCQkJXAo+ID4gQEAgLTIyLDI0ICsyNSwzMiBAQAo+
ID4gIAkJLnBsYXRmb3JtX2RhdGEgPSAoX3BkYXRhKSwJCQkJXAo+ID4gIAkJLnBkYXRhX3NpemUg
PSAoX3Bkc2l6ZSksCQkJCVwKPiA+ICAJCS5vZl9jb21wYXRpYmxlID0gKF9jb21wYXQpLAkJCQlc
Cj4gPiArCQkub2ZfcmVnID0gKF9vZl9yZWcpLAkJCQkJXAo+ID4gIAkJLmFjcGlfbWF0Y2ggPSAo
X21hdGNoKSwJCQkJCVwKPiA+ICAJCS5pZCA9IChfaWQpLAkJCQkJCVwKPiA+ICAJfQo+ID4gCj4g
PiArI2RlZmluZSBPRl9NRkRfQ0VMTF9SRUcoX25hbWUsIF9yZXMsIF9wZGF0YSwgX3Bkc2l6ZSwg
X2lkLCBfY29tcGF0LAlcCj4gPiArCQkJX29mX3JlZykJCQkJCVwKPiA+ICsJTUZEX0NFTExfQUxM
KF9uYW1lLCBfcmVzLCBfcGRhdGEsIF9wZHNpemUsIF9pZCwgX2NvbXBhdCwJXAo+ID4gKwkJICAg
ICAoKF9vZl9yZWcpIHwgTUZEX09GX1JFR19WQUxJRCksIE5VTEwpCQlcCj4gPiArCj4gPiAgI2Rl
ZmluZSBPRl9NRkRfQ0VMTChfbmFtZSwgX3JlcywgX3BkYXRhLCBfcGRzaXplLF9pZCwgX2NvbXBh
dCkJCVwKPiA+IC0JTUZEX0NFTExfQUxMKF9uYW1lLCBfcmVzLCBfcGRhdGEsIF9wZHNpemUsIF9p
ZCwgX2NvbXBhdCwgTlVMTCkJXAo+ID4gKwlNRkRfQ0VMTF9BTEwoX25hbWUsIF9yZXMsIF9wZGF0
YSwgX3Bkc2l6ZSwgX2lkLCBfY29tcGF0LAlcCj4gPiArCQkgICAgIDAsIE5VTEwpCQkJCQkJXAo+
ID4gCj4gPiAgI2RlZmluZSBBQ1BJX01GRF9DRUxMKF9uYW1lLCBfcmVzLCBfcGRhdGEsIF9wZHNp
emUsIF9pZCwgX21hdGNoKQlcCj4gPiAtCU1GRF9DRUxMX0FMTChfbmFtZSwgX3JlcywgX3BkYXRh
LCBfcGRzaXplLCBfaWQsIE5VTEwsIF9tYXRjaCkJXAo+ID4gKwlNRkRfQ0VMTF9BTEwoX25hbWUs
IF9yZXMsIF9wZGF0YSwgX3Bkc2l6ZSwgX2lkLCBOVUxMLCAwLAlcCj4gPiArCQkgICAgIF9tYXRj
aCkJCQkJCQlcCj4gPiAKPiA+ICAjZGVmaW5lIE1GRF9DRUxMX0JBU0lDKF9uYW1lLCBfcmVzLCBf
cGRhdGEsIF9wZHNpemUsIF9pZCkJCVwKPiA+IC0JTUZEX0NFTExfQUxMKF9uYW1lLCBfcmVzLCBf
cGRhdGEsIF9wZHNpemUsIF9pZCwgTlVMTCwgTlVMTCkJXAo+ID4gKwlNRkRfQ0VMTF9BTEwoX25h
bWUsIF9yZXMsIF9wZGF0YSwgX3Bkc2l6ZSwgX2lkLCBOVUxMLCAwLCBOVUxMKSBcCj4gPiAKPiA+
ICAjZGVmaW5lIE1GRF9DRUxMX1JFUyhfbmFtZSwgX3JlcykJCQkJCVwKPiA+IC0JTUZEX0NFTExf
QUxMKF9uYW1lLCBfcmVzLCBOVUxMLCAwLCAwLCBOVUxMLCBOVUxMKQkJXAo+ID4gKwlNRkRfQ0VM
TF9BTEwoX25hbWUsIF9yZXMsIE5VTEwsIDAsIDAsIE5VTEwsIDAsIE5VTEwpCQlcCj4gPiAKPiA+
ICAjZGVmaW5lIE1GRF9DRUxMX05BTUUoX25hbWUpCQkJCQkJXAo+ID4gLQlNRkRfQ0VMTF9BTEwo
X25hbWUsIE5VTEwsIE5VTEwsIDAsIDAsIE5VTEwsIE5VTEwpCQlcCj4gPiArCU1GRF9DRUxMX0FM
TChfbmFtZSwgTlVMTCwgTlVMTCwgMCwgMCwgTlVMTCwgMCwgTlVMTCkJCVwKPiA+IAo+ID4gIHN0
cnVjdCBpcnFfZG9tYWluOwo+ID4gIHN0cnVjdCBwcm9wZXJ0eV9lbnRyeTsKPiA+IEBAIC03OCw2
ICs4OSw5IEBAIHN0cnVjdCBtZmRfY2VsbCB7Cj4gPiAgCSAqLwo+ID4gIAljb25zdCBjaGFyCQkq
b2ZfY29tcGF0aWJsZTsKPiA+IAo+ID4gKwkvKiBtYXRjaGluZyB0aGUgcmVnIHByb3BlcnR5IGlm
IHNldCAqLwoKUHJvcGVyIGdyYW1tYXIgcGxlYXNlLgoKIk9GIHVuaXQgYWRkcmVzcyBmb3IgZGV2
aWNlIG1hdGNoaW5nIgoKPiA+ICsJdW5zaWduZWQgaW50CQlvZl9yZWc7Cj4gPiArCj4gPiAgCS8q
IE1hdGNoZXMgQUNQSSAqLwo+ID4gIAljb25zdCBzdHJ1Y3QgbWZkX2NlbGxfYWNwaV9tYXRjaAkq
YWNwaV9tYXRjaDsKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
