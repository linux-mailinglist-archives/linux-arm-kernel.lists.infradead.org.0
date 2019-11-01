Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58182EC663
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 17:10:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SYZJ4xmG33mFZYyKluX4OFd7oJENQFvguqU2p57xxow=; b=jMqDCPKBq/dTm2
	+PY+Xd6XcguYkvVzRfyZaQsdesLhXmE0uOy9bqPfruCnEhgiGA70/Ny2Gqa1uhTi1GDjpWYptbiVg
	ItURjLRBNZRPGtYlqDGu8uZTC7APGkb6CZTuwGqiZyuJc7toaXeLOFy48WtN9RaNEmm/WN//neBrE
	Vj9G6njxbmke5h+cdKpopWRGpc1vIC6gDgiPaCg6SRhC6PfMlf3lnk/ISZhMk4i2WQ2KLtQiZ3don
	eOTBIpQF8QETfNcUY44qj5XvFe0dEisH1uRXzyS5gKI+RJemHE8p9j7ksizE1lL638ol+KfQ+ePWA
	XgwZzuvZ0Mf8lp7FrX1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZVM-0001zv-AO; Fri, 01 Nov 2019 16:10:28 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZUr-0000Yv-M9
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 16:09:59 +0000
Received: by mail-pl1-x644.google.com with SMTP id a18so3433703plm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 09:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mRy57XKTw+iRaQ47Zu7gF5ohXFgXAtsfkcxRhCEocfA=;
 b=pqgUoVGB+Pvgs7uB4bZCVL9ddF6mUcusJ+t0IwqeiLrX6+prPEqal1X/OHf+0FpvvS
 roWNNTa/wYh05Pj1boCFGl+442kLqX6wsmlUJ6S1tT+v2BWeeavOniuzuLm/u9bCtQYX
 eQ8WBHmX0f1nkWYHj+8QpAIzUMREW7EDyaD9Ge6rO8FGPPMVtJOpLaI9G4fol8KUW/xi
 TuNBxblEwg3XBK0qlvvnA++b8xIgGdtWlnxQW1qYSBIH1R3mI/GHMuJ9rSUTslOTzqCj
 f3/WBWImyw0L4OrCd7MgfCSjXeIqz8kiJ2F16qgmfg/G1j+OBvwAP/1b9nQrUn+z0eYe
 varw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mRy57XKTw+iRaQ47Zu7gF5ohXFgXAtsfkcxRhCEocfA=;
 b=SAeJmG8/L9NMOVUWty0shJAHXQsVRIvKDtOeOBH2j/a+3dfX1GctRk8RuRaZ4cxGB3
 AC5tb1ad+wX94gJsscMMrJg7+y7NuYdvV+hfzRI2W87qYTiwGAjDIU+A9kA/JRdcRqZW
 DPEPd3VDpgKb8hY5eTvkiNwYNdaMsb+jcqiCebXOUG6I0TUJXZPEnK9flarVnw20IYZL
 hOYwu/aIBrg/fKbB5NZK6ktb2E5LNAIuYigvGEns1Asi9xy6q+/BZUO0arKAtrnnt91V
 6Jm7YQ2C9RQcO9TUWQgTUEmYv+KKvNYB+N3Rb4l5D1GAw8RDR/NRNVkCUiJZzVXwlp6L
 Upgg==
X-Gm-Message-State: APjAAAU4iPCWE/xxv/bbJCeEjspDgmUQdu98rK+NgMXcATo9JhPLkWVe
 UMFRyg1/okJWNUYP14zyFgXl
X-Google-Smtp-Source: APXvYqzfsLFiVzl52QPqi39geGbcUfS4XiTHJYRx20OJF5w9UUz77wUS+JTwJdlus1wJ1HApS5Y8cA==
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr13800479plk.215.1572624596640; 
 Fri, 01 Nov 2019 09:09:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6413:fc8c:9538:d2ea:eab:d2c0])
 by smtp.gmail.com with ESMTPSA id v63sm6705910pfb.181.2019.11.01.09.09.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 01 Nov 2019 09:09:55 -0700 (PDT)
Date: Fri, 1 Nov 2019 21:39:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH v2 4/4] mtd: spi-nor: Add support for w25q256jw
Message-ID: <20191101160943.GA20347@Mani-XPS-13-9360>
References: <20191030090124.24900-1-manivannan.sadhasivam@linaro.org>
 <20191030090124.24900-5-manivannan.sadhasivam@linaro.org>
 <87e0b459-8dbf-26cc-611f-1b1b5266aa55@microchip.com>
 <20191101145806.GB13101@Mani-XPS-13-9360>
 <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <beb8e7fc-02c2-8267-3612-20a526ac07fd@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_090957_730514_53920CAD 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, Nov 01, 2019 at 03:55:01PM +0000, Tudor.Ambarus@microchip.com wrote:
> 
> 
> On 11/01/2019 04:58 PM, Manivannan Sadhasivam wrote:
> >>> Add MTD support for w25q256jw SPI NOR chip from Winbond. This chip
> >>> supports dual/quad I/O mode with 512 blocks of memory organized in
> >>> 64KB sectors. In addition to this, there is also small 4KB sectors
> >>> available for flexibility. The device has been validated using Thor96
> >>> board.
> >>>
> >>> Cc: Marek Vasut <marek.vasut@gmail.com>
> >>> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> >>> Cc: David Woodhouse <dwmw2@infradead.org>
> >>> Cc: Brian Norris <computersforpeace@gmail.com>
> >>> Cc: Miquel Raynal <miquel.raynal@bootlin.com>
> >>> Cc: Richard Weinberger <richard@nod.at>
> >>> Cc: Vignesh Raghavendra <vigneshr@ti.com>
> >>> Cc: linux-mtd@lists.infradead.org
> >>> Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> >>> [Mani: cleaned up for upstream]
> >> Can we keep Darshak's authorship? We usually change the author if we feel that
> >> we made a significant change to what was originally published.
> >>
> >> If it's just about cosmetics, cleaning or rebase, you can specify what you did
> >> after the author's S-o-b tag and then add your S-o-b, as you did above.
> >>
> > I'd suggest to keep Darshak's authorship since he did the actual change in
> > the bsp. I have to clean it up before submitting upstream and I mentioned
> > the same above.
> > 
> 
> Ok, I'll amend the author when applying, it will be Darshak.
> 

Ah no. I was saying we should keep both of ours authorship. It shouldn't
be an issue because we both are involved in the process.

Thanks,
Mani

> Thanks,
> ta

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
