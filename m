Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5A31E9FB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:59:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJ15W5DxStz/qGLvqkKDKCzRbyS4lK0FQstUrPFZvro=; b=NLQUcKj5a5/G5e
	eD+HxjJkx+tc8/mntLqShJxkzxLTWdZPvw04JAMvfao69W3jPpDX5uSQWGjg4yZkovhS6Xi4yr3Kp
	OeCqporKVoNxeKdSG/5dDJssIIgV6LjEResHrMCxwuYBRmGgJLqQI4DRUestCC1F/phsPenFoxFnE
	6jfbTVjb30KCytcP/411r9xSK3jxkpuqh5qUbMxyQ71JXPGfc70YqKTRyH8BIEntYTAQi0UUW/ajC
	iC4umzeQPKG6Jkk2DOXet4qRHgvOy1WlghUO0f62WAfeV9xE7LwaDz+2CJ3p0rmDJdTbQ85DgtsTk
	BI4PUJ8JanYo9RFn2cwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffM6-00055f-Nh; Mon, 01 Jun 2020 07:59:34 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffM0-00054e-7D
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:59:29 +0000
Received: by mail-vk1-xa44.google.com with SMTP id t23so2194617vkt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 00:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+/lonEZ7lAjJM9p39P8BR7wI92X7wL1JFjHzHvAjHkM=;
 b=QJIC2sGSvW8+pkA3XwPz6SEdhDVwIlJXrSvgwrJz14gWv9GFyjtDG2MTUcUmBE9l/P
 bFNwlOPsXAWxexrOr1FTH77p7eziPmqwaCwGID1oap6GBKrL6bP3eKe5qkD6tXL7uk2X
 AsmB7QGgkZYU5ME7vUpGEwso2aVlQHv3oAdXI0rooRnnCqt1KHlc6NdJOf5WkBA/tLWk
 0HmRDDYVgBWOKM8wQwZO6+lG88hsmWd0K/Qcbpso+qCDMK6HjpYt5w6hR6ty4EmjPrjF
 ysAIR0YGSpqPj7ajyUokQlELevpS2gTch8EmZmHAPyqDvGWCwnC5SUywivMOGkZQ+Qmb
 hyHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+/lonEZ7lAjJM9p39P8BR7wI92X7wL1JFjHzHvAjHkM=;
 b=Xbm4f8vi4f4dsxEEmSybNYPxI3glmvQdikXBYGl8s9lLMc+Uas69ne08bqelm6BfNO
 ot77ntYpzXSP7M8jzr4FwUamj2paxdEKSeJgzKihEKUY2GWZRJQmwQFqkhyRE7xf1ttH
 oiRzCsW32GvzckZzIC5o3LhDuxfwcpXrg/PicYsnq4yEnJnO6zcGg0FlZ7dhAFIKxhEi
 S4ztH9HRvkpaIsDYXN2uLyvo1ak34eIScnNT7eSrR+WIv9VCey7Q+TX89FHSOaVT5wyu
 w7Q25WxkCerQZf5yrvV/TwVcJJCZETjvujdlAw0p9SStN73mygMsFeD7eRanv/Y0mCeF
 k+2Q==
X-Gm-Message-State: AOAM532mkbv9pk+FuMbVbq8HJ0zgLHdo3biMI+KDKroMmA4arlUsyWHk
 xYNRT8rABld41OsIv7eKXNyFfOcQscJjcufyMcJEJg==
X-Google-Smtp-Source: ABdhPJz5/TY/hSbADj3oi4wF5cfCkxs3IZ3jGUJwi+iQ030QrAjfPx7lmoOmw/UVp6y5U0jhlKMWyCVws+HntU+xFxQ=
X-Received: by 2002:a1f:2d8e:: with SMTP id t136mr246292vkt.61.1590998364343; 
 Mon, 01 Jun 2020 00:59:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200427072342.5499-1-jian-hong@endlessm.com>
 <20200428162152.ztsqp7nxqbwqrm6r@gilmour.lan>
 <CAPpJ_efvtVzb_hvoVOeaePh7UdE13wOiiGaDBH38cToB-yhkUg@mail.gmail.com>
 <20200507172158.cybtakpo6cxv6wcs@gilmour.lan>
 <CAPpJ_efxenmSXt2OXkhkQ1jDJ59tyWBDUvmpyOB-bfPMDENQZg@mail.gmail.com>
 <CAPpJ_ed9TMJjN8xS1_3saf5obQhULJSLNgQSAFxgiWM2QX9A7Q@mail.gmail.com>
 <20200526102018.kznh6aglpkqlp6en@gilmour.lan>
 <CAD8Lp467DiYWLwH6T1Jeq-uyN4VEuef-gGWw0_bBTtmSPr00Ag@mail.gmail.com>
 <20200527091335.7wc3uy67lbz7j4di@gilmour.lan>
 <CAD8Lp45ucK-yZ5G_DrUVA7rnxo58UF1LPUy65w2PCOcSxKx_Sg@mail.gmail.com>
 <20200528073055.znutrhkryzu3grrl@gilmour.lan>
In-Reply-To: <20200528073055.znutrhkryzu3grrl@gilmour.lan>
From: Jian-Hong Pan <jian-hong@endlessm.com>
Date: Mon, 1 Jun 2020 15:58:26 +0800
Message-ID: <CAPpJ_ec1KRwUrHGVVZrReaDPz4iga-Nvj5H652-tTKmkXL=Xmg@mail.gmail.com>
Subject: Re: [PATCH v2 00/91] drm/vc4: Support BCM2711 Display Pipelin
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_005928_324694_44ACA897 
X-CRM114-Status: GOOD (  14.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Drake <drake@endlessm.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Linux Upstreaming Team <linux@endlessm.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWF4aW1lIFJpcGFyZCA8bWF4aW1lQGNlcm5vLnRlY2g+IOaWvCAyMDIw5bm0NeaciDI45pelIOmA
seWbmyDkuIvljYgzOjMw5a+r6YGT77yaCj4KPiBIaSBEYW5pZWwsCj4KPiBPbiBXZWQsIE1heSAy
NywgMjAyMCBhdCAwNToxNToxMlBNICswODAwLCBEYW5pZWwgRHJha2Ugd3JvdGU6Cj4gPiBPbiBX
ZWQsIE1heSAyNywgMjAyMCBhdCA1OjEzIFBNIE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50
ZWNoPiB3cm90ZToKPiA+ID4gSSdtIGFib3V0IHRvIHNlbmQgYSB2MyB0b2RheSBvciB0b21vcnJv
dywgSSBjYW4gQ2MgeW91IChhbmQgSmlhbi1Ib25nKSBpZiB5b3UKPiA+ID4gd2FudC4KPiA+Cj4g
PiBUaGF0IHdvdWxkIGJlIGdyZWF0LCBhbHRob3VnaCBnaXZlbiB0aGUgcG90ZW50aWFsbHkgaW5j
b25zaXN0ZW50Cj4gPiByZXN1bHRzIHdlJ3ZlIGJlZW4gc2VlaW5nIHNvIGZhciBpdCB3b3VsZCBi
ZSBncmVhdCBpZiB5b3UgY291bGQKPiA+IGFkZGl0aW9uYWxseSBwdXNoIGEgZ2l0IGJyYW5jaCBz
b21ld2hlcmUuCj4gPiBUaGF0IHdheSB3ZSBjYW4gaGF2ZSBoaWdoZXIgY29uZmlkZW5jZSB0aGF0
IHdlIGFyZSBhcHBseWluZyBleGFjdGx5Cj4gPiB0aGUgc2FtZSBwYXRjaGVzIHRvIHRoZSBzYW1l
IGJhc2UgZXRjLgo+Cj4gU28gSSBzZW50IGEgbmV3IGl0ZXJhdGlvbiB5ZXN0ZXJkYXksIGFuZCBv
ZiBjb3Vyc2UgZm9yZ290IHRvIGNjIHlvdS4uLiBTb3JyeSBmb3IKPiB0aGF0Lgo+Cj4gSSd2ZSBw
dXNoZWQgbXkgY3VycmVudCBicmFuY2ggaGVyZToKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC9tcmlwYXJkL2xpbnV4LmdpdC9sb2cvP2g9cnBpNC1rbXMK
ClRoYW5rcyB0byBNYXhpbWUhCgpJIGhhdmUgdHJpZWQgeW91ciByZXBvc2l0b3J5IG9uIGJyYW5j
aCBycGk0LWttcy4gIFRoZSBEUk0gVkM0IGlzIHVzZWQhCkJ1dCBnb3Qgc29tZSBpc3N1ZXM6CjEu
IFNvbWUgd2VpcmQgZXJyb3IgbWVzc2FnZSBpbiBkbWVzZy4gIE5vdCBzdXJlIGl0IGlzIHJlbGF0
ZWQsIG9yIG5vdApbICAgIDUuMjE5MzIxXSBbZHJtOnZjNV9oZG1pX2luaXRfcmVzb3VyY2VzXSAq
RVJST1IqIEZhaWxlZCB0byBnZXQKSERNSSBzdGF0ZSBtYWNoaW5lIGNsb2NrCmh0dHBzOi8vZ2lz
dC5naXRodWIuY29tL3N0YXJuaWdodC8zZjMxN2RjYTEyMTA2NWEzNjFjZjA4ZTkxMjI1ZTM4OQoK
Mi4gVGhlIHNjcmVlbiBmbGFzaGVzIHN1ZGRlbmx5IHNvbWV0aW1lcy4KCjMuIFRoZSBoaWdoZXIg
cmVzb2x1dGlvbnMsIGxpa2UgMTkyMHgxMDgwIC4uLiBhcmUgbG9zdCBhZnRlciBob3QKcmUtcGx1
ZyBIRE1JIGNhYmxlIChIRE1JMCkKCkppYW4tSG9uZyBQYW4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
