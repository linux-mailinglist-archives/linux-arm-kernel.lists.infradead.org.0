Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987441B187
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 09:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jhv3HqOPmrrURn+DSiOHfnWUW+QX5NJVkeA+lHtXcw=; b=p34shrXFo8XR95
	bzjl1o8DM2pdgsHndMNjK2kzvJLfQrtMax2OnLFQ2frlsMg4d+YVm7O0EF5smuyvTxTnw2EahRv/0
	rAsIIxxCF3iAXUKWeBZS8Lg/jJ8053AZyXuwROsWzSAEFqDRYR9if60UncP/tZMApQj6+K+5qTUzR
	5NMSFdUtXiK5Apq+ugSNlRwF4KEmiVxYhL/cD42yDtLUNHCOiwDgFPZnZAFfe5hdhifRONokSdoGx
	ftjyVQJbShO2Zcnk0UY2q8OK6uEkp2/BVL87u0DrOVRFx3Xzl3eLjYmckE+j0XZFx8YQQ5l9YoGOu
	9eSnck+653EGJdk63s3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5nW-00046L-59; Mon, 13 May 2019 07:54:58 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5nN-00044Y-3j
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 07:54:50 +0000
Received: by mail-it1-x143.google.com with SMTP id g71so18813866ita.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 00:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=hMKCJuK6rSD3LVExCwUPzA6XGItnU5aIo+GZfePKqHM=;
 b=hs5GxkxzwleyU4quaW1XaB5N2OkDLJkgq+lGI0FcFJci/1eAZKILfcTeOU41yO28+D
 fwL/Oi2xtPSEbV0SUPenURf7FD9v/ZRyw/fiAjj7LebCYANxuSzcTBV1XhmUllbOutzZ
 Ix4BZZk39tF4/SvzxMHTnRAx1+i52/bMVHR5sw0OMIc/Xe8HDkW2hpEVuWg53V5sDsu9
 F35vDENnn3gUuyx8gddD6dF8yvdEhn5ZoO/g/mZd7locpngtRvBv2YLSnbFIoulFcamX
 dds2m/hH6GQUr463riVABAN/qjH2inBonheCriXHwhfDtZesiIVZRxe33CCBCS5T8blJ
 XAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=hMKCJuK6rSD3LVExCwUPzA6XGItnU5aIo+GZfePKqHM=;
 b=K3yMfQ83gf9Sr1k1CIBG9xFBimhXlqOCBNu8mZKatlyZT287PirXRr8FN2j0hkP39f
 JaBw8V+IfhYWIKBL4HNBjRw8F65OUkcCJmEmg0RpmeOn5+izK06vu30w8gpWnQJD24hE
 7uinnuW3Ib+giJ5xVSsvpkLGB/bWWeaG4yyk28jrMnLogGz/pSfyjG1fG95uTBEFBvKL
 Yd7WoHYdCllHRGIh0PE9MK2RWSp2w+01uoK576h54GevYxi9JgtqxnTIUazZP/2+aYAm
 J3O2+f/jV33pbPF84mQXI2xvoivG/cnL0ZXpbFvdQO9YrzW63g3cijjM1C8oX5bAYFUa
 sJPQ==
X-Gm-Message-State: APjAAAUp5u5gFn69WBJveaqtb/2IdXW0PvACNwrR72KpMlFqfXs/rCzt
 tiTTFylgAufwvpLc9jPkOFltE5GJgjQyuVpxvVPrsA==
X-Google-Smtp-Source: APXvYqyugyGW2l843vtjeo2K0Rw/fI3D/GR7RImYKoiL4vSMh/+fnOIfjAo8KCQWbriSiNcM+VNAPDDMS25ao3jTZFY=
X-Received: by 2002:a24:3d8f:: with SMTP id n137mr18160227itn.96.1557734087743; 
 Mon, 13 May 2019 00:54:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190417144709.19588-1-brgl@bgdev.pl>
In-Reply-To: <20190417144709.19588-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 13 May 2019 09:54:36 +0200
Message-ID: <CAMRc=MdhfEM_CndCjCkY9kWeu+3VPTA7tmTy5PH=2XforZ6aLw@mail.gmail.com>
Subject: Re: [RFC 0/2] clocksource: davinci-timer: new driver
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_005449_218581_C13F0B4D 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMTcga3dpIDIwMTkgbyAxNjo0NyBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2
LnBsPiBuYXBpc2HFgihhKToKPgo+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pl
d3NraUBiYXlsaWJyZS5jb20+Cj4KPiBIaSBEYW5pZWwsCj4KPiBhcyBkaXNjdXNzZWQgLSB0aGlz
IGlzIHRoZSBkYXZpbmNpIHRpbWVyIGRyaXZlciBzcGxpdCBpbnRvIHRoZSBjbG9ja2V2ZW50Cj4g
YW5kIGNsb2Nrc291cmNlIHBhcnRzLgo+Cj4gU2luY2UgaXQgd29uJ3Qgd29yayB3aXRob3V0IGFs
bCB0aGUgb3RoZXIgKGxlZnQgb3V0IGZvciBub3cpIGNoYW5nZXMsIEknbQo+IG1hcmtpbmcgaXQg
YXMgUkZDLgo+Cj4gVGhlIGNvZGUgaGFzIGJlZW4gc2ltcGxpZmllZCBhcyByZXF1ZXN0ZWQsIHRo
ZSBkdXBsaWNhdGVkIGVudW1zIGFuZCB0aGUKPiBkYXZpbmNpX3RpbWVyIHN0cnVjdHVyZSBoYXZl
IGJlZW4gcmVtb3ZlZC4KPgo+IFBsZWFzZSBsZXQgbWUga25vdyBpZiB0aGF0J3MgYmV0dGVyLiBJ
IHJldGVzdGVkIGl0IG9uIGRhODUwLWxjZGssIGRhODMwLWV2bQo+IGFuZCBkbTM2NS1ldm0uCj4K
PiBCYXJ0b3N6IEdvbGFzemV3c2tpICgyKToKPiAgIGNsb2Nrc291cmNlOiBkYXZpbmNpLXRpbWVy
OiBhZGQgc3VwcG9ydCBmb3IgY2xvY2tldmVudHMKPiAgIGNsb2Nrc291cmNlOiB0aW1lci1kYXZp
bmNpOiBhZGQgc3VwcG9ydCBmb3IgY2xvY2tzb3VyY2UKPgo+ICBkcml2ZXJzL2Nsb2Nrc291cmNl
L0tjb25maWcgICAgICAgICB8ICAgNSArCj4gIGRyaXZlcnMvY2xvY2tzb3VyY2UvTWFrZWZpbGUg
ICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1kYXZpbmNpLmMgfCAz
NDIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2Nsb2Nrc291cmNlL3Rp
bWVyLWRhdmluY2kuaCB8ICA0NCArKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgMzkyIGluc2VydGlv
bnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItZGF2
aW5jaS5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2Nsb2Nrc291cmNlL3RpbWVyLWRh
dmluY2kuaAo+Cj4gLS0KPiAyLjIxLjAKPgoKSGkgRGFuaWVsLAoKaXQncyBiZWVuIGFsbW9zdCBh
IG1vbnRoIHNvIGEgZ2VudGxlIHBpbmcuIEFueSBjb21tZW50cyBvbiB0aGF0PwoKQmVzdCByZWdh
cmRzLApCYXJ0b3N6IEdvbGFzemV3c2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
