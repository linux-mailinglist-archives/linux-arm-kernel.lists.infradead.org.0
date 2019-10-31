Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A82FEB4A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoHIjtEzgv5BtQh1vyCNXrv38ixBdfOc+GJUny15rpA=; b=ayPF5+OG4cqXg5
	IydtzFgV0ZhUOsgkOfUDeP416xMfLCK3SNy9iH4Jsv9+5m1Yf4Xy4J27cSy7o13902X5UM86SUBDr
	0LxEDNwudzZ6iWe6ctyP9lJF+9JxYOlKS1vqiHAEG6FygpoWHGD0rYOjWe/qyz2XrOMaGGjp4/quc
	5JN88kXw3dj82GzbHMXoj99G4Y2sN3ptU9qwUUvGt72X7i+Ic7vvZN6jdoadL/qptBumrAjx0fjO4
	hb7clegdSk1PZzKCXs2pY6Tf4+Asvf2j4iUaqfWyMh+AyTk0fiRf4xNqlvbHEXSkCIoAUv2zDVlAD
	/VHvTqOp6Ojog3cUh0ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDFR-0004ui-Gc; Thu, 31 Oct 2019 16:24:33 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDFC-0004tw-Jl
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:24:20 +0000
Received: by mail-vs1-xe42.google.com with SMTP id k15so4489420vsp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 09:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yPIDo2fSmnVpiauzvpAAbaK4lF2gIAi5NghO5p90Ozs=;
 b=khzDIJIPRAGhIdZTay7i4L5qhMiwaisFOVhQwT9VB0W5RAwk50WnAC+s9lN4QBmjet
 S7nW7xbAJsHQj/lREQfdyhdToFzSWNsG6Nmzoa8CYnhTNFRyVJzi8KdEOAiZagzomntK
 SvI9itLHPv9NBi04RsumdCRqAEYfHRgcDUD7Ih2vFEfb0DBwd86oieQekamm/PIJQF9y
 uHJdXeFqkylwDT+4BlpG1idBPSeXoomT0mr64+OlZ9yH9o9FDVe7dRR20+DP/cuCTObZ
 l71VczynWJnlq6y4ZzHfL6HNCs+XxS4+9ksqEFfqGvufglrkApqnwWLEmTLZ9QkBcYv6
 iEmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yPIDo2fSmnVpiauzvpAAbaK4lF2gIAi5NghO5p90Ozs=;
 b=bQtUIzsKbzfbGpnFmnNDLdzRVKf0CgjQndb2uV6M5Vj3pBL9CpdGs01FkiXAP/GDys
 lhvrYTxm6i71pn9mWiHQLZC2/kk1ERKgidJ3CJ3UHSIty4v12aTj+3fESJyknJhWtMyH
 0f4e1D+U4/mSD0FjkyyvpsIm0uZlovkNSM18MCuIHFlpctCZa+AUqsyS8ywbQQZRSqOC
 NGdO5iSeF4hquHJfVvCVeyoOUGsl1CNz5XYSflzlxRZcGtBUyB3DToIRpGg5t4pGjpxC
 D2jLnMatkUDHDNQ2a0GEjZZAYsiC3NAdyK49SoeprYg1Uz9/FWCF9TTXBe79rrHR5/x5
 S7CA==
X-Gm-Message-State: APjAAAX4EeFmou9dcF2BUkpXybMWDQoRL9jPcWkkjcZpbnxMm4BkJ6+H
 Wz1C3lQK5MxsR5PLhhJtBCZqa/laqvJJgt70t0vOBw==
X-Google-Smtp-Source: APXvYqwALcYbrmJQuMMQV7datNl1JuMFD5T9xVx+oBGGYVorWljG30SurqydJbjDqFGCToghHd7hGUnpIqW5lZBfwrE=
X-Received: by 2002:a05:6102:36d:: with SMTP id
 f13mr3268985vsa.34.1572539056794; 
 Thu, 31 Oct 2019 09:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1571510481.git.hns@goldelico.com>
 <0887d84402f796d1e7361261b88ec6057fbb0065.1571510481.git.hns@goldelico.com>
 <CAPDyKFp3EjTuCTj+HXhxf+Ssti0hW8eMDR-NrGYWDWSDmQz6Lw@mail.gmail.com>
 <607E3AE4-65BF-4003-86BE-C70646D53D09@goldelico.com>
In-Reply-To: <607E3AE4-65BF-4003-86BE-C70646D53D09@goldelico.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 31 Oct 2019 17:23:40 +0100
Message-ID: <CAPDyKFr3oh9HcExn4Sx0Cd2e0oBTsxz+L4tDvypRFP8=hQP=cg@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] mmc: host: omap_hsmmc: add code for special init
 of wl1251 to get rid of pandora_wl1251_init_card
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_092418_654358_EE28978C 
X-CRM114-Status: GOOD (  31.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kefeng Wang <wangkefeng.wang@huawei.com>, DTML <devicetree@vger.kernel.org>,
 Tony Lindgren <tony@atomide.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Kalle Valo <kvalo@codeaurora.org>,
 Petr Mladek <pmladek@suse.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Alexios Zavras <alexios.zavras@intel.com>,
 Rob Herring <robh+dt@kernel.org>, John Stultz <john.stultz@linaro.org>,
 David Sterba <dsterba@suse.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-omap <linux-omap@vger.kernel.org>, Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "# 4.0+" <stable@vger.kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 30 Oct 2019 at 18:25, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> Hi Ulf,
>
> > Am 30.10.2019 um 16:51 schrieb Ulf Hansson <ulf.hansson@linaro.org>:
> >
> >> +
> >> +               np = of_get_compatible_child(np, "ti,wl1251");
> >> +               if (np) {
> >> +                       /*
> >> +                        * We have TI wl1251 attached to MMC3. Pass this information to
> >> +                        * SDIO core because it can't be probed by normal methods.
> >> +                        */
> >> +
> >> +                       dev_info(host->dev, "found wl1251\n");
> >> +                       card->quirks |= MMC_QUIRK_NONSTD_SDIO;
> >> +                       card->cccr.wide_bus = 1;
> >> +                       card->cis.vendor = 0x104c;
> >> +                       card->cis.device = 0x9066;
> >> +                       card->cis.blksize = 512;
> >> +                       card->cis.max_dtr = 24000000;
> >> +                       card->ocr = 0x80;
> >
> > These things should really be figured out by the mmc core during SDIO
> > card initialization itself, not via the host ops ->init_card()
> > callback. That is just poor hack, which in the long run should go
> > away.
>
> Yes, I agree.
>
> But I am just the poor guy who is trying to fix really broken code with
> as low effort as possible.

I see. Thanks for looking at this mess!

In general, as long as we improve the code, I am happy to move forward.

However, my main concern at this point, is to make sure we get the DT
bindings and the DTS files updated correctly. We don't want to come
back to this again.

>
> I don't even have a significant clue what this code is exactly doing and what
> the magic values mean. They were setup by pandora_wl1251_init_card() in the
> same way so that I have just moved the code here and make it called in (almost)
> the same situation.

Okay!

>
> > Moreover, I think we should add a subnode to the host node in the DT,
> > to describe the embedded SDIO card, rather than parsing the subnode
> > for the SDIO func - as that seems wrong to me.
>
> You mean a second subnode?
>
> The wl1251 is the child node of the mmc node and describes the SDIO card.
> We just check if it is a wl1251 or e.g. wl1837 or something else or even
> no child.

The reason why I brought this up, was because there are sometimes
cases where an SDIO card is shared between more than one SDIO func.
WiFi+Bluetooth for example, but if I am correct, that is not the case
for wl1251?

That said, I am happy to continue with your approach.

>
> > To add a subnode for the SDIO card, we already have a binding that I
> > think we should extend. Please have a look at
> > Documentation/devicetree/bindings/mmc/mmc-card.txt.
> >
> > If you want an example of how to implement this for your case, do a
> > git grep "broken-hpi" in the driver/mmc/core/, I think it will tell
> > you more of what I have in mind.
>
> So while I agree that it should be improved in the long run, we should
> IMHO fix the hack first (broken since v4.9!), even if it remains a hack
> for now. Improving this part seems to be quite independent and focussed
> on the mmc subsystem, while the other patches involve other subsystems.

I agree.

>
> Maybe should we make a REVISIT note in the code? Or add something to
> the commit message about the idea how it should be done right?

Just add a note that we should move this DT parsing of the subnode to
the mmc core, but that we are leaving that as a future improvement.
That's good enough. Then I can have a look as a second step, and when
I get some time, to move this to the mmc core.

However, there is one thing I would like you to add to the series. That is:

In the struct omap_hsmmc_platform_data, there is an ->init_card()
callback. Beyond the changes of this series, there is no longer any
users of that, unless I am mistaken. Going forward, let's make sure it
doesn't get used again, so can you please remove it!?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
