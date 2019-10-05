Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE88CCCB2A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 18:36:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhaALonBm88JIWsQAP7+8LCwdQitEQKoTzMhQUXv1tw=; b=d0OhTRZT+sliNV
	9AuzZ7RtGqts9J0pANYNv0BythIg4pEvf9xbypHwJfV8rzdLf/rufhHX7Jt3B475osSGO+2E6VlI9
	sLptTit1PBkaVvw/32CrjvkHbHaS9lSObkHyoH7LvceccQsoDmEgcrzPxRqJ/e2tuntJ+N/q7LX71
	ILAQzB2v3yTgWIy7EshbEuxCgnUMFOrPpl2uRQGOgjK7H2lwMPZ63giZetbcp6GjBmsYmU4NyIjlz
	ATcp7ZOMQ/VTEeEGHQUAj3tO2tW3KpFB606ipYX8XUaYfl1+DLxtofAqw5riXlHuPV5eUJ2ZO5vwt
	AtCewiZoDqc630OzZybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGn2N-0006in-2j; Sat, 05 Oct 2019 16:36:07 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGn2E-0006e9-Ja
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 16:36:00 +0000
Received: by mail-lf1-x143.google.com with SMTP id 72so6527925lfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 09:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Pn6mxtcEEEc3owMIwbkt2TQL3Wmbd6NRz2v8eZ+RVTk=;
 b=rpEtxSVEvEX2HhDQUFGyl3RdGfgjIagn3D9aobXi/wZtjscUnA1mkJD0kM3fiNupTG
 AfnKtyqJeYJ2uOTaQs6ySZeaNTCqFfo0/LKAfsZG6XIHVgRQWHGjbI4X+8tR86xbgh58
 UxZZo2Z8FOTYmp7b39uIYNs66Brkx9UEIKIyeGX7lge6cL6kKDMj9FaHEFKuhUJoIrou
 aEWJ35sYx+gYXF4Ss9Yohhnn31dOWy2cV94C52WosfyCgY4tR3/6M6q+HpHrqtJkL9IN
 V7orx4r/DU5hbKtRoeY/W3lxfG/Iy2raEXipla9KnUlwGY2BgV32P1ctLRpxvIGgWLm1
 qLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Pn6mxtcEEEc3owMIwbkt2TQL3Wmbd6NRz2v8eZ+RVTk=;
 b=uJ/LpID2A3nNqfqWBJO9VKgXJhqXcwVSxudIdnNoMBuwuBnIrn88cFygsK5KWa13Cw
 Ngwpe9ugpnZAtGtRUT48+XDglQJOajQxNUjWZ5NyGrKFuO/J1AKOih9K9f0yOdsE/it4
 lzKtUwOYd3gsUTmhR/ZD9BwS6N1jZPWVnenKqkL5lntIhd/AMG2mZLOaUvOPLHWJpfkc
 yVEXKy8L9A/Vjli4X4G4E83jeF9xKicQjl+qDQ1+ViHONPjUGnASNLXQHB3wdMkCyryu
 jb4EydJLqYDPcg05dpvYSHQHLO12k3FoMXFumRArjoXlx44M+GwW6EuzI8xWcORf2CRi
 J8Ww==
X-Gm-Message-State: APjAAAUiX9cwrHYhvY9V+8O+v7lT/SToC9BY+J3vhmpFp9fWvAkXEPhJ
 /6MjtLwiUmKYayVUJOCFV57fI3xUzwKsfcvrO+Vssg==
X-Google-Smtp-Source: APXvYqy99lBsuY63SZm1Hovkzqrn5mNe5uNYRXbJEe6kopZaSTzsWTlUs5zAiyKhJwvIMM8Ytt5JplveuThrYIBo6hg=
X-Received: by 2002:a05:6512:25b:: with SMTP id
 b27mr12485234lfo.60.1570293354605; 
 Sat, 05 Oct 2019 09:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191003000310.17099-1-chris.packham@alliedtelesis.co.nz>
 <20191003000310.17099-2-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191003000310.17099-2-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 5 Oct 2019 18:35:43 +0200
Message-ID: <CACRpkdbQapKs5f7=7U-=jRYN_CYQ4Rtrwrk_1nLwZJHD26bw2A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] pinctrl: iproc: allow for error from
 platform_get_irq()
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_093558_707156_17D82D25 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Branden <sbranden@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Li Jin <li.jin@broadcom.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 3, 2019 at 2:03 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> platform_get_irq() can return an error code. Allow for this when getting
> the irq.
>
> Fixes: 6f265e5d4da7 ("pinctrl: bcm-iproc: Pass irqchip when adding gpiochip")
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Patch applied for fixes.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
