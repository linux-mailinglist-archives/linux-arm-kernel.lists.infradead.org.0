Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F9DF2E42
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:41:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scJ9MVgGcs6mX3Aj7SoH3pkEZdc8v24R9FzCC/dHMbU=; b=d0atMgU6Z9lm4L
	py7dnhBvrbLY9zTaPK7h2EJSrioNBuHUV18uKEBfyuutTbGeTbzezkaTy837HKv/XWMN9HsV+PMcj
	CH7EVvYUZRLXN9MF36LISBhT2IbLRg5IWKdTT1iM1dCphFtZQVfx7Mi4j3kqDxuQ5v9d2BhsEBQ3t
	9xMG/EgjOLdp4/BXe3YZX3v0p366c54AQhORQo7NR0nBUoa7Z+coQp5bm8Zg0Xq5pa2mQOw5adV12
	VLdi+R0u771mzmZxE5fvhM9iq78RLpWilS2LasCZyPhKbBjgiEaX+ROwjDFyR/Cn1MMbYKvQno9x2
	1dQqBVEylPIzcJ1KzV7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSh5u-0003Gz-5p; Thu, 07 Nov 2019 12:40:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSh5Y-00036R-LP
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:40:38 +0000
Received: by mail-pl1-x642.google.com with SMTP id y24so1323070plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 04:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8jX8dOpYJ1sYbsEashiPOSNbkt7RaXnABrhm5i8Aj9M=;
 b=OhNMgVR1JurtHSg7JRnW5MneUVfZ4N2eyVOh4tyDi/lYeME7yGCak6XJOdDte4Q4FW
 nQvdcHkc6W9ilP5NQU0V4nr15Hd2JJTH30cDrvtEphukn/FZEqkJhZSQsbmg6P7Agtxh
 eMnh5QIz9TVsvyAWr5Iq7dyq7W2wpOE5sQkvIwoUXMZ5IoPAq0GGooUSHcoSmAr72huh
 Mmw3TvhSfzF6YcN9Qz84xQY8CsWgQFJ5MQ+OsRrV5NlNcawn07+d235F5F4QInmuTAwn
 nsclYULSqxe+5XCb30Go59+kGBWspcuisgeeS8NhEmsUOQAdndMu1fPVVvKZmKtImkc/
 ldJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8jX8dOpYJ1sYbsEashiPOSNbkt7RaXnABrhm5i8Aj9M=;
 b=OzKAIy7ZK9bHCb+USmHiNQOthu18g4VjXwdrXqPhwZnuULoON8P4WjyMES1erLHOrC
 bFjrPvJtxJ83YhrSoN49W+YAjTrTCxn85pnECHWLC94UdjnsA6oENzEkBDllB9hROXbB
 DeoVH3pMdXL8IageVaOaokqt76/arFZhTkVexnhtLRS+VNKuc2p/fkRHOXlT0rsYSM4F
 FvEUYUtUJfEy7Xi2XEXbmlqSg9sMqrB98Se/BarEkJB9EoeJ8S21gpTB3Buro9V3LFVO
 E+OrIRHcKSkmVr4HL87C/l28dOcioBwMp/qKXwVNDh5OUe3HLAbSMLo+hy7uKpVzLxRg
 ZV/w==
X-Gm-Message-State: APjAAAWUa70q1J46UUYAJL9n3holAZEG4InwM3G2r1wcryinwFgjm2bg
 VuabmOmIYRFSc0gGy2g3pXEk
X-Google-Smtp-Source: APXvYqzLZIcS35G7SY5EiXmg/0cAcZzuoHT0TORHjL6RIHzhpWtlIhCX5uDclrlz3ZQbwSIqPV3S6g==
X-Received: by 2002:a17:90a:bf04:: with SMTP id c4mr4943909pjs.5.1573130435309; 
 Thu, 07 Nov 2019 04:40:35 -0800 (PST)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id c16sm2442334pfo.34.2019.11.07.04.40.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 07 Nov 2019 04:40:33 -0800 (PST)
Date: Thu, 7 Nov 2019 18:10:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Message-ID: <20191107124023.GA11727@mani>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
 <20191101145806.GB13101@Mani-XPS-13-9360>
 <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
 <20191101160943.GA20347@Mani-XPS-13-9360>
 <ba29a5dd-df80-841b-68cd-66cffd6ae7cf@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ba29a5dd-df80-841b-68cd-66cffd6ae7cf@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_044036_709027_5719D807 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, richard@nod.at, marek.vasut@gmail.com,
 vigneshr@ti.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 miquel.raynal@bootlin.com, computersforpeace@gmail.com, festevam@gmail.com,
 dwmw2@infradead.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 12:30:05PM +0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 11/01/2019 06:09 PM, Manivannan Sadhasivam wrote:
> >> On 11/01/2019 04:58 PM, Manivannan Sadhasivam wrote:
> >>>>> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> >>>>> supports dual/quad I/O mode with 512 blocks of memory organized in
> >>>>> 64KB sectors. In addition to this, there is also small 4KB sectors
> >>>>> available for flexibility. The device has been validated using Thor96
> >>>>> board.
> >>>>>
> >>>>> Cc: Marek Vasut <marek.vasut@gmail.com>
> >>>>> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> >>>>> Cc: David Woodhouse <dwmw2@infradead.org>
> >>>>> Cc: Brian Norris <computersforpeace@gmail.com>
> >>>>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> >>>>> Cc: Richard Weinberger <richard@nod.at>
> >>>>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> >>>>> Cc: linux-mtd@lists.infradead.org
> >>>>> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> >>>>> [Mani: cleaned up for upstream]
> >>>> Can we keep Darshak's authorship? We usually change the author if we feel that
> >>>> we made a significant change to what was originally published.
> >>>>
> >>>> If it's just about cosmetics, cleaning or rebase, you can specify what you did
> >>>> after the author's S-o-b tag and then add your S-o-b, as you did above.
> >>>>
> >>> I'd suggest to keep Darshak's authorship since he did the actual change in
> >>> the bsp. I have to clean it up before submitting upstream and I mentioned
> >>> the same above.
> >>>
> >> Ok, I'll amend the author when applying, it will be Darshak.
> >>
> > Ah no. I was saying we should keep both of ours authorship. It shouldn't
> > be an issue because we both are involved in the process.
> 
> There can be only one author in a patch, and multiple signers if needed:
> 
> Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Date:   Wed Oct 30 14:31:24 2019 +0530
> 
>     mtd: spi-nor: Add support for w25q256jw
> [cut]
>     Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
>     [Mani: cleaned up for upstream]
>     Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Please read
> https://www.kernel.org/doc/html/v5.3/process/submitting-patches.html, paragraph
> 11), and tell me if you want me to amend the author to keep Darshak's authorship
> or you want to keep yours.

Just keep me as the author of this patch. Darshak still gets credit with his
signed-off-by tag.

Sorry for the confusion!

Thanks,
Mani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
