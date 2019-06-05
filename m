Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29307358E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:46:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPgb9OSajzJLWnqs1IUu53DyTPYKH7gXchcfuo5pjd0=; b=lB22ZOaq1ycKk1
	d/k9hNUP7O2EONdprm4p75xpzgy7hoZoibhjneZZ/cX80/Ng0TtzUxbnB9lyKxjPdLm5gvfCUfB2W
	D8TZdgUz3/Ockd7jx7gtzQz8M+7yVLiM3/YIYSbV41UcNXoNd7kCZ8/0XR4+L09H6sN1LoabDdT6P
	hriird6Wr9rvjY1Nkp8wJknuUeJqb8FKxfhIdmm8AzWtI6UPl+/WEXlUXF5qJu8V5h2/OI0RREEtp
	bfyW+qsPOJg4tPlaBCvZ0QIHrqfvvbvpm60zxEsfpy813G5ZADnaH75jkQasIHVUYgoNOTMO90wzI
	cHLnR5VWq3FIsDmC//xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRYl-0007h9-Ri; Wed, 05 Jun 2019 08:46:15 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRYe-0007gO-By; Wed, 05 Jun 2019 08:46:09 +0000
Received: by mail-pg1-x543.google.com with SMTP id n2so12006100pgp.11;
 Wed, 05 Jun 2019 01:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mk5FRq2HIkggKOYlb1t32JxfiDeZB3gniCUsPO6/xZI=;
 b=LjE/XPGqoSghQHXJWid6eAalCbvND2JpM7cZodepxdcu5sydDV4ALW4V1indIn2ve+
 ro/+9AV07szWsujI2k5OWOHpYoqn0Lko99MN4KhJfebhVda8dQB/jTSRvKY3rx/W7a7d
 jjJe+wLhb6zZNFg86ROAAr8Gb5Pr/pbUuEFY/nX+kkcB6gjGdRf15AQ56BiK0lOwD+mr
 96rMNUII2i3Vyhn5vvtspJXpfAR0wsn/a06F8E2irwekWWqqLjGSaI9HgCBVyESnIAZR
 xl5q0G6JW7XP8E5oeUqslpOF2xSz9hHeupjQK+x4VNpBkH0OfPyOzQG03MJ/B/1Ty3LP
 x0mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mk5FRq2HIkggKOYlb1t32JxfiDeZB3gniCUsPO6/xZI=;
 b=Rr7dOrKZ20av8afITB75NUb2zpVqiput5/EQJmEF59F4wq0isifWRLZmc1Oz0jOuBs
 mLbYAWd+fS2mYUal2OfPr/MwZJG3wK/qC3tfIa38lSIV0lWJz3JAlSoz0Vnmt/KCKrbF
 vh6o3uqtfhg2RfxiKVeHP3dmR/lUhqnRJ/1mhJeQlWHYmWl+L5k7tKThh6UaCuej4siu
 lPrcwACZ9vCF6Cleqk6Lc+gEyQdXOa09qutJ/BoLrqN+V92ebNp89ma+OQ2Z7UGP9SR9
 2o2BKlsJ9ZCvBMR1xcxyVOi4qSoLTR4hChsoGhmlPg+axdYQzaeHncQOiv87AWUaALZp
 MQoA==
X-Gm-Message-State: APjAAAX6qmZoKCUfI3e7tMKhRIJBu/dM//yXv95T4aIPXUAqyRXUTjlJ
 AaLlcwkw6TRJEa29xasz0TsbCM4jwy+DT2F1hQA=
X-Google-Smtp-Source: APXvYqz9Lj0yCfy+J+2j77hhw6XN27rcOlilHibyQ96byM7FluGi0by+4HbGwYHmbgTq02AfDgdKEa0nzroKSuiuPcs=
X-Received: by 2002:a17:90b:d8b:: with SMTP id
 bg11mr10737373pjb.30.1559724367061; 
 Wed, 05 Jun 2019 01:46:07 -0700 (PDT)
MIME-Version: 1.0
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-10-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1559115828-19146-10-git-send-email-chunfeng.yun@mediatek.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 5 Jun 2019 11:45:55 +0300
Message-ID: <CAHp75VcbZwd0e6r38C2x7HLEHLr4oR7TjwdDXnDxRPRs3anwgA@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] usb: roles: add USB Type-B GPIO connector driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_014608_404378_811D5B68 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andy.shevchenko[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB <linux-usb@vger.kernel.org>,
 Yu Chen <chenyu56@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 10:44 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
>
> Due to the requirement of usb-connector.txt binding, the old way
> using extcon to support USB Dual-Role switch is now deprecated
> when use Type-B connector.
> This patch introduces a driver of Type-B connector which typically
> uses an input GPIO to detect USB ID pin, and try to replace the
> function provided by extcon-usb-gpio driver

> +static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
> +                        usb_conn_suspend, usb_conn_resume);
> +
> +#define DEV_PMS_OPS (IS_ENABLED(CONFIG_PM_SLEEP) ? &usb_conn_pm_ops : NULL)

Why this macro is needed?

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
