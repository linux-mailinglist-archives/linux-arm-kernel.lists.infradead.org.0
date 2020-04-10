Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762251A45B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw+OhuTI6ZccKuZgsHp+KpopGeqBovwnZ6jD6ZvCPhQ=; b=Hqr63iwSbGKShN
	hCFBm0CxIfgfIKoHN4YNqeSMrqMAj059PKtMkSULG9ycYC39lKbyV0OmMhApBM6qjYqInQNMkWeoZ
	y6kDrEn0V610B15yYEcYvpe82z/SGy0INodBmxPtdOyrAd118adYlPXp16LRcC1IbFidUAffiXW5s
	x/Vvhw27a+XL3vEksT9SGMREFDU2Srk2XrOnKeJ06JPZgr3j7vy8Quho5F6r7BtX3TwX3o2dpUpqI
	fUhvNpXvQ7cGhAIXJ0VeV2iK0DvROpJxKlQrQQNeehBCZsaqfH4j0iOD7wPlA8MywuG+rXvCuEE0d
	eMx6Q8lX2TBhSnc55cfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrvq-0006Xh-Ke; Fri, 10 Apr 2020 11:34:46 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrvi-0006XA-6F
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:34:39 +0000
Received: by mail-pf1-x441.google.com with SMTP id b8so943117pfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 04:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QZkfzAjz6DZ50KEIpaOba4ZV1jldPscE4OK3uFoHY2s=;
 b=TSsoUFPZ+jEfXKBQyMGlUtMWC2iBV1G2r5FzqVp/zaLkkpShuz12bxsj0V8JL9Poqt
 7LMMqUg23fE0mXgL30Nu5R1ds8xu6RTiNdN2j4FXpTv1NVnqER+9lGfS/aMt7P/Q9l1w
 XMqoyhlwbiVRNPAQUkNt02k+X/Pv4nz4za5D9JdqZKrVPhSeEQ0vcp6FqDF+PWHwi8B/
 47SNIY5tnOp3LzjKDlgX9O35SevAznuazUdjqyuWOC4xh/YMs5X3H93uNbsEbuDZFwfG
 ZXqhOsWGgoCWkDi/wAr5uDYgcAcUK6X5Jmx4RvxGi63s0E/kSkVsEnJb7GKz+CxWKbIt
 kuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QZkfzAjz6DZ50KEIpaOba4ZV1jldPscE4OK3uFoHY2s=;
 b=qoty0UoRcM13o9+PukzHQs9flbHnsN/ntDAFuxf1L9C9vrzShmbQAPkTJMqHcvst1O
 Ro/U588BlJY97ITZ91XnaNhHYkLrx18hbs0LCedaKFSg0UipWFKu2edIZEBSlVxorJ4C
 drRbttuouBLPa37n52PDtYHcuAjyRTE8klAjQHkO2iLqrj8w4Lv/8Ez7Efx0OWMs6xJf
 Wi02dMhf0h8mv4CeEeEB/OSH0pKoimHuubMCBYeFlomvGgZ/8Nr9GNKKftyOlPNJy7n+
 X0hUyMLt0BuHOIIIOSgBzIPNCKPOyD+gBBW8N0sEazP2PuZ3mXOeKiw3bTvceLwS7Zpr
 RioQ==
X-Gm-Message-State: AGi0PuZHn9y9U6Fr0w0CpjsNduNnp+9rv1+QPu8AQKL1uI/dNgD+ivnz
 YYBeVJeUOUllSMT6FDmKO2K2
X-Google-Smtp-Source: APiQypJS6mU8FRbPFlq8gZgQyNv/dzH9zoanKLSdalIDMa0Nack9tfZT36lsjEd3YACyTb4QEmJ9FA==
X-Received: by 2002:a62:1407:: with SMTP id 7mr1358869pfu.194.1586518477150;
 Fri, 10 Apr 2020 04:34:37 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:315:a1e8:ac45:4d4a:5a11:afed])
 by smtp.gmail.com with ESMTPSA id g3sm1419810pgd.64.2020.04.10.04.34.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Apr 2020 04:34:36 -0700 (PDT)
Date: Fri, 10 Apr 2020 17:04:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 21/22] ARM: dts: stm32: Add bindings for USB on AV96
Message-ID: <20200410113429.GB27211@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-22-marex@denx.de>
 <20200406072242.GG2937@Mani-XPS-13-9360>
 <59d1cc85-a65e-d2bf-4591-0828cf7b8390@denx.de>
 <f952f1ad-53bb-7b85-caad-2174a4333a2c@denx.de>
 <20200410090828.GC5723@Mani-XPS-13-9360>
 <9d3b3a76-9711-6fd9-cb1b-af412c2babcd@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9d3b3a76-9711-6fd9-cb1b-af412c2babcd@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_043438_237575_F24F6369 
X-CRM114-Status: GOOD (  22.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 11:16:53AM +0200, Marek Vasut wrote:
> On 4/10/20 11:08 AM, Manivannan Sadhasivam wrote:
> > Hi,
> 
> Hi,
> 
> > On Tue, Apr 07, 2020 at 08:37:50PM +0200, Marek Vasut wrote:
> >> On 4/6/20 1:08 PM, Marek Vasut wrote:
> >>> On 4/6/20 9:22 AM, Manivannan Sadhasivam wrote:
> >>>> On Wed, Apr 01, 2020 at 03:22:36PM +0200, Marek Vasut wrote:
> >>>>> Fill in the bindings for USB host and gadget on AV96.
> >>>>>
> >>>>> Signed-off-by: Marek Vasut <marex@denx.de>
> >>>>
> >>>> I can't get the USB B-Micro OTG port to work with this patch. Do I need to
> >>>> enable any configs other than PHY and USB DWC2 drivers?
> >>>
> >>> Only the DWC2 GADGET (and possibly host, for dual-role) and some gadget
> >>> implementation (e.g. gadget zero).
> >>
> >> I think I see what doesn't work for you.
> >>
> >> It seems the following works on next:
> >> power on -> plug in USB stick (or any other USB device) -> unplug ->
> >> plug in usb host (e.g. PC)
> >>
> >> But this does not:
> >> power on -> plug in usb host (e.g. PC)
> >>  - the PC is not detected
> >>
> > 
> > Both doesn't work. I have the rndis gadget configured in userspace but plugging
> > in the micro-b cable doesn't do anything.
> > 
> >> Did that ^ ever work for you before ? I suspect this is a bug in the
> >> DWC2 driver. The OTG operation there is known to be flaky at best.
> > 
> > Not on this board. I don't recall what happended with vendor image. But I do
> > have another STM32MP1 based 96Board (which will be submitted soon), there I can
> > get OTG port working.
> > 
> > But in that board a BG96 modem is connected to USB2 port on the board itself
> > which gets enumerated during probe.
> 
> But it's not configured as OTG on this other board, right ?

It is configured as a OTG port. But that board has a different issue which
resets the board when we connect any OTG cable to act as a host. That's not
related to DWC2 or this issue btw.

Anyway, I can't get OTG (device/host) to work on both old and new boards.

Thanks,
Mani

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
