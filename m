Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A21D15B6F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dqpY3EhxtYawHE2SDjsmBbmMZKuxtZokxnu/PtaBBEk=; b=FiXptV+V+r9GMd
	8sK5Xlx4ZxYXiOwF8oAlM7TD2INVfconEDqQ5nkiRXOclsgnXhC7koSdI2AnDVkSpAS6OfPmcX/zg
	86PnJfanGT67vJQ53N01kfU/wDAAL6jOaAsYqSSC8biGe+vXTZjYQt+juiqTg3s3uMZ/5veP5f/1Z
	igeyVq3TSF2N50VzRwv7EpDzWQEDNZZzQoZAAfY2uZtIYQHLHHEIsUiDqFNAyFYpTp0mq3A39sbvb
	5GNL9TrAUAS10iRHpYkPsBwZqEyey8aGeZ3HC7QY9czOrLBOO8AeX41NEdwItvrhs81agVDL3eJif
	Y0S7ZNH9/rsjctjxOIoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23q3-0006DF-0f; Thu, 13 Feb 2020 02:02:47 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23pu-0006CQ-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 02:02:40 +0000
Received: by mail-io1-xd42.google.com with SMTP id d15so4678194iog.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 18:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JNctVHQXMHRMoLVHSnQu0meBGnR1Lkb/YWbGwQhQKXY=;
 b=oEZfD6c0cXQISVAJtbLhL96sNT9nGk93VWwf13BYufaRBk0UiEL9bkUxdnt2YCKGeu
 qF5JhTN9cxHQ/xZIHZlpyFNI4hOas/fiwX/H6fiIqLeh0n8twoIX6eqxyqX+OJ85q+By
 BpyXH0IKtwb8+G4ssC7sebZYEWTGDP3K3rT8+XJkFPmd4rQ8WimhZPKhaAgiVnxztya/
 ArwEioUkb12Dsb2zJgdMG0anxTeBsJXo70/9g/HblXtgVJZe1kgsaq8Q/uv6kOF68b82
 1ke9fGmOETf/0cCJJaCyIl3X7I0GUO9fIsDjyRpKl/MaZ1Sw/UATl8YpV/oQMSumuO5z
 L31w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JNctVHQXMHRMoLVHSnQu0meBGnR1Lkb/YWbGwQhQKXY=;
 b=PwIdmIRXZ9XsbKmp93tbOan1SJX0IpNuI4CMtD4yikAkJ0B7Y9UGAd2UKDFluRkdYP
 VYkKIbAsftR3m+tnu8+Ja8VX0J4JL9+rBCb0kz9fJpP7Sqk15fmKUW6cD9Vo95E62Q5v
 LSUFr2gTbb7pbCKU+IAmlJC5JF3wMfTAuitGcviPty2wgrc8uvtS1t9FfA75g12IzF80
 Iz1/2SIjtSaHgvsX4QdMQRnR8Rx1AVmt3aZX9IYvWCwB5veylPyHoanT3XmfGlSk8z4r
 GqQ76O7avmYPtFLj+H33BEtsohFmCeEPpjFvcqdQlNI98nvfg8FZtxqagME70BcU7PMa
 09EQ==
X-Gm-Message-State: APjAAAWY52IB3jv0FjRu7vFZhOAUmbyq2emiWq2zfPNTEVqNpDvIW8OX
 ugYoEzd4XkBJ9QBBSLImZiK2CgANLoGtvChexm8=
X-Google-Smtp-Source: APXvYqxRLFhg7y/Ul+Ohfd1JDI8e5yvBFMQhWXHpXwwW9UL1nvuKxDSaN0zFwBWZ/FoUQJkD5MKh126lxnk+I4pHGk4=
X-Received: by 2002:a02:c856:: with SMTP id r22mr20946779jao.67.1581559356960; 
 Wed, 12 Feb 2020 18:02:36 -0800 (PST)
MIME-Version: 1.0
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-3-samuel@sholland.org>
In-Reply-To: <20200113051852.15996-3-samuel@sholland.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 12 Feb 2020 20:02:26 -0600
Message-ID: <CABb+yY2MJ-1i0K7XVkPT3+6ac1XR9-3zf-GDNeswOMp6Zn_Ufw@mail.gmail.com>
Subject: Re: [PATCH v6 2/6] mailbox: sun6i-msgbox: Add a new mailbox driver
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_180238_907403_FEA856C3 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 11:18 PM Samuel Holland <samuel@sholland.org> wrote:
>
> +static int sun6i_msgbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +       struct sun6i_msgbox *mbox = to_sun6i_msgbox(chan);
> +       int n = channel_number(chan);
> +       uint32_t msg = *(uint32_t *)data;
> +
> +       /* Using a channel backwards gets the hardware into a bad state. */
> +       if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
> +               return 0;
> +
> +       /* We cannot post a new message if the FIFO is full. */
> +       if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
> +               mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
> +               return -EBUSY;
> +       }
> +
This check should go into sun6i_msgbox_last_tx_done().
send_data() assumes all is clear to send next packet.

.....
> +
> +       mbox->controller.dev           = dev;
> +       mbox->controller.ops           = &sun6i_msgbox_chan_ops;
> +       mbox->controller.chans         = chans;
> +       mbox->controller.num_chans     = NUM_CHANS;
> +       mbox->controller.txdone_irq    = false;
> +       mbox->controller.txdone_poll   = true;
> +       mbox->controller.txpoll_period = 5;
> +
nit:  just a single space should do too.

Sorry, for some reason I thought I had replied to this patch, but
apparently not. My mistake. Do you want to revise this submission or
send another patch on top?

thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
