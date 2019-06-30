Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6936C5AE0C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 30 Jun 2019 06:03:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEW8vNrnUqJ2G4yCt1YI+ZvvZaxczblgQq+dv99kXF0=; b=L9VzOEBRWExaKC
	cEZo0NWxTd5IhxQK0fXaG/H1wd3UuRSEok5zjFEzMEf6rsHMkl24sMXFKLFOcr0AzM5lWqx2TquQt
	RT+45uVffmjbv5+kd+McEabSbD8Yev5bO/22PN/jQc2xlAjlXJJpFMrAN5Em0HR8gnJI0L9N0dGx0
	1MHSfXs2+FE66Deh1ULa8HIFuW+ssXVz+aK2ih+djmN17EhJc4J5Oru7xMnNcPK3cOO1UYoumYaIW
	LSZz4DgM0iz70Qq9mejJtYG9I5U1QhdULNl98EdZSmIpwAlVvzeYa382esGVDAnvVPffUA5BmE1mS
	xxXFGPB0sPxsiOEb+Jqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhR3y-0002cy-4W; Sun, 30 Jun 2019 04:03:38 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhR3n-0002cR-Mc
 for linux-arm-kernel@lists.infradead.org; Sun, 30 Jun 2019 04:03:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id r7so4897670pfl.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 21:03:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FottbFd+Y+82l+HM3Qswb2Sq8WrNqq+eO0NHXgs+EzI=;
 b=Jbxz7MfdMmZ9o9WU6TyUqf6ZrfL8RUrvfvoPxbBG22L3Tk4Wp4DfYo+d5qshIfFkE9
 fgBRyvXj3dz2nThbe4d4j5HkIqi5yJKZqqq58a5QkEIa5ucRT5F3Q/RESOgmYITY8I40
 5336Xb0h7bFTtr/NhQA5vU2YWSvUZFBZP7s9FlQUeRlqCPcqmQkagTr3JIx2v6PUz3Y5
 QG74FO1lM5nd/FfBjZJDEvn4mXH25GFuLaBuXo2Rh3w8Oz3yUqYF0Mtmrr/RjPdRbs+l
 DyWY2Oz1E+/p+cFcFnewixFBpL9QEfwc4srdp17MhLaVfLGmWp+vtSHJpldVrahD+6Zf
 3Vkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FottbFd+Y+82l+HM3Qswb2Sq8WrNqq+eO0NHXgs+EzI=;
 b=BcfTWs/WR9GV+AfSAYqRzWDI2YSHkCJEgEGfSAhPTx2hN7H7v/vy55kilVxFvizEOo
 i2tkIlY4hKmlyagowh6e/teErcGRbZZF03LAGMq5fqYjBtDrESfzV7rGDqHQaROY1yP4
 +50C9RWQ+n4+UyIOlKBvzftFZy+WQHiJX/9rQ05Mky7JDA5++XrYIXbNydlr5eP0YyJu
 4goxFMwtTjryM37pXv0Z3GRSNUxKqcJi7Ass9gsKpcwJ6y0RPtuIJuAqJQZuMn0S7IQy
 bM3CfXFl3t9BEzRAKlkz43aGeZ2dHaD+bpFQmBzRWhUT84xFkkM6RM5GojJakqOcvkzI
 PLTQ==
X-Gm-Message-State: APjAAAU2auQEMmM1EtuGfR0rQ8pKk72P7jTvkXvtU9pfgaFFm2Tcllvb
 DblWNte2ie/e2pvsMWkvA1XsfQ==
X-Google-Smtp-Source: APXvYqxVT5FLTspCDUieP0WCVk9yzwrr53RtQxt9iPVStpUeXliigG7L7l0TCjnf4tDvnu5Xv5KGMw==
X-Received: by 2002:a63:f146:: with SMTP id o6mr17077968pgk.179.1561867405996; 
 Sat, 29 Jun 2019 21:03:25 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id j15sm6860777pfr.146.2019.06.29.21.03.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 29 Jun 2019 21:03:25 -0700 (PDT)
Date: Sat, 29 Jun 2019 21:03:22 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Fabien Dessenne <fabien.dessenne@st.com>
Subject: Re: [PATCH v4 0/8] stm32 m4 remoteproc on STM32MP157c
Message-ID: <20190630040322.GH23094@builder>
References: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557822423-22658-1-git-send-email-fabien.dessenne@st.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_210327_753212_116D52C6 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, devicetree@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 14 May 01:26 PDT 2019, Fabien Dessenne wrote:

> STMicrolectronics STM32MP157 MPU are based on a Dual Arm Cortex-A7 core and a
> Cortex-M4.
> This patchset adds the support of the stm32_rproc driver allowing to control
> the M4 remote processor.
> 

Applied patches 1 through 3, with a few fixes of compile warnings on
data types in dev_dbg, in patch 3.

Thanks,
Bjorn

> Changes since v3:
> -Replaced "st,auto_boot" with "st,auto-boot"
> -Update m4 reg values and align with unit-address
> 
> Changes since v2:
> - Clarified "reg" description
> - Change m4 unit adress to 38000000
> - Renamed "auto_boot" in "st,auto-boot"
> 
> Changes since v1:
> - Gave details about the memory mapping (in bindings).
> - Used 'dma-ranges' instead of 'ranges'.
> - Updated the 'compatible' property.
> - Remove the 'recovery', 'reset-names' and 'interrupt-names' properties.
> - Clarified why / when mailboxes are optional.
> 
> Fabien Dessenne (8):
>   dt-bindings: stm32: add bindings for ML-AHB interconnect
>   dt-bindings: remoteproc: add bindings for stm32 remote processor
>     driver
>   remoteproc: stm32: add an ST stm32_rproc driver
>   ARM: dts: stm32: add m4 remoteproc support on STM32MP157c
>   ARM: dts: stm32: declare copro reserved memories on STM32MP157c-ed1
>   ARM: dts: stm32: enable m4 coprocessor support on STM32MP157c-ed1
>   ARM: dts: stm32: declare copro reserved memories on STM32MP157a-dk1
>   ARM: dts: stm32: enable m4 coprocessor support on STM32MP157a-dk1
> 
>  .../devicetree/bindings/arm/stm32/mlahb.txt        |  37 ++
>  .../devicetree/bindings/remoteproc/stm32-rproc.txt |  63 +++
>  arch/arm/boot/dts/stm32mp157a-dk1.dts              |  52 ++
>  arch/arm/boot/dts/stm32mp157c-ed1.dts              |  52 ++
>  arch/arm/boot/dts/stm32mp157c.dtsi                 |  20 +
>  drivers/remoteproc/Kconfig                         |  15 +
>  drivers/remoteproc/Makefile                        |   1 +
>  drivers/remoteproc/stm32_rproc.c                   | 628 +++++++++++++++++++++
>  8 files changed, 868 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt
>  create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
>  create mode 100644 drivers/remoteproc/stm32_rproc.c
> 
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
