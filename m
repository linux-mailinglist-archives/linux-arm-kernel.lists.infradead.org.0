Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1092B1EA31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 10:32:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmmSR3fnTWcqCK7pNgq4f/mhu/tcorn2ektaARdvlXM=; b=ppfSfZrAzxxS6k
	Zvw8uGcBSd5nSqziEfDpmNwYK2to4danS+zng6YJco9FO9D1dLySTJDwf2BPMHcCHSN1OaIkm0K8M
	w7VmdiSEdzR0EUGHnHY12tsAlkMGUqr60W3UpE8xiX9KvcfiRoctJRIGVgaD0U9g5RZv72I6v4+cU
	b0RbQQGfFUr1VDaE3ZZs3Gd37t0KtfITi4tlBswAw1OL3efvYoruaxPhYD/3OGxVG2azGWXZwCsKH
	iAcpFBAr/D9oNI/PAM+9yEcxXHKGhnVQeouaV14kaYf41yqv69iFyBMJBXklV+6IZnhJ1AZmOBND0
	jqDRUkrEQjJZff1yvmeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQpLL-0005h8-1D; Wed, 15 May 2019 08:32:55 +0000
Received: from mail-vs1-f66.google.com ([209.85.217.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpKx-0005Fc-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 08:32:36 +0000
Received: by mail-vs1-f66.google.com with SMTP id o10so1122377vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 01:32:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=X66aPUwhrI15Mc7843XPcMM6A4ESFD/DW+9Zr96MNzo=;
 b=P6+tuo8k0KNqtTRfV0wnpZBWrRndWF7JJAHniKUQSoczg1lZhjoIOnm5s1nOzAlDDf
 j4xycr5j0Km04PgNMQA+vdtlRQ/QA7tWvde54DDV7znxG/oJ0aZ3mHKR4hMsIl3s5710
 zd6/psywW6H4HHi/ORF46nO/lTu0X0FvfMo6mQd01FIow8BHUecenpx/RFhqY6erQziw
 yokylBDYZ+kaeySHx06mxvWhXLKj0xSjPywQnwwpw9tJOvi9SAy9FpuhQFcnhftBZ4Z9
 GRmR3rJ1gL5I4I8SpVXrJ0qHPoFguUfUmri/CWmvJJvliZRt4j94x6GZIxTB8T6vx4Aq
 tMSA==
X-Gm-Message-State: APjAAAUq2gE+pO+efR138QOaitJZOwZH0RnPf7Hm/FZsy3eg6scXv7TB
 QEKyjrAwd6qcDIVFgbcVIU6CoP8TSsp8IyIsSBo=
X-Google-Smtp-Source: APXvYqx0d/VMu0XUvJd5it4dptrX7nHvGfxaba8vMIg+65dvgKxh2HnfjNpefsnqvOBezEXBft1gB56Gn3bKpvfufno=
X-Received: by 2002:a67:770f:: with SMTP id s15mr11031195vsc.11.1557909149496; 
 Wed, 15 May 2019 01:32:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190515082326.6449-1-marek.vasut@gmail.com>
In-Reply-To: <20190515082326.6449-1-marek.vasut@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 May 2019 10:32:18 +0200
Message-ID: <CAMuHMdVNskLjMpr+RgL_+d_g7=QfO_51wWVYb_itf_19kugLjA@mail.gmail.com>
Subject: Re: [PATCH V2] ARM: dts: r8a779x: Configure PMIC IRQ pinmux
To: Marek Vasut <marek.vasut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_013231_764904_E37C3677 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.66 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Vasut <marek.vasut+renesas@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Wed, May 15, 2019 at 10:23 AM <marek.vasut@gmail.com> wrote:
> From: Marek Vasut <marek.vasut+renesas@gmail.com>
>
> The PMIC IRQ line pin multiplexing configuration is missing from the DTs.
> Since the line is configured correctly by default, the system works fine.
> However, add the IRQ line pin multiplexing configuration for completeness.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@gmail.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Simon Horman <horms+renesas@verge.net.au>
> Cc: linux-renesas-soc@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: Move the pin control node from iic3 controller to pmic on 7792 Blanche,
>     since there's only one PMIC on that board.

Thanks for the update!

As the tag condition from v1 is now fulfilled:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
