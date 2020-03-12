Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DA7182B1C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 09:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNL3jWE4lCdHNYpJwO+/SBmTxm6+EadPY3gkJxAHun0=; b=OX9CDwGvEh3D/O
	hXFBrfRd6jWAINgQiZNveyVIVuVBjK0aem5oZ0q200WnFYbzsw6QQh0esxd5bGPYL/FdyHxd9g60J
	xrE51ESwgu4CCSGXG/dsakdz+j6anbO/hAd1KJvykcgbmGDqkZ+pgb/pQkpz6+Y8LhiM0pEKux10T
	4u0kfseynkBki2h13kdXsBgv7cCVqy8FPbH47TouDWnrdUjJnWiPTApQNLYBILb/b7gltFse9jXBC
	tyNumCITTX9V2q5TJEY75G/b8Bd7pX++BYyDmpt1wFnWdS8dbmD+Lap0/z44pVoFJQVubQbEUOIJN
	swiZBtyzAuE3rljgsS4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJ7V-0008Ov-0q; Thu, 12 Mar 2020 08:23:09 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJ7M-0008OV-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 08:23:02 +0000
Received: by mail-qv1-xf42.google.com with SMTP id cz10so2183718qvb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 01:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=P9izz9GwKEkmwA2CN2dI9HFL+pLvd99ZgSLtApoaeDU=;
 b=XdThVGVLJ8fCTlPp04bt767nww/R0JNiDAgMPRu09nMpRox4DHlFpxcQWyDiIzhi4l
 zPVbbL4xp6o5xCpctS7Jp/3wRpRJ0j2+c141ucsFPPZ3W/hCO0WyUNj59CUWyKWUbpCr
 ceV9QtJMukXVzTgsXjnC0BIyprWSiwrhx5yp6mZbqXTFDAYTZ43cmbHSTcodDP8d1Y/K
 u1Kv5F3EC1oaAjdZLlagq368xSL7t3dTHl7DcezV1iAJSdaZ4v0Epmd4C570b1Ec2YZi
 /Db/T+9bJl2eydi+gBR8XLQvTZ7bd020wd8IQb/8d11ruupX0FCBQYpAd3ggUotu2DJd
 W7IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=P9izz9GwKEkmwA2CN2dI9HFL+pLvd99ZgSLtApoaeDU=;
 b=MMU8JrrqikuoT6F1Vkg+yczXAV5T80AblC60yp8Uau9zpYVVuRHdryInit5m+ujJ4L
 s0WcS/D6x5C+PO7dywfyUiBmqVJ6Iwa7UQkVRCEgEj2MZiGXsA34UDKrOvr8uWTcMf/K
 tIxEfHM3NsUpyNSbpLrpzDQK4ocueCmh7AwpVdFjWbciBPXEVCovYf8G6CJxsVzBC2AK
 V5EXcjc5Gq2bvqvL5opm4w3etK2p3DE/cordYEatxTAq0441murlm2zG1cUGlfwnWrDu
 /sGWB+S5BSlSJzdgmURgCHI2ikUVGlFRVkSF6k69dUrqSJ/PNw5PrwxUyZiXqiPJYPQv
 +AQA==
X-Gm-Message-State: ANhLgQ3xkTpQetSp/iExvNJFVC0FcXfx3pTv5/7Dk/y0mBNxtpk+9fu+
 9ZkU04WN9eqT+aHridLC0yXmOWCFDvIwnHdBrgsGJA==
X-Google-Smtp-Source: ADFU+vsJMDMQ1KzRZrYFym7/k0h4j5yi56oLBBmOZI8IRsJ++T2KNTs2w7I/VIUzjgv1K8oDQuyP8jHKibG5FlX1gps=
X-Received: by 2002:ad4:5429:: with SMTP id g9mr6058767qvt.134.1584001379162; 
 Thu, 12 Mar 2020 01:22:59 -0700 (PDT)
MIME-Version: 1.0
References: <1583780521-45702-1-git-send-email-opendmb@gmail.com>
 <CAMpxmJXNQQTxRWZSP0RZTUuefAk3+AeDMVeVkgERy7f9X=CBsA@mail.gmail.com>
 <7fcc5cb2-5fdb-d1cf-e55b-c0f2d407e072@gmail.com>
In-Reply-To: <7fcc5cb2-5fdb-d1cf-e55b-c0f2d407e072@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 12 Mar 2020 09:22:47 +0100
Message-ID: <CAMpxmJX40tfNUqrqDwa+GEGAD9QuLym=jLi2MPuQX-FZS2Z9sQ@mail.gmail.com>
Subject: Re: [PATCH V2] gpio: brcmstb: support gpio-line-names property
To: Doug Berger <opendmb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_012300_550472_8B0438E7 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Gregory Fong <gregory.0xf0@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMTEgbWFyIDIwMjAgbyAyMDowMyBEb3VnIEJlcmdlciA8b3BlbmRtYkBnbWFpbC5jb20+
IG5hcGlzYcWCKGEpOgo+Cj4gVGhlIGxhYmVsIG5hbWVzIGFyZSB2aWV3ZWQgYXMgYSBjb252ZW5p
ZW5jZSBmb3IgdGhlIHVzZXIgYW5kIGFyZSBub3QKPiBuZWNlc3NhcnkgZm9yIHRoZSBwcm9wZXIg
ZnVuY3Rpb25hbGl0eSBvZiB0aGUgZHJpdmVyIGFuZCBkZXZpY2UsIHNvIHdlCj4gZG9uJ3Qgd2Fu
dCB0byBwcmV2ZW50IHRoZSBkcml2ZXIgZnJvbSBzdWNjZWVkaW5nIGF0IHByb2JlIGR1ZSB0byBh
bgo+IGVycm9yIGluIHRoZSBncGlvLWxpbmUtbmFtZXMgcHJvcGVydHkuIFRoZSBiYW5rLT5nYy5u
YW1lcyBtZW1iZXIgaXMKPiBzdGlsbCBtYWRlIG5vbi1OVUxMIHdoaWNoIGlzIHdoYXQgd2UgcmVh
bGx5IGNhcmUgYWJvdXQgdG8gcHJldmVudCB0aGUKPiBtaXNhcHBsaWNhdGlvbiBvZiBsYWJlbCBu
YW1lcyBieSBkZXZwcm9wX2dwaW9jaGlwX3NldF9uYW1lcygpLgo+Cj4gSW4gZmFjdCwgaXQgaXMg
ZXhwZWN0ZWQgdGhhdCB0aGUgZGV2aWNlLXRyZWUgd2lsbCBvbmx5IGluY2x1ZGUgbGFiZWwKPiBz
dHJpbmdzIHVwIHRvIHRoZSBsYXN0IEdQSU8gb2YgaW50ZXJlc3Qgc28gdGhlIEVOT0RBVEEgZXJy
b3IgaXMKPiBjb25zaWRlcmVkIGEgdmFsaWQgcmVzdWx0IHRvIHRlcm1pbmF0ZSBhbnkgZnVydGhl
ciBsYWJlbGluZyBzbyB0aGVyZSBpcwo+IG5vIG5lZWQgZm9yIGFuIGVycm9yIG1lc3NhZ2UgaW4g
dGhhdCBjYXNlLgo+Cj4gT3RoZXIgZXJyb3IgcmVzdWx0cyBhcmUgdW5leHBlY3RlZCBzbyBhbiBl
cnJvciBtZXNzYWdlIGluZGljYXRpbmcgdGhlCj4gY29uc2VxdWVuY2Ugb2YgdGhlIGVycm9yIGlz
IGFwcHJvcHJpYXRlIGhlcmUuCj4KPiBJJ20gbm90IHN1cmUgd2hpY2ggYXNwZWN0IGlzIGNvbmZ1
c2luZyB0byB5b3UsIHNvIGl0J3Mgbm90IGNsZWFyIHRvIG1lCj4gaG93IGJlc3QgdG8gY29tbWVu
dCB0aGUgY29kZS4gSSBjYW4gaGF6YXJkIGEgZ3Vlc3MsIGJ1dCBpZiB5b3UgaGF2ZSBhCj4gc3Vn
Z2VzdGlvbiBJJ20gaGFwcHkgdG8gc3VibWl0IGEgdjMuCj4KPiBUaGFua3MgZm9yIHRha2luZyB0
aGUgdGltZSB0byByZXZpZXcgdGhpcywKPiAgICAgRG91ZwoKTm8gaXQncyBmaW5lLCB0aGFuayB5
b3UgZm9yIHRoZSBleHBsYW5hdGlvbi4KCkJhcnRvc3oKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
