Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B981BAE5B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClX0vSoFLV7u/CDjwBPiJmJuoDoL1OVa1FCcUe+m4yw=; b=lVtQQMyzwNV9J2
	LIxmeea8fN/cqQZ4292AVfoq8snrmnDvOin1ysBumHbnzAhNNI6Min2t52w04YgOp81TWFTwZ1WaP
	5qNJzvuL9jCwXNbZJ+9vW4et4ug7qKgkEHtjEj35/a/K7Dg6Uifr+FabV7reXN8malQ2paImCgABS
	TXNP0Z2Ac1WseBwrkA0Z7a/gL4aGFLYMaI7FAhSO081PRBlubz1TwpRjTFyh2UNhz9gej0NOt3SPs
	ROLz5rWh2iyTBiLL5WE7XnjEKMR8oDJcOovGOwJZvc2SD4gfAg8mD0NPekGIf/8Ig3+/D/eUNoUNE
	+Z6mfHzvW58A1GXvwVDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9hh-0008Re-GC; Mon, 27 Apr 2020 19:46:09 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9gS-0004uu-2z; Mon, 27 Apr 2020 19:44:53 +0000
Received: by mail-ed1-x541.google.com with SMTP id r7so14443864edo.11;
 Mon, 27 Apr 2020 12:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VQcsbuP3pB8CDC+cItJJV21Dnh5PuIRR4nPKttHGjzE=;
 b=otJ/1XsxOtfHp14bHd8Kf93q9ptKtRm3hglsJawWMzxNHKYCD7z6ECVnscbS/vBVha
 Zs0kLO2wdbw68nXZrww0yrjzXzy++SVTTkfKjR+ovO1otx1+cGbTyeruo2DDg0bJrb2K
 /1lk1vT5EhWAFPpVmqCweZ7vf5ZgmEuzHwCe7focxGC0MWEXvhLb+q5NBFzpRnWcTNWh
 XEvqoHCsoVjLAMeFAwBsLrDGX41nzUvanE6tM370s5f4+IZl5CFfYCvEdjIv44JBjrK1
 q0YpwfJ50+lUfdzfPcXiUwiryMAQY8+BXLGb54Y/dLv/7ruwUlDi36CBtdHTZYZrvUf7
 u0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VQcsbuP3pB8CDC+cItJJV21Dnh5PuIRR4nPKttHGjzE=;
 b=BslOvVdgALoHavsMaacUxJSC3uFxxivY+8Z53pAOR5LBNcKrCSmeW0RVtMbQdJBnl/
 sRVZN44Z6zfP/GCNc+T0XG/cIOwohLSQDYe04j7D2eS8WB1sgs8ZuuQJmRBrgWTzBzIa
 FctqkMhxY1NywZuXhebQv9kRjz8BjOPKrO0Ntod7dGyWjdQ33hw5VxEgsZ+VOh5Kha+5
 AIVKVUJqurPAnxNmv9M1jrnucvfsmr0rfL9azYYxt8xOBZPfr5fk8tA+dPmMEb2RqLxE
 8x3gJbKTG8j9X1NlzD/cPK6P7YaRAhvMBs3raxzurIfEX+nWDyX+VTQLj+xn+sOcqUNi
 aOGg==
X-Gm-Message-State: AGi0PuZinQ6GXHtRqKA/VbLSulc1qnhw1pi0kqMy8+xlR3phwsWfoxRS
 URzAkTIAu95yPSMAfrXXhLoqFMxoWYYcZvgPIj8=
X-Google-Smtp-Source: APiQypKdvwLdxCF/E1pxaH6di+8W+pTb7+5wMbfJFWXAgXSq3W+jSu6jwARdIVsNAY136N7lf7NMNpJEjCTrQ7cHC7k=
X-Received: by 2002:a50:f61c:: with SMTP id c28mr18663659edn.365.1588016690108; 
 Mon, 27 Apr 2020 12:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200328003249.1248978-1-martin.blumenstingl@googlemail.com>
 <20200328003249.1248978-4-martin.blumenstingl@googlemail.com>
 <CAPDyKFqsG4kyABmxn__gAbe4fBmuZ=4mdFpRaCL0ih7QZEhwzQ@mail.gmail.com>
In-Reply-To: <CAPDyKFqsG4kyABmxn__gAbe4fBmuZ=4mdFpRaCL0ih7QZEhwzQ@mail.gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 Apr 2020 21:44:39 +0200
Message-ID: <CAFBinCCr2yk5WOG_Y7E14ekpkOsyurkCfYBO0DOWg1MSjvxaTw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124452_140977_A3A159F8 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ulf,

thank you for looking into this!

On Mon, Apr 27, 2020 at 9:20 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
[...]
> > +static void meson_mx_sdhc_wait_cmd_ready(struct mmc_host *mmc)
> > +{
> > +       struct meson_mx_sdhc_host *host = mmc_priv(mmc);
> > +       u32 stat, esta;
> > +       int ret;
> > +
> > +       ret = regmap_read_poll_timeout(host->regmap, MESON_SDHC_STAT, stat,
> > +                                      !(stat & MESON_SDHC_STAT_CMD_BUSY), 1,
> > +                                      100000);
>
> Please use defines for timeout values.
I'll take care of this here and all other places which you have found

[...]
> > +       if (cmd->data)
> > +               host->platform->set_pdma(mmc);
> > +
> > +       if (host->platform->wait_before_send)
> > +               host->platform->wait_before_send(mmc);
> > +
> > +       regmap_write(host->regmap, MESON_SDHC_SEND, send);
>
> Isn't there a configurable timeout to set for the command?
>
> I mean the driver sets mmc->max_busy_timeout to 30s in ->probe(), but
> can the timeout be configured to a lower value?
there's MESON_SDHC_CTRL_RX_TIMEOUT and MESON_SDHC_CTRL_RX_PERIOD
here's what the datasheet has to say about them:
- rx_timeout(cmd or wcrc Receiving Timeout, default 64)
- rc_period(Period between response/cmd and default next cmd,default
8) - I'm not even sure if this is related somehow

if you have a specific test-case for me to provoke these timeouts I
can try playing around with these values
otherwise we have to ask Jianxin and see whether he can get some
information about this from the internal team at Amlogic

[...]
> > +       mmc->caps |= MMC_CAP_ERASE | MMC_CAP_HW_RESET;
>
> Should you also set MMC_CAP_WAIT_WHILE_BUSY? It sounded like the
> driver supported this.
I can try setting it.
From our previous discussion (on the meson-mx-sdio driver) I have
learned that eMMC will be a good test-case for it ;-)

[...]
> FYI: I left out all comments related to the clock provider
> initialization. I think it makes better sense to review that code,
> after you have converted to use the devm_clk_hw_register() and avoid
> registering a separate driver for it.
yes, that makes sense
I expect the code to be easier since it'll be one big driver with the
next version (so no more platform device allocation, etc.)

> Other than the minor comments, this looks good to me.
great - it would be great if this could finally make it into v5.8


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
