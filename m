Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E407BC04
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 10:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9keJa3dhgvJ19QbNA4HFj7sJieTI8NbJwkutXjf8YY=; b=OIeQQuwwwgAKAq
	Pe93+4sFX9XpveDF46iM6kkkVcgVdb2v9HMuZ4T7hFoVAQVvuiG+COzALQKdyb66x+Y3lX2/XCwEq
	yYLDtEbi2206ZZ0iZ7vgo8cIg5ACSWhO1oCp3mUbAbhoLJCBJo6132mPxiVU483AIysBuLpU6cAwL
	JsCrbvOxdJvLI3L9sZhOyYzi0+00YOnbUJvnisyJvuz1Q+bKASYxZ0MZhPXEf4zUEHsZi+wBHxoP7
	Ja98ywpXW2GWj36xiJ/GIZ6+e82S8bTe5piodLDHpuJXEL81MkThRNKi8xGhHVRB1vk7R/cagd9l0
	Ul6G6kEn8b8/xt0+UcjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskD5-0008MI-49; Wed, 31 Jul 2019 08:43:47 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskCr-0008LW-7H
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 08:43:34 +0000
Received: by mail-ed1-f66.google.com with SMTP id k21so64962324edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:43:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RJYmquIS1e528+G/ixh1cYrRMeCXLDQDyBuin0HsHOE=;
 b=MS0C75HjEZ8x26WZpUwdvfbYY5HlhinHAnF21PYqDhGB9xlK79lqdXJc0fawUrv8GD
 OdWU8ZR4rWuDvMZxdxppQtbLFI2iulUxlM3YDvTjL28U2iXBbYIDbJkWzrSiG7unSmWn
 MGgn42dJtNmeWLwPG6xu7B00EtTDXosTctWc/YAIebTtIJKeN4wcBLH/iqtx+3W3aZeT
 ZMNliZH+dmRqTSeH8c1jb0EAbafc+Y4LQxjgY4Hj8ORljD8zAX28z3JwZwwgwQV3jcAb
 a0VdPAzENV6EP338p/Vw7XAyecGmrAZ86gjQ2b6a4NT/xy4LBpNTH53Becbto496Ky2i
 QJ0Q==
X-Gm-Message-State: APjAAAXQJqQDcUPwQ0W6+/XPYIpuGDzH/Q/t4Ho3z33Q9wnArV8BQvuG
 7NIS5RkE5Nj8VhKLP8Pf637HUBhir6o=
X-Google-Smtp-Source: APXvYqyNV3KT7lIfAAWgJo2cHTEgNuVHeoOC5zFJoh9Nh4L7gRskOCpY07fQs2dVImNOWyLRfJnA/Q==
X-Received: by 2002:a17:906:6557:: with SMTP id
 u23mr91774336ejn.186.1564562610199; 
 Wed, 31 Jul 2019 01:43:30 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id t7sm4473350edw.87.2019.07.31.01.43.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 01:43:29 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id x1so18793078wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 01:43:29 -0700 (PDT)
X-Received: by 2002:a5d:568e:: with SMTP id f14mr51213275wrv.167.1564562609364; 
 Wed, 31 Jul 2019 01:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190731071447.9019-1-stefan@olimex.com>
 <20190731071447.9019-2-stefan@olimex.com>
In-Reply-To: <20190731071447.9019-2-stefan@olimex.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 31 Jul 2019 16:43:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v64tzMypnB5Ho2A-gWPk2yYsmH9tNn+OKfb51c+d6pK=kw@mail.gmail.com>
Message-ID: <CAGb2v64tzMypnB5Ho2A-gWPk2yYsmH9tNn+OKfb51c+d6pK=kw@mail.gmail.com>
Subject: Re: [PATCH 1/1] nvmem: sunxi_sid: fix A64 SID controller support
To: Stefan Mavrodiev <stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_014333_259046_BFDF5958 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 3:15 PM Stefan Mavrodiev <stefan@olimex.com> wrote:
>
> Like in H3, A64 SID controller doesn't return correct data
> when using direct access. It appears that on A64, SID needs
> 8 bytes of word_size.
>
> Workaround is to enable read by registers.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

And for single patches, you don't need to write a separate cover letter.
Just put whatever you need to add after the "---" separator.

> ---
>  drivers/nvmem/sunxi_sid.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/nvmem/sunxi_sid.c b/drivers/nvmem/sunxi_sid.c
> index a079a80ddf2c..e26ef1bbf198 100644
> --- a/drivers/nvmem/sunxi_sid.c
> +++ b/drivers/nvmem/sunxi_sid.c
> @@ -186,6 +186,7 @@ static const struct sunxi_sid_cfg sun8i_h3_cfg = {
>  static const struct sunxi_sid_cfg sun50i_a64_cfg = {
>         .value_offset = 0x200,
>         .size = 0x100,
> +       .need_register_readout = true,
>  };
>
>  static const struct sunxi_sid_cfg sun50i_h6_cfg = {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
