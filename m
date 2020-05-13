Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318281D1802
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:56:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaoKHt6e2AdkUuu5NBjMlSpcIq79TsS2jSM9Vlbbay8=; b=rhAh8tn2zh/vv6
	LZRFAsF+RsJIMQUhUK1ut5YlRfgI40hWNremIedxpr7+By7CyoRWwEDZMBQEp/sx0Re7IFX95cx3S
	CFdDmpleYr+zTjJL4G9PZmbjKXK5I4y1lqDuuzr6viwEAZeXCYEdSGD+qJSaGL/Su34IgvqhtilK7
	1ZFgZdC75dVsPGKsk23KVRPcPVKTZZYu/bwEB6Bd/ZRsrenckuLjweabsT8YwhZX8JLRIRN3r/x1A
	2jkH+jVWzyPIUie6nHObOYPjFOAMBWRkqXF3LvaLSkCirkPCqH/Xz2c2yKOUnkZxgZ3348M8VwLL5
	oJslhqXa/r5hURjxvMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsnl-0002nZ-J7; Wed, 13 May 2020 14:56:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsne-0002mo-9y
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:55:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id k19so6913481pll.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 May 2020 07:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q0we0+GBX6q0qsW/YELPh66cYe9GwOpY4tlrJBAC4pY=;
 b=dbVXtppEdGfbCzGErxALcHVIJjRBUe5SR4gI+aW8gGwrpxSLPy95nUwKeOViTlMJJa
 GetvmXVu6j1ZaiqMj4ZA0CI6ROcZ4mDH55B/Cfk2OA0nNVt4eZRRr7NsHAb4JkNqLgsK
 s51l3826ndpc6C7+MmyNtQ1Wh/8J8THb3G2oKksmFcptHgxpvbGiU8IyCfxSJWnKVpCz
 fv7pJ8FmzZMP268zQaGv/ASAnz/7NGa7D/v801KXMvnvuS+B35jW3K91J1C7mNBQpWKw
 6ShgfD4zx07M3n4f8Vthv8RuzRgKPSlm6+HfkQ/IfNJSjLB/xMotG+w5eSX0JME536PM
 GdZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q0we0+GBX6q0qsW/YELPh66cYe9GwOpY4tlrJBAC4pY=;
 b=DxLAZpomT/ryIB7h2GmNIi311UtL+aLnAXw9pvj9N3mSDitELVY2+eQeznAy95Zhq1
 D6nJ0D9MInzaWJb9ap0NQqVuTKv1BBUSyxuWUw8bJ2QTC4sAfZHti5frU+kOPY+FPoQy
 ynTF8DHm3KDFi9dD6JkjTI5W+McUziBQ85JuGsTWPvLVHdqoCkhooRIVBxHz1a6umyxT
 lOs3DuXMYfthMLzSEzoxU2q0PYdMNk3RD1sXLMWoPeJywQjMb/Q7iYUSn+YkJmVvviql
 UqO72E92g6cirXEGpJsE3ragWnxKwd738aJWLDLUQBmgC7CcXGqOeihSd+NefmP6xQzS
 Tvtg==
X-Gm-Message-State: AGi0Pua6aIZFbB5O8YH+INQj//eksMW0LNJQ51kRiuN37Ks++XNLjU+q
 4tnYDRvh4Jd6K7vsa6EGznmiddR9seHKgQwoEKM=
X-Google-Smtp-Source: APiQypJStWKnwCbOzDaephSclhi7lT0hpHLD+NSnoaKCFmfLEuG9RPUzE+cPZl9AlTEKQ08Sn8uR/rwkx0DqCXY6/+w=
X-Received: by 2002:a17:902:7003:: with SMTP id
 y3mr25899813plk.18.1589381757070; 
 Wed, 13 May 2020 07:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-2-lars.povlsen@microchip.com>
In-Reply-To: <20200513140031.25633-2-lars.povlsen@microchip.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 13 May 2020 17:55:50 +0300
Message-ID: <CAHp75VcA-oDboufsDNx1ZR4+HBwYt7LdLOpbfs7-bM9ByucKJA@mail.gmail.com>
Subject: Re: [PATCH 01/10] spi: dw: Add support for polled operation via no
 IRQ specified in DT
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_075558_347526_B53B9D43 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, SoC Team <soc@kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 5:03 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:
>
> With this change a SPI controller can be added without having a IRQ
> associated, and causing all transfers to be polled. For SPI controllers
> without DMA, this can significantly improve performance by less
> interrupt handling overhead.

...

> +#define VALID_IRQ(i) (i >= 0)

drivers/rtc/rtc-cmos.c:95:#define is_valid_irq(n)               ((n) > 0)

Candidate to be in include/linux/irq.h ?

...

> +       if (VALID_IRQ(dws->irq))
> +               free_irq(dws->irq, master);

Isn't free_irq() aware of invalid ones (not found IRQ in the tree or
any other backend container won't do anything)?


>  err_free_master:
>         spi_controller_put(master);
>         return ret;
> --
> 2.26.2



--
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
