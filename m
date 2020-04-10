Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21341A443F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 11:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qMi7VmV/pO23pbZSVbt6kc0sRhpfs3DfH+dNFI3xj6o=; b=DdnU/IzlWrfY0P
	eChltYJEpktxpOkmJg6Mb86s2JFmbisut3mJ8xsOA+pvGnscQhP0s3fDdtI2pAuNKku4VEW8f/mTD
	66L9kKO9hK3rm9kO3/oA/PbANbmodmvmjkcrZ4uJGZ5Ey0i1buRvNBGzIooQliDGFKPGo2TNlfPX9
	MjQmXYfFjmagho7RPH1CcCgVyhcZnL9dq1G3QsTwluhUZaIge9+NBVglb5dPcNUlYiA7IDtNIUhZV
	10dkxJsyXUFT9ViMqsFKrxqwi4oCz6chKJXvZ+dlY96TX+R2nyEoDOR9/b2LdON/7E02E4BhQBkqe
	SyOLREWCe9EabwN7frCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpeZ-000072-5y; Fri, 10 Apr 2020 09:08:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpeO-00006j-Rm
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 09:08:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id q3so798475pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 02:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SarLi1PRzF64qy8fzOc7J54ATYrGPWgHsJKTIfsQelY=;
 b=nOTgMRp40ilO6W7Q7nIS2dkmQsY+3CtU60Uexa/gXwqHjj3BCOhZ6PFTpwNyAG8/uF
 n41fGPffby19S7s9P5eA9GB13o1x8hYYa51QMT5ycN/j4ZdODxLKUz7ZwSWWSDPp8sh9
 QaXMF2iO7Oij97cFE3nybcC0VIXnxw2B4/5MOQdzD/z1GDPScs9AhXk/lTYzypeWhwCN
 wO+0KMHPSys/NJoOd0FFvVq6TLKBZeseA5sZy6fTjJSEmFsH6DkE4wCCdHCzUIQG5+Z4
 BiAAwpvar08yateFWe0nIa8z0jDbiP0YvJM7xoLpOpAIGxQYt95MGWMeKTe+lAVicPXi
 sK7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SarLi1PRzF64qy8fzOc7J54ATYrGPWgHsJKTIfsQelY=;
 b=Z9ZpfL0HUJQww2PAEFaGGX+Soj/n9xA8RkY+LXkfz6CxOkTDa5CYRvDFfP7yuyiuYU
 bjufc/HRgkhpfvLNjO8arGdWYitooVeioBGoCxcfWnrvsLLKhqXSP99HplRMRYjEiZou
 aA0wncekS+EDdenAwJlf0US06C3MU/u+qiEN/ZhlVf4Cu3vcPzV96JousnmMmlueE997
 4yUvOFL36h208HRpFuvyyGCatgJEmdPRvo97eErK1Pw/0NFin/RvdHvnZf3MXM2AQmQ5
 KUN9BMFxFY/6A0VGJWt18pX/F55Ylg6HN1a6il1p4K0bMyqtr6X9KbJnlmIX1CPG+zSY
 IjxA==
X-Gm-Message-State: AGi0PuYEd7Euu+Ha7175B+5Tgku0Gf6yyuaERAa8FZCqXOCLn9UYgrIt
 5rYj99wzWUnsy9ECxbupeAJxnsRHsE6J
X-Google-Smtp-Source: APiQypKxRv7GK9PQjZT+jtoLP//aw98pK+L2n2e5E9kDgv24JHO8+pJ67xlE+uq27IkGarYweW/70g==
X-Received: by 2002:a62:19d8:: with SMTP id 207mr4205797pfz.278.1586509716293; 
 Fri, 10 Apr 2020 02:08:36 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:999:4ceb:ac45:4d4a:5a11:afed])
 by smtp.gmail.com with ESMTPSA id z15sm1265921pfg.152.2020.04.10.02.08.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Apr 2020 02:08:35 -0700 (PDT)
Date: Fri, 10 Apr 2020 14:38:28 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 21/22] ARM: dts: stm32: Add bindings for USB on AV96
Message-ID: <20200410090828.GC5723@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-22-marex@denx.de>
 <20200406072242.GG2937@Mani-XPS-13-9360>
 <59d1cc85-a65e-d2bf-4591-0828cf7b8390@denx.de>
 <f952f1ad-53bb-7b85-caad-2174a4333a2c@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f952f1ad-53bb-7b85-caad-2174a4333a2c@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_020837_413858_3EBC8F6B 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Hi,

On Tue, Apr 07, 2020 at 08:37:50PM +0200, Marek Vasut wrote:
> On 4/6/20 1:08 PM, Marek Vasut wrote:
> > On 4/6/20 9:22 AM, Manivannan Sadhasivam wrote:
> >> On Wed, Apr 01, 2020 at 03:22:36PM +0200, Marek Vasut wrote:
> >>> Fill in the bindings for USB host and gadget on AV96.
> >>>
> >>> Signed-off-by: Marek Vasut <marex@denx.de>
> >>
> >> I can't get the USB B-Micro OTG port to work with this patch. Do I need to
> >> enable any configs other than PHY and USB DWC2 drivers?
> > 
> > Only the DWC2 GADGET (and possibly host, for dual-role) and some gadget
> > implementation (e.g. gadget zero).
> 
> I think I see what doesn't work for you.
> 
> It seems the following works on next:
> power on -> plug in USB stick (or any other USB device) -> unplug ->
> plug in usb host (e.g. PC)
> 
> But this does not:
> power on -> plug in usb host (e.g. PC)
>  - the PC is not detected
> 

Both doesn't work. I have the rndis gadget configured in userspace but plugging
in the micro-b cable doesn't do anything.

> Did that ^ ever work for you before ? I suspect this is a bug in the
> DWC2 driver. The OTG operation there is known to be flaky at best.

Not on this board. I don't recall what happended with vendor image. But I do
have another STM32MP1 based 96Board (which will be submitted soon), there I can
get OTG port working.

But in that board a BG96 modem is connected to USB2 port on the board itself
which gets enumerated during probe.

Thanks,
Mani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
