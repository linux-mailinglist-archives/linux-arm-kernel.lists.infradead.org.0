Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A05381439
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 10:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaxCe9Ij/u0E5s4gVygq84dbOfnJ4OIMx0jZAmySm80=; b=gd7M5aq5T8uoD7
	a12Aro7iv9IDWjRq5se3Ry31jAcpw7v0lMtlk+0K6sSTt/HdF3YMR34fMyJ4Tvqy90U1YMaTrpdTb
	RWji7aDGDEGVf+WI5XXG7T2Mr2Gr9H+hLucUL4WfTqi4qRZcJn3462cGmkO0TMlQgK2hCfxXDpeTp
	R6Lto0Tq54kd/EzhGz/+QKfKnEZ1eLoZ7PTkHLINKxPHd6FqJp7bbNOOFPCwUi8j8RmtjsF9KAhyk
	+2CqI6Lvkj/Ael50S6Zjd2Niu9UnO4UIKgrBnZB2tYoxMfwjP7B0IGrBe3FtYuGa6nzhHElq8Lzoc
	YxmIzjxxgJLoJCSFtK7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYOJ-0006Ge-V3; Mon, 05 Aug 2019 08:30:52 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYO5-0006GK-V4
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:30:39 +0000
Received: by mail-io1-xd43.google.com with SMTP id o9so61962305iom.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yyl06VlC6+KCObHiyWGls6JX8m37oW5ZUavAlFOgRwY=;
 b=MBLoncsocISVckTtBkUcx1oZ1ATdC/vQzYufJcdYCtudNT1v8Hqd4WTrUuJRTUcaX2
 tLVeYIVrE1wbVHLuk3FkIUUtAP/BOaSfeM/C3DI6bbbbQ7o3iWWrIt1C7ehr8MLkU8UG
 T/04JQH8eW6m6sa8cg7Wc9h+YGcqxJRWkVtOLN5dQiynlleSvpqaXvR7JycB4UhgRguS
 P5LkYwQBoQWdCFHFDIKxFvYAs0qLCzp59JKfbCN1AuFsQQDdVMe4p5mSqdJJfePdktGV
 ygBco/z+Lh5If06f1ZONGTbxoxSH1qEik7tmaVKHKEts5EozNXpSarfdwfNVRlIo930n
 VvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yyl06VlC6+KCObHiyWGls6JX8m37oW5ZUavAlFOgRwY=;
 b=rcaHeAO3nGEFOY74o4Y95QlCBu0DvgDSm31adafhyEazA0aOEtKLbtMG8Gagr7cEq3
 IOIT254hR8SVUxT0uEv99kOx7c1M9kmbkH2VAuKhnm0H1laN+NlH0S666w8vMdMBVxLU
 lHDvAxuDJ71164hg021vRyITfIcizZYbEa3CQkPrgOWifvCij7WS/LZllkSWYeEMlyKf
 jRHQ7TcpcqcVQazqHndkmJNdHcMVBLa6AXvm9elCvLAH7q7yUPPQPW4eLF4ccUGP4/2K
 SWyiMC6EvDxwJJ/JJIOHKY6igagiIoCOnSkbYhzIY1+pYqB3j6Q5tkpGw6bVvVA3LNWP
 vOOg==
X-Gm-Message-State: APjAAAXm9w9Gvs8yOCW6dpgCZIpPk9xo5g5BrG0GeiUrrLpkXYe1Cs1i
 Ezo+7Q5xPDr3NJFrklB+MgUBLKscVVGecI3wTvfpYQ==
X-Google-Smtp-Source: APXvYqx6T0N1Ra1tdlHmxChURIXRJl2MTdbHsY9hPq8d6/X7xlF0XynNY+IOJMgjzboNM2rejEeOazjtnKv1GoQeMQE=
X-Received: by 2002:a05:6638:cf:: with SMTP id
 w15mr75704049jao.136.1564993837015; 
 Mon, 05 Aug 2019 01:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190722134423.26555-1-brgl@bgdev.pl>
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 5 Aug 2019 10:30:26 +0200
Message-ID: <CAMRc=Me51RgQu8VK70dy=1OhmHeKo40HLxfsvp2nD5UC+Mzb=w@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] ARM: davinci: da850-evm: remove more legacy GPIO
 calls
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>, 
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>, 
 Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_013037_998724_90C569E0 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-fbdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMjIgbGlwIDIwMTkgbyAxNTo0NCBCYXJ0b3N6IEdvbGFzemV3c2tpIDxicmdsQGJnZGV2
LnBsPiBuYXBpc2HFgihhKToKPgo+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJnb2xhc3pl
d3NraUBiYXlsaWJyZS5jb20+Cj4KPiBUaGlzIGlzIGFub3RoZXIgc21hbGwgc3RlcCBvbiB0aGUg
cGF0aCB0byBsaWJlcmF0aW5nIGRhdmluY2kgZnJvbSBsZWdhY3kKPiBHUElPIEFQSSBjYWxscyBh
bmQgc2hyaW5raW5nIHRoZSBkYXZpbmNpIEdQSU8gZHJpdmVyIGJ5IG5vdCBoYXZpbmcgdG8KPiBz
dXBwb3J0IHRoZSBiYXNlIEdQSU8gbnVtYmVyIGFueW1vcmUuCj4KPiBUaGlzIHRpbWUgd2UncmUg
cmVtb3ZpbmcgdGhlIGxlZ2FjeSBjYWxscyB1c2VkIGluZGlyZWN0bHkgYnkgdGhlIExDREMKPiBm
YmRldiBkcml2ZXIuCj4KPiBGaXJzdCB0d28gcGF0Y2hlcyBlbmFibGUgdGhlIEdQSU8gYmFja2xp
Z2h0IGRyaXZlciBpbgo+IGRhdmluY2lfYWxsX2RlZmNvbmZpZy4KPgo+IFBhdGNoIDMvMTIgbW9k
ZWxzIHRoZSBiYWNrbGlnaHQgR1BJTyBhcyBhbiBhY3R1YWwgR1BJTyBiYWNrbGlnaHQgZGV2aWNl
Lgo+Cj4gUGF0Y2hlcyA0LTYgZXh0ZW5kIHRoZSBmYmRldiBkcml2ZXIgd2l0aCByZWd1bGF0b3Ig
c3VwcG9ydCBhbmQgY29udmVydAo+IHRoZSBkYTg1MC1ldm0gYm9hcmQgZmlsZSB0byB1c2luZyBp
dC4KPgo+IExhc3QgdGhyZWUgcGF0Y2hlcyBhcmUgaW1wcm92ZW1lbnRzIHRvIHRoZSBkYTh4eCBm
YmRldiBkcml2ZXIgc2luY2UKPiB3ZSdyZSBhbHJlYWR5IHRvdWNoaW5nIGl0IGluIHRoaXMgc2Vy
aWVzLgo+Cj4gdjEgLT4gdjI6Cj4gLSBkb3BwZWQgdGhlIGdwaW8tYmFja2xpZ2h0IHBhdGNoZXMg
ZnJvbSB0aGlzIHNlcmllcyBhcyBzaW5jZSB2NS4zLXJjMSB3ZQo+ICAgY2FuIHByb2JlIHRoZSBt
b2R1bGUgd2l0aCBuZWl0aGVyIHRoZSBPRiBub2RlIG5vciBwbGF0Zm9ybSBkYXRhCj4gLSBjb2xs
ZWN0ZWQgcmV2aWV3IGFuZCBhY2sgdGFncwo+IC0gcmViYXNlZCBvbiB0b3Agb2YgdjUuMy1yYzEK
Pgo+IEJhcnRvc3ogR29sYXN6ZXdza2kgKDkpOgo+ICAgQVJNOiBkYXZpbmNpOiByZWZyZXNoIGRh
dmluY2lfYWxsX2RlZmNvbmZpZwo+ICAgQVJNOiBkYXZpbmNpX2FsbF9kZWZjb25maWc6IGVuYWJs
ZSBHUElPIGJhY2tsaWdodAo+ICAgQVJNOiBkYXZpbmNpOiBkYTg1MC1ldm06IG1vZGVsIHRoZSBi
YWNrbGlnaHQgR1BJTyBhcyBhbiBhY3R1YWwgZGV2aWNlCj4gICBmYmRldjogZGE4eHg6IGFkZCBz
dXBwb3J0IGZvciBhIHJlZ3VsYXRvcgo+ICAgQVJNOiBkYXZpbmNpOiBkYTg1MC1ldm06IHN3aXRj
aCB0byB1c2luZyBhIGZpeGVkIHJlZ3VsYXRvciBmb3IgbGNkYwo+ICAgZmJkZXY6IGRhOHh4OiBy
ZW1vdmUgcGFuZWxfcG93ZXJfY3RybCgpIGNhbGxiYWNrIGZyb20gcGxhdGZvcm0gZGF0YQo+ICAg
ZmJkZXY6IGRhOHh4LWZiOiB1c2UgZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKCkKPiAg
IGZiZGV2OiBkYTh4eC1mYjogZHJvcCBhIHJlZHVuZGFudCBpZgo+ICAgZmJkZXY6IGRhOHh4OiB1
c2UgcmVzb3VyY2UgbWFuYWdlbWVudCBmb3IgZG1hCj4KPiAgYXJjaC9hcm0vY29uZmlncy9kYXZp
bmNpX2FsbF9kZWZjb25maWcgIHwgIDI3ICsrLS0tLQo+ICBhcmNoL2FybS9tYWNoLWRhdmluY2kv
Ym9hcmQtZGE4NTAtZXZtLmMgfCAgOTAgKysrKysrKysrKysrKy0tLS0tCj4gIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvZGE4eHgtZmIuYyAgICAgICAgICB8IDExOCArKysrKysrKysrKysrLS0tLS0tLS0t
LS0KPiAgaW5jbHVkZS92aWRlby9kYTh4eC1mYi5oICAgICAgICAgICAgICAgIHwgICAxIC0KPiAg
NCBmaWxlcyBjaGFuZ2VkLCAxNDEgaW5zZXJ0aW9ucygrKSwgOTUgZGVsZXRpb25zKC0pCj4KPiAt
LQo+IDIuMjEuMAo+CgpIaSBTZWtoYXIsCgp0aGUgZmJkZXYgcGF0Y2hlcyBoYXZlIGJlZW4gYWNr
ZWQgYnkgQmFydGxvbWllai4gSSB0aGluayB0aGUgZW50aXJlCnNlcmllcyBjYW4gZ28gdGhyb3Vn
aCB0aGUgQVJNLVNvQyB0cmVlLgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
