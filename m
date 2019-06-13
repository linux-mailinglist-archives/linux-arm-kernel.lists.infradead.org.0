Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 581FD43600
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:43:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cf80Y7rkCwfdeiAvPIFyxFiaagcszR4SUmAGPXvgUhU=; b=hcD/KexnPsSyRl
	uaoI/P5e396UOr8dGtNAFrMyIA3qcjPAtW/5ewWtD5f5L/AIyRUjb5GSLoUK8c3OR8lLWwEIzliKP
	J0lnpIstZpu/qhcGCwj19YS3Tsrn3JJmtR/YXzvhLN8aD5udu7WrObJ8Vnut5j0Xgbhp2xw1+fgQH
	5QrXxtgv1BpGXk9B8m2PIQC+HQV2uWyVusRkH0TngVrMohDjMNspd1eVR7bTrOYZ0sFxcuzXYLVcy
	SgHmSRP2W/AqbfiPfNR2d37z95N/ZpMy+zHeR+PGHUencoo7wvCKslnEv5L/2vs2hB+Pz5+tYnsog
	4uynsgDObjkZAMmozs4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbP58-00089X-2b; Thu, 13 Jun 2019 12:43:54 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbP4V-000880-Hf
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 12:43:17 +0000
Received: by mail-qk1-f196.google.com with SMTP id a27so12599606qkk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 05:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M1sFURB9VOBy4jtZMrXEnFN+uXQmeakOQ9D7hQoU5Oo=;
 b=pTVWBndCYuyR2YJLFjtWCdyh1+0+vyrEYWOs9bVmpfUORCPuaKdzov6zOIyX+pP5XZ
 QLnLUVXdSiCuPNe0ywe+hzOs07NaDqBdAqxFHOiOxUG3sCcXHu8tq4Vqan6Ncn2slaEo
 KTsEYlKTIvwgdqTFzvaiYgvy0ufi+J0XFUVVZK6XgAkKobnqJ4h5+ZZcBUy0UYLQ3rfc
 1ACIWqZS21z75P8BLV0SojdZ8R9kQ1OkL0CBmyvDr+RQwbJW+4G35zR849F3ZWTm1+Q0
 uCv3lDWnWIWMcI2gMsRrSjdvddVVxqIIPuOlG/mA5MQ2VwZYpemEd8/5jnSnoJLAsyBJ
 w3GQ==
X-Gm-Message-State: APjAAAWK+WNu5TyD68NAuoFvvo4zZ6covH4nsqKNtxkwyu5DsjU6zgoT
 CJNSXMNjtp7U+SCqRJdmr1Z0HzClcghJ+ADoA5k=
X-Google-Smtp-Source: APXvYqx0GATfAKDHQiQUDbUvb9OL9pOZqSyQ28f3QUXB75XM3Ltr+LckmYh3837y9Za7XbZ5exY75L49164V4buSJ0g=
X-Received: by 2002:a05:620a:16c1:: with SMTP id
 a1mr27974065qkn.269.1560429794286; 
 Thu, 13 Jun 2019 05:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
In-Reply-To: <c2e6af51-5676-3715-6666-c3f18df7b992@free.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 13 Jun 2019 14:42:57 +0200
Message-ID: <CAK8P3a1_WvHYW243MR5-NdFm3cSt+cVGM5EJmOM8uiQMQ3vQjQ@mail.gmail.com>
Subject: Re: [PATCH v1] iopoll: Tweak readx_poll_timeout sleep range
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_054315_582121_4DA29E15 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Douglas Anderson <dianders@chromium.org>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Matt Wagantall <mattw@codeaurora.org>, Bjorn Helgaas <helgaas@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mitchel Humpherys <mitchelh@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 2:16 PM Marc Gonzalez <marc.w.gonzalez@free.fr> wrote:
>
> Chopping max delay in 4 seems excessive. Let's just cut it in half.
>
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---
> When max_us=100, old_min was 26 us; new_min would be 50 us
> Was there a good reason for the 1/4th?
> Is new_min=0 a problem? (for max=1)

You normally want a large enough range between min and max. I don't
see anything wrong with a factor of four.

> @@ -47,7 +47,7 @@
>                         break; \
>                 } \
>                 if (__sleep_us) \
> -                       usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
> +                       usleep_range(__sleep_us / 2, __sleep_us); \
>         } \

You are also missing the '+1' now, so this breaks with __sleep_us=1.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
