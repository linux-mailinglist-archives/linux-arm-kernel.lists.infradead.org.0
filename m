Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C80AC9EDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 14:52:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7huaGBCvCz7X1izdTwbo/S6vsCm4D889rc9PyJ3hG6o=; b=V76etCNpdmn/vR
	8FsGt1rG9x3xM5uztxi4DM3SRgPnJb3krgDr1Tj84r2VPa8wrJ8gSQUC+/LxTuQSbJKyfX1+upNxN
	kP0Eh2wiTYRoRnjaFiTita3UbWEbdY0Nn+A2xit0y4hrAavxCLl2Ej1teM98fVyUC8qoL6Bxfb2O6
	tTpd/Df/NQlr9BIavQrF8zsJEoaVclKN3k7x07GqYWyRcX003GKASK/mRT4TwJUrXy5CMjiJKCqFk
	8Au7+WCUPBXVAnjil+/7xA2ioyjG9N2gfJdJh8Vh22vL9J1S77FumPGgOClZM33BgrxjAgLpAILnu
	yTMgip35TviyktWfw3jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG0ar-0004tA-UD; Thu, 03 Oct 2019 12:52:29 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG0ai-0004sL-Ow
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 12:52:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id w12so2790133wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 05:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Eds4WlKNrSquM0FM6dtReZhXBU6tEApFNM4AAkDONtU=;
 b=uhaA79/wTDQRJkGDfiqBzI5XyjkUmklCrjoS8TobGc4hXYPoRoNUAdn1DXDVjc9TcF
 pldCe3JghlMjVZYFcmYZB0Dk/IlF1TbFoJSM0tiAiKd3SSK4CjnWL2dJ61epJ8tHVPk8
 NnBBDCgK8eGDxi0h1JIGOXDkmh1W8IBedQbSclnfe32vu2C7qBbQ7JsA1GdT6HIgwcCT
 x6lx/jlQhKyY9+7pj5iWXPCp31g13S5LS4Bs3dklE17QYVwg6BOwMrQihm8Tquz7avGl
 qOgncHx1wgqO4ugywE+++VQhG3NeRcBOYdu6Wucq1HpsqCjv+gFcKolIvOAxGvs3IOUY
 6+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Eds4WlKNrSquM0FM6dtReZhXBU6tEApFNM4AAkDONtU=;
 b=q8GS0bBgY6PaYhELXIAs4xTLqvg7zY1fGvS4XrtXL9ZUBb1Fi2RR/pDMaIJElpBie5
 lXvlpTTekZZxO/uHDRVjSo/I2IRQxdzg5uTsob1VBCFjVRwIhCcCYA8mR+yUKv0QUiGx
 bGh6on6ILjR4bBl6OzRNMZiyhH1qcXcQT0NwLWcSGdh/gl/S7SXOOgHkvKqmTmoaPB7w
 d9a69A0foCSQAYPVo/jAyAsI+o6drQ9TVRIeWqlJbvgtYxR8fCMz68botJq9YEkakqhj
 iMqKhws+r53froF5KmA5bj8COVKi7Kqizjc0IxKcrj3ivjLBsMz2ZwwwI6f6EIzYUGjn
 yUhQ==
X-Gm-Message-State: APjAAAXQYCKqDpLmg+kPp4nquBIizSp3J1OUqJgyLuRwRv4y5MYPObBI
 U6hArR33mK45ezr/AJq3qb4eBA==
X-Google-Smtp-Source: APXvYqwEre7pf/Cd0XQRb8u08WuYNMTQh6T72bFTG6v17hgfbrAgZKqP8W8p/T/1gYowk6OonhX2Gw==
X-Received: by 2002:adf:ea12:: with SMTP id q18mr7494629wrm.323.1570107139009; 
 Thu, 03 Oct 2019 05:52:19 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id z125sm4282266wme.37.2019.10.03.05.52.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Oct 2019 05:52:18 -0700 (PDT)
Date: Thu, 3 Oct 2019 13:52:16 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCHv9 2/3] arm64: dts: qcom: msm8998: Add Coresight support
Message-ID: <20191003125216.f5sjl6yhhb2t7uqq@holly.lan>
References: <90114e06825e537c3aafd3de5c78743a9de6fadc.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <CAOCk7NrK+wY8jfHdS8781NOQtyLm2RRe1NW2Rm3_zeaot0Q99Q@mail.gmail.com>
 <16212a577339204e901cf4eefa5e82f1@codeaurora.org>
 <CAOCk7NohO67qeYCnrjy4P0KN9nLUiamphHRvj-bFP++K7khPOw@mail.gmail.com>
 <fa5a35f0e993f2b604b60d5cead3cf28@codeaurora.org>
 <CAOCk7NodWtC__W3=AQfXcjF-W9Az_NNUN0r8w5WmqJMziCcvig@mail.gmail.com>
 <5b8835905a704fb813714694a792df54@codeaurora.org>
 <CANLsYkxPOOorqcnPrbhZLzGV9Y7EGWUUyxvi-Cm5xxnzhx=Ecg@mail.gmail.com>
 <20191003102023.qk6ik5vmatheaofs@holly.lan>
 <57349bda-0e86-5fe0-3be0-55b12748c346@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57349bda-0e86-5fe0-3be0-55b12748c346@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_055220_820771_4A6B70EC 
X-CRM114-Status: GOOD (  24.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 rnayak@codeaurora.org, mathieu.poirier@linaro.org, jeffrey.l.hugo@gmail.com,
 alexander.shishkin@linux.intel.com, linux-arm-msm@vger.kernel.org,
 marc.w.gonzalez@free.fr, linux-kernel@vger.kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org, agross@kernel.org,
 sibis@codeaurora.org, leo.yan@linaro.org, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 11:52:36AM +0100, Suzuki K Poulose wrote:
> On 10/03/2019 11:20 AM, Daniel Thompson wrote:
> > On Wed, Oct 02, 2019 at 09:03:59AM -0600, Mathieu Poirier wrote:
> > > On Tue, 1 Oct 2019 at 12:05, Sai Prakash Ranjan
> > > <saiprakash.ranjan@codeaurora.org> wrote:
> > > > 
> > > > On 2019-10-01 11:01, Jeffrey Hugo wrote:
> > > > > On Tue, Oct 1, 2019 at 11:52 AM Sai Prakash Ranjan
> > > > > <saiprakash.ranjan@codeaurora.org> wrote:
> > > > > > 
> > > > > > 
> > > > > > Haan then likely it's the firmware issue.
> > > > > > We should probably disable coresight in soc dtsi and enable only for
> > > > > > MTP. For now you can add a status=disabled for all coresight nodes in
> > > > > > msm8998.dtsi and I will send the patch doing the same in a day or
> > > > > > two(sorry I am travelling currently).
> > > > > 
> > > > > This sounds sane to me (and is what I did while bisecting the issue).
> > > > > When you do create the patch, feel free to add the following tags as
> > > > > you see fit.
> > > > > 
> > > > > Reported-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > > > > Tested-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > > > 
> > > > Thanks Jeffrey, I will add them.
> > > > Hope Mathieu and Suzuki are OK with this.
> > > 
> > > The problem here is that a debug and production device are using the
> > > same device tree, i.e msm8998.dtsi.  Disabling coresight devices in
> > > the DTS file will allow the laptop to boot but completely disabled
> > > coresight blocks on the MTP board.  Leaving things as is breaks the
> > > laptop but allows coresight to be used on the MTP board.  One of three
> > > things can happen:
> > > 
> > > 1) Nothing gets done and production board can't boot without DTS modifications.
> > > 2) Disable tags are added to the DTS file and the debug board can't
> > > use coresight without modifications.
> > > 2) The handling of the debug power domain is done properly on the
> > > MSM8998 rather than relying on the bootloader to enable it.
> > > 3) The DTS file is split or reorganised to account for debug/production devices.
> > 
> > msm8998.dtsi is a SoC include file. Can't whatever default it adopts be
> > reversed in the board include files such as msm8998-mtp.dtsi or
> > msm8998-clamshell.dtsi ?
> 
> Or like Mathieu said, all the Coresight specific nodes could be moved in
> to say, msm8998-coresight.dtsi and could be included into the platforms
> where it actually works.

Sure, that works too.

Maybe it depends in you view the mtp as including the feature or as the
laptops as taking it away ;-) .

Treating it as a feature a board can disable also works nicely on systems
where the board include file should be setting secure-status a board
(although that's probably not the case for these boards since the
firmware is proprietary).


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
