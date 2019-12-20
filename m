Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDAD1278AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:59:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TaEx7+ZBL6y+mfTBH+a44j0LACgd7wNl/Dmp6OtAHsg=; b=p2FlFZLbiiZLsS
	OmdZUCDp3uOkkG8aTMu2dvLxH/Py+qOAbS7pbDsNdACLhDE47HfKRzPBWUoXcTKy8KdvcTKRDPYrw
	cO2uQtBFsYaxOKBrWHkG7xssohhjL7O1vLTfL8pX29TWiGvzYnWboClXiJZAy2YSZz/nBUdKNF3D4
	yE2Z7nrttwCvpGB0+p2R82U4lJ3RA4WyUwJ2du0qxAHjG/j9NP7wPwUUYa3EqYZv983T6Ynrqmk6Y
	csm5FSIZXhPs7oj7uDLPeAexo0X/q4k3xlZ6UOmxFLL2u/uBh3G9LKPPVOkSp3CwKiIDvRj14MACM
	xpx40xsl1grO2H1AP8ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiF3k-0002wm-Ot; Fri, 20 Dec 2019 09:59:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiF3Q-0002nN-Io
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:58:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id c14so8782958wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 01:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=zUo+s3iHkIq6ZX21xZzTA13c15oTkP7/ZbrMONJHKBE=;
 b=Bxj1O3TYWHzwzNrQPoNQIGv0OHDXKEjBbfXha9I2V7n2Q4YkOfmrz3Qf1s5qHRo09B
 7rluWrZ1Z3lgnoaB3lWhhvRKVtn5IRDjwddtpnOIuMpmjNNv4ds4uATZslE1Wm+h6vGH
 nnboM9B9XFaxZ/NsnIVmIAwlXsDfvJ1sWBRYbUSZhckAVrlIFzRFGoaBCCKJXwTqd5qg
 o7oiq+1s2Gvf1LD8HDT7qKSUd3NUMGH7prJcpV9cu0nULoONNM0mRGjyahImEcLACnaF
 FAYOrA7lpV3tIlBsjg1TFnTq25p1nyU45e5pjnmMLMao5SMGslZrWmRY/RFV3ZXW+yth
 fLoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zUo+s3iHkIq6ZX21xZzTA13c15oTkP7/ZbrMONJHKBE=;
 b=C8LJuOAMKqVzP/phKxAi70ocImIuOLbB0dHwhBxfN7ptaAa0HvKF123vgsPvIbYEL3
 pxln/Id9WKkhZW/+/2GVOv/hcEM1V5MXFooZVzcz6xFcwMmaLDZsGeibvwjiHJrjVywI
 WGaX890+DUQuHfG3+5fEz8GNVlXcNq2QgC3Gznimkl3SK+FbfF5PF3XsrgV5DzVh3PM7
 TNPZtwmwgmTULvdh13xMR1zChaHCNb5Fkbu0b+ue+z6oTJy5H8DRSkfs8npDfae3UaIj
 lpLCfdh+M5qUu9oteLKQlaY2rtAYasbUlPJ0FtbHZwBpSe4tJD6qJaRlroOKwMhAjkbp
 WStw==
X-Gm-Message-State: APjAAAVrlS36jdhLf5KjTt1IaVKBN1KkdOTJ0Ibhs6tLfFh9Qgrd8ulL
 0ClAgu90PE+7/EzpmYVxAQRJ5TlFEB4=
X-Google-Smtp-Source: APXvYqweHMiky02KMmh0fPCEH32NLvHopUjCCSZemVt4X1a1SxGsbGiVkBWmMhfrj/gxEIxadf223w==
X-Received: by 2002:adf:81c2:: with SMTP id 60mr13912657wra.8.1576835917886;
 Fri, 20 Dec 2019 01:58:37 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:d0dd:3c81:4925:289e?
 ([2a01:e34:ed2f:f020:d0dd:3c81:4925:289e])
 by smtp.googlemail.com with ESMTPSA id f207sm10448564wme.9.2019.12.20.01.58.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Dec 2019 01:58:37 -0800 (PST)
Subject: Re: [PATCH] clocksource/drivers/bcm2835_timer: fix memory leak of
 timer
To: Colin King <colin.king@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org
References: <20191219213246.34437-1-colin.king@canonical.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <85475b50-5617-1ed0-3fe6-3dbaa18c236c@linaro.org>
Date: Fri, 20 Dec 2019 10:58:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191219213246.34437-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_015840_678999_14CF62D4 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkFwcGxpZWQsIHRoYW5rcyEKCk9uIDE5LzEyLzIwMTkgMjI6MzIsIENvbGluIEtpbmcgd3JvdGU6
Cj4gRnJvbTogQ29saW4gSWFuIEtpbmcgPGNvbGluLmtpbmdAY2Fub25pY2FsLmNvbT4KPiAKPiBD
dXJyZW50bHkgd2hlbiBzZXR1cF9pcnEgZmFpbHMgdGhlIGVycm9yIGV4aXQgcGF0aCB3aWxsIGxl
YWsgdGhlCj4gcmVjZW50bHkgYWxsb2NhdGVkIHRpbWVyIHN0cnVjdHVyZS4gIE9yaWdpbmFsbHkg
dGhlIGNvZGUgd291bGQKPiB0aHJvdyBhIHBhbmljIGJ1dCBhIGxhdGVyIGNvbW1pdCBjaGFuZ2Vk
IHRoZSBiZWhhdmlvdXIgdG8gcmV0dXJuCj4gdmlhIHRoZSBlcnJfaW91bm1hcCBwYXRoIGFuZCBo
ZW5jZSB3ZSBub3cgaGF2ZSBhIG1lbW9yeSBsZWFrLiBGaXgKPiB0aGlzIGJ5IGFkZGluZyBhIGVy
cl90aW1lcl9mcmVlIGVycm9yIHBhdGggdGhhdCBrZnJlZSdzIHRpbWVyLgo+IAo+IEFkZHJlc3Nl
cy1Db3Zlcml0eTogKCJSZXNvdXJjZSBMZWFrIikKPiBGaXhlczogNTI0YTdmMDg5ODNkICgiY2xv
Y2tzb3VyY2UvZHJpdmVycy9iY20yODM1X3RpbWVyOiBDb252ZXJ0IGluaXQgZnVuY3Rpb24gdG8g
cmV0dXJuIGVycm9yIikKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2lu
Z0BjYW5vbmljYWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Nsb2Nrc291cmNlL2JjbTI4MzVfdGlt
ZXIuYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL2JjbTI4MzVfdGlt
ZXIuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvYmNtMjgzNV90aW1lci5jCj4gaW5kZXggMmIxOTZj
YmZhZGI2Li5iMjM1ZjQ0NmVlNTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS9i
Y20yODM1X3RpbWVyLmMKPiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL2JjbTI4MzVfdGltZXIu
Ywo+IEBAIC0xMjEsNyArMTIxLDcgQEAgc3RhdGljIGludCBfX2luaXQgYmNtMjgzNV90aW1lcl9p
bml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkKPiAgCXJldCA9IHNldHVwX2lycShpcnEsICZ0
aW1lci0+YWN0KTsKPiAgCWlmIChyZXQpIHsKPiAgCQlwcl9lcnIoIkNhbid0IHNldCB1cCB0aW1l
ciBJUlFcbiIpOwo+IC0JCWdvdG8gZXJyX2lvdW5tYXA7Cj4gKwkJZ290byBlcnJfdGltZXJfZnJl
ZTsKPiAgCX0KPiAgCj4gIAljbG9ja2V2ZW50c19jb25maWdfYW5kX3JlZ2lzdGVyKCZ0aW1lci0+
ZXZ0LCBmcmVxLCAweGYsIDB4ZmZmZmZmZmYpOwo+IEBAIC0xMzAsNiArMTMwLDkgQEAgc3RhdGlj
IGludCBfX2luaXQgYmNtMjgzNV90aW1lcl9pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkK
PiAgCj4gIAlyZXR1cm4gMDsKPiAgCj4gK2Vycl90aW1lcl9mcmVlOgo+ICsJa2ZyZWUodGltZXIp
Owo+ICsKPiAgZXJyX2lvdW5tYXA6Cj4gIAlpb3VubWFwKGJhc2UpOwo+ICAJcmV0dXJuIHJldDsK
PiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5m
YWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxv
Zy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
