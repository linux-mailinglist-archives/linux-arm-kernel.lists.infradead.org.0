Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DAA1BD49C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 08:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwmYhqMR8RFlJCSg2ZLTM9m2RwbAUs1DtYlUqXBCdBc=; b=iWs9qwWujb/0Va
	PctLKGJ1X/YCiLwyByR/h6wdr7+8smn0jMhIv7fzuyBdUixExv863f43hjRkcTqUrItw7Zl8VFaGM
	HZ2dsFOxbggClPtSH5VQnWLhHSKEB2wTlh/Ry/02WKenbUAFfccjTRiDhqCywX2LRX1Pa5IuUgq8E
	lhzQph6/2W2s2Prmm+va+6FJ8Y/PXGBRgTQf1zqVTV3LjCaVjQOsi1kX1w7nXMcvwlJY2uuqhcr1t
	DK9B0GLrlaoD6P8d+6rQ1e+33eVnmo0c9gUedtugfE1MHXUV98dLUwT/I27ePjTzvr1/U+nIfn9Kl
	mz0GUKAGf8E3mor5qdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTgC3-0000wT-5n; Wed, 29 Apr 2020 06:27:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTgBu-0000w9-Ho
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 06:27:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so1005880wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 23:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=wv05h1X7qRrPjYPf9y0VD7+PHwezUYitVP0Fh0igQuY=;
 b=I4vZV4PACb5f7K2uxifM99GPqkcfyrpLc74PzSrCUF61KrqkAGgKNBFNHr+XiC1Zzr
 XqIjNrgmZ91TIAda8FEWPq1gg3Xaa84/0qQWu5Ae3sW4csU35iEp2O/nwCWdMpbr7El6
 eoZD/tvPP5RteAWgnhbWIY/PMqJ+ssDOZvekrrEimOB3ENhCiVutsoNIJ5zLGgynqmXb
 8Rc5rpcdAkqbshwzs7C11AcGOjJ9hcJFu+NIFlqEadlAtAupqh+9vJ50K1QkhtgQmjWR
 R9djt4X9WtAHl95Nhhfz3sSbWTT0MATduTJ2F9hJdP0sNOI+tsziWlYROFDtUt7Fy1Op
 uYQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=wv05h1X7qRrPjYPf9y0VD7+PHwezUYitVP0Fh0igQuY=;
 b=HswyX8kwvE2BDao//nU90XYTiSmfTyi7HKtlfJoQQTwUaX+p2uE84ccbgqfv7713VB
 C1pClUUgcUUQlXz9zPdyX0pLnmRYobcCPxsg3CZ950B2K+5ZjtlOSjnfRABDM1p5sOuv
 ZGxxrxhUkXk0em8hvXM40GWAnUgLpXw/iyGr/wiLU9di52fFAUOg8lbF7nt/kvUcaRRa
 wntHdLEuX20ccovhhXV1VrEzagz/jjfFd3O1vx01J3k6OzSuRd/3oMOtU8UnqMhcMYNt
 ewQua8za9BXN0IBR45I/Hsk7CWN6ZwhadQHMh/Aws4I8gMwOON2dOwcl4GilpmtgBMZU
 571A==
X-Gm-Message-State: AGi0PuZZM8CRT7y08ukBfRV2lWTvhX+qC+IdWI69bmbU/IC4dab8jDDr
 BTXA2/RZ6U0ZNOoM1uAWu1TWHQ==
X-Google-Smtp-Source: APiQypKTqIt46QQB2nB/SSJZXWRFVeB9A294fdRkNMgBYLOeiiFcpBnVXBSKVh/jOHoB1iCbHHyjSA==
X-Received: by 2002:adf:f187:: with SMTP id h7mr37818290wro.331.1588141648280; 
 Tue, 28 Apr 2020 23:27:28 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id t17sm27729510wro.2.2020.04.28.23.27.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 23:27:27 -0700 (PDT)
Date: Wed, 29 Apr 2020 07:27:25 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 05/16] mfd: Add support for Kontron sl28cpld
 management controller
Message-ID: <20200429062725.GU3559@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-6-michael@walle.cc>
 <20200428125049.GU185537@smile.fi.intel.com>
 <5e2d486077f9e2ce8bd9b171cf806fd9@walle.cc>
 <20200428144958.GZ185537@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428144958.GZ185537@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_232730_755577_158C0CE4 
X-CRM114-Status: GOOD (  14.86  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyOCBBcHIgMjAyMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgoKPiBPbiBUdWUsIEFw
ciAyOCwgMjAyMCBhdCAwNDo0MzoyNFBNICswMjAwLCBNaWNoYWVsIFdhbGxlIHdyb3RlOgo+ID4g
QW0gMjAyMC0wNC0yOCAxNDo1MCwgc2NocmllYiBBbmR5IFNoZXZjaGVua286Cj4gPiA+IE9uIFRo
dSwgQXByIDIzLCAyMDIwIGF0IDA3OjQ1OjMyUE0gKzAyMDAsIE1pY2hhZWwgV2FsbGUgd3JvdGU6
Cj4gPiA+ID4gVGhpcyBwYXRjaCBhZGRzIGNvcmUgc3VwcG9ydCBmb3IgdGhlIGJvYXJkIG1hbmFn
ZW1lbnQgY29udHJvbGxlciBmb3VuZAo+ID4gPiA+IG9uIHRoZSBTTUFSQy1zQUwyOCBib2FyZC4g
SXQgY29uc2lzdHMgb2YgdGhlIGZvbGxvd2luZyBmdW5jdGlvbnM6Cj4gPiA+ID4gIC0gd2F0Y2hk
b2cKPiA+ID4gPiAgLSBHUElPIGNvbnRyb2xsZXIKPiA+ID4gPiAgLSBQV00gY29udHJvbGxlcgo+
ID4gPiA+ICAtIGZhbiBzZW5zb3IKPiA+ID4gPiAgLSBpbnRlcnJ1cHQgY29udHJvbGxlcgo+ID4g
PiAKPiA+ID4gLi4uCj4gPiA+IAo+ID4gPiA+ICBvYmotJChDT05GSUdfTUZEX1NUTUZYKSAJKz0g
c3RtZngubwo+ID4gPiA+IAo+ID4gPiA+ICBvYmotJChDT05GSUdfU0dJX01GRF9JT0MzKQkrPSBp
b2MzLm8KPiA+ID4gPiArCj4gPiA+ID4gK29iai0kKENPTkZJR19NRkRfU0wyOENQTEQpCSs9IHNs
MjhjcGxkLm8KPiA+ID4gCj4gPiA+IFBlcmhhcHMga2VlcCBhbiBvcmRlcj8KPiA+IAo+ID4gSSBk
b24ndCBzZWUgYW55IG9yZGVyIGluIHRoYXQgbWFrZWZpbGUuIExvb2tlZCB0byBtZSBsaWtlIGV2
ZXJ5IG5ldwo+ID4gZmlsZSB3YXMgYWRkZWQgYXQgdGhlIGVuZC4KPiAKPiBPa2F5LCBqdXN0IGRp
ZG4ndCBub3RlIGZyb20gYWJvdmUgY29udGV4dC4KClllcywgdGhpcyBpcyBoaXN0b3JpY2FsLiAg
SSd2ZSBiZWVuIG1lYW5pbmcgdG8gdmlzaXQgdGhpcyBmb3IgfjcgeWVhcnMhCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3Jn
IOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFj
ZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
