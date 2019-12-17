Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69013122616
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 09:01:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CqtLeYF+69k5QZix9gtNOYihpb/Lm1/Px8dLuyse4ZQ=; b=XJCVEVejM0EokL
	9l7vRXOGdg5Co2OY1AAXIGpZ6ol0wKdY6mzNfwJDQuW/r1cko2E4QHWwYZExP3A8FUki6HaPiKUH6
	TV7hfkE81ClgYU53jkYStCC4ewWqkegKgBZPke+aANscSu+g26toijU71jaglhEOkSguQguMovREa
	KNiVLT7VCzW4ghrgEf/XKgARsEo+Bj5i3xQWdVl2HitE/wOKcc3skeRdn2zU9q6ky+593Fbd7dz8w
	B47R80uD8sOC7IUchRN4z6J8wcPOChvl3qQE8ZDDmBk56LwpeiYA/TXMlUlXxn1GZL/C0s0uzR8S3
	/4pZ5msXL/OGH4zifKYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7n6-00033f-A2; Tue, 17 Dec 2019 08:01:12 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7mt-0002uO-08
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 08:01:00 +0000
Received: by mail-io1-xd42.google.com with SMTP id x1so861992iop.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 00:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fjfBTXD/0Rg93fYPAe9SEo+I0qrNg9n7YS5lPldbMxg=;
 b=Kw1586Eb7ayc/Uevj8kSs/jgbYJZ5RYqw6C/4PkUaMTeDr28DglPtZD1DpVyn1eGW3
 gdH8K+XvoTplIyxy5dARmY3R34o7vUJ7Vekk7cA71Z/jc21kJsq1tPVO0q3Vrpd/4nVf
 nem3oX3/rwi1QWu+HC4paVuGsbly6AzhY414oydHkwRHfygrV9dAovK/YbW4QSOZiucx
 vycrxUBnDwLIO0sUyaIwB9gGUNB1aJmu/4TZf3sYpeXu+lsEQnGfvJ6bvIqLFEseV7H3
 pkoJcKkz0EaZzEODKNX5LjiNY67fjwLigUHtMjkcLluVjeg/Q/oBqpu17LrvkDoh/87L
 K2SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fjfBTXD/0Rg93fYPAe9SEo+I0qrNg9n7YS5lPldbMxg=;
 b=CSB2XPsaJHr4Cig/8RJW9vTarWXwHxe2g1aClDqtUbXvzyb2l3ooykHSZ0emQPImGA
 Ua4AMbcVLWPoXl9TDHc4zdTlir5wAnTUaBwUsSdkiwxrHBunebAbF4yCy/FEbMp86PU/
 S5HdXaxCPePtFRm6Vry/+ky4mthDZnBMH7/O7XLukdxss0rgh6acXOGub9HHvqRg7Dtz
 dIIMHSFkuD2+YR22wQXxDiGVDQXuELLuS6njxnEUR5Hdo6F+j8XSwOV+GDxwNAL7s++W
 zqoH4GsmozxGh1heWbVhOfZiA7SvScx/lgxqh7IfeoJaZuBIgN+KkDaXLhzctD66eFmi
 qk1g==
X-Gm-Message-State: APjAAAVU9QQSZ6rUwLz66glWmoe1whudekUXJU8FYJqgAvGeN4AHMdF3
 KOSndURwy5EUw+2OKq0e++em1sdSOijqTHShv6miBQ==
X-Google-Smtp-Source: APXvYqz32eReTALarnf1P0DDPtaS3epoXURcAZnKU7rDx0beSWVeeDK4EoJbvrSnuhkreRg5/vzJ1Z7KVBqugRXabrU=
X-Received: by 2002:a02:c85b:: with SMTP id r27mr7986096jao.57.1576569655617; 
 Tue, 17 Dec 2019 00:00:55 -0800 (PST)
MIME-Version: 1.0
References: <20191213162453.15691-1-brgl@bgdev.pl>
 <20191213162453.15691-2-brgl@bgdev.pl>
 <b9a28314-4fce-ebbd-be20-b0ffa2f1f15f@lechnology.com>
In-Reply-To: <b9a28314-4fce-ebbd-be20-b0ffa2f1f15f@lechnology.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 17 Dec 2019 09:00:44 +0100
Message-ID: <CAMRc=McRKwYkUcY9J8cEkwoMnGYxs7SkTnOnFsVMDZD2DkJ1Zw@mail.gmail.com>
Subject: Re: [PATCH 1/3] clocksource: davinci: work around a clocksource
 problem on dm365 SoC
To: David Lechner <david@lechnology.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_000059_183533_68B1FC49 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
Cc: Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cG9uLiwgMTYgZ3J1IDIwMTkgbyAxODo1OCBEYXZpZCBMZWNobmVyIDxkYXZpZEBsZWNobm9sb2d5
LmNvbT4gbmFwaXNhxYIoYSk6Cj4KPiA+Cj4gPiArc3RhdGljIHVuc2lnbmVkIGludCBkYXZpbmNp
X2Nsb2Nrc291cmNlX3RpbTMyX21vZGU7Cj4KPiBzdGF0aWMgdW5zaWduZWQgYm9vbCBkYXZpbmNp
X2Nsb2Nrc291cmNlX2luaXRpYWxpemVkOwo+Cj4gPiArCj4gPiAgIHN0YXRpYyBzdHJ1Y3QgZGF2
aW5jaV9jbG9ja2V2ZW50ICoKPiA+ICAgdG9fZGF2aW5jaV9jbG9ja2V2ZW50KHN0cnVjdCBjbG9j
a19ldmVudF9kZXZpY2UgKmNsb2NrZXZlbnQpCj4gPiAgIHsKPiA+IEBAIC05NCw3ICs5Niw3IEBA
IHN0YXRpYyB2b2lkIGRhdmluY2lfdGltMTJfc2h1dGRvd24odm9pZCBfX2lvbWVtICpiYXNlKQo+
ID4gICAgICAgICogaGFsdmVzLiBJbiB0aGlzIGNhc2UgVElNMzQgcnVucyBpbiBwZXJpb2RpYyBt
b2RlIGFuZCB3ZSBtdXN0Cj4gPiAgICAgICAgKiBub3QgbW9kaWZ5IGl0Lgo+ID4gICAgICAgICov
Cj4gPiAtICAgICB0Y3IgfD0gREFWSU5DSV9USU1FUl9FTkFNT0RFX1BFUklPRElDIDw8Cj4gPiAr
ICAgICB0Y3IgfD0gZGF2aW5jaV9jbG9ja3NvdXJjZV90aW0zMl9tb2RlIDw8Cj4gPiAgICAgICAg
ICAgICAgIERBVklOQ0lfVElNRVJfRU5BTU9ERV9TSElGVF9USU0zNDsKPgo+ICAgICAgICAgaWYg
KGRhdmluY2lfY2xvY2tzb3VyY2VfaW5pdGlhbGl6ZWQpCj4gICAgICAgICAgICAgICAgIHRjciB8
PSBEQVZJTkNJX1RJTUVSX0VOQU1PREVfUEVSSU9ESUMgPDwKPiAgICAgICAgICAgICAgICAgICAg
ICAgICBEQVZJTkNJX1RJTUVSX0VOQU1PREVfU0hJRlRfVElNMzQ7CgpJIHRob3VnaHQgYWJvdXQg
ZG9pbmcgdGhpcyBpbml0aWFsbHksIGJ1dCB0aGVuIGZpZ3VyZWQgdGhpcyBjb2RlIHdvdWxkCmJl
IGNhbGxlZCBhIGxvdCwgc28gd2h5IG5vdCBhdm9pZCBicmFuY2hpbmcgYW5kIGp1c3Qgc3RvcmUg
dGhlIHJpZ2h0CnZhbHVlPyBBbHRlcm5hdGl2ZWx5IHdlIGNhbiBkbzoKCiAgICBpZiAobGlrZWx5
KGRhdmluY2lfY2xvY2tzb3VyY2VfaW5pdGlhbGl6ZWQpCiAgICAgICAgLi4uLgoKQmFydAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
