Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B291C1E6315
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J91GvtGJygBL7iVKU70Ii5Ow3nGkN0zIyiJe6SRVgls=; b=Ts3yAmlo0phrKH
	6GRDCrIyRSsR5XaFVcUDjL3WBpPoPC8FNkl6N+QFmYZ83REFtP/mMZDX8m7zjRPcVH6oJQpzOZAAn
	xORB5XawFF28aLtgVbISsSSBUSLt5S2e4C9iPTywfNuGAZ1wUESPdG4bkq8tDqzcSJRcSro++ktd4
	DoyOcNw62ZWGN8fImm8QZCCAlghvJPpPnyAvPekDCIbsBVZkST4C2ylBD8lplT8tlMyKNXggogkAj
	hOjXLjn3bweWUtqf6zBBFS4/SSqPpj6Lv4jcibbkupgkcZ6PoOH7UbiDhELBxd5Y7ODveDCxcubts
	10m7akntBoQ6shxyRqPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJ2Y-00085M-9e; Thu, 28 May 2020 13:57:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJ2O-00081s-2m
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 13:57:37 +0000
Received: by mail-io1-xd41.google.com with SMTP id r2so19725275ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 06:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=UjZuoVgOlAA2kTVO/8YMAq4g+uCFT1z5qrdClOZg5xA=;
 b=DTZmwKCR4ekoBMQbgF98VezGQAaJUqzcUPcTLqzEOk97y7hIN1ih08J1Bmvh5GFOQH
 qIfMbduWKyvcTUWj7p/KqqP0TmgtmZ0jpCa7P6dotvleAkJ1hagecaJ9alBmuP6vbcMP
 5aaqPqo9jrIHnpkagd1Qbkvqzqc6b58tprkfmSRcPsg8yNdjsCoC4q/8bSCDNAsQHqns
 8JHrAq1PMSpwdCwaElyr1wJTJOC4GtK9IH0QwCua6VK5HGLM2xKPVD52sOHRUndZ7NkI
 DDPOPWpRzUMOf1dKXTDe1mbMtEREzBPsxxJC9ia7xa1Ky8uMFkaq7l7w8RoCAPepY5L6
 btiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=UjZuoVgOlAA2kTVO/8YMAq4g+uCFT1z5qrdClOZg5xA=;
 b=NLzmLeGAJ8PndcP6xQ39wHuOi+tg+aUkwTWo8EkmsLej7bfo1dj2gIFJ/ke2xnLMi0
 zbPCsy+RKFuUMcSsVfhXc0qtA/l/0Q3gRJBNXdmqfa5qD1UGyqIh03Kf3lTyr+q+02iU
 iUYtJtjDfi+QcwqtfWLAeURB9pMlxr8igwRkQfZKSTi0Un6k2U3EvbiN+w0PrzTgfSbS
 Ebx0dZTUAo0ZvbcCwcjXB1A5bF6txfQ7GNu0MLFeXRrSDqksXdE5Bg3stW04tJaRXAYx
 WeRnDDxz+N1zb5zV0s08gxmdxvZQ54jX6Tki/QrSQKTr0H/2Twny7GMXw6sPUWXqygqd
 nzaQ==
X-Gm-Message-State: AOAM532q2GAhS4mGZx14Py6MZD3HTysraxPhLQv88h3vj9jw8uKv3w1a
 guIEbtnQBBGdspXPmbPrgcAp5whH1PvI8V8p+YSMZQ==
X-Google-Smtp-Source: ABdhPJzQW8lIGLBPiATGOcgXj5v+CggE9v61MrxTSOTkP57BU/mh8b7hB7ruXavpQvozs6X3Thlkzu1OTQMUtqwGRc8=
X-Received: by 2002:a6b:5c19:: with SMTP id z25mr2382470ioh.119.1590674255097; 
 Thu, 28 May 2020 06:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200528123459.21168-1-brgl@bgdev.pl>
 <20200528123459.21168-2-brgl@bgdev.pl>
 <20200528132938.GC3606@sirena.org.uk>
 <CAMRc=MejeXv6vd5iRW_EB3XqBtdCWDcV=4BOCDDFd4D0-y9LUA@mail.gmail.com>
 <20200528134802.GE3606@sirena.org.uk>
In-Reply-To: <20200528134802.GE3606@sirena.org.uk>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 28 May 2020 15:57:24 +0200
Message-ID: <CAMRc=MdL5dkJ+BPzvYXTnLQ_sGtU_7n=8jeSa5=hf8u9Pm+0FQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] regmap: provide helpers for simple bit operations
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_065736_119815_CDE5240F 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjggbWFqIDIwMjAgbyAxNTo0OCBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDM6MzI6NDBQTSArMDIw
MCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+IGN6dy4sIDI4IG1haiAyMDIwIG8gMTU6
MjkgTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPiBuYXBpc2HFgihhKToKPgo+ID4gPiBX
aHkgbWFjcm9zIGFuZCBub3Qgc3RhdGljIGlubGluZXM/Cj4KPiA+IFRoZSBleGlzdGluZyByZWdt
YXBfdXBkYXRlX2JpdHNfKigpIGhlbHBlcnMgYXJlIG1hY3JvcyB0b28sIHNvIEkgdHJpZWQKPiA+
IHRvIHN0YXkgY29uc2lzdGVudC4gQW55IHJlYXNvbiB3aHkgdGhleSBhcmUgbWFjcm9zIGFuZCBu
b3Qgc3RhdGljCj4gPiBpbmxpbmVzPyBJZiB0aGVyZSdzIG5vbmUsIHRoZW4gd2h5IG5vdCBjb252
ZXJ0IHRoZW0gdG9vPyBPdGhlcndpc2UKPiA+IHdlJ2QgaGF2ZSBhIHN0YXRpYyBpbmxpbmUgZXhw
YW5kaW5nIGEgbWFjcm8gd2hpY2ggaW4gdHVybiBpcyBjYWxsaW5nIGEKPiA+IGZ1bmN0aW9uIChy
ZWdtYXBfdXBkYXRlX2JpdHNfYmFzZSgpKS4KPgo+IE5vdCByZWFsbHksIEkgdGhpbmsgaXQgd2Fz
IGp1c3QgdGhhdCB0aGV5J3JlIGFyZ3VtZW50IHRhYmxlcy4gIEl0J2QgYmUKPiBnb29kIHRvIGNv
bnZlcnQgdGhlbS4KCk9rLiBTbyBJJ20gc2VlaW5nIHRoZXJlIGFyZSBhIGxvdCBvZiBtYWNyb3Mg
aW4gcmVnbWFwLmggdGhhdCBjb3VsZApiZWNvbWUgc3RhdGljIGlubGluZXMgYnV0IGdpdmVuIHRo
ZSBhbW91bnQgb2YgcmVnbWFwIHVzZXJzOiBob3cgYWJvdXQKd2UgZG8gaXQgc2VwYXJhdGVseSBh
bmQgaW4gdGhlIG1lYW50aW1lIEknbGwganVzdCBtb2RpZnkgdGhpcyBzZXJpZXMKdG8gdXNlIHN0
YXRpYyBpbmxpbmVzPwoKQmFydG9zegoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
