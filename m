Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD82820DB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 19:11:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hN7Y7FyWkcYs3FanEyEMxGRUvn8S1nG5KqViaF2mk0o=; b=adMLaevHUhkJ4Q
	cWaG8s4zvWnN6/Nyqi3nxznSJlU0yGY24T/NWaDVq0oCrbap2nksWwL3MPVifPCjARcVhSdsfswSh
	g8+aRLk+xqqXqsox5bH9qMJHm+5ymQNzzvMS7SQgCZCC781b0EJC/+AwtAznrT7XY22zpSlQHagat
	diIzqMAp7mRJjShWQfCvMiTRcQh4OQsYuh4V2grgU7ISjXzsFuo9uCpWD5hCk8c+FF2KM+ApBm5eK
	a7qFFKEfvZ0O6Gdy0cRSJXK8CXum/YAyjrnjNs2utXTg7VisczwBzuL+fRIVAgZohHD1+fKfchYyH
	zrDzwcTLogIZr+Y8IhnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJuH-0005Ki-PN; Thu, 16 May 2019 17:11:01 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJuA-0005K0-TZ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 17:10:56 +0000
Received: by mail-it1-x142.google.com with SMTP id q65so7386003itg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 10:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5EwJksJ2FoQVnQI0xcmWd22xXK+H+BAMsUpI/Bz70Ko=;
 b=vCowvd26w29wqEIEqcsiaPf/EuWN6j87GJLMX9br2vStXOBGTGzRN91ItAb+LaOQov
 WcIXvg/Iss7UD0wf5R5taBEu6nJBnNMi+b2EvVfphRMPAV7l3DPtO/ZQ4xLQxMug0O51
 +wlBD8vh1YTVeBBuA7q+6GY3HFwyoDWpZb6UAD1b4xhql5PGYneQIxHyH0Vs//sbyOS8
 cPDxc784vau+PgeWv7Bexo+t3xJ/DR+CBS23VizH8X8qRN3V0s51vabU1T1LbJsPW0tC
 6t4stv8bRxm0XZEuXUKnbQs7Xy8Tn5OTo92cVwgFjEVkqscPGTS5R1T9qb1Fh4QetsuM
 Up4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5EwJksJ2FoQVnQI0xcmWd22xXK+H+BAMsUpI/Bz70Ko=;
 b=gOk/1RKArjz0Yzlca9AHNmT3lIRQznXSR4bFsraRF9mnjJqbY0QRlBuHE+OKrG88SY
 L37dNLuYXsLuPOS8kAj7U7b74T/GTDvOEl2EFDCph6JkxFtblZf9zPer0eD+nOnsNJnh
 SCFt40Xwge6CKqvLIfW2SLQywpG7GOS53AJqTiJbd5gwHCYPIpDlPpfZTqQFlW5RtkRh
 Xp6BhofmLIlTOUklqYmqnsECIlpQDHjBnEd94w4fZd4kStrIfqJU0zGGfiJ75/sk2ZrC
 KCNPKJRnrEfbZp/ZWPsvpexjd2RaqtwFKgASrQfd460/QzBkb8aQV0mUUrF2keVKhJWY
 6rgA==
X-Gm-Message-State: APjAAAUKZXxRa6jWgHoc4tLytdCeD0Hn7EM9QMiE3fw69QD8mgSR3TI9
 33lffWCrsLZ1o/iQpIVKFV2W9E+G4hEIKoe4BMy5dcY0j6o=
X-Google-Smtp-Source: APXvYqzz59DMUAjZfEHs6VQoL3fmXQV164OUtAdl/v/4z6/H+c+fWkLi7UOzh0Zmnp7mXm/7gNJcsov+/59rFuOfTFM=
X-Received: by 2002:a24:70ca:: with SMTP id
 f193mr13222240itc.103.1558026653421; 
 Thu, 16 May 2019 10:10:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190516064304.24057-1-olof@lixom.net>
 <20190516064304.24057-2-olof@lixom.net>
 <CAHk-=wj7uZ+rLecwEP+U3jRRPWRoB1QVTr8pHzTcmQadE=Ngvg@mail.gmail.com>
 <CAK8P3a27zgq3c_iWHVfypAc-hLag06Bs=Q2D7bn4i4nVfPQSyw@mail.gmail.com>
In-Reply-To: <CAK8P3a27zgq3c_iWHVfypAc-hLag06Bs=Q2D7bn4i4nVfPQSyw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 16 May 2019 10:10:41 -0700
Message-ID: <CAOesGMgQ9kF08PDzA3LSjsXt-ETB8vAnqo2EjtbKEMJ5UrnJnw@mail.gmail.com>
Subject: Re: [GIT PULL 1/4] ARM: SoC platform updates
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_101054_999638_5B5DA283 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linus Walleij <linus.walleij@linaro.org>, ARM SoC <arm@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 "linux-alpha@vger.kernel.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgODo1MyBBTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRi
LmRlPiB3cm90ZToKPgo+IE9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDU6MzQgUE0gTGludXMgVG9y
dmFsZHMKPiA8dG9ydmFsZHNAbGludXgtZm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4KPiA+IE9u
IFdlZCwgTWF5IDE1LCAyMDE5IGF0IDExOjQzIFBNIE9sb2YgSm9oYW5zc29uIDxvbG9mQGxpeG9t
Lm5ldD4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFNvQyB1cGRhdGVzLCBtb3N0bHkgcmVmYWN0b3Jpbmdz
IGFuZCBjbGVhbnVwcyBvZiBvbGQgbGVnYWN5IHBsYXRmb3Jtcy4KPiA+ID4gTWFqb3IgdGhlbWVz
IHRoaXMgcmVsZWFzZToKPiA+Cj4gPiBIbW0uIFRoaXMgYnJpbmdzIGluIGEgbmV3IHdhcm5pbmc6
Cj4gPgo+ID4gICBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWl4cDR4eC5jOjc4OjIwOiB3YXJu
aW5nOgo+ID4g4oCYaXhwNHh4X3JlYWRfc2NoZWRfY2xvY2vigJkgZGVmaW5lZCBidXQgbm90IHVz
ZWQgWy1XdW51c2VkLWZ1bmN0aW9uXQo+ID4KPiA+IGJlY2F1c2UgdGhhdCBkcml2ZXJzIGlzIGVu
YWJsZWQgZm9yIGJ1aWxkIHRlc3RpbmcsIGJ1dCB0aGF0IGZ1bmN0aW9uCj4gPiBpcyBvbmx5IHVz
ZWQgdW5kZXIKPiA+Cj4gPiAgICNpZmRlZiBDT05GSUdfQVJNCj4gPiAgICAgICAgIHNjaGVkX2Ns
b2NrX3JlZ2lzdGVyKGl4cDR4eF9yZWFkX3NjaGVkX2Nsb2NrLCAzMiwgdGltZXJfZnJlcSk7Cj4g
PiAgICNlbmRpZgo+ID4KPiA+IEl0J3Mgbm90IGNsZWFyIHdoeSB0aGF0ICNpZmRlZiBpcyB0aGVy
ZS4gVGhpcyBkcml2ZXIgb25seSBidWlsZHMKPiA+IG5vbi1BUk0gd2hlbiBDT01QSUxFX1RFU1Qg
aXMgZW5hYmxlZCwgYW5kIHRoYXQgI2lmZGVmIGFjdHVhbGx5IGJyZWFrcwo+ID4gdGhhdCBidWls
ZCB0ZXN0Lgo+ID4KPiA+IEknbSBnb2luZyB0byByZW1vdmUgdGhhdCAjaWZkZWYgaW4gbXkgbWVy
Z2UsIGJlY2F1c2UgSSBkbyAqbm90KiB3YW50Cj4gPiB0byBzZWUgbmV3IHdhcm5pbmdzLCBhbmQg
aXQgZG9lc24ndCBzZWVtIHRvIG1ha2UgYW55IHNlbnNlLgo+ID4KPiA+IE1heWJlIHRoYXQncyB0
aGUgd3JvbmcgcmVzb2x1dGlvbiwgcGxlYXNlIGhvbGxlciBhbmQgbGV0IG1lIGtub3cgaWYKPiA+
IHlvdSB3YW50IHNvbWV0aGluZyBlbHNlLgo+Cj4gQXMgZmFyIGFzIEkgY2FuIHRlbGwsIHRoYXQg
aXMgdGhlIGJlc3QgZml4LCB0aGFua3MgZm9yIHRoZSBjbGVhbnVwIQoKWWVhaCwgdGhpcyB3YXMg
ZW50aXJlbHkgb24gbWUgLS0gaXQgd2FzIGZvdW5kIGFuZCBmaXhlZCBvbiBsaW51eC1uZXh0LAph
bmQgTGludXMgV2FsbGVpaiBzZW50IHBhdGNoZXMuIEhvd2V2ZXIsIGFzIEkgd2FzIHN0YWdpbmcg
dGhlc2UgcHVsbApyZXF1ZXN0cywgSSBhcHBsaWVkIHRoZW0gdG8gYSBicmFuY2ggb2YgZml4ZXMg
dGhhdCBJJ20gY29sbGVjdGluZyBmb3IKbGF0ZXIgdGhpcyB3ZWVrIGluc3RlYWQgb2Ygb24gdG9w
IG9mIHRoZSBvbmUgSSB3YXMgc2VuZGluZy4KClRoYW5rcyBmb3IgZml4aW5nIGl0IHVwLgoKCi1P
bG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
