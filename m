Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A480792526
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Qj+m+n1t6wVVkVGX8nSbjlit89gp85OYZnwzVH2mOo=; b=TbjOEbHepeikaI
	62b+7gs/2l3QYC2DxbAThfLBOINsdz6aGCFRcIzyd28c6uGpeuF4LNqJLO/z3w2cmzo7QgxdZe8Bq
	btrMkbnHjt3YkrVt3vMcuOw7iEHgxqVtJ8VVoQOS/0NrdgXfu7dyLZ1AX83zB0wHf3eOuIMIDXxFs
	ZRf7hcagd+NHj6CzgEhmvJCAkFvarN8OsTtsb/gdla0iaEL9ySuV4j7i5AAMpcv+pszyrut0VDgVf
	Tfz3igeOryrXtJOTM6TCmo0B3VsSAD7Afp18iFXX8BXsgvOKdxROKhce2le/2xposzIn79CxY/5OS
	HlLIeHQIkqD/wWRFWhqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhpD-00013r-5A; Mon, 19 Aug 2019 13:35:55 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhp5-000132-IX
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:35:48 +0000
Received: by mail-oi1-f193.google.com with SMTP id k22so1283427oiw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 06:35:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k/fuThg5hEu4hmNaw8Txbmgb4RMS53eN+LaZONc5bcg=;
 b=RLGlVnXjBvyOyZmSw8wrFgQJCNXCbi3nefnW9xgyfHvo+KqNeTqo8Hffkxidrbbw2b
 73GMqoUOZwe5xBaar/7z1cJq17Isa9448WC+A+XK6vOcOhKRZ5NCg0dAbp4doa56RnZV
 WemfIKLuPdwUgpizn8Tt/aTk5LIZw6Lrwexdwk4T7uh/ShH/U85nDlhK94S/1Of08lYZ
 Bdd4ZToTSXPzTZGMG2oS8cImjcwu5fSh2VuHnC/wOykMNG1FxnWNkUuq1jt/MDQrwpAN
 4e9qfKrCTIOy9jGFNlkRKXYfFrIi1xN4DDLe/mmjUr/CGh2OhiTvTCpGMOzBYJOqId0w
 ojVA==
X-Gm-Message-State: APjAAAX0jKmM5yK8B1Ld5vmSRa65uq704GYdN6cdRB51QRcuqJFH4vw+
 xlQOfTu9sKXtq6HOim52aaESaUZHPZj3SuT+tiQ=
X-Google-Smtp-Source: APXvYqybMYzKVWu8kfRt3K7leGmW0ODgvVyoUtcC/AznKkbzNeibD8zrL8AvbC6SsAKwVYvbSpAQxjou3bPYZsczUtQ=
X-Received: by 2002:a54:4618:: with SMTP id p24mr3548347oip.148.1566221746611; 
 Mon, 19 Aug 2019 06:35:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190729080356.13023-1-horms+renesas@verge.net.au>
In-Reply-To: <20190729080356.13023-1-horms+renesas@verge.net.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 19 Aug 2019 15:35:35 +0200
Message-ID: <CAMuHMdUmYqBmKVg=LDO8YJ6K3xeyVz5N6o01e5wCh2JrCpJUkw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: ebisu,
 draak: Limit EtherAVB to 100Mbps
To: Simon Horman <horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063547_612843_086883B2 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Wolfram Sang <wsa@the-dreams.de>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 29, 2019 at 10:04 AM Simon Horman
<horms+renesas@verge.net.au> wrote:
> * According to the R-Car Gen3 Hardware Manual Errata for Rev 1.00 of
>   August 24, 2018, the TX clock internal delay mode isn't supported
>   on R-Car E3 (r8a77990) and D3 (r8a77995).
>
> * TX clock internal delay mode is required for reliable 1Gbps communication
>   using the KSZ9031RNX phy present on the Ebisu and Draak boards.
>
> Thus, the E3 based Ebisu and D3 based Draak boards can not reliably
> use 1Gbps and the speed should be limited to 100Mbps.
>
> Based on work by Kazuya Mizuguchi.
>
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Thanks, queuing in renesas-devel for v5.4.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
