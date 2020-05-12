Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789661CECD0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 08:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZZFcx6e6T74Z1yvmpDzC+8oRhqT7wI1RQtQ0wWA0yI=; b=ovZ7jF5490V/9y
	9dFrNm6nNRS/CkYlFo1T7y0s2InObev1XYNcjyizl9UHEtX4tOjmxZjV5+xpAbp+CovWK5CWfRm5Z
	4mFFYETXXn9UmwHIuxPvBVgYBc0EmsHmcNAxZUaRM6s9ZzzONly8nUQ/qSH03GVvWdfuC/oKhDsXY
	bqFcbvbk0SDulxqgiwAhszI3rUyV5i0bSWXq0/Bk0Z0ms2IYeIyeN9lpfDMQ+W3Yqg0LHMIF6C0kG
	o+jqYiwMGgKTvLcLLaAz+jHA+gVcoB5XRmm5TuB0EuV6PN7WiUfy6p6+N/LIdBnD1eCRoOBEWvatu
	kPy+m+QLQLjnLq2WWhVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYO2H-0003G2-29; Tue, 12 May 2020 06:05:01 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYO28-0003E4-CZ
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 06:04:53 +0000
Received: by mail-io1-xd42.google.com with SMTP id j8so12561807iog.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 23:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GmXNnj8j0/DuRakjHfxnYDbYR3/p1C2Z1WRm/EsJUCQ=;
 b=m7upY6SSbbF74mMD/6Ct02MUFC+lcQkE0M2ZSEfUwz8/zFr2LXYe+zyjsa7QHwNxLU
 E1xtIq6cls/6Xl5PC2oNnB9MLcngcGNCboLNlcaeqdA/QhxuPYlg6fSrcTJ1yt3PhSm8
 p4nRLQKIhwwNJhMXFsKo8spE1CkbB7rxxDxOXRA7BfDWjuXaNdcoB7xzLfrvlvITzqGj
 GRDhl86kJpFQABV/jgrZEMNArbKiAHRlWiOkJuHnOqoDLPX8y/BKcsiIq/fZA9FWsRgS
 M6x3a8yUDx3NluBpbUUiWoIc4eo6aHzDUy3W/pNCYGkvOGYvjt9nct4K+D71V8iCXDLZ
 4eXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GmXNnj8j0/DuRakjHfxnYDbYR3/p1C2Z1WRm/EsJUCQ=;
 b=BgFLb7qORYkSwDshafThqkPgJFJkOd3TVZ9mYVqYR1kg2WEV6BcpSDZK04JMUg5bYA
 lgqJg6pU8Z70U5M+qW0Wbej9/CNroppAvoamKfQvQIRyKMEDztZAdS5LCXn8KFt83jhH
 tvVLNTy2URiaftKfarN36tHbMr8cveJ11wk54KUjiYElFyO4Gtll2jSEk0IEZsx6R+SY
 v7Tu7p0hayRLDrrPK7km4X5cUTMi0GGUdElHeSWKkxvcGelJxvFJefMrQ5wcvkXBf0ZD
 SwV11wCukWSuJjPHJqaZRr+xrt6ujqzOOLSs51W7WmF9nP6+ao135FJ75B0rKPHARFrN
 Fgdg==
X-Gm-Message-State: AGi0PuYbgt2FUOg94dug1OQXv3Ab9qyiOaFc8fBDfi/zkvRnBn43o2/b
 ckZa+Wr/0OGHhxIUPh4wQB7BczQ5Oo0fSPSs8yZtww==
X-Google-Smtp-Source: APiQypJHsy1ID5UWXbduZedwCawN698UUwnJAsyuBfNBmcx4c7aVWyTBXfSDemrrZVvNV8ztJq5Z7EWAvNiviNgU3nE=
X-Received: by 2002:a5d:91c6:: with SMTP id k6mr18867980ior.13.1589263490440; 
 Mon, 11 May 2020 23:04:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200511150759.18766-1-brgl@bgdev.pl>
 <20200511150759.18766-6-brgl@bgdev.pl>
 <20200511.134117.1336222619714836904.davem@davemloft.net>
In-Reply-To: <20200511.134117.1336222619714836904.davem@davemloft.net>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 12 May 2020 08:04:39 +0200
Message-ID: <CAMRc=MdUCkgCo8UndDbhQRZt_tXJJjtR4uM2g05N5ti7Hw1f2w@mail.gmail.com>
Subject: Re: [PATCH v2 05/14] net: core: provide priv_to_netdev()
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_230452_449632_2CC8733D 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Pedro Tsai <pedro.tsai@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMTEgbWFqIDIwMjAgbyAyMjo0MSBEYXZpZCBNaWxsZXIgPGRhdmVtQGRhdmVtbG9mdC5u
ZXQ+IG5hcGlzYcWCKGEpOgo+Cj4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rl
di5wbD4KPiBEYXRlOiBNb24sIDExIE1heSAyMDIwIDE3OjA3OjUwICswMjAwCj4KPiA+IEZyb206
IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPgo+ID4g
QXBwcm9wcmlhdGUgYW1vdW50IG9mIGV4dHJhIG1lbW9yeSBmb3IgcHJpdmF0ZSBkYXRhIGlzIGFs
bG9jYXRlZCBhdAo+ID4gdGhlIGVuZCBvZiBzdHJ1Y3QgbmV0X2RldmljZS4gV2UgaGF2ZSBhIGhl
bHBlciAtIG5ldGRldl9wcml2KCkgLSB0aGF0Cj4gPiByZXR1cm5zIGl0cyBhZGRyZXNzIGJ1dCB3
ZSBkb24ndCBoYXZlIHRoZSByZXZlcnNlOiBhIGZ1bmN0aW9uIHdoaWNoCj4gPiBnaXZlbiB0aGUg
YWRkcmVzcyBvZiB0aGUgcHJpdmF0ZSBkYXRhLCByZXR1cm5zIHRoZSBhZGRyZXNzIG9mIHN0cnVj
dAo+ID4gbmV0X2RldmljZS4KPiA+Cj4gPiBUaGlzIGhhcyBjYXVzZWQgbWFueSBkcml2ZXJzIHRv
IHN0b3JlIHRoZSBwb2ludGVyIHRvIG5ldF9kZXZpY2UgaW4KPiA+IHRoZSBwcml2YXRlIGRhdGEg
c3RydWN0dXJlLCB3aGljaCBiYXNpY2FsbHkgbWVhbnMgc3RvcmluZyB0aGUgcG9pbnRlcgo+ID4g
dG8gYSBzdHJ1Y3R1cmUgaW4gdGhpcyB2ZXJ5IHN0cnVjdHVyZS4KPiA+Cj4gPiBUaGlzIHBhdGNo
IHByb3Bvc2VzIHRvIGFkZCBwcml2X3RvX25ldGRldigpIC0gYSBoZWxwZXIgd2hpY2ggY29udmVy
dHMKPiA+IHRoZSBhZGRyZXNzIG9mIHRoZSBwcml2YXRlIGRhdGEgdG8gdGhlIGFkZHJlc3Mgb2Yg
dGhlIGFzc29jaWF0ZWQKPiA+IG5ldF9kZXZpY2UuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQmFy
dG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxpYnJlLmNvbT4KPgo+IFNvcnJ5LCBw
bGVhc2UgZG9uJ3QgZG8gdGhpcy4gIFdlIGhhZCB0aGlzIGFsbW9zdCB0d28gZGVjYWRlcyBhZ28g
YW5kCj4gZXhwbGljaXRseSByZW1vdmVkIGl0IGludGVudGlvbmFsbHkuCj4KPiBTdG9yZSB0aGUg
YmFjayBwb2ludGVyIGluIHlvdXIgc29mdHdhcmUgc3RhdGUganVzdCBsaWtlIGV2ZXJ5b25lIGVs
c2UKPiBkb2VzLgoKSSB3aWxsIGlmIHlvdSBpbnNpc3QgYnV0IHdvdWxkIHlvdSBtaW5kIHNoYXJp
bmcgc29tZSBkZXRhaWxzIG9uIHdoeSBpdAp3YXMgcmVtb3ZlZD8gVG8gbWUgaXQgc3RpbGwgbWFr
ZXMgbW9yZSBzZW5zZSB0aGFuIHN0b3JpbmcgdGhlIHBvaW50ZXIKdG8gYSBzdHJ1Y3R1cmUgaW4g
KnRoYXQqIHN0cnVjdHVyZS4KCkJhcnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
