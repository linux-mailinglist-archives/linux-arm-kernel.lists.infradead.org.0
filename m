Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC6B1DB16D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2co3GDE7rWPgz5jGUS/Dd4VTW1hlFKQMVIJtz+RHQNA=; b=nK3fZo3SL6gTWY
	YxwwYlt+lSMC/deIfmrisYBBt4uBQXsPXQHWIXhxJDLIal7clwKT283ayH6ByeO2EI9QUhNGrhkHo
	hFoXkK7OmR+2RDPKxR5nmT2W7LtWSO52dE5k5Nsc/YmJcrRb/wsAvn6QK9T9NWGF4juT85vU6BdvZ
	D/4ZUT0dEIzyUaSF40B2PB9Ya+JYq8T0cwipgVVMkCnIH0JjvRSb+w0aiRq5L7b4gcjH1uP6UF4JG
	pWLOpzJMWY81s/Rcwk162+8FVlX1CIbIwU8RoJj24O6iYyIRdi+GblJMmjWU5BWz3K91qv8FqjwYe
	fnEE/a6LAJG5zUtsQqGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMoH-00042Y-G1; Wed, 20 May 2020 11:22:53 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMo5-00041X-Pe
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:22:43 +0000
Received: by mail-qk1-x741.google.com with SMTP id f13so3142030qkh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 04:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ZjqVhvVauJwxzdubRCxzpwyDgNZsr/jK/zmF2UGqkm0=;
 b=LzRhD8IVgnmIVQzzoYcQc9SGvryKW9AvjBv+5xt1U5TlXPqkgWZYhhLZ+fDOiIMJVE
 j8fn5+fABxBNdukYPVM+l0vF16UvWxzpEJBJLKCW56Z4DkC5xa0rvUGkgFzj9G0Agcbl
 CR4ePEwCrdO65XTKv1Q7qKPo1V5T2jQjs+MOPyTun845of6hg3kQqItmtboNDlREjJcu
 Z2pKrl+oLt5umJH0Z+pIMp+EXFb7tOaN6BDew0UWwQ+/7bg+moQfUGPSduuzZJPyI5/X
 2YFdC3nAFQopV7V8BMDEMRy8CAn1JlcOebH4yDfMrImRBq3nMNW49Dcoe93t2TjTRQsi
 5qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ZjqVhvVauJwxzdubRCxzpwyDgNZsr/jK/zmF2UGqkm0=;
 b=uP//lPCSiYpvN6pH0nSs5+vmHWMajzHGMdndBh9mp1oANNxpVAv8/DQPYUgxd/gWvV
 2Li2mlUHx4ENggtAX8dGBWuhIh2eZ9k5iLRQDIm2K3bkdR8PwDV+sHA14Nr4LBtgRiHM
 m1AVyM8hCSO2XR2v0SYDUw58lMpyHq6JDb3WybaYJd1uOOAuyTzuo6FnF3oYie3pqoxm
 vpOmRmVY9aV+x3aqQmxv3q0+rplrvS44OzYpH60AWHEqBURxvESg2/FSyyBrH56Kwojg
 QZ6Gb0PVU4Sh4YkLhx5t3qWM91FCksw7O3uOxzm6nrF54TRaKviPTGEC75uuHyGg4Ja8
 ZCZw==
X-Gm-Message-State: AOAM531RS8nNAVfSUtbSyrAj4CNpfwditoOB3MKo/vg+77Kpuw6bbk/c
 NBU9nVcN1xWPNkIIp/AMS0xjmaDg08AYlZwa+uQ=
X-Google-Smtp-Source: ABdhPJxBdmgJNCR88xlbXPGclNlO2GaIwRkfV+dyapGMbu4Q9RuUthOHvMqPP4yv8y1KdCvdCmqnj7BHtLVZZI62f64=
X-Received: by 2002:a37:a50d:: with SMTP id o13mr4087174qke.121.1589973760794; 
 Wed, 20 May 2020 04:22:40 -0700 (PDT)
MIME-Version: 1.0
References: <1589881301-4143-1-git-send-email-shengjiu.wang@nxp.com>
 <0866cd8cdb0c22f0b2a6814c4dafa29202aad5f3.camel@pengutronix.de>
 <CAA+D8APhHvA39wmCayeCsAEKmOJ0n7qOQiT1tZmFHr4+yASgTw@mail.gmail.com>
 <53258cd99caaf1199036737f8fad6cc097939567.camel@pengutronix.de>
In-Reply-To: <53258cd99caaf1199036737f8fad6cc097939567.camel@pengutronix.de>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Wed, 20 May 2020 19:22:19 +0800
Message-ID: <CAA+D8APAMRwtVneqFsuBgAhozmQo3R0AQi0bVdUCQO4Af4xVfw@mail.gmail.com>
Subject: Re: [PATCH] ASoC: fsl: imx-pcm-dma: Don't request dma channel in probe
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042241_848821_1854AFC5 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shengjiu.wang[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: sumit.semwal@linaro.org, linaro-mm-sig@lists.linaro.org,
 Linux-ALSA <alsa-devel@alsa-project.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Timur Tabi <timur@kernel.org>,
 Xiubo Li <Xiubo.Lee@gmail.com>, shawnguo@kernel.org,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 perex@perex.cz, Nicolin Chen <nicoleotsuka@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkKCk9uIFdlZCwgTWF5IDIwLCAyMDIwIGF0IDU6NDIgUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gQW0gTWl0dHdvY2gsIGRlbiAyMC4wNS4yMDIwLCAx
NjoyMCArMDgwMCBzY2hyaWViIFNoZW5naml1IFdhbmc6Cj4gPiBIaQo+ID4KPiA+IE9uIFR1ZSwg
TWF5IDE5LCAyMDIwIGF0IDY6MDQgUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXgu
ZGU+IHdyb3RlOgo+ID4gPiBBbSBEaWVuc3RhZywgZGVuIDE5LjA1LjIwMjAsIDE3OjQxICswODAw
IHNjaHJpZWIgU2hlbmdqaXUgV2FuZzoKPiA+ID4gPiBUaGVyZSBhcmUgdHdvIHJlcXVpcmVtZW50
cyB0aGF0IHdlIG5lZWQgdG8gbW92ZSB0aGUgcmVxdWVzdAo+ID4gPiA+IG9mIGRtYSBjaGFubmVs
IGZyb20gcHJvYmUgdG8gb3Blbi4KPiA+ID4KPiA+ID4gSG93IGRvIHlvdSBoYW5kbGUgLUVQUk9C
RV9ERUZFUiByZXR1cm4gY29kZSBmcm9tIHRoZSBjaGFubmVsIHJlcXVlc3QgaWYKPiA+ID4geW91
IGRvbid0IGRvIGl0IGluIHByb2JlPwo+ID4KPiA+IEkgdXNlIHRoZSBkbWFfcmVxdWVzdF9zbGF2
ZV9jaGFubmVsIG9yIGRtYV9yZXF1ZXN0X2NoYW5uZWwgaW5zdGVhZAo+ID4gb2YgZG1hZW5naW5l
X3BjbV9yZXF1ZXN0X2NoYW5fb2YuIHNvIHRoZXJlIHNob3VsZCBiZSBub3QgLUVQUk9CRV9ERUZF
Ugo+ID4gcmV0dXJuIGNvZGUuCj4KPiBUaGlzIGlzIGEgcHJldHR5IHdlYWsgYXJndW1lbnQuIFRo
ZSBkbWFlbmdpbmUgZGV2aWNlIG1pZ2h0IHByb2JlIGFmdGVyCj4geW91IHRyeSB0byBnZXQgdGhl
IGNoYW5uZWwuIFVzaW5nIGEgZnVuY3Rpb24gdG8gcmVxdWVzdCB0aGUgY2hhbm5lbAo+IHRoYXQg
ZG9lc24ndCBhbGxvdyB5b3UgdG8gaGFuZGxlIHByb2JlIGRlZmVycmFsIGlzIElNSE8gYSBidWcg
YW5kCj4gc2hvdWxkIGJlIGZpeGVkLCBpbnN0ZWFkIG9mIGJ1aWxkaW5nIGV2ZW4gbW9yZSBhc3N1
bXB0aW9ucyBvbiB0b3Agb2YKPiBpdC4KPgoKSSBzZWUgc29tZSBkcml2ZXIgYWxzbyByZXF1ZXN0
IGRtYSBjaGFubmVsIGluIG9wZW4oKSBvciBod19wYXJhbXMoKS4KaG93IGNhbiB0aGV5IGF2b2lk
IHRoZSBkZWZlciBwcm9iZSBpc3N1ZT8KZm9yIGV4YW1wbGXvvJoKc291bmQvYXJtL3B4YTJ4eC1w
Y20tbGliLmMKc291bmQvc29jL3NwcmQvc3ByZC1wY20tZG1hLmMKCj4gPiA+ID4gLSBXaGVuIGRt
YSBkZXZpY2UgYmluZHMgd2l0aCBwb3dlci1kb21haW5zLCB0aGUgcG93ZXIgd2lsbAo+ID4gPiA+
IGJlIGVuYWJsZWQgd2hlbiB3ZSByZXF1ZXN0IGRtYSBjaGFubmVsLiBJZiB0aGUgcmVxdWVzdCBv
ZiBkbWEKPiA+ID4gPiBjaGFubmVsIGhhcHBlbiBvbiBwcm9iZSwgdGhlbiB0aGUgcG93ZXItZG9t
YWlucyB3aWxsIGJlIGFsd2F5cwo+ID4gPiA+IGVuYWJsZWQgYWZ0ZXIga2VybmVsIGJvb3QgdXAs
ICB3aGljaCBpcyBub3QgZ29vZCBmb3IgcG93ZXIKPiA+ID4gPiBzYXZpbmcsICBzbyB3ZSBuZWVk
IHRvIG1vdmUgdGhlIHJlcXVlc3Qgb2YgZG1hIGNoYW5uZWwgdG8gLm9wZW4oKTsKPiA+ID4KPiA+
ID4gVGhpcyBpcyBjZXJ0YWlubHkgc29tZXRoaW5nIHdoaWNoIGNvdWxkIGJlIGZpeGVkIGluIHRo
ZSBkbWFlbmdpbmUKPiA+ID4gZHJpdmVyLgo+ID4KPiA+IERtYSBkcml2ZXIgYWx3YXlzIGNhbGwg
dGhlIHBtX3J1bnRpbWVfZ2V0X3N5bmMgaW4KPiA+IGRldmljZV9hbGxvY19jaGFuX3Jlc291cmNl
cywgdGhlIGRldmljZV9hbGxvY19jaGFuX3Jlc291cmNlcyBpcwo+ID4gY2FsbGVkIHdoZW4gY2hh
bm5lbCBpcyByZXF1ZXN0ZWQuIHNvIHBvd2VyIGlzIGVuYWJsZWQgb24gY2hhbm5lbAo+ID4gcmVx
dWVzdC4KPgo+IFNvIHdoeSBjYW4ndCB5b3UgZml4IHRoZSBkbWFlbmdpbmUgZHJpdmVyIHRvIGRv
IHRoYXQgUlBNIGNhbGwgYXQgYQo+IGxhdGVyIHRpbWUgd2hlbiB0aGUgY2hhbm5lbCBpcyBhY3R1
YWxseSBnb2luZyB0byBiZSB1c2VkPyBUaGlzIHdpbGwKPiBhbGxvdyBmdXJ0aGVyIHBvd2VyIHNh
dmluZ3Mgd2l0aCBvdGhlciBzbGF2ZSBkZXZpY2VzIHRoYW4gdGhlIGF1ZGlvCj4gUENNLgo+Cj4g
UmVnYXJkcywKPiBMdWNhcwo+CgpJdCBzZWVtcyB0aGUgYmVzdCBwbGFjZSBmb3IgY2FsbGluZyBw
bV9ydW50aW1lX2dldF9zeW5jIGlzIHRoZQpkZXZpY2VfYWxsb2NfY2hhbl9yZXNvdXJjZXMsIGFu
ZCBjYWxsaW5nIHBtX3J1bnRpbWVfcHV0X3N5bmMKaW4gdGhlIC5kZXZpY2VfZnJlZV9jaGFuX3Jl
c291cmNlcwoKRm9yIHRoZSBzbGF2ZV9zZyBtb2RlLCB0aGUgLmRldmljZV9wcmVwX3NsYXZlX3Nn
IGFuZAouZGV2aWNlX2lzc3VlX3BlbmRpbmcgIHdpbGwgYmUgY2FsbGVkIG1hbnkgdGltZXMgYWZ0
ZXIKLmRldmljZV9hbGxvY19jaGFuX3Jlc291cmNlcy4gc28gaXQgaXMgbm90IGdvb2QgdG8gY2Fs
bApwbV9ydW50aW1lX2dldF9zeW5jIGluIC5kZXZpY2VfcHJlcF9zbGF2ZV9zZyBvcgouZGV2aWNl
X2lzc3VlX3BlbmRpbmcKCmJlc3QgcmVnYXJkcwp3YW5nIHNoZW5naml1CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
