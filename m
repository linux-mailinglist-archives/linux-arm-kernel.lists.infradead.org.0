Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BAB11DF1B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 09:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDXwq2wCty0Yv8GAEQ+1lSeITAvyOUL0WEJfORdLWfI=; b=sNeoKqISK3kfWg
	B4ZA6v6zxVh5YWfjdr4/MzDyDCFd0qh0PFUckHIADUPHWUmJcL2kFRb9fzqOkwilUUFm4ExDebxN7
	RRNmnTzv9qzAnB+f+FUCAzXmVmyYXUfJ7ElBzAIOFlh2YssBA20jLmNKadLXYUZhkNdkH85Z1Ozl0
	V6OAWDiRpj1hBtWfHcZQ+8+qw5RW9IYxtYgDV3ODJ5KhJPpdxg/t82+Yo9826LYqlSYBJ55urIkPV
	yIueV0kbhGSW44KFFb6c5j+p8NNiAKW98qtmHcfGcsAeT3Vu8GH3jxCRgtC93xeMhQWiA7Ic4BWLs
	Jv2ssgV/SEjCHpgtzxAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifg08-0006OA-Ae; Fri, 13 Dec 2019 08:08:40 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffzx-0006Mo-RV; Fri, 13 Dec 2019 08:08:31 +0000
Received: by mail-ed1-f66.google.com with SMTP id l8so232839edw.1;
 Fri, 13 Dec 2019 00:08:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8Sb7h+Syw20vysdh92QJjNk/PaKzOiYC6n/84DQf0IY=;
 b=ZU5tzfqZeMwwO1Ryz0zz/Zpygc5LfScKEOO9JoxelknaPpXKi2niwPQTOSfj9E/dSJ
 08Yd946ONWOoZeIOllgC4iniADLXpENV6fGd/991OrN700J1BqFUEL+6EY1sFhORbCbD
 ecOEhgHAyoA9PQ/C8rllWX5880hpxAUZFBvVosTpJj+CUoH8AnHd8nbCsVrGPVe64Qq7
 RVyHsgE/3zecbFVpTevhtIxz8HexftkRNmZTNCqqcuPm3rifb470amNW32LDG5vwG8B0
 rA2qEKb5VW4sQrGL/9Hn+aT4x5pOCY9MvDiwV1FTi2KbfuYBcGsKjja3yxHubgVZYmou
 tfaw==
X-Gm-Message-State: APjAAAXptM+zNDYDoWx3MKeaZrZvcaVM1sOt5LmtexzaRguhwBvvJXHW
 HqLd8djI7iTsm9O8f5yRKItzmwn8D8hBHQ==
X-Google-Smtp-Source: APXvYqwoxO/NnUXTnJR351KOA37RUdqEdnPvfbKkb159ydBCADF0BDc+AUoqVxisr3P4uARKjlZOsg==
X-Received: by 2002:a50:f784:: with SMTP id h4mr14663755edn.172.1576224506151; 
 Fri, 13 Dec 2019 00:08:26 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id p5sm346072ejj.61.2019.12.13.00.08.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Dec 2019 00:08:25 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id b19so1071309wmj.4;
 Fri, 13 Dec 2019 00:08:25 -0800 (PST)
X-Received: by 2002:a1c:6a05:: with SMTP id f5mr11357678wmc.2.1576224505305;
 Fri, 13 Dec 2019 00:08:25 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191211145222eucas1p1d761af59e04017ddadbdbd1cceb59b1f@eucas1p1.samsung.com>
 <20191211145054.24835-1-m.szyprowski@samsung.com>
 <20191211145217.25025-1-m.szyprowski@samsung.com>
In-Reply-To: <20191211145217.25025-1-m.szyprowski@samsung.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 13 Dec 2019 16:08:12 +0800
X-Gmail-Original-Message-ID: <CAGb2v65EBb-qvb6XVzvZgqKUbzJJgkXgB5y2uA8Aa1__n9v+qw@mail.gmail.com>
Message-ID: <CAGb2v65EBb-qvb6XVzvZgqKUbzJJgkXgB5y2uA8Aa1__n9v+qw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] ARM: dts: sun8i: a83t: Correct USB3503 GPIOs
 polarity
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_000829_889835_7864862D 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: "moderated list:ARM/SAMSUNG EXYNO..." <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Andy Gross <agross@kernel.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Stefan Agner <stefan@agner.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 10:52 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Current USB3503 driver ignores GPIO polarity and always operates as if the
> GPIO lines were flagged as ACTIVE_HIGH. Fix the polarity for the existing
> USB3503 chip applications to match the chip specification and common
> convention for naming the pins. The only pin, which has to be ACTIVE_LOW
> is the reset pin. The remaining are ACTIVE_HIGH. This change allows later
> to fix the USB3503 driver to properly use generic GPIO bindings and read
> polarity from DT.
>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

I assume the dts patch has to go in before or at the same time as the driver
patch?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
