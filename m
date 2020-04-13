Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A020A1A648B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 11:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRhhGwyGhIOYZLTa9OJfB3ylJFrbixYSGMBbqmFWA9c=; b=Mfd94oFPdUUEbh
	EJuA3zbNJTxS/DYKzpaCOj+MOKt2sH9tJm+lL8Sesrnp227b5Chajy/lw8hNJikgh1IxU3AyiWzGy
	G3278lP4pjNq9LVMevY9ufHFEuKrmlyX/2iQPr85nuiDpKHdHonyRfVrLY/FeAWTLm6EBruSPb3pD
	yZRRV5gNHFaotNe06ZI5K55zWeupm1gTq0XXNh0GHmmGldX7QBW2Q6EXZujudgtHee+FwOQKbjFHX
	ES7FfDoYsV0dyiVEJIufuHvWVcVzRKKYt241FzAJ5t96p6Nr1U3s2ESLhrIKshrkwR3pfdSbKZ7RE
	G1XqRJVK8l9B88eeAr9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvDr-0007ik-Cs; Mon, 13 Apr 2020 09:17:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvDk-0007ho-89
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:17:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id y12so2893114pll.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 02:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+Es/1kSX+2DTfIEl11xOgF+dKXSLyBYadIDMkf6JWRY=;
 b=uD88jc+H5svxYWnFnmOVmZGhizFVGLAqr3CGeRWDO71LcsasJpC+gS6bTbGRjKJPM3
 oZ9POJtkVxjLCFTbcL+p8nnQySxbLL31W4FoXcAJX3ZzjWVGDARV0SImqIOX2W/pEOon
 VNWH55nNVoBjMsIDFb8wwRfiKr0nqmZqI1/dBsNbIj2R9CC6u/yGTisg10eG5ytX8cMI
 EvG8HXr+df/G5G78N96KOfukqqYSuC0n4PXJR38NSI3N1XwImkZhSlFym87QkkP6mlcN
 uuEiLWJ+0805c7VirFoRpj+kz8ZQJXGK5w90D5bDCpywG0dKP5HsHGALfFUSO/gVPw4l
 oR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+Es/1kSX+2DTfIEl11xOgF+dKXSLyBYadIDMkf6JWRY=;
 b=fLOy7UNLL2huJYyt/Bbvxot+KxETD1hZjH6zi87FRVVsgr0AC30xzecFrDhN6d1AsT
 3tlSIWlzX3lP0Qzmtm3/w3/skrJT9JiTnC90B0FsAbjrPWDB2F8vhiEJ+mGLKUOV5elQ
 e526ouJsNhgpzR90I0LDRhW/0EgdOKXthnCR8rG0edIMXxBvtKgm+xEO1DkKXEXBesIe
 CGYx6N+zSBsINhMh8+6F1/r9hGctoU4NoDOdEWWT4N+BjVRBPk3QivHbcntplaHXtbED
 pD1fqPhjzuxg/r5HVKWTscck1i9OcZuFtbQaTbG4dpkV5C/QCt9TUopn7UYTrdu7z0qb
 CS2Q==
X-Gm-Message-State: AGi0PuZ3/CFNpMvp5hgwXTQ8ltuqY2K7Ddv5wKUhh2tuzFSshfMleug3
 ZL1m2BGolt4QPk9NFnyg3yPvuGZgZRx6rT2uRMU+axxSAQI=
X-Google-Smtp-Source: APiQypKrhwIBdb9K5xK6+BTvgkhgXaWgjvsbqf2WCnQLazfGOFLVhIlgZpBJQNARmhWX7ScRLGvI/AGMLB5ktOM49e0=
X-Received: by 2002:a17:902:9306:: with SMTP id
 bc6mr16330033plb.255.1586769453549; 
 Mon, 13 Apr 2020 02:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200412180923.30774-1-mani@kernel.org>
In-Reply-To: <20200412180923.30774-1-mani@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 13 Apr 2020 12:17:21 +0300
Message-ID: <CAHp75VfDUoFMWg42OFHZtKQ972eoR3UDLVAs+BQjJm3h3-fOGw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add software flow control support for STM32 UART
To: mani@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_021736_292249_EEF52370 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 13, 2020 at 7:06 AM <mani@kernel.org> wrote:
>
> From: Manivannan Sadhasivam <mani@kernel.org>
>
> Hello,
>
> This patchset adds software flow control support for STM32 UART controller.
> This is necessary for the upcoming STM32MP1 based board called Stinger96
> IoT-Box. On that board, a bluetooth chip is connected to one of the UART
> controller but the CTS/RTS lines got swapped mistakenly. So in order to
> workaround that hardware bug and also to support the usecase of using only
> Tx/Rx pins, this patchset adds software flow control support.
>
> This patchset has been validated w/ Stinger96 IoT-Box connected to Murata
> WiFi-BT combo chip.
>

I think it's a mix of terminology or so. Looking into the patches I
found that it's required to have GPIOs for SW flow control.
No, SW flow control does not require any additional signals, except RxD/TxD.

On top of that, it seems you adding mctrl-gpio functionality. Why
can't you use that one? And thus no bindings needs to be updated.

> Thanks,
> Mani
>
> Manivannan Sadhasivam (2):
>   dt-bindings: serial: Add binding for software flow control in STM32
>     UART
>   tty: serial: Add software flow control support for STM32 USART
>
>  .../bindings/serial/st,stm32-uart.yaml        |  15 +-
>  drivers/tty/serial/stm32-usart.c              | 143 +++++++++++++++++-
>  drivers/tty/serial/stm32-usart.h              |   4 +
>  3 files changed, 155 insertions(+), 7 deletions(-)
>
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
