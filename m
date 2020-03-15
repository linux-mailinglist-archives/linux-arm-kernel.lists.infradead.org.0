Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5BFA185B6B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 10:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FJ25HO2l9Y50dg+R6wUql1PmbH13R5OWQ5Es9TYRP8=; b=fiMOUkc6FFFFJs
	EYhfd7/gHtpJPJvg0LQxDW1NgkbxGT6NOh/HqhVF0tcq4qNvWB0zH1idgGOOobcqsnJY+EIPZbpFs
	In9UO4xm398acDE9/dq2qKUKauKG+O0XWxf9bbTRweuMEbFbUtQh5laiU7wQpsaFahU7rglNxZkf9
	oA+YaJ8c4zWaG0vZBuQgAIAckF3+AFrzscSoS9yWnXxhF+1McByEZe5k8xctSCqE8VL8J4Pt+yK6P
	0Up9LMM3eglSdrOCfNZQwWkWDI8CC54TqdZB2lFroALA/kv2w84Gb4BMEaKaHjszl5icZT3PkvQSa
	5xIWc2nW/FkD5yflM7fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDPWk-0003xb-7y; Sun, 15 Mar 2020 09:25:46 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDPWb-0003x7-4N
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Mar 2020 09:25:38 +0000
Received: by mail-il1-f194.google.com with SMTP id w15so6163337ilq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Mar 2020 02:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eDLn6hcaUGXN1ifnm89fP3KORlDlYvpz0bkA0oBIYGM=;
 b=Vp92DRfDmGLIM/NPFDj32KHbGd5+v54Y8Qx53JAOAD18STaqvCL7NqF8E/KfcDTr1N
 RTh37uMH8CGBwXi7s3YU7A9AqUdrD6fmecuUReY3uJ5yex7vhm+o2hnTXMKjuFBsXo8J
 FRimVp9eYRS/Og97n7VrlGVV9giH2n3V/9MUXWgW6I3wwjkOIFXXfG78J9tNal3iQrA3
 gO1CPPERPk/E+tzgHAp8X6rm6y76Q8xQ5fK5NSKoqHMy3CoWgMdhVBy0f55UMQT2l9Yo
 PjFoGSXUOecROOqHn58hc8Ztnv48FZYFeTL64uCDFp58FTA2TSs3iokQUVSnB3mnnWY+
 nyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eDLn6hcaUGXN1ifnm89fP3KORlDlYvpz0bkA0oBIYGM=;
 b=eR598yPX2Vf4MawM2vGo5KcQMo/82P+wGBVBc6xH7fq/Nlu2J98++cZOz0QonqHaLj
 2B8Y5NmYqtltAYkTVhNM2sgHb0pAR36XES76zm2baeJZZsc7aJ+ETeknbrGfUMT8rmPM
 p2DZ/KtLw0cggkVLeax+j4kCKxKB8vn/1L2JTywV7rx3fG+txbA04y9lsE8oGEkUSFu8
 v3At5isqXItqPSpHvWBmLQWZeVBitOPJlqqK0BCG91sl3KxPWdCE1cqDxwdZS/05Si0c
 kzG8fQ+JNLa5ymrZWThpgaut1Ef351dBSd1JdR8k9OpGCuSWhtOYKRXSMl19Fw3nTo+Z
 D0mg==
X-Gm-Message-State: ANhLgQ1g5azxYQ841IAgiY3aS1ZIjzQZhg8DNcCW4Og0PDusz4gYCmXT
 z169/njaWPrzBNEXyC6O1yoCVF1Mo234Uql7Lqk=
X-Google-Smtp-Source: ADFU+vu2O/lxp6WbokN0oJhMae6LPLe+vhCCs071Xl1gPKo6khFDdWen7oB+9dJAe4A09kgfcbJwwxr26vMrqKvBJwk=
X-Received: by 2002:a92:d843:: with SMTP id h3mr8319415ilq.246.1584264329583; 
 Sun, 15 Mar 2020 02:25:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-2-linux.amoon@gmail.com>
 <87lfo2f0k9.fsf@kernel.org>
In-Reply-To: <87lfo2f0k9.fsf@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 15 Mar 2020 14:55:19 +0530
Message-ID: <CANAwSgQgLm623szgs5Lba-NQKySiGw5fRfjyxjfdfHxQxhri7g@mail.gmail.com>
Subject: Re: [PATCHv3 1/5] devicetree: bindings: exynos: Add new compatible
 for Exynos5420 dwc3 clocks support
To: Felipe Balbi <balbi@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_022537_176127_0658BB3F 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Felipe,

On Sun, 15 Mar 2020 at 14:37, Felipe Balbi <balbi@kernel.org> wrote:
>
>
> Hi,
>
> Anand Moon <linux.amoon@gmail.com> writes:
>
> > Add the new compatible string for Exynos5422 DWC3 to support
> > enable/disable of core and suspend clk by DWC3 driver.
> > Also updated the clock names for compatible samsung,exynos5420-dwusb3.
> >
> > Acked-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> What is the dependency here?
>
> checking file Documentation/devicetree/bindings/usb/exynos-usb.txt
> Hunk #2 FAILED at 84.
> 1 out of 2 hunks FAILED
>
> Applying on top of v5.6-rc5
>
> --
> balbi

These patch were made on top linux next-20200306,
And with new updates in the clk driver configuration.
I will update these patchs later, plz drop these changes for now.

-Anand

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
