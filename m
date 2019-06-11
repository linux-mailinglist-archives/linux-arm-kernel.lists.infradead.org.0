Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6113C09F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 02:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/A+3L7ZMcSQVcv/8nQuW56E2Rbgm4YobNF4jCJXdc8E=; b=O0QvM3TMWRLXF3
	rQOt63cWeiTlvlckx9OrYXV2h0h8Bu0CUVIpFQIX2eUXQ571OUTZiowJIPFJCFFKviAh96Mr8lXSY
	wRZTcR/AWyIEbyIuXiIRL5y992CvGvNVn80dswINPa7a7obQV46vLUWb0urLCyKGX1QhYDSr9BQf4
	okWIzQkwfc2zDlilxAwMoGeRGdf46iu5M3oNJMk+cVb0bEWQxxcuUlTOEkMTRd13hqU/5wNmM1hvM
	8EkK+MTo+BsYSZu5WTEOZ8jzd+2bgtm83hZyZWG2PgVWYQ22qqwGLPk+tDpwHiwVhexy1jsAZitzs
	K4MQWtRCyBQ7tVVE15Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haUk2-00029C-Ow; Tue, 11 Jun 2019 00:34:22 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haUjq-00027e-SF
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 00:34:12 +0000
Received: by mail-oi1-x242.google.com with SMTP id y6so7650927oix.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 17:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MvpxPDcZzjh7n/INm53wNH78am0tG0fs5CB4HRWG80I=;
 b=CJGdFVZsnqw8uG8xiS/KagP650Y7VbvBNpLTQU7b3jR2sSiNEzuKbAX3w1m28GZ0Wl
 EZObvX18VD15GsGJ2BPIU9tzVqmK0HS6oSnKPVLxPFzD43cXmkqd5vSn1/tsIbK99ee8
 U5j8PWzMGKubRwd1VV7PvGMFcTYqtIOTXdhdmFUDqBX8PzKflaYjevR+kZPzwKdZ1V9J
 UdcAy5GXlnEAeom2TovLkD0GlTG0jv1yXxd3gOpt5Yz7i5YXPUuzrMguL/aZISUyqV7p
 sszJ21phJbDLayZ/cSoHicyiMffURBtAQLxylGxqyXVRY26uaKz0hJgRx4aYXoh1fAXE
 ZvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MvpxPDcZzjh7n/INm53wNH78am0tG0fs5CB4HRWG80I=;
 b=Wufu5nS1kQ3NmBsgTpSSRuc/f95ATD3/P1uobtQ8HYkGB/wSyeOzdyGX+70LSmPr2/
 o1nR/m1NbeMpC3IcD3me3lzZ5th/byhbgJtO1U5tZu4kWnmIqclROh9rZT/7+9K4z5UN
 Lk8msLToVI3MJB2F8LgOg4LSq86/pffVjBh7YO/jkdORaywo9WTCvwez6f8MJW8aWR+f
 c17ZFedxfulbZ+mtDqP3Uaq8gJd9MTCAVYnlXv29sKCWhSS/i0IuZZqZPPJ9n2jv8tJD
 4aLVmiP9I0B9wVtl5n9K/g3DM5zF2sXk0LRIjAWQqaJbn/W7RzWLHv2cyP508UnJGpfF
 R0dA==
X-Gm-Message-State: APjAAAVx8gDU8lP9Lnsi2lChYKhtW+C2k+3Iy/d2qYYUCZ7MiItgrW98
 YZwJ/idFlK6U56juOfj0b7XJ8ITm7RM4e7LQTok=
X-Google-Smtp-Source: APXvYqygQv0AkiaXaGjDiShSOiPL2Eb2sZ3ZOcJsNfhp/8djMj7zJtztfRTSl9AUjYgpefVvY3ky/7qm8w/heknsDsA=
X-Received: by 2002:aca:f552:: with SMTP id t79mr13230037oih.145.1560213248234; 
 Mon, 10 Jun 2019 17:34:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190525181329.18657-1-tiny.windzz@gmail.com>
 <20190525181329.18657-2-tiny.windzz@gmail.com>
 <CA+E=qVdh1E8Y7dZO0JSS4DJE2bo=98MuSKRt7nmeFg-td7Ua9Q@mail.gmail.com>
 <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
In-Reply-To: <CAEExFWtjNridLsMXOnBe2mJOPhUOYJ6G3wGF3gx=0oQoQROOGg@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 10 Jun 2019 17:34:57 -0700
Message-ID: <CA+E=qVeOSw=_z4OiQ4++z8g-KN29UYVXGicNd3PtHobg4xaG+w@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: sun8i: add thermal driver for h6
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_173410_913629_AFE8372E 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 paulmck@linux.ibm.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgNTozMSBQTSBGcmFuayBMZWUgPHRpbnkud2luZHp6QGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIEp1biAxMSwgMjAxOSBhdCA3OjI5IEFNIFZhc2ls
eSBLaG9ydXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFNhdCwg
TWF5IDI1LCAyMDE5IGF0IDExOjE3IEFNIFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgc3VwcG9ydCBmb3IgYWxs
d2lubmVyIHRoZXJtYWwgc2Vuc29yLCB3aXRoaW4KPiA+ID4gYWxsd2lubmVyIFNvQy4gSXQgd2ls
bCByZWdpc3RlciBzZW5zb3JzIGZvciB0aGVybWFsIGZyYW1ld29yawo+ID4gPiBhbmQgdXNlIGRl
dmljZSB0cmVlIHRvIGJpbmQgY29vbGluZyBkZXZpY2UuCj4gPgo+ID4gSGkgWWFuZ3RhbywKPiA+
Cj4gPiBBbnkgcGxhbnMgb24gdjQgb2YgdGhpcyBzZXJpZXM/Cj4gPgo+Cj4gSSBhbSB3YWl0aW5n
IGZvciBjb21tZW50IGZyb20gTWF4aW1lLgo+Cj4gSeKAmWxsIHN1cHBvcnQgYm90aCBoMyBhbmQg
aDYgaW4gdjQuCgpJZiB5b3UgaGF2ZSBhIGdpdCB0cmVlIEknbGwgYmUgaGFwcHkgdG8gY29udHJp
YnV0ZSBBNjQgc3VwcG9ydC4gSUlSQwppdCB3YXMgcXVpdGUgc2ltaWxhciB0byBIMy4KCj4gWWFu
Z3RhbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
