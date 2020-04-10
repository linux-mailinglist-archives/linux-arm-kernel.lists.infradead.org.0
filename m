Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E121A45A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:29:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S5eVoNjk6QCVOe1Gz3mYFqP7fbcGVG7e5JHnY++3Rg=; b=keXiWjcSJ5EpUk
	5HSIIZLIrqrQtT3Nws71HT5GWSDmDwNsf2Vehvla8IrsNxoYz7O+H5n2C5+z3/59Bl086YAddWRcZ
	TQtNgAD2BIc/OwnEjSg/NHXAW7UQLK7qM6AqkBLARtgsYqVx2I5ViiyFcBWyvCZEq8WHm9FVWrkyl
	5mU02CYqUjGQQ06MA5yUaKpw45zZb8s9ypX4+wSlyQLXXwH1vS2A5rHmExFJ0DRvD+w6ijOc1FV7F
	CYIJO9UsNLI8suaoEX8SgoBPXcg7exTz6byp8wk58rgDiZt9mUrBjY13l6sW+p9QdeHH86ZqcsSfk
	keGhUnjgRA/DhOAIeDFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrq6-0003au-L5; Fri, 10 Apr 2020 11:28:50 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrpx-0003aN-J6
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:28:43 +0000
Received: by mail-pl1-x641.google.com with SMTP id a23so594206plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 04:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AO5eo+r5I1TiZXg+2m7xv1M8c8Hmwzbdi6osh2dcAjw=;
 b=SHGMPucKD2h7jediRM2bzxjyjUV0rSgHtlebSGTYKI94B7TWRVO6Fgm8GEQxjBnABZ
 4m9/vN1yA4766aF/S7iiv0fiztaBr1zVc9Y20iOJFGtNNY1f/LBc6xeg01xRvEkj0Mq2
 7VsP2o7Y9G/ZupgAVCUveXYlYmqC0/Dh9VNpO/hpzzfw412V4yceoUt6kFueXaktL3+Z
 5knqtqQ2hrVpRXsyKWFUWS5aXaNLZxE4Xo5RZuop1w8bFVjyzWoLEeS5xg2IZdoBTrfV
 h2VwltewuB3Twx6I4moVCDrQKT0dq2ZvYBvFn5lmsr+bt+g+8pHBtKI/M2kVaPeRta++
 zfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AO5eo+r5I1TiZXg+2m7xv1M8c8Hmwzbdi6osh2dcAjw=;
 b=HaoHswUfoROQJwVSaIL5HEw20mSOzvkfYBzbA7qz2K9VeMMZBlV/7Zr7+1+ppb3Egk
 DMm++q051sGRolEC1HIfb/GptUa6h/QLLGkRuxxMUO9PPjr7sixIEg6p73ZPIwO6OL9l
 Nji7/N4VzxBKwEfIxT6yyS6Ty77p+ivob3/nlmC1Emw1LIaEafBj0QGqBl/kmJpao/xN
 iCyOs65Avipe9Rp9kxx8IjBRYgpLACJajThjZEG64cafCgogH015/bh3iXbr2ArzqLtv
 B68MERJqSgcrSgn/g2ToE9VoY24xHopG0J1P/EswE9G0XJMmpppZvkEyQ9+V3rOW0rDb
 Ey9w==
X-Gm-Message-State: AGi0PubmAhIsFQ1eJGxZmXK8498DmmMcYxfMfIT8V6qXdX3LC7kwBnSb
 dYhsuJLwDlKjfepNuzzutTEB
X-Google-Smtp-Source: APiQypLTbOpUh1VQspoYmYDVVGVcK0Ly+KQcuRobnohiScDB5yYlvXG1Vb+V6FsinpDPpb8SlMlxfA==
X-Received: by 2002:a17:902:8ec8:: with SMTP id
 x8mr4224577plo.204.1586518118503; 
 Fri, 10 Apr 2020 04:28:38 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:315:a1e8:ac45:4d4a:5a11:afed])
 by smtp.gmail.com with ESMTPSA id f15sm1539587pfd.215.2020.04.10.04.28.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 10 Apr 2020 04:28:37 -0700 (PDT)
Date: Fri, 10 Apr 2020 16:58:29 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 00/22] ARM: dts: stm32: Repair AV96 board
Message-ID: <20200410112829.GA27211@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200406072728.GI2937@Mani-XPS-13-9360>
 <9c51236f-a543-99dc-ca4f-5113831451ea@denx.de>
 <20200410090024.GB5723@Mani-XPS-13-9360>
 <7035b570-d1aa-532d-c70b-2fc1e04f9c28@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7035b570-d1aa-532d-c70b-2fc1e04f9c28@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_042842_153478_52B8466C 
X-CRM114-Status: GOOD (  18.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Fri, Apr 10, 2020 at 11:55:57AM +0200, Marek Vasut wrote:
> On 4/10/20 11:00 AM, Manivannan Sadhasivam wrote:
> > Hi,
> 
> Hi,
> 
> > On Tue, Apr 07, 2020 at 05:32:31PM +0200, Marek Vasut wrote:
> >> On 4/6/20 9:27 AM, Manivannan Sadhasivam wrote:
> >>> Hi,
> >>
> >> Hi,
> >>
> >>> On Wed, Apr 01, 2020 at 03:22:15PM +0200, Marek Vasut wrote:
> >>>> The AV96 board device tree is completely broken and does not match the
> >>>> hardware. This series fixes it up.
> >>>>
> >>>> Marek Vasut (22):
> >>>>   ARM: dts: stm32: Add alternate pinmux for ethernet RGMII
> >>>>   ARM: dts: stm32: Repair ethernet operation on AV96
> >>>>   ARM: dts: stm32: Add missing ethernet PHY reset on AV96
> >>>>   ARM: dts: stm32: Add missing ethernet PHY skews on AV96
> >>>
> >>> Ethernet works fine with cold boot but after warm reboot it fails with below
> >>> message,
> >>>
> >>> [   18.192842] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
> >>> [   18.197539] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)
> >>
> >> Try this patch:
> >>
> > 
> > [   17.270826] stm32-dwmac 5800a000.ethernet eth0: no phy at addr -1
> > [   17.275519] stm32-dwmac 5800a000.ethernet eth0: stmmac_open: Cannot attach to PHY (err)
> > 
> > It doesn't work. Sorry, I don't have much time to dig into this issue so
> > I'll leave it up to you :)
> 
> I see, it does work on the new board, so I don't really know what to do
> here. Maybe we should just not support the old prototype board ?

Sorry, it turned out to be a DT issue. My script was not updated when I switched
to upstream bootloader. This patch works perfectly on both old and new boards.

Feel free to add,

Tested-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
