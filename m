Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791441F13CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 09:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPh2KmN/DJCVEUsBbVghpeTdHLMe3aC+HY3MYlKqIZ4=; b=uYotRaSwAuKZQv
	k5LqT/k8pAwxUQqrHLim6YTgmuCgFBTdA7TellmTyzvvI/Mm7ew74I19NBDkkUxylMYtkOjejs3nS
	LOxxT7vofD0z67q+5DFepARsRRqRMuiBzktzqBv5ixYpbSPa2ZnNJESs76m3D9vrWFSdv+uAbN6gI
	P7gLfEcBO7y01gq+BS4yNiqHL90FHy9bg21g5XP1FwxljOjbaBdMwAuaSW8ZEvvbPX9Y/kFr5Uxfu
	/41jBxOsWbObUQjqKIxIlM0Po53QZAw7QCEYmxTISx0f9ZTunTH8uHgbr2N6u/rvdrpbk7a634syx
	RHgVNmOZG2THxseQc9nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiCUX-0000DI-BC; Mon, 08 Jun 2020 07:46:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiCUQ-0000CO-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 07:46:40 +0000
Received: by mail-wr1-x441.google.com with SMTP id x14so16257552wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 00:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Ii1LpA7xPLv2wdGt5UuWPaO4p+SzGddtJEFd/ScE1mM=;
 b=TbcMdd/8OOsDoTOIeYwoPHkpvrb7BLpJgvs3osnO9kgBDS52ZeSXUiVqA3cdbFfqgQ
 j+Keb/5fI6A4lol2GJ6ijyjT5cuYD1OchuUXj4zFjT5O9U0kOCVWpub3uGIR4ix8Y4he
 9LTLgODzbNdftzIB37a00BFCiR2bFxcMbQA44dL/XUL5uFD2NS0l4to3bE/K1fctTx0j
 2K3o8Z/L7yYzIVoHwF6wYOfG05xBe9ZVWwdsQ4gRjdL5lRFe8YSTkdhtduLscBq/eYKi
 58Q8jTnzbtIIt5FtaVALNA++QK8rJRqW2Uvyj29SIiBZmzT/CCw00/+UGW8ZAC0BmEPE
 sHzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Ii1LpA7xPLv2wdGt5UuWPaO4p+SzGddtJEFd/ScE1mM=;
 b=ZMkdrWdutZBCs6SHs/qKWMB481o0P9fg8MzlKB8B0fZu/sdp44DQBdhKLuriB3ZI87
 wxst5gxemAkQb3bQczUkPliaiv21gJmFshy7Y57olLYMMH0sFRdxefaxyMGDCCM1iLq0
 PPt2tia0xuMDXP7CQ/4FQ1uyYUkuDlMG+xa4VbNHM6YACVfX6a0wiWmJT5t1RElszVo9
 0fr2hKYlpiUWAnvnW5FHTHwRmdnNJQliZaGTLZ/zqwO4A1OCQ1SZsDrYqZ6ugs1Gg7yy
 02FHit3MLW0csTMCjkjU1aVb2+4/OoASsQI9LE40by/wW/dX/MWyiZRsBIGrT6AK32kj
 41Qg==
X-Gm-Message-State: AOAM532+ItYpTWKV0lKULCQfZLyL57y1EcZj91GGoQ+vQaz3KL66ajvK
 Ql9lS0j2CWXAYAkbU9bW2bUjyw==
X-Google-Smtp-Source: ABdhPJylRQSYQXNyAZiyW6rrMJLInL4XF8pMc/Y82ccj0fV0f6vQenutBOzt90BsWef9ORNQoVIZrQ==
X-Received: by 2002:adf:a449:: with SMTP id e9mr21978811wra.294.1591602392643; 
 Mon, 08 Jun 2020 00:46:32 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id u3sm22618436wrw.89.2020.06.08.00.46.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 00:46:31 -0700 (PDT)
Date: Mon, 8 Jun 2020 08:46:30 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 05/11] pwm: add support for sl28cpld PWM controller
Message-ID: <20200608074630.GA3567@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-6-michael@walle.cc>
 <20200605084915.GE3714@dell>
 <b3324f5c1c908edc89a9cd2676644dfe@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3324f5c1c908edc89a9cd2676644dfe@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_004639_102321_E8983384 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 linux-gpio@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAwNSBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gQW0gMjAyMC0wNi0w
NSAxMDo0OSwgc2NocmllYiBMZWUgSm9uZXM6Cj4gWy4uXQo+ID4gPiArc3RhdGljIGlubGluZSBz
dHJ1Y3Qgc2wyOGNwbGRfcHdtICp0b19zbDI4Y3BsZF9wd20oc3RydWN0IHB3bV9jaGlwCj4gPiA+
ICpjaGlwKQo+ID4gPiArewo+ID4gPiArCXJldHVybiBjb250YWluZXJfb2YoY2hpcCwgc3RydWN0
IHNsMjhjcGxkX3B3bSwgcHdtX2NoaXApOwo+ID4gPiArfQo+ID4gCj4gPiBXaHkgbm90IHNhdmUg
eW91cnNlbGYgdGhlIHRyb3VibGUgYW5kIGp1c3Q6Cj4gPiAKPiA+ICAgc3RydWN0IHNsMjhjcGxk
X3B3bSAqcHdtID0gZGV2X2dldF9kcnZkYXRhKGNoaXAtPmRldik7Cj4gCj4gSXMgdGhlcmUgYSBy
ZWFzb24gd2h5IG5vdCBhIHNpbmdsZSBwd20gZHJpdmVyIHVzZXMgc29tZXRoaW5nIGxpa2UgdGhh
dD8KCkNvcHkvcGFzdGU/ICBIYWJpdD8KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJv
IFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3
YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9n
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
