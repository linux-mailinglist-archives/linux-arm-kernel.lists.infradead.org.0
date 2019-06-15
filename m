Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D84646F35
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 11:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K71YX3yqnSZbOp2Vi9ZjsXRHgVZyjEVtboJckFnE4HE=; b=cTBv2/xMJDJ6cx
	wf0+S4WZl85/GWdTAbbuUY1BwzjlDv7scWmTiLqUsjAzi6DzoNPT1rKbHMVhzz5OzGxzZ91hem2ID
	x5299P/SvKYgd5KhDxfFdDsBXpD3toF6uBt/SnfvDHKWyboXF/a4Dtj1gX8PbN8i/wKgsESHJbWW1
	2iLf4hZY4QfQ1L4oPV+rGxzHhhV3tC7oquNrPVe93Lq17hht4U+GTYc/XsWYi6mojTKglX6c7Xqca
	5yJ/PhxRZ2Po23619L08JS6Lbv07sUHXZ1670KQ4kHmqtljAqqwW+N/HBbqB4XytRc+5Du0uF03a1
	bVl9FxRSJ2tYnmaCnQUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4jE-0007UX-Gr; Sat, 15 Jun 2019 09:12:04 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4iz-0007Tl-Rt
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 09:11:51 +0000
Received: by mail-oi1-x242.google.com with SMTP id t76so3736422oih.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 02:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GbR5FQbdW0iBa/beUoJRgpiQJiBQoxkjSkavczcORWw=;
 b=VcMKkBRb/rUMovH0xbl2hjAVh9RWLeL/2Omm6qN6vF5jxP+rWGNVzHcsGsRQvedhKE
 S89OH9D5SwVuq27LAT4LJRftoaoZWD+Q+twAaWKckXjWiqLzn1bs/2YgCgpf+YNJfUmo
 be923v5MXnvxDaYj3nIixo6Ne+HWXGGaQB2SjXTgW/VMKX9C+Z+ffC7xuBS7N4BmPObm
 z9gyq8qsnkZsXCaAifchqzQp1XgRa1Cm8zKTZCYNdVbsy+qMbAMNDTKXIEZhuzgaLtHh
 TaFOa/le9r531qZeB18/OtOYxMQNllAvwHWVeBofughuSlh7nLEDzdQP0DqY1WwEKzIG
 OF6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GbR5FQbdW0iBa/beUoJRgpiQJiBQoxkjSkavczcORWw=;
 b=du4exfYk+g2lUQNB1ppJOcjQgPvpz5S+f9QComousIkKbjOAdwkT36zEYUnRvPXKHB
 ZNsKv0XaI64wOqd6n15jy2sud5HmOQO62kLdsnSailEruV5+ZIhWk0EP1qCIpWy++uOo
 bvMvdyM62d82a4Nw5+RnQQcJc0ogFKSLeXryNssraBPohIgvhb3dRCKMwcoeZ72fsDYt
 gWqyG/WSwBx5luKVkQZo6eQxe242VnwmivmfulbBK8V22bMKXPD6JBoYzdLpNjE6ZUdT
 rhjJ8RHpp3NbJOdVd+ffUDDXFdZCI7uukuEFxTo9WPLaU3B6P3fk9SsxmnU4kuWfRa5d
 AmCw==
X-Gm-Message-State: APjAAAW+BDkCUOOFFnTRG4Qe3y6GDFwYJNTh8K8JjngAG0TZdE7bt982
 M0LUhLUvPrP96xHILZ6zwbLdbt4zPZcCFZCu0x4=
X-Google-Smtp-Source: APXvYqyyMM3N5RMCR87NhEVuLBpMnEBYAzow16OocnDpntu7REewHZk5fn65ccx+y4maGLwoRyUAtcvK+dw0582yfzo=
X-Received: by 2002:aca:f144:: with SMTP id p65mr4627672oih.47.1560589906273; 
 Sat, 15 Jun 2019 02:11:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190612193115.6751-1-martin.blumenstingl@googlemail.com>
 <20190612193115.6751-2-martin.blumenstingl@googlemail.com>
 <CACRpkdajXRXRFz=XpbEzwUb-crhBxNQ4f-m9rfdY6+HcG0+_gA@mail.gmail.com>
In-Reply-To: <CACRpkdajXRXRFz=XpbEzwUb-crhBxNQ4f-m9rfdY6+HcG0+_gA@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 15 Jun 2019 11:11:35 +0200
Message-ID: <CAFBinCAimhth8fDcBZ3vNdy_9dGmHZVAAK0=TUczWWC4Dsa-pA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/1] net: stmmac: use GPIO descriptors in
 stmmac_mdio_reset
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_021149_922634_BAC9D4CF 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre TORGUE <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Sat, Jun 15, 2019 at 11:08 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Hi Martin!
>
> Thanks for fixing this up!
you're welcome
I think I finally understand why you want to switch everything over to
GPIO descriptors

> A hint for a follow-up:
>
> On Wed, Jun 12, 2019 at 9:31 PM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
>
> > diff --git a/include/linux/stmmac.h b/include/linux/stmmac.h
> > index 4335bd771ce5..816edb545592 100644
> > --- a/include/linux/stmmac.h
> > +++ b/include/linux/stmmac.h
> > @@ -97,7 +97,7 @@ struct stmmac_mdio_bus_data {
> >         int *irqs;
> >         int probed_phy_irq;
> >  #ifdef CONFIG_OF
> > -       int reset_gpio, active_low;
> > +       int reset_gpio;
>
> Nothing in the kernel seems to be using this reset_gpio either.
>
> I think it can be deleted with associated code, any new users
> should use machine descriptors if they insist on board files.
good catch, thank you - I'll put that in my cleanup series that I want
to send anyways


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
