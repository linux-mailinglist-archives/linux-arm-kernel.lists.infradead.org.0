Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 221641DF76C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n2MUiTsPDRopw8DKlSJMnRPT4N9moTlOYvN3RmVk3B4=; b=RlpYDj6IxyeBKj
	/eUVugYF6x2lfW7FkVEw+2+65j46FJ0UnBdA4EPgCl7r2VGVdR2rTyhj07H1Hh5w1wNxC83W6+wmV
	LJNUfNteo27N8oDbEQN1D0f+S6AvKEx80PKAFTI4o1N9y5dewRbTK8HSr9OlOY2FAGUovx7Lx/3K4
	1l2WDLsEx2hq+5OUFdJmIAMLdTmKNKQkvR9uPG5qpp1PyEGRGffeToftCn/ZIhVc+rwKb4XgFf/MY
	ru3siYZ6dYQanN1XBYjq6/o1xOd6YJbhLs9uO7rYLRyuUih2pXMwoykpYhBfxYCl+vOp75jF/Ka+V
	CYZu0jt84fK33BEuxBQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcTzV-0002uB-8m; Sat, 23 May 2020 13:15:05 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcTz9-0002nj-S1
 for linux-arm-kernel@lists.infradead.org; Sat, 23 May 2020 13:14:46 +0000
Received: by mail-io1-xd42.google.com with SMTP id r2so4132815ioo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 23 May 2020 06:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Qqk95wVsZmzmcuIGFt4zOLnbm5tsZjHScQ5kWL0ptlo=;
 b=Up30C1YRhvWB57ye1T2UrlkPecgpMbEt23MMyafxVtj4AWCFG/FP7d50A6YnKzg9yp
 G2totyxkDwGSHGb7MyOfkpg+yi5yX1RK12jEKRrBkpHP6ZfWVKTJC9sYB2brG+MairoD
 nVu7qav8lKDiem0EWG8cq+eNzX0PIUp92pXJJ05sgDL2eFgGXNL7w4o15p6olun3W+Xq
 AWP/WTLrrm5Q2J98rGCkDUk465WESwOxdkOm+R3HSYg8UezUHHjE5f7UmhvYqSJEI9jC
 dDMgCm+myuFjb6RIyGffd1PFIclibonFoPKs1bF6NUkiv9nFwsu5JVO3a0xShNsc/Nwh
 1GHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Qqk95wVsZmzmcuIGFt4zOLnbm5tsZjHScQ5kWL0ptlo=;
 b=e2Pj4GzBDStbnM1Tv3bPo8Ur6DZgA4Ydixt43SPsJdXNDUcUmkDzZe/+69Cinwd6pQ
 YykgC3Yv5HvdGpAIvy3Q5HzFfuXtofCIoE7lsz6T6gsCQJhX6LsaTA8try7jQgwNvupc
 cFkCUvNc4564qgfWDZLG3F+k1oOOy0ppGzWm7dclBR+i1Ay+awmp7tDuXN9Q+EoSLhMK
 BVjiaEoFExwxtYTxYotdaxlXrwgTHvCnlB9XXRTy9lRdlTQQCHn/F5bEabXLTiTRISZB
 o46qZs6KUfrHEq0v/fjm5alZQ7a3IEpuMn8btAKQLCupQh2otSribhspn1ZhOzSmar+0
 FEnA==
X-Gm-Message-State: AOAM531VGGojRoHjIdBtWTpvzL0X7AGkE0a5u89l8z0XItMItdTztqDP
 IcWyTz3DeiisIlnC3USY4rHfEEueq+DPQ7lsfmOoEw==
X-Google-Smtp-Source: ABdhPJy3r7ROG2Dd7iXkJwzhgssNgb6WC0TdCHVJoxGhMF/mvblnvGscUx3CvN8/kuZuYuZPjaHAQSC9J4+TMor5GdA=
X-Received: by 2002:a05:6638:b:: with SMTP id
 z11mr1909060jao.114.1590239680686; 
 Sat, 23 May 2020 06:14:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200520114415.13041-1-brgl@bgdev.pl>
 <20200522.153653.998395486877096103.davem@davemloft.net>
In-Reply-To: <20200522.153653.998395486877096103.davem@davemloft.net>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 23 May 2020 15:14:29 +0200
Message-ID: <CAMRc=MdQo1faFjUzS0z5VmihZ3dfiuHiXozxQUkOhAi1n5tkcQ@mail.gmail.com>
Subject: Re: [PATCH 0/5] net: provide a devres variant of register_netdev()
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_061443_984394_C8FB960E 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Jonathan Corbet <corbet@lwn.net>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Fabien Parent <fparent@baylibre.com>, Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c29iLiwgMjMgbWFqIDIwMjAgbyAwMDozNiBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+IG5hcGlzYcWCKGEpOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rl
di5wbD4KPiBEYXRlOiBXZWQsIDIwIE1heSAyMDIwIDEzOjQ0OjEwICswMjAwCj4KPiA+ICAgbmV0
OiBldGhlcm5ldDogbXRrX2V0aF9tYWM6IHVzZSBkZXZtX3JlZ2lzdGVyX25ldGRldigpCj4KPiBU
aGlzIHBhdGNoIGRvZXNuJ3QgYXBwbHkgdG8gbmV0LW5leHQuCj4KPiBOZWl0aGVyIHRoZSBzb3Vy
Y2UgZmlsZSBkcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9tdGtfZXRoX21hYy5jLAo+IG5v
ciB0aGUgZnVuY3Rpb24gbXRrX21hY19wcm9iZSgpIGV2ZW4gZXhpc3QgaW4gdGhlIG5ldC1uZXh0
IEdJVAo+IHRyZWUuCgpJbmRlZWQuIFRoZSBkcml2ZXIgZ290IHJlbmFtZWQgaW4gdjUuIEkgZGlk
bid0IHJlc2VuZCBhIG5ldyB2ZXJzaW9uIG9mCnRoaXMgc2VyaWVzIGJlY2F1c2UgSSB0aG91Z2h0
IHRoZXJlIHdvdWxkIGJlIGEgZGlzY3Vzc2lvbiBhYm91dCBpdHMKdXNlZnVsbmVzcy4gSSdsbCBz
ZW5kIGEgcmViYXNlZCB2ZXJzaW9uIHRoZW4uCgpCYXJ0b3N6CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
