Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA5F422C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYjaWTTOd5TMWylVDNW0IK1aovyZmC8eOb9jDjZJRrk=; b=bBYOBPZrMqFCbr
	UZHPH4hfoY97j/70k60EyEp8alM6GRYhiF+Yzgb/pOTObZmINfKmA2EBahVj096pgZdNChMlGu9io
	OaDoHWaKnjTO2ntt0zOyVFRnBIVlB+rAZvBRKI9XPqzDeurq/lEBREtk96p9acqh81msdcPDeBLGg
	tQdHhYg+f/5Kl6dnFPwZCer7Fmf88O4jxaaS1BHeqzUcdRNDJIBQscvzvSGN6QABmTytCE2cQX1bC
	PzuA7h7xaKbDwNmCTiNc2qFteVLuA7ZAkeov9KR3LzxPLUI2MPZBBwd1q/haNBppYsiUipMbB1FT6
	etZpGlvWXE6XHsmvtsuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0gI-0004pn-RZ; Wed, 12 Jun 2019 10:40:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0fv-0004hO-P7
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:40:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id c66so6033500wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 03:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=QOUu665VzbrQkdt6yuFrpjcTfZcOezuzhB04ruczt2c=;
 b=cigPc5yqKtc5ty1KWdwigqWdNQXSGwDhC0Fr7SXbLKN7MEyfVKpajuulmqbSG9T7QR
 IcPH51LzN028aYASAjgoEvs/yg4Pg8H7A3SohtTv9x6uhcRAyl9DQBsIVFyyILSkyj9d
 xvuJKhveB91CQX7REZo886hk+/xTsR01v7H+aDTJMS5cjqVGwEnDcLhDG102dooNRbGC
 ULMdawJIHoCs7ZGUg8ib5cVyPBzduAUauJ3SwSKqDPWx3zfLegCI5ahAM1K/OWF9mcoY
 FCwJE2bPnH9bZekPqQ4TYGMFqT1RcIFXKug7miIo23wz9IegSMwwKsCcB+tH6ImR17w9
 eVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=QOUu665VzbrQkdt6yuFrpjcTfZcOezuzhB04ruczt2c=;
 b=bdCt/w99USzRIorknIqmFeObb2AdCtLJcRJH2lVDM3FXfB/AiUdD385SSC+hqner07
 lbnqIOhE+GW2wHGeMN8+7dY8MLNtdwECcNcul38/zD8Bc1Hpvc+XS4peRgr17ydjtSqF
 7jJS7TvA3sFB190I6tEHM3y4Omj+AkWBKzeJOEiehmX80XGvvin9VE6RceoO3leXfG/1
 OvGlylD0cYP6iBSr1oMmMNe/9QqGF15MXB9hAKu6q/OIcho6caRvo4o/ScPXxEuFSvOD
 V8NRilpILyhln3qk+55S89o3LpCRJWWz46loiZe31muzNcDWBFydmyScBq0Vav/B20Fb
 /aqQ==
X-Gm-Message-State: APjAAAW35ll414HVtx7v7n9BtKMkRz/nvFYXASv+O0JI2UBmBHEM162h
 ettq3ax9lFmpOj3hjmDS0MYhEw==
X-Google-Smtp-Source: APXvYqy1InhFscPbjy00LsR+VSBPtrs/pTzNt7sH1NgkU981TFf39ZicVqy8q3leI91RcX0sQgcUIA==
X-Received: by 2002:a1c:a7ca:: with SMTP id
 q193mr23272055wme.150.1560336014376; 
 Wed, 12 Jun 2019 03:40:14 -0700 (PDT)
Received: from dell ([185.80.132.160])
 by smtp.gmail.com with ESMTPSA id g5sm20846547wrp.29.2019.06.12.03.40.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Jun 2019 03:40:13 -0700 (PDT)
Date: Wed, 12 Jun 2019 11:40:11 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190612104011.GA4660@dell>
References: <20190610084213.1052-1-lee.jones@linaro.org>
 <20190612103453.ccet2pneairnlpcc@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190612103453.ccet2pneairnlpcc@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034015_844335_E366A7B4 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxMiBKdW4gMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiBPbiBNb24sIEp1biAx
MCwgMjAxOSBhdCAwOTo0MjowNkFNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBBZGQgYSBt
YXRjaCB0YWJsZSB0byBhbGxvdyBhdXRvbWF0aWMgcHJvYmluZyBvZiBBQ1BJIGRldmljZQo+ID4g
UUNPTTAyMjAuICBJZ25vcmUgY2xvY2sgYXR0YWlubWVudCBlcnJvcnMuICBTZXQgZGVmYXVsdCBj
bG9jawo+ID4gZnJlcXVlbmN5IHZhbHVlLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9u
ZXMgPGxlZS5qb25lc0BsaW5hcm8ub3JnPgo+IAo+IFNhZGx5LCB0aGVyZSBpcyBubyBjb3Zlci1s
ZXR0ZXIgZGVzY3JpYmluZyBpZiB0aGVyZSBpcyBhIGRlcGVuZGVuY3kgb3IKPiBub3QuIEkgYXNz
dW1lIHRoZXJlIGlzLCBvdGhlcndpc2UgSSB3b3VsZCBnZXQgdGhlIEkyQyBwYXRjaGVzIG9ubHk/
IEJ1dAo+IHdoYXQgaXMgdGhlIHN1Z2dlc3RlZCB3YXkgdXBzdHJlYW0gdGhlbj8KClRoZXJlIGFy
ZSBubyBjcm9zcy1zdWJzeXN0ZW0gYnVpbGQgZGVwZW5kZW5jaWVzIG9uIGFueSBvZiB0aGVzZQpw
YXRjaGVzLiAgVGhlIG9ubHkgcmVhc29uIHRoZXkgYXJlIGJ1bmRsZWQgdG9nZXRoZXIgaW4gdGhl
IHNhbWUKcGF0Y2gtc2V0IGlzIGZvciBjcm9zcy1zdWJzeXN0ZW0gdmlzaWJpbGl0eSBhbmQgdW5k
ZXJzdGFuZGluZy4KClRoZXJlIGlzIHdpZGUgaW50ZXJlc3QgaW4gdGhlc2UgZGV2aWNlcy4KCj4g
QWxzbywgdGhlIGN1cnJlbnQgbWFpbnRhaW5lciBlbnRyeSBmb3IgdGhpcyBkcml2ZXIgbG9va3Mg
bGlrZToKPiAKPiBkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jOgo+ICAgICAgICAg
QW5keSBHcm9zcyA8YWdyb3NzQGtlcm5lbC5vcmc+IChtYWludGFpbmVyOkFSTS9RVUFMQ09NTSBT
VVBQT1JUKQo+ICAgICAgICAgRGF2aWQgQnJvd24gPGRhdmlkLmJyb3duQGxpbmFyby5vcmc+ICht
YWludGFpbmVyOkFSTS9RVUFMQ09NTSBTVVBQT1JUKQo+ICAgICAgICAgQWxvayBDaGF1aGFuIDxh
bG9rY0Bjb2RlYXVyb3JhLm9yZz4gKHN1cHBvcnRlcjpRVUFMQ09NTSBHRU5FUklDIElOVEVSRkFD
RSBJMkMgRFJJVkVSKQo+IAo+IEkgZGlkbid0IGhlYXIgZnJvbSB0aG9zZSBwZW9wbGUgeWV0LCB3
b3VsZCBiZSBncmVhdCB0byBoYXZlIHRoZWlyIGFja3MuCgpJIHdpbGwgc2VlIGlmIEkgY2FuIHJv
dXNlIHRoZW0gZnJvbSB0aGVpciBzbHVtYmVyLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpM
aW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ug
c29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8
IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
