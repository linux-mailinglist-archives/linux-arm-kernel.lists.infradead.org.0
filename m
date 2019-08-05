Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ACE816C8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMBo9jJS778dBKobFzlU9hGCnp3UI1aRHOSFzTMi/hc=; b=AC6Oa6u08LrPKw
	H9ILVsWGRo1awodpQlElyGHivrPb0Ssg3SIpZnTOtBZMtD3/tdsByW2MDm/nnWZdKzX+bBgmImNnM
	v0ian4LPneSXkqEgkR59gsp3M/IiWpkzekdgoJnLjI0q0BdDvjYZUTAHO+Od8hQFW5mq76P3Grmmo
	BlHZIKWO+OrhUyZ+RVjDGXJtBEZ9zprRE40vLcSAwYJZXoPgLUPhsK/XXr6lqjgOjRsHwH4vK3xQP
	qjYDInnu9aldgYR9iQf0cOofVwXvVnx6hbp82ytMPF/m1kPzDon3n3o0K3q2pS7yNXNV5cKLSe8BG
	SP8rvkpMUoGvZo2drhzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hua3f-0004kD-K5; Mon, 05 Aug 2019 10:17:39 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua2a-0003s4-RW
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:16:34 +0000
Received: by mail-ed1-f68.google.com with SMTP id w20so78111901edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:16:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3byZm4WW5S66f9sH9AAiCJ18IamGlDO717O/42CmSCg=;
 b=N9UXdqDYQQ6UXnEwSkzoheCOVbjAJLY9UU5/8aK3XWwkFZlxSH11XsDsBQMs4MBU+7
 u2SVSyAaruNVyBxU6C8zN0WMilNg5X6w0x/xbSTep5rpYpSG/BxqPCcwV52vs0F33mO/
 1Vnr4A31xPbgZy51jmZh7agEtuhrcG/e1gSbzk59d8+soR4yf0s3+8oilPKL9CiSvc/H
 O5MjhYhFPIpGcbNOEzSX4TgDsTlzwPgTovt54pGKhTOIU4dQSD/tLzlfch4jmbiVIio0
 LcKamWvrSgeODzy1qiDnll2lwaAWU1uqCgI0j2E4KYj38hEKf20STInyNNGe7eeubLEq
 UbVA==
X-Gm-Message-State: APjAAAXIKGtp4eEKZcIiGthNnn7zNvzs3k8IILJsZveGnsJgC1OA/V4Q
 qsJL1EVlRv7ArN6V117QqaKxNi2x2Qo=
X-Google-Smtp-Source: APXvYqyPrlpo8WJkWmCFJ9DyE2tzuCnGnVZyF+Z7qSzeIchDG7hTZ0PO4qnimEArHPGvFQaO7w9aAw==
X-Received: by 2002:a50:f70c:: with SMTP id
 g12mr134221180edn.139.1565000190619; 
 Mon, 05 Aug 2019 03:16:30 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id g7sm19500740eda.52.2019.08.05.03.16.29
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 03:16:30 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id g17so83809998wrr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 03:16:29 -0700 (PDT)
X-Received: by 2002:adf:c613:: with SMTP id
 n19mr104922068wrg.109.1565000189770; 
 Mon, 05 Aug 2019 03:16:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190412120730.473-1-megous@megous.com>
 <20190412120730.473-3-megous@megous.com>
In-Reply-To: <20190412120730.473-3-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 5 Aug 2019 18:16:14 +0800
X-Gmail-Original-Message-ID: <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
Message-ID: <CAGb2v675j-aCLMgPJOzr9yx1XxsUvHRr_K7VnL=p8mSdwpu2jw@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 2/3] rtc: sun6i: Add support for H6 RTC
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031632_972872_6FD86C6F 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 8:07 PM megous via linux-sunxi
<linux-sunxi@googlegroups.com> wrote:
>
> From: Ondrej Jirman <megous@megous.com>
>
> RTC on H6 is mostly the same as on H5 and H3. It has slight differences
> mostly in features that are not yet supported by this driver.
>
> Some differences are already stated in the comments in existing code.
> One other difference is that H6 has extra bit in LOSC_CTRL_REG, called
> EXT_LOSC_EN to enable/disable external low speed crystal oscillator.
>
> It also has bit EXT_LOSC_STA in LOSC_AUTO_SWT_STA_REG, to check whether
> external low speed oscillator is working correctly.
>
> This patch adds support for enabling LOSC when necessary:
>
> - during reparenting
> - when probing the clock
>
> H6 also has capacbility to automatically reparent RTC clock from
> external crystal oscillator, to internal RC oscillator, if external
> oscillator fails. This is enabled by default. Disable it during
> probe.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/rtc/rtc-sun6i.c | 40 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
> index 11f56de52179..7375a530c565 100644
> --- a/drivers/rtc/rtc-sun6i.c
> +++ b/drivers/rtc/rtc-sun6i.c
> @@ -41,9 +41,11 @@
>  /* Control register */
>  #define SUN6I_LOSC_CTRL                                0x0000
>  #define SUN6I_LOSC_CTRL_KEY                    (0x16aa << 16)
> +#define SUN6I_LOSC_CTRL_AUTO_SWT_BYPASS                BIT(15)

Manual says bit 14? Or is this different from LOSC_AUTO_SWT_EN?

The rest looks ok.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
