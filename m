Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A351A4DC2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 06:12:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEmPr/hHzaJxB6lAaMC5Z/L11rd3B3G3FSRyBsPNvvc=; b=p+wlc72FTXbxy6
	bUNtTTOXox+vMgtfJxIILyHGI5W/FMH1JHCfdv8b8qQ81vt+XgllMHMKsPoSYIUchBqYoT8M/7XF7
	1en8lFGPLq6kjRccTPbl02g+eEGBEt5HNjpgQ1JWpOQqHAkFUvd5y+SXAugI/DQAiSY81YIK0UZiq
	gn/Aw71KVLnOVX2kA+n06sFNM+ALYJ2wg8ytX4MozQGV+UiqhdBZXw1kZVnsIp/TKzMQRHIGTYs6T
	mqt6mi+Dlp/MCAfiB6ALhPi91qZdr4KWFJU8BpXGi2r64l3r9uXO9b7mkO/hetKPKSFCdD/u8cyJ4
	BXDcdfrqLxmiXgdcDu1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN7VS-0003zj-Jb; Sat, 11 Apr 2020 04:12:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN7VI-0003zI-Jr
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 04:12:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id l14so1838611pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 21:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bPb+QNwH7oVZoU6e5v2DwAVPzHg2QhsdVYytLq5Z1Nc=;
 b=JcMwtPdN51eAbJq4wmxBBACa7MHlV7MnOv6HH4olGOH2h+sccEbOSDEK1a0zSXa++s
 q4UKdbwyl0EdlitspsRpgsw9UPjgZOElW01JUxHTyNLbu16RJ1rk/jNV3tIFvmcUS/QN
 OpYzCsr6Ivllr3Cyeop2i70RG+DQtdxzPejj+pzw7xGs6aRlLowE/2oatHSn/1O0zQeC
 XTFq08/nx7gBJH+w3zJnlUExA5HZHVSSAnIl6sMzbwgTmhKWvD6pWHCwiQh7qmnBk5Nj
 4CHfDr01xM9OhJRp7oyCm6ijAahVh3lGTv42YAiop2CpsdnOHWyX+6RLf5i8PiPJ/3yJ
 0JkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bPb+QNwH7oVZoU6e5v2DwAVPzHg2QhsdVYytLq5Z1Nc=;
 b=XxON5QbsKV59ecPH6+hPk9dKvPkKLxQ4voKoBE+CfNvV1EyTpPQE8WLHyDp/OQPnNq
 UGQbcAvbs1vuEp7b9qtSvecD2dyabvK3A7pKBzGPJMBa6L0jSQqwcaF8/mfqMdDSVs+Q
 10FtaluFR6J/vf2SDekRGnsYDaowKVh3qN1OcTpFBCNSsCOWkiAASsgU/V1tyYwFUUzY
 lg55cmSGk3kP4aFwaA+e/VySYjIe4jm+eS6/K7ekIM3ekvxTEsRgirFEQe+JaJDt4RQK
 LCXzOo5S2Tz50GDB3ZjJwViq0rwlR6oyOZdLS6XWZ9MEMxuO3cK4FqIpyDa3ZOEzLn2s
 aZCA==
X-Gm-Message-State: AGi0PuazkxDRzbNTKDFFoA6qs/kTROCA1P6hvMmqnd2fm1vEt9S7seBT
 9PZb/refPi3ToGvj6/yVwTeeUS/Vwg==
X-Google-Smtp-Source: APiQypJOC+BODV7Kr+qfFWPtolIzApihVHhwDc1jJtmGjDvTNXLwne45N3KRi0wChYGiCMXZ+CdbLw==
X-Received: by 2002:a63:a55b:: with SMTP id r27mr4213140pgu.141.1586578341414; 
 Fri, 10 Apr 2020 21:12:21 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:89:182f:8ca9:73df:c140:559e])
 by smtp.gmail.com with ESMTPSA id o40sm1152889pjb.18.2020.04.10.21.12.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Apr 2020 21:12:20 -0700 (PDT)
Date: Sat, 11 Apr 2020 09:42:13 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 21/22] ARM: dts: stm32: Add bindings for USB on AV96
Message-ID: <20200411041213.GA11800@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-22-marex@denx.de>
 <20200406072242.GG2937@Mani-XPS-13-9360>
 <59d1cc85-a65e-d2bf-4591-0828cf7b8390@denx.de>
 <f952f1ad-53bb-7b85-caad-2174a4333a2c@denx.de>
 <20200410090828.GC5723@Mani-XPS-13-9360>
 <9d3b3a76-9711-6fd9-cb1b-af412c2babcd@denx.de>
 <20200410113429.GB27211@Mani-XPS-13-9360>
 <3c342261-eb66-4c03-6981-65b4463e09cf@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c342261-eb66-4c03-6981-65b4463e09cf@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_211225_171693_74E66F27 
X-CRM114-Status: GOOD (  29.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Fri, Apr 10, 2020 at 08:02:51PM +0200, Marek Vasut wrote:
> On 4/10/20 1:34 PM, Manivannan Sadhasivam wrote:
> > On Fri, Apr 10, 2020 at 11:16:53AM +0200, Marek Vasut wrote:
> >> On 4/10/20 11:08 AM, Manivannan Sadhasivam wrote:
> >>> Hi,
> >>
> >> Hi,
> >>
> >>> On Tue, Apr 07, 2020 at 08:37:50PM +0200, Marek Vasut wrote:
> >>>> On 4/6/20 1:08 PM, Marek Vasut wrote:
> >>>>> On 4/6/20 9:22 AM, Manivannan Sadhasivam wrote:
> >>>>>> On Wed, Apr 01, 2020 at 03:22:36PM +0200, Marek Vasut wrote:
> >>>>>>> Fill in the bindings for USB host and gadget on AV96.
> >>>>>>>
> >>>>>>> Signed-off-by: Marek Vasut <marex@denx.de>
> >>>>>>
> >>>>>> I can't get the USB B-Micro OTG port to work with this patch. Do I need to
> >>>>>> enable any configs other than PHY and USB DWC2 drivers?
> >>>>>
> >>>>> Only the DWC2 GADGET (and possibly host, for dual-role) and some gadget
> >>>>> implementation (e.g. gadget zero).
> >>>>
> >>>> I think I see what doesn't work for you.
> >>>>
> >>>> It seems the following works on next:
> >>>> power on -> plug in USB stick (or any other USB device) -> unplug ->
> >>>> plug in usb host (e.g. PC)
> >>>>
> >>>> But this does not:
> >>>> power on -> plug in usb host (e.g. PC)
> >>>>  - the PC is not detected
> >>>>
> >>>
> >>> Both doesn't work. I have the rndis gadget configured in userspace but plugging
> >>> in the micro-b cable doesn't do anything.
> >>>
> >>>> Did that ^ ever work for you before ? I suspect this is a bug in the
> >>>> DWC2 driver. The OTG operation there is known to be flaky at best.
> >>>
> >>> Not on this board. I don't recall what happended with vendor image. But I do
> >>> have another STM32MP1 based 96Board (which will be submitted soon), there I can
> >>> get OTG port working.
> >>>
> >>> But in that board a BG96 modem is connected to USB2 port on the board itself
> >>> which gets enumerated during probe.
> >>
> >> But it's not configured as OTG on this other board, right ?
> > 
> > It is configured as a OTG port. But that board has a different issue which
> > resets the board when we connect any OTG cable to act as a host. That's not
> > related to DWC2 or this issue btw.
> 
> Do I misunderstand the part where you claim there is a modem connected
> to the DWC2 ? That would mean it's in Host mode, no ?
> 

Let me make it clear. On that board, the USB connection is almost similar to
Avenger96 except that there is only one host port used and it is connected to
the BG96 modem onboard. The other OTG port is connected to micro-b connector.

There I can _only_ get the OTG port to work in device mode. I haven't figured
out what is the exact issue yet. So in the meantime, I may use

dr_mode = "peripheral"

to avoid it being used as host. But on Avenger96 board, the host ports are
working but the OTG port is neither working as host nor as device.

> > Anyway, I can't get OTG (device/host) to work on both old and new boards.
> 
> Do you have 588-200 now too ?
> 

I have both 588-100 and 588-200 now. I told you that at the time of initial
upstreaming I had only 588-100 but later Arrow sent me the new board.

> I think there is some fix in current linux-next which partly fixes the
> DWC2 role switching, so rebase this patchset on current linux-next and
> see what happens. But it's still not perfect. I also think that ST
> managed to side-step this issue by using the STUSB1600 chip, but I might
> be wrong.

Okay, I'll try for both Avenger96 and Stinger96 (yeah that's the name of the
board I'm working on right now).

Thanks,
Mani

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
