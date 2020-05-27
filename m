Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7617E1E39B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 08:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RoObnkB6SXJ/lQXd2PF+uL+xoTAcWIFw+YvuAivA8Sk=; b=WUjVrE74mQgy7h
	VaDM3ISLtyWz1Z6X6SgcxBU/3tZrRg3hTj0Ys4suE7Zs7i7GGXpIf+LvftYL2KXaN76xUASsbqSqy
	bbbUtGhP/K/upt/RS6kfvma+1lZmZTB0dta8du7sID/ZumEPNTuncwwd1bmVqTyPOtYfOOjZgHALD
	71RtQAYkzP0ji4on1vEz24ZbwBoK+Si0ucdINrk/LTmJglwWRJ6XYllG7ewbVq9MBfd1eJPuk3qsH
	gUgfC4sNR8in17iYnqrXHD065JfFQfl40JP31sOx7fcLT4FDPywWhWNDptpq66LWv8YFQ0tf/VcT4
	T+yfQ2vp69HOu+mN40tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpwz-0005t1-Bf; Wed, 27 May 2020 06:54:05 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpwl-0005sI-Bw
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 06:53:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id f5so1926592wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 23:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KaQOkQA7F9aEmTtrQs4AHoVIEVINLPeKbMlE71dR8YI=;
 b=cPWisZ+A4SR3iQJ6RsEDeDne0OUCVjnfpAGxMjkPrCxzFO71csUJv0xmdBRl7npeZh
 AeFPi1ZmAv1VwihKmOwSRiZrJsJ1i6kwIn8Nkt2Ls6PrSh4pmaZSr97snzWfE0Tn5x79
 bn5tQlmvjopqjhhwA+8717mpKH4FIRbM2wsps9Yaybn+1Sbdk7PQ6e6xPJok7tTW3hQT
 6R8cBzso9tSPzo2k0UZJPVj9XZDBCfP717btD4AxbyDHH0f/x517SgR/trJkcSQlO6BB
 UekgSoUHoJVz0M2m9h5Iu/ibOmd2JCvlYeh977CW4E0Cm+pKuCkVczG89O4X7pFde+o4
 gPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KaQOkQA7F9aEmTtrQs4AHoVIEVINLPeKbMlE71dR8YI=;
 b=K/VOHyADKETZ5efwhwPa18aPGoIGWRj8g29FINbV6aSZaipSEoiQuQQvH1xXYkAlUt
 XzcnLEVxRGQbqs8jHKNnsEHOf0O1vycgyPeNZaqN2fVTuaCZgw7CV2aOGFRx682AMEeI
 4vZihVSRHt6g8lg0kKaheE0C2oV+9J3AQiPYKvwYDX4/uf5WcenKKHxxdUEWq85eI1vd
 AgSrE1gaqGsAFdB3Ctg3JbVsFoCwKmdPQa4s7QxjXUaFDBJiNjBx2CvmzcKHww6UC2JN
 KpNf9Rgf37548d2hgOjxklp5NduFPiGWfI4LMUKy3u1EBn/OyvN3E+uIrqYzCTLgGHCO
 cr5Q==
X-Gm-Message-State: AOAM532mVliPdUKZJGu6zt25A7O9/a40EKLrOyKdTQFiOwEX61HQRSFf
 K00jieFjA5ryT6rY8eJ51xo+TQ==
X-Google-Smtp-Source: ABdhPJzEz2uP3oWCohWVrLCnTYgAhvZIGv77IRU3z+lWX42qdjUmDcj2EC+NMT9wwZk7n/CATpsnBg==
X-Received: by 2002:a1c:25c3:: with SMTP id l186mr2814857wml.103.1590562426704; 
 Tue, 26 May 2020 23:53:46 -0700 (PDT)
Received: from dell ([95.149.164.102])
 by smtp.gmail.com with ESMTPSA id p23sm1900743wma.17.2020.05.26.23.53.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 May 2020 23:53:46 -0700 (PDT)
Date: Wed, 27 May 2020 07:53:44 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v3 03/16] mfd: mfd-core: match device tree node against
 reg property
Message-ID: <20200527065344.GP3628@dell>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-4-michael@walle.cc>
 <67e90dafd67c285158c2c6f67f92edb7@walle.cc>
 <20200515102848.GH271301@dell>
 <159e68b4ce53630ef906b2fcbca925bd@walle.cc>
 <20200526072427.GC3628@dell>
 <f5704ce5a3e280f63c81fe35efb08234@walle.cc>
 <20200526160336.GV1634618@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526160336.GV1634618@smile.fi.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_235351_408447_69F2F1D9 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyNiBNYXkgMjAyMCwgQW5keSBTaGV2Y2hlbmtvIHdyb3RlOgoKPiBPbiBUdWUsIE1h
eSAyNiwgMjAyMCBhdCAwNTo1NDozOFBNICswMjAwLCBNaWNoYWVsIFdhbGxlIHdyb3RlOgo+ID4g
QW0gMjAyMC0wNS0yNiAwOToyNCwgc2NocmllYiBMZWUgSm9uZXM6Cj4gCj4gLi4uCj4gCj4gPiBM
aWtlIEkgc2FpZCwgaW4gdGhlIGxvbmcgdGVybSBJIHdvdWxkIGxpa2UgdG8gaGF2ZSBzdXBwb3J0
IGZvcgo+ID4gZGlmZmVyZW50IHZlcnNpb25zIG9mIHRoZSBib2FyZCBtYW5hZ2VtZW50IGNvbnRy
b2xsZXIKPiAKPiA+IHdpdGhvdXQgaGF2aW5nIHRvIGNoYW5nZSB0aGUgZGV2aWNlIHRyZWUgYW5k
IGhhdmUgZGV2aWNlIHRyZWUgYmluZGluZ3MgZm9yIHRoZQo+ID4gc3ViZGV2aWNlcyBhdCB0aGUg
c2FtZSB0aW1lLgo+IAo+IEJ1dCBpc24ndCBkZXZpY2UgdHJlZSB0byBkZXNjcmliZSAqdmVyeSBz
cGVjaWZpYyBwbGF0Zm9ybSogcmF0aGVyIHRoYW4gKmNsYXNzCj4gb2YgcGxhdGZvcm1zKj8KClll
cy4gIERldmljZSBUcmVlIGRlc2NyaWJlcyB0aGUgaGFyZHdhcmUuCgpJZiB0aGUgaGFyZHdhcmUg
Y2hhbmdlcywgc28gbXVzdCB0aGUgRGV2aWNlIFRyZWUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzm
lq9dCkxpbmFybyBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0
dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
