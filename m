Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F67D125D23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfZu0gMDDtcd2XlEdkY90Q47M9c6G27TnKLqtzoGFF8=; b=o4t7xUeS8Psqfg
	RkFXqnU8mpbIOGUXR5pkmRCwfl911MvfKJ6f9H0tTqKawc41mh5GUXRmGvv6B4REdmDvUoZqGIJVO
	Q4R2EcWAgapcwJcUQ2pUbaNPXwg+7J6V5gP7BbpiaKqclg0vGJdRhnynQ0ZSPgeQVRXYIvdVVJFIL
	tW0qoEOIsPvZ3y48B+sR7XB9WNMDycJXR1snNvfB5+vd3ZQrQRlqFp6c7u2F0UzuGNZytLgO0JwTY
	G+1TKoBzxK14Vp1v6adwzYGk7nCURCtZETGHOsGqf3I+y+6FkAWpd8X+0ZEVbI1YKvxDxCnBuYOeO
	6uAxFJ9CPbCBr7GzpMUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrfL-0006qg-Ak; Thu, 19 Dec 2019 09:00:15 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrf6-0006Yr-Ks
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:00:02 +0000
Received: by mail-io1-xd42.google.com with SMTP id r13so4969541ioa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 00:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XhwcmI2wyfpsDhpGYM6tJ8TzKL8XHFXbjOnu1vJ//fU=;
 b=ZFpxsYLEdNHLWO1qXcwglF2c1sIqcsPaMcMqWna2m2gb8lVRd2R41lf+oahElV4lgd
 wmmU1ORgPQhvICUDw7qzZvfZjRwXpHNnwzixdBvnrHg0yIHvuF2JCFiPExZyoLx6fpFD
 Gvvzp3NwqxX9+M79JnMYkbCLI84tKHnMmLmic7ET86e9+mLDm3diShEEg8B1LObCW5Di
 AX+lBzctxpEMXkxR6iUJVJh5DLgtNcLs46fLGGMizcglrFSr6ZD0XoDmXiYZgVuwiYE8
 Y117UqX9G3EF5/HdaUWc1r+21GYWDZ3MgPXdQzMx3+d67UbxqiAAj+JsYNcUtP9duKe5
 nSjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XhwcmI2wyfpsDhpGYM6tJ8TzKL8XHFXbjOnu1vJ//fU=;
 b=GswwREeeqhNYiC5vRjzYRpPudDpzVUYrEQW/ZVmK1ko5DQlgZVItZM/8MY26lAJ7sO
 13maaGbBTrhAdFGae1zRuN6MCfGlb2FQtXxplqcR2AKdweWrcwsYXHnzaoakeL94NF1A
 3bE0t5a0Tk/nITIXxqSsv78U/gpK7sB54+rcxZhh31tmIONKwTxNO4KWaONbmY/WoTNj
 qiUWlCLmALpqR+vPfOc2O0diK33VYPyr1KO4H3D+VJ19SuaYSxPxwKyxEMkuE6BIs+1A
 aboU0iBFwYSAizhdTJOD2KRj8BdXrTn+P7ILXjOdLhKoOEqLtOopA+0h1ssS3urkraJ0
 1+7g==
X-Gm-Message-State: APjAAAV6L/uDeHBvNfFj7htxpTpxp54GleGMI7uc9/4sxDYKokBfAaRT
 tBr6mzb3lBeZGMhj3f7zFiRlYWys6cCT1YpLd2OYVg==
X-Google-Smtp-Source: APXvYqzPk4FlZdj7PEvti7vCUA4390Bw+OwFoETkThRyu8LG2KoaNO7bp9bbPYePbZmR/WPm2F7SiL45vQUpahKKX+M=
X-Received: by 2002:a5d:9dd9:: with SMTP id 25mr5066557ioo.287.1576745998374; 
 Thu, 19 Dec 2019 00:59:58 -0800 (PST)
MIME-Version: 1.0
References: <20191213162453.15691-1-brgl@bgdev.pl>
 <20191213162453.15691-2-brgl@bgdev.pl>
 <51eb10e9-245e-7b3e-51ff-578e06e0759b@ti.com>
In-Reply-To: <51eb10e9-245e-7b3e-51ff-578e06e0759b@ti.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Dec 2019 09:59:47 +0100
Message-ID: <CAMRc=MdBxko3PGK8MksiOYbm081oQf6gYxBp8xOwtyTJ5ruM5Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] clocksource: davinci: work around a clocksource
 problem on dm365 SoC
To: Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_010000_745764_47805CAA 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: David Lechner <david@lechnology.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgMTggZ3J1IDIwMTkgbyAxMDoyOCBTZWtoYXIgTm9yaSA8bnNla2hhckB0aS5jb20+IG5h
cGlzYcWCKGEpOgo+Cj4gSGkgQmFydCwKPgo+IE9uIDEzLzEyLzE5IDk6NTQgUE0sIEJhcnRvc3og
R29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6
ZXdza2lAYmF5bGlicmUuY29tPgo+ID4KPiA+IFRoZSBETTM2NSBwbGF0Zm9ybSBoYXMgYSBzdHJh
bmdlIHF1aXJrIChvbmx5IHByZXNlbnQgd2hlbiB1c2luZyBhbmNpZW50Cj4gPiB1LWJvb3QgLSBt
YWlubGluZSB1LWJvb3QgdjIwMTMuMDEgYW5kIGxhdGVyIHdvcmtzIGZpbmUpIHdoZXJlIGlmIHdl
Cj4gPiBlbmFibGUgdGhlIHNlY29uZCBoYWxmIG9mIHRoZSB0aW1lciBpbiBwZXJpb2RpYyBtb2Rl
IGJlZm9yZSB3ZSBkbyBpdHMKPiA+IGluaXRpYWxpemF0aW9uIC0gdGhlIHRpbWUgd29uJ3Qgc3Rh
cnQgZmxvd2luZyBhbmQgd2UgY2FuJ3QgYm9vdC4KPiA+Cj4gPiBXaGVuIHVzaW5nIG1vcmUgcmVj
ZW50IHUtYm9vdCwgd2UgY2FuIGVuYWJsZSB0aGUgdGltZXIsIHRoZW4gcmVpbml0aWFsaXplCj4g
PiBpdCBhbmQgYWxsIHdvcmtzIGZpbmUuCj4gPgo+ID4gSSd2ZSBiZWVuIHVuYWJsZSB0byBmaWd1
cmUgb3V0IHdoeSB0aGF0IGlzLCBidXQgYSB3b3JrYXJvdW5kIGZvciB0aGlzCj4gPiBpcyBzdHJh
aWdodGZvcndhcmQgLSBqdXN0IGNhY2hlIHRoZSBlbmFibGUgYml0cyBmb3IgdGltMzQuCj4gPgo+
ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFzemV3c2tpQGJheWxp
YnJlLmNvbT4KPgo+IFRpbWVyIEdsb2JhbCBDb250cm9sIFJlZ2lzdGVyIChUR0NSKSBoYXMgYml0
cyB0byByZXNldCBib3RoIGhhbHZlcyBvZgo+IHRpbWVyLiBEb2VzIHBsYWNpbmcgYm90aCBoYWx2
ZXMgaW4gcmVzZXQsIHdhaXRpbmcgYSBiaXQgKHNheSAxMG1zKSBhbmQKPiB0aGVuIHRha2luZyB0
aGVtIG91dCBvZiByZXNldCBoZWxwIHNvbHZlIHRoZSB0aGlzIHByb2JsZW0/Cj4KCk5vLCBpdCBk
b2Vzbid0IGNoYW5nZSBhbnl0aGluZy4gT24gdS1ib290IHByZXNlbnQgb24gbXkgZG0zNjUtZXZt
LAp0aW0zNCBpcyBub3QgaW4gcmVzZXQgd2hlbiB3ZSBnZXQgdG8gbGludXgsIHdoaWxlIHRpbTEy
IGlzIGluIHJlc2V0LApidXQgcHV0dGluZyB0aW0zNCBpbiByZXNldCBpbiBsaW51eCBkb2Vzbid0
IHNlZW0gdG8gY2hhbmdlIGFueXRoaW5nLgoKPiBBbHNvLCB0aGVyZSBhcmUgTFBTQ3MgY29udHJv
bGxpbmcgdGhlIHRpbWVycy4gQXMgYW4gZXhwZXJpbWVudCwgY2FuIHlvdQo+IHNlZSBpZiB1c2lu
ZyBMUFNDX1NUQVRFX1NXUlNURElTQUJMRSBpbnN0ZWFkIG9mIExQU0NfU1RBVEVfRElTQUJMRSBp
bgo+IGRhdmluY2lfbHBzY19jbGtfZGlzYWJsZSgpIGFuZCB0aGVuIGRvaW5nIGEgY2xrX2Rpc2Fi
bGUoKSArIGNsa19lbmFibGUoKQo+IG9uIHRpbWVyIGNhbiBnZXQgdGhlIHRpbWVyIG91dCBvZiB0
aGlzIGJhZCBzdGF0ZS4KCkkgdHJpZWQgc2V2ZXJhbCBjb21iaW5hdGlvbnMgb2YgdGhpcyBlLmcu
IG5vcm1hbCBwcmVwYXJlX2VuYWJsZSAtPgpkaXNhYmxlIC0+IGVuYWJsZSwgZGlzYWJsZSAtPiBl
bmFibGUsIGRpc2FibGUgLT4gZGVsYXkgLT4gZW5hYmxlIGV0Yy4KYW5kIG5laXRoZXIgd29ya2Vk
LgoKPgo+IFdlIG5lZWQgc29tZSB3YXkgZm9yIExpbnV4IHRvIHN0YXJ0IG9uIGEgY2xlYW4gc3Rh
dGUgYWZ0ZXIgYm9vdGxvYWRlciBpcwo+IGRvbmUuIEFuZCB0cnlpbmcgdG8gcmVzZXQgdGhlIHRp
bWVyIGJlZm9yZSB1c2Ugc2VlbXMgdG8gYmUgYSBiZXR0ZXIgd2F5Cj4gdG8gYWNjb21wbGlzaCBp
dC4KPgo+IEkgYXNzdW1lIHRoZSBvcmlnaW5hbCBjb2RlIHdhcyBqdXN0IGx1Y2t5IGluIG5vdCBo
aXR0aW5nIHRoaXMgY2FzZT8KPgoKSSBndWVzcyBzby4gSXQgdXNlZCB0byByZS1yZWFkIHRoZSBy
ZWdpc3RlcnMgaW5zdGVhZCBvZiBhc3N1bWluZwpjZXJ0YWluIHZhbHVlcy4gV2hlbiBJIGRpZCBp
dCB0b28sIHRoZXJlIHdhcyBubyBwcm9ibGVtLCBpdCdzIG9ubHkKd2hlbiB3ZSBkcm9wcGVkIHJl
LXJlYWRpbmcgdGhhdCB0aGlzIG11c3QgaGF2ZSBhcHBlYXJlZC4KCkJhcnQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
