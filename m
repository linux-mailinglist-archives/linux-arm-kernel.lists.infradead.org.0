Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE36E1AD1E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/f2nkY1rCR/iKtpWqYRoiuHBpuddTqbmhV4lSNH0H0=; b=aymm31nw930mkW
	l7IzrfK/MT2QhwaN3uo/a63Y+6jbWrqwXr4qCiPTewPnPuGbFBdDfZvxo5z+iK4jO4frKZlFFeIdw
	fwpWS6paMbndOYCuozIVSRdGqi7+FK1/WPTJsrunSTzSent9SLTdEcDlVXsHz4OZAYEYSAWPMAYxB
	qJKc9Bt1sSw89afhw36gW70U8oq+IkFWR1kLH3y9YVoom3Q320hAHsKvpxjrfh9LHJwTmG6ECUp2F
	mE6R4ASxcUsAYA891rkqxT1OgUW+niY5+vhlnWBlW6GCiS8RE8ZQpXOo6kWei0GN19DZ9YBUlMLn4
	JuXxlcy8MBdXZNJ0IuLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPC5z-0006Op-1Y; Thu, 16 Apr 2020 21:30:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPC5r-0006OH-Kn
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:30:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id x26so4784pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 14:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=F59MCAy9LQ39t9b94uz/vF55cBc/ty5ftnkMrjUeMVI=;
 b=F+76JoX2R7sUagBs5MiZtTABq0cgtV+vyQR+Pq0aOKntIcRM+e75S9VZPbYgX+4O35
 r2iDAKA9feHsDg2oq2V8HbPB7rb1IbMWWnV91YEmvAeuS/wb00lNv8S/b59cVyCbNmoI
 v0qg2uie9OZvu/aEKifWzzNGkDiYsvXl/ebCuzDMJyooHo9v9plc0T5enusQhD1HRJhQ
 NCib4b4yxg03NdKVXBqT7s7sudY8OZINEnlICKS38rHSiBGGhrFq0m2JNNfJ7smKua9c
 uMwPAEVQOM/3xroHC415fZ323fbfwaGmYwSIWFfIdLZdinMSTPCmG5svP9sswxgVc2Wx
 QHkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=F59MCAy9LQ39t9b94uz/vF55cBc/ty5ftnkMrjUeMVI=;
 b=aaqpxu7Fa50krV8CkhumTDmO93/qM9zJgWcN58atdQlOr1rd0DDNrIA4oyzRonmt7D
 eBCn3zE5ClSjDTkNSOGHIdOzjnhAwNkxNDL/KVWO2zIEH9P8FNJpJihZj7AIbXQN04Mw
 vOOqaIm3+s+paOrJTpj0G/P1KP5MXTm5InL6G7VWHyQeUEYdrVpr1dyibBx+bFcAm2pk
 VUe5zhYD8Vv+3sSyIFeMCGcxff6jWOhG+g8lHgQIM0aZx/7R+NtRbDdvTcnOAid+g+Xp
 7OGuSlHfuc8enHQS0Zf/5Fe5EXJTmTKo8GIZugQsEeObcaru79z4uk1XY1GA5Bk0yN8Q
 pQ5A==
X-Gm-Message-State: AGi0PuaRtzyiiHvAqDApkuydsu9TLjIVtWRcbssTXYzzr4s10nWtchjQ
 9aPTuX1038FeXik7VlOTQmKBJcYUzUWDU/J8fPE=
X-Google-Smtp-Source: APiQypKbsEwv7dyMRMPJoBQNj/KvDFB5w7W5P0FHGG1weQUmw4bO5gMc9e2umvdhLDeoCPYVHjIesY8EPzX4ASZJHQA=
X-Received: by 2002:a63:5511:: with SMTP id j17mr17300739pgb.4.1587072641114; 
 Thu, 16 Apr 2020 14:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200416175729.5550-1-mani@kernel.org>
In-Reply-To: <20200416175729.5550-1-mani@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 17 Apr 2020 00:30:28 +0300
Message-ID: <CAHp75Ve6V+gm_KXqMpG8bn7KtHjOctomZwk8n_6xwtx6cFdKfw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add CTS/RTS gpio support to STM32 UART
To: Manivannan Sadhasivam <mani@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_143043_679223_4CCBD77E 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 8:58 PM <mani@kernel.org> wrote:
>
> From: Manivannan Sadhasivam <mani@kernel.org>
>
> Hello,
>
> This patchset adds CTS/RTS gpio support to STM32 UART controller.
> Eventhough the UART controller supports using dedicated CTS/RTS gpios,
> sometimes we need to use different set of gpios for flow control.
>
> This is necessary for the upcoming STM32MP1 based board called Stinger96
> IoT-Box. On that board, a bluetooth chip is connected to one of the UART
> controller but the CTS/RTS lines got swapped mistakenly. So this patchset
> serves as a workaround for that hardware bug and also supports the
> usecase of using any gpio for CTS/RTS functionality. As per the sugggestion
> provided by Andy for v1, I've now switched to mctrl_gpio driver.
>
> This patchset has been validated with Stinger96 IoT-Box connected to Murata
> WiFi-BT combo chip.
>

Looks good to me,
Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Thanks,
> Mani
>
> Changes in v2:
>
> As per the review by Andy:
>
> * Switched to mctrl_gpio driver instead of using custom CTS/RTS
>   implementation
> * Removed the use of software flow control terminology.
>
> Manivannan Sadhasivam (2):
>   tty: serial: Add modem control gpio support for STM32 UART
>   dt-bindings: serial: Document CTS/RTS gpios in STM32 UART
>
>  .../bindings/serial/st,stm32-uart.yaml        | 14 ++++++
>  drivers/tty/serial/Kconfig                    |  1 +
>  drivers/tty/serial/stm32-usart.c              | 43 ++++++++++++++++++-
>  drivers/tty/serial/stm32-usart.h              |  1 +
>  4 files changed, 58 insertions(+), 1 deletion(-)
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
