Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38DA1EF145
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 08:14:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNdKKDPWE1s5tpOUHx7dKB6XD5vN3nI972R5iLvOk24=; b=G1dDvo3HLsQogp
	FyoQXMNhvn+ICXbELqrIAVnMa4cLQnbo+WXuMwQ7rC9E3VWlTwagsOsK8jyUAiUQx80efW98VfmVe
	ku0cYrmw6VuBNFFayZPgxMRucO+ot+dQM4iG1PFNgsHeY7FezMmM9wcaQqtN+1P5p7G+avF/fa4sv
	69iCR7SYnEA7rmIi/i91pLUx75dNa9Z5M6BrrKI0pd1AmsHaV3Mf4TMtT7VdDAYpwpsw0UP+OF3PW
	1Xvagkk0GYu6TWslfL/WwZm55FR0ZfAX4sP7B9rHmXVzsW2KMwemhxmVveQ8Bwq8yFMtQj8DTtPJ9
	kdZsu+21EFYKDm1hbKUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh5cA-0005Xh-MI; Fri, 05 Jun 2020 06:14:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh5c3-0005XG-Rw
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 06:13:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id l26so7281576wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 23:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=yJN2wMTqdmW9Ywj7bcdohdTeZTeJk5SGvJLUrYv99yE=;
 b=Wl7PqVYB0NgnKYSjXlz5tRPX5NANomxtDkglcbdjvQsRL+/sWEI5cyjRwbLQ+T/mKJ
 M6Sc4l0Tp0CYqkIM19DWwsyrML2uNkCQzaRdzWEBO4IX78Xj83hqcyrFBi5p0KwQPyyt
 sKWZhOFZNlEuvbmA8Y7NjXu1NFVModaASoCqeRUiyrCpwF/jDRi5bccIxaSnkUwrc3AE
 ZUNS+K/7hVqJYlegt7KZSLfRDBX3qMf8IC9CV9c30saGPnT3D1XpB/ptPF5HrUbitr0g
 QNFtDsD0FRNBDII5Aim6NI2sruSlz3pIyjo6iBcdTBciWCFeOQEA2YSBgxmU2gAXaS5Q
 HrCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=yJN2wMTqdmW9Ywj7bcdohdTeZTeJk5SGvJLUrYv99yE=;
 b=HUWWNcqyb/F0/YLJVCeh4SdhjGmj8QBlYw5fJkFxkh2jIv6j8ZNt5DeBhZsnFfSDJ1
 UMY9oHI4Gj+kdD1KxDLqTISSN8mPJSebzf4bBD2st9TxpFUmbCYVFs9RMVXAfTWtddHs
 iMpYyABsBsDvIDuGjMtJkPO/i1+J8XV440AIhuzpVg/4FA2uih7fEdtNdKE/QHo+lpHv
 dwxgGDIUwH8LHQMnJZRM8u697k8pADN7QfvjLwFs6tjqoP9NiT16siQE7VS3caKpNTbx
 1GcXogFKYBnBPj1JHGInCJcSQxGYYSdHnhrdAduywHhBumNndwDsIHEgpWeBp7yyycaz
 9zTA==
X-Gm-Message-State: AOAM533fOE9jmY/TX9T5oshRBN1TV9KFCv5JMToeGjIOE6aZZ0TM+P0Y
 Q1QP8cpNuJJJk+fcic001DGDyA==
X-Google-Smtp-Source: ABdhPJwf5S2OwPHZvteiT4PVJdXt+ehvT08EuJ6eK2OP2Atm5I/Xbi4JETpWh90BOmkczgotX4Fl6Q==
X-Received: by 2002:a1c:7dd5:: with SMTP id y204mr963235wmc.182.1591337632738; 
 Thu, 04 Jun 2020 23:13:52 -0700 (PDT)
Received: from dell ([95.147.198.92])
 by smtp.gmail.com with ESMTPSA id x186sm9871815wmg.8.2020.06.04.23.13.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 23:13:51 -0700 (PDT)
Date: Fri, 5 Jun 2020 07:13:50 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 00/11] Add support for Kontron sl28cpld
Message-ID: <20200605061350.GC3714@dell>
References: <20200604211039.12689-1-michael@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604211039.12689-1-michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_231355_972338_9D98453A 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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

T24gVGh1LCAwNCBKdW4gMjAyMCwgTWljaGFlbCBXYWxsZSB3cm90ZToKCj4gVGhlIEtvbnRyb24g
c2wyOGNwbGQgaXMgYSBib2FyZCBtYW5hZ2VtZW50IGNoaXAgcHJvdmlkaW5nIGdwaW8sIHB3bSwg
ZmFuCj4gbW9uaXRvcmluZyBhbmQgYW4gaW50ZXJydXB0IGNvbnRyb2xsZXIuIEZvciBub3cgdGhp
cyBjb250cm9sbGVyIGlzIHVzZWQgb24KPiB0aGUgS29udHJvbiBTTUFSQy1zQUwyOCBib2FyZC4g
QnV0IGJlY2F1c2Ugb2YgaXRzIGZsZXhpYmxlIG5hdHVyZSwgaXQKPiBtaWdodCBhbHNvIGJlIHVz
ZWQgb24gb3RoZXIgYm9hcmRzIGluIHRoZSBmdXR1cmUuIFRoZSBpbmRpdmlkdWFsIGJsb2Nrcwo+
IChsaWtlIGdwaW8sIHB3bSwgZXRjKSBhcmUga2VwdCBpbnRlbnRpb25hbGx5IHNtYWxsLiBUaGUg
TUZEIGNvcmUgZHJpdmVyCj4gdGhlbiBpbnN0YW50aWF0ZXMgZGlmZmVyZW50IChvciBtdWx0aXBs
ZSBvZiB0aGUgc2FtZSkgYmxvY2tzLiBJdCBhbHNvCj4gcHJvdmlkZXMgdGhlIHJlZ2lzdGVyIGxh
eW91dCBzbyBpdCBtaWdodCBiZSB1cGRhdGVkIGluIHRoZSBmdXR1cmUgd2l0aG91dCBhCj4gZGV2
aWNlIHRyZWUgY2hhbmdlOyBhbmQgc3VwcG9ydCBvdGhlciBib2FyZHMgd2l0aCBhIGRpZmZlcmVu
dCBsYXlvdXQgb3IKPiBmdW5jdGlvbmFsaXRpZXMuCj4gCj4gU2VlIGFsc28gWzFdIGZvciBtb3Jl
IGluZm9ybWF0aW9uLgo+IAo+IFRoaXMgaXMgbXkgZmlyc3QgdGFrZSBvZiBhIE1GRCBkcml2ZXIu
IEkgZG9uJ3Qga25vdyB3aGV0aGVyIHRoZSBzdWJzeXN0ZW0KPiBtYWludGFpbmVycyBzaG91bGQg
b25seSBiZSBDQ2VkIG9uIHRoZSBwYXRjaGVzIHdoaWNoIGFmZmVjdCB0aGUgc3Vic3lzdGVtCj4g
b3Igb24gYWxsIHBhdGNoZXMgZm9yIHRoaXMgc2VyaWVzLiBJJ3ZlIGNob3NlbiB0aGUgbGF0dGVy
IHNvIHlvdSBjYW4gZ2V0IGEKPiBtb3JlIGNvbXBsZXRlIHBpY3R1cmUuCgpZb3UgY2hvc2Ugd2lz
ZWx5LiA6KQoKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtZGV2aWNldHJlZS8w
ZTNlODIwNGFiOTkyZDc1YWEwN2ZjMzZhZjdlNGFiMkB3YWxsZS5jYy8KPiAKPiBDaGFuZ2VzIHNp
bmNlIHYzOgo+ICAtIHVzZSBvZl9wbGF0Zm9ybV9wb3B1bGF0ZSgpIHRvIHBvcHVsYXRlIGludGVy
bmFsIGRldmljZXMgdXNpbmcgdGhlCj4gICAgaW50ZXJuYWwgcmVnaXN0ZXIgb2Zmc2V0cyBhcyB1
bml0LWFkZHJlc3Nlcwo+ICAtIGJlY2F1c2Ugd2UgZG9uJ3QgdXNlIG1mZF9jZWxscyBhbnltb3Jl
LCB3ZSBjYW5ub3QgdXNlIElPUkVTT1VSQ0VfUkVHLAo+ICAgIGJ1dCBpbnN0ZWFkIHBhcnNlIHRo
ZSByZWcgcHJvcGVydHkgaW4gZWFjaCBpbmRpdmlkdWFsIGRyaXZlcgo+ICAtIGRyb3BwZWQgdGhl
IGZvbGxvd2luZyBwYXRjaGVzIGJlY2F1c2UgdGhleSB3ZXJlIGFscmVhZHkgbWVyZ2VkOgo+ICAg
ICAgZ3Bpb2xpYjogSW50cm9kdWNlIGdwaW9jaGlwX2lycWNoaXBfYWRkX2RvbWFpbigpCj4gICAg
ICBncGlvOiBhZGQgYSByZXVzYWJsZSBnZW5lcmljIGdwaW9fY2hpcCB1c2luZyByZWdtYXAKPiAg
LSBkcm9wcGVkIHRoZSBmb2xsb3dpbmcgcGF0Y2hlcyBiZWNhdXNlIHRoZXkgYXJlIG5vIGxvbmdl
ciBuZWVkZWQ6Cj4gICAgICBpbmNsdWRlL2xpbnV4L2lvcG9ydC5oOiBhZGQgaGVscGVyIHRvIGRl
ZmluZSBSRUcgcmVzb3VyY2UgY29uc3RydWN0cwo+ICAgICAgbWZkOiBtZmQtY29yZTogRG9uJ3Qg
b3ZlcndyaXRlIHRoZSBkbWFfbWFzayBvZiB0aGUgY2hpbGQgZGV2aWNlCj4gICAgICBtZmQ6IG1m
ZC1jb3JlOiBtYXRjaCBkZXZpY2UgdHJlZSBub2RlIGFnYWluc3QgcmVnIHByb3BlcnR5Cj4gIC0g
cmVwaHJhc2UgY29tbWl0IG1lc3NhZ2VzLCBhcyBzdWdnZXN0ZWQgYnkgVGhvbWFzIEdsZWl4bmVy
CgpJdCdzIGdyZWF0IHRvIGhhdmUgdGhpcyBjaGFuZ2Vsb2cgb3ZlcnZpZXcuCgpIb3dldmVyIGl0
J3MgZXF1YWxseSwgaWYgbm90IGFyZ3VhYmx5IG1vcmUgaW1wb3J0YW50IHRvIGhhdmUgYSBtb3Jl
CmZpbmUgZ3JhaW5lZCBjaGFuZ2Vsb2cgaW4gZWFjaCBvZiB0aGUgcGF0Y2hlcywgdXN1YWxseSBw
bGFjZWQgYmV0d2Vlbgp0aGUgJy0tLScgYW5kIHRoZSBkaWZmIHN0YXQuCgotLSAKTGVlIEpvbmVz
IFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKU
giBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJv
b2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
