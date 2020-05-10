Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA8D1CC600
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 03:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUETX6HyFTU7QBjQSRdXp6lqtzkt9n1uKwKzaRr3FVk=; b=gs59QbAzWT+yvi
	joyf1C67lYIIx5GNDFRfKQfLL93J3lXXFfZjlD92FaRQiJUP98iN/RXC4qK2ytHeMxFnf5lS1y+JJ
	PeURGDuuWS+SZBFoKLwmUw7i5IGVYgI2oJvLSyxv8RR+DY8314hrLhlcusxyrqkM3GaQ5MArXriZD
	3DrhvfMjfNydr/15VKDvhQ8MItIZ6SpkvgrMzLDgWeHoiqfhJL4pxrsKt5NCb2di+fZmZekcBHLAl
	sGP4a9zHiT4dOkR9aO0uu11hTYV3xAYpYBr7by2FrIBnP114+gMWCfi3hxMsYF8PesrCBwopEkMmk
	Bguivl5dKnnuAjPKMCvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXane-00044z-0K; Sun, 10 May 2020 01:30:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXanX-00044C-2I; Sun, 10 May 2020 01:30:32 +0000
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71E4824957;
 Sun, 10 May 2020 01:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589074230;
 bh=ix8iTjqF132SnVv4OLbjsHPr6YEm5+jXddQ2kFsg3vw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=arqNH5DtBFhnacg4lStoi4lNJYTnb2RlB6XUtJJsAdb8c0mmuLuhOW8n7UaPejrbO
 Vh/48l5zE6UuV8E3rFQQzC0UDjJjgYsFGd30Az6rQaJWWo1vEnAVMyXKjegcNMmflz
 tD38h0xKZf3ZIK1giEPPxk7a3V6ggVe9nB031U2A=
Received: by mail-ed1-f51.google.com with SMTP id d16so4764565edq.7;
 Sat, 09 May 2020 18:30:30 -0700 (PDT)
X-Gm-Message-State: AGi0PuY2pdRMXinJClHjnZzXfyAhLx65Te+UF62QKN4DEMWxqMftefLX
 DTGH3oxELhw86ltIZGpi/H7iK6udkS/atxxNSg==
X-Google-Smtp-Source: APiQypKavV96F5Rfs0zUVAMo0khKlR0Q9NlSm0iglorzoQwicEWvMXuImhm7hoN6zToXdJcUiR0llqZOfr2lVHvghjo=
X-Received: by 2002:aa7:c649:: with SMTP id z9mr8191853edr.288.1589074228868; 
 Sat, 09 May 2020 18:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200506123356.9147-1-bernard@vivo.com>
In-Reply-To: <20200506123356.9147-1-bernard@vivo.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 10 May 2020 09:30:18 +0800
X-Gmail-Original-Message-ID: <CAAOTY__QR52YjdKZ6YPbjyfFQPVyNWSjrSRxYxuTH0pLEkQyrg@mail.gmail.com>
Message-ID: <CAAOTY__QR52YjdKZ6YPbjyfFQPVyNWSjrSRxYxuTH0pLEkQyrg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/mediatek: cleanup coding style in mediatek a bit
To: Bernard Zhao <bernard@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_183031_128643_7425CE3F 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, opensource.kernel@vivo.com,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEJlcm5hcmQ6CgpCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5jb20+IOaWvCAyMDIw5bm0
NeaciDbml6Ug6YCx5LiJIOS4i+WNiDg6MzTlr6vpgZPvvJoKPgo+IFRoaXMgY29kZSBjaGFuZ2Ug
aXMgdG8gbWFrZSBjb2RlIGJpdCBtb3JlIHJlYWRhYmxlLgo+CgpBcHBsaWVkIHRvIG1lZGlhdGVr
LWRybS1uZXh0IFsxXSwgdGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVr
LWRybS1uZXh0CgpSZWdhcmRzLApDaHVuLUt1YW5nCgo+IFNpZ25lZC1vZmYtYnk6IEJlcm5hcmQg
WmhhbyA8YmVybmFyZEB2aXZvLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19oZG1pLmMgfCAxMiArKysrLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5j
Cj4gaW5kZXggZmY0M2EzZDgwNDEwLi40M2U5ODc2ZmQ1MGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19oZG1pLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX2hkbWkuYwo+IEBAIC0zMTEsMTQgKzMxMSwxMCBAQCBzdGF0aWMgdm9pZCBtdGtf
aGRtaV9od19zZW5kX2luZm9fZnJhbWUoc3RydWN0IG10a19oZG1pICpoZG1pLCB1OCAqYnVmZmVy
LAo+ICAgICAgICAgdTggY2hlY2tzdW07Cj4gICAgICAgICBpbnQgY3RybF9mcmFtZV9lbiA9IDA7
Cj4KPiAtICAgICAgIGZyYW1lX3R5cGUgPSAqYnVmZmVyOwo+IC0gICAgICAgYnVmZmVyICs9IDE7
Cj4gLSAgICAgICBmcmFtZV92ZXIgPSAqYnVmZmVyOwo+IC0gICAgICAgYnVmZmVyICs9IDE7Cj4g
LSAgICAgICBmcmFtZV9sZW4gPSAqYnVmZmVyOwo+IC0gICAgICAgYnVmZmVyICs9IDE7Cj4gLSAg
ICAgICBjaGVja3N1bSA9ICpidWZmZXI7Cj4gLSAgICAgICBidWZmZXIgKz0gMTsKPiArICAgICAg
IGZyYW1lX3R5cGUgPSAqYnVmZmVyKys7Cj4gKyAgICAgICBmcmFtZV92ZXIgPSAqYnVmZmVyKys7
Cj4gKyAgICAgICBmcmFtZV9sZW4gPSAqYnVmZmVyKys7Cj4gKyAgICAgICBjaGVja3N1bSA9ICpi
dWZmZXIrKzsKPiAgICAgICAgIGZyYW1lX2RhdGEgPSBidWZmZXI7Cj4KPiAgICAgICAgIGRldl9k
YmcoaGRtaS0+ZGV2LAo+IC0tCj4gMi4yNi4yCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
