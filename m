Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 490B979FCA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 06:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGSJJjFMjV27qZSZr7uDPiHDtd/lFON89NcZMlVsTDg=; b=nF3LzlTvN9nmzh
	FAvPmPLcnw0P9zj6flLy9B5p+gjqZXDJccY1cLhtCM+LFhWaUYa2/NhTGr5UXUhunCDiZA8KFEjJq
	UrFSSZGQJ8IzmI36DBSnDFt9Xad/4quzY9AhNKvar90oQ6Dd441uDKG97Z5uzd7c3E8U91SGSYPQo
	GpJhDJQp79T0+kqcpr7IWq02y5i+iy4R6H4vE5tf1QAjdjoVmdHe9QDB+lglaFlg5VMpEh7RWJQYv
	xiIuQK6Y+n7TTVjMwVT6xZ4N3ykK7AanOJTv0DXr37IRC7XSgWMBc+5f6J/gemZJmueyGptWFVHse
	PqftN0zHi6ViUa9aVzCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsJVt-0000xW-Hy; Tue, 30 Jul 2019 04:13:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsJVd-0000x3-3z
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 04:13:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id o13so29311966pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Jul 2019 21:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0dIdr0oee/yzISErhJRxkq09mvv2TBOhcmQ09wO6m0E=;
 b=OrtCq5Snu5fXUnizDVa0OuKzMhTHKT7s5OK7tU318dlfyuG3bM8RYHmuV7nP3E8a+/
 +yOlv35ESIfJr+g4pd9yjM6q41lvTW01/7heaskQI8d33iLkSP72SzxWG8aVo3W3u+ZW
 dlCPkfjpEZYFugUKH4EwVM50JS3i9vV3dshDL2KJChMPBmBzi26W0ceSNsth5kCjs3ZC
 eunZDBKEX1l8ogrLuX2V/aXyizny3TO8NSczp/xzmsx9f680i9TQH6sws+AnLECXDaiq
 Nz3tHjZnvmu8y3C3vgW2fEbRXakmRB+5d3ZWZnaOx/4227/5+FKR1sBYP+srlkJTAm+G
 jCbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0dIdr0oee/yzISErhJRxkq09mvv2TBOhcmQ09wO6m0E=;
 b=H6p3zhjDFOriYO+8Li84KpnPvAQoS8A8rF7dH9p6GI7UmErJU/w7ZPkPHtU5yTEqDr
 ursjv21QZCCIzWqu7zOQzF/7tp3ZbWl53MmPut4EyIues/uobgu0caW9+GfcI/GOWtBp
 yO+ZA8bfkWT9cDr9y8vxvRfn1hKwp47pZAyIGiP04Vbhy8qbBoHL6nkX83LyE0m7ee4F
 +JOeHsISuojzJc71LmTcasYs4IOycPchyrljPbA4D9HPztTOzdZkY2LzMUf3WlaqBUAd
 hdvWu//kpcnEOuLkJK/ldRcSXla4pbXdW95IfxWlBqwc/Y3hL8u/FFTO42RXHsjpxP2C
 d5hA==
X-Gm-Message-State: APjAAAX8EHHhU0BHjclUJ62E4+LR+SwjQzIT4yh0VgJAJLRiNKEhn06c
 JbbXIhbeN1R9d2VKqKP5dafpBum81w==
X-Google-Smtp-Source: APXvYqz5yPeIopb8Zi5XBaN/Wi6+Py+XNWnQJqU+IjLr28mzLvamVAUeAbUgGvxcXYv4TzlNrw5ZMA==
X-Received: by 2002:a62:770e:: with SMTP id s14mr38606145pfc.150.1564459987428; 
 Mon, 29 Jul 2019 21:13:07 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:704e:cda4:ddd4:6d08:8469:b0f0])
 by smtp.gmail.com with ESMTPSA id h9sm76306769pgk.10.2019.07.29.21.13.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Jul 2019 21:13:06 -0700 (PDT)
Date: Tue, 30 Jul 2019 09:42:57 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: mchehab@kernel.org
Subject: Re: [PATCH 0/3] Add IMX290 CMOS image sensor support
Message-ID: <20190730041253.GA3178@Mani-XPS-13-9360>
References: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_211309_191789_DA113E0D 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 12:32:27AM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds support for IMX290 CMOS image sensor from Sony.
> Sensor can be programmed through I2C and 4-wire interface but the
> current driver only supports I2C interface. Also, the sensor is
> capable of outputting frames in following 3 interfaces:
> 
> * CMOS logic parallel SDR output
> * Low voltage LVDS serial DDR output
> * CSI-2 serial data output
> 
> But the current driver only supports CSI-2 output available from 4 lanes.
> In the case of sensor resolution, driver only supports 1920x1080 and
> 1280x720 at mid data rate of 445.5 Mpbs.
> 
> The driver has been validated using Framos IMX290 module interfaced to
> 96Boards Dragonboard410c.
> 

Ping on the patchset!

Thanks,
Mani

> Thanks,
> Mani
> 
> Manivannan Sadhasivam (3):
>   dt-bindings: media: i2c: Add IMX290 CMOS sensor binding
>   media: i2c: Add IMX290 CMOS image sensor driver
>   MAINTAINERS: Add entry for IMX290 CMOS image sensor driver
> 
>  .../devicetree/bindings/media/i2c/imx290.txt  |  51 ++
>  MAINTAINERS                                   |   8 +
>  drivers/media/i2c/Kconfig                     |  11 +
>  drivers/media/i2c/Makefile                    |   1 +
>  drivers/media/i2c/imx290.c                    | 845 ++++++++++++++++++
>  5 files changed, 916 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
>  create mode 100644 drivers/media/i2c/imx290.c
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
