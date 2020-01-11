Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E15137F72
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 11:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNo5nonufh8D+EcJQuh7pkMXWtsD3NM6OgPbuT+dxfM=; b=kaPYVjGIbF5WEn
	P0PxmMRMnZ7nKQl8hKv36QGS2oCdhy5hvz5/WCBCMo30zqfM4KY8lzJ3KIsCPGF5BaVwDy1vKz2AJ
	ezI9MNMC9yPBSjm2LS7hNH/kR00g9gbW+VJGaNmHtMeHI6D5REO492++3FZXB56Rfl7XGiZp7jERr
	+B3Okiq7GoNcoTgMyhmQ5iL8h0Jwlo5AYENW08B0LDQP7Ylrqkctk+KDX/sOlLyQFOG6aQ1FihN6I
	yDCra53U4yvQ9rOLKPzWcK04AlrjlPHqqDR5ByAG6UT3dbLzQpV6/MBK1lqNfnrk0ltq8s7hpvf7k
	Iy73YdeawfQGz3KkYXgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqDsQ-0005Vp-Vp; Sat, 11 Jan 2020 10:20:18 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqDsI-0005Uy-O7
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 10:20:12 +0000
Received: by mail-il1-x141.google.com with SMTP id v15so3922785iln.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Jan 2020 02:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pOSVA5uhmk+VM6N/EM2MNyLEc6cHeflZPvPBN7eAFd8=;
 b=pw5/utmeH7AJPk+rdLyGJXCipp5gbd77aEW91QiO9nVl1bIYk06x9dOeM6DkcadL58
 3thq1tEd7eV8Nk2Di5aj+lj3IqdBd0HlBKMDbHIe8LSE2THZsFPOc7IEKhJNKs1iQB4N
 fyMgl2nAWPPIS0iFJi4ZHtj0pbys3V90Rn3BAuWXdf8cNzpORabQQGVJfp7Mc7j+tAah
 zr0fG3AtvyOqUulcuzL8K6asfjfI3WdmIJ5cc58q+3TnUAFRkOQDijfaYNqKQPiAZ0Ku
 g9qLawUQMHBrppemekkJ7SH4Fc84ZEvwhuWQYTZIS0GOxqBZZ8ZSXyUgGvu1EyiB7ttE
 fOfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pOSVA5uhmk+VM6N/EM2MNyLEc6cHeflZPvPBN7eAFd8=;
 b=h5zTIbWzaS/ttvYtKjO2d9AMm6CrDVTP8e3avy9n+G6ZZlR27CX/vGlZRcg5HN50qg
 uWQEMRCrVi7xNjXpyKJ5rUPA9XXy/H/57ZfXPy0DKwoBDofvZ8il2QEHaezvzk8hX4aJ
 aM5Nu+P/PI8mXIOnzQWG5KunbbFf5GGTpTj2/ENZ/vmSNb8JQyvcbI4wEMfQkGzcxdCG
 xhzDQnopuHTpDwzpSbiyY70ZEdb3RFL/Yc8eNynwt/7XqYwJoNUAazQz1v6yDzJM3aIe
 lJbneAeYZ3Pp1rEs5YtwxRHb1sdLqeK3XPaoH7k9nHlrzBNN2Qc16mKt60OI5Qn5OJJA
 a90w==
X-Gm-Message-State: APjAAAUBj+Rw0Ujbifyg1jbwweg/GauKRX38YuU7MQpn/WFPnBSUKJPp
 2PGTmjuEr4giGMqXpxg29Jl9iIQRDUmWo9kpEpTPZHww
X-Google-Smtp-Source: APXvYqysd4ztguN5R8BjDyEl38Q6mSx+PX/LFjJaUO4FAbZ+5rNBxo3P9IYXANJafr9f+JqMLd1b2jjfjMxinkK3Aco=
X-Received: by 2002:a92:8712:: with SMTP id m18mr6703847ild.40.1578738009666; 
 Sat, 11 Jan 2020 02:20:09 -0800 (PST)
MIME-Version: 1.0
References: <20200110171643.18578-1-brgl@bgdev.pl>
 <20200110171643.18578-2-brgl@bgdev.pl>
 <7be95251-7e26-6090-4770-6e4dbebfadd2@linaro.org>
In-Reply-To: <7be95251-7e26-6090-4770-6e4dbebfadd2@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Sat, 11 Jan 2020 11:19:58 +0100
Message-ID: <CAMRc=McesmYcJv7iqE3rLHFyeTJtnW4Gq1TjMjHGSkpcHNPahw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] clocksource: davinci: only enable clockevents once
 tim34 is initialized
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Sekhar Nori <nsekhar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_022010_927922_B2E8905B 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCAxMCBzdHkgMjAyMCBvIDE4OjU2IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0Bs
aW5hcm8ub3JnPiBuYXBpc2HFgihhKToKPgo+IE9uIDEwLzAxLzIwMjAgMTg6MTYsIEJhcnRvc3og
R29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBGcm9tOiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6
ZXdza2lAYmF5bGlicmUuY29tPgo+ID4KPiA+IFRoZSBETTM2NSBwbGF0Zm9ybSBoYXMgYSBzdHJh
bmdlIHF1aXJrIChvbmx5IHByZXNlbnQgd2hlbiB1c2luZyBhbmNpZW50Cj4gPiB1LWJvb3QgLSBt
YWlubGluZSB1LWJvb3QgdjIwMTMuMDEgYW5kIGxhdGVyIHdvcmtzIGZpbmUpIHdoZXJlIGlmIHdl
Cj4gPiBlbmFibGUgdGhlIHNlY29uZCBoYWxmIG9mIHRoZSB0aW1lciBpbiBwZXJpb2RpYyBtb2Rl
IGJlZm9yZSB3ZSBkbyBpdHMKPiA+IGluaXRpYWxpemF0aW9uIC0gdGhlIHRpbWUgd29uJ3Qgc3Rh
cnQgZmxvd2luZyBhbmQgd2UgY2FuJ3QgYm9vdC4KPiA+Cj4gPiBXaGVuIHVzaW5nIG1vcmUgcmVj
ZW50IHUtYm9vdCwgd2UgY2FuIGVuYWJsZSB0aGUgdGltZXIsIHRoZW4gcmVpbml0aWFsaXplCj4g
PiBpdCBhbmQgYWxsIHdvcmtzIGZpbmUuCj4gPgo+ID4gVG8gd29yayBhcm91bmQgdGhpcyBpc3N1
ZSBvbmx5IGVuYWJsZSBjbG9ja2V2ZW50cyBvbmNlIHRpbTM0IGlzCj4gPiBpbml0aWFsaXplZCBp
LmUuIG1vdmUgY2xvY2tldmVudHNfY29uZmlnX2FuZF9yZWdpc3RlcigpIGJlbG93IHRpbTM0Cj4g
PiBpbml0aWFsaXphdGlvbi4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3
c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+Cj4gU2hhbGwgSSB0YWtlIGl0IHRocm91
Z2ggbXkgdHJlZT8KPgoKTm90IHN1cmUsIEknZCBzYXkgU2VraGFyIHNob3VsZCB0YWtlIGl0IHRo
cm91Z2ggYXJtLXNvYyB0b2dldGhlciB3aXRoCnRoZSBsYXR0ZXIgdHdvIHBhdGNoZXMgaWYgaGUn
cyBvayB3aXRoIHRoaXMuIExldCdzIHdhaXQgZm9yIGhpbSB0bwpyZXNwb25kLgoKQmFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
