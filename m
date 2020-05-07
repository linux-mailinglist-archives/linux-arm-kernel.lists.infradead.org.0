Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8711C8DA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eR4SFakkcovCQ3F7TcLsn8NZ6RjucI8Uk1f7YTKgXtU=; b=Mp0fhT/3cTzw0j
	Xjot2IWORX8fZvT9fBTBzWq9OlpdV/YxzYM13tpKWTLw0QQpkAjm9lbJTwkHKEGwLkcODAD3+kzUS
	VG1RZJE0YUi7aw4Qq4xT3ZF1OleYmAHA/X6qiCvMhFbLHiBqMzQAexO7jk0BWvTxb9dtznQSy1g66
	o1Wp7LCwIiVmw9WdZzWRs5ODHgrMwEaRHwaxnFZ2zjm3WuvWMv8zD1ko0c7WnBqy4MFsM7Hooeuzm
	UlgdZwJSiSp4bhiBvisj94ekW0r/diG22xMSPYBXN2iX3VwFZjFjXGLt+Hm7oQXuVWIVR37HAcjEJ
	0scD7BEyBPwkFjjWWCXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhC2-00031y-Bn; Thu, 07 May 2020 14:08:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWhBv-00031B-F7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:08:00 +0000
Received: from Mani-XPS-13-9360 (unknown [157.46.59.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F03462084D;
 Thu,  7 May 2020 14:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588860478;
 bh=up72YqQmbXKsh+0pM1oCFb1Y0z05K3pNe8Mi871M7kc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jsUyk3GojI51408CO+VP69Uj5RZ4eJkVtRwanijT5SOihR0odMv6AqV9EZzz+J4vR
 T6Tr+k2nnIhLGKQQWLg10jhz8YQoFL9axsSFvzcb+NeN05rqb4r2Q3PvDv3Hw90MXl
 7te6rl2Rr1MRb/oDmEb64s1lK3JiRdPHtZK4Ev5U=
Date: Thu, 7 May 2020 19:37:50 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: gregkh@linuxfoundation.org
Subject: Re: [PATCH v3 0/2] Add CTS/RTS gpio support to STM32 UART
Message-ID: <20200507140750.GA2019@Mani-XPS-13-9360>
References: <20200420170204.24541-1-mani@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420170204.24541-1-mani@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070759_525316_087C0911 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com, robh+dt@kernel.org,
 linux-serial@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Mon, Apr 20, 2020 at 10:32:02PM +0530, mani@kernel.org wrote:
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

Are you planning to take this series for 5.8?

Thanks,
Mani

> Thanks,
> Mani
> 
> Changes in v3:
> 
> * Added Andy's reviewed-by tag
> * Fixed minor issues spotted by Fabrice
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
>   dt-bindings: serial: Document CTS/RTS gpios in STM32 UART
>   tty: serial: Add modem control gpio support for STM32 UART
> 
>  .../bindings/serial/st,stm32-uart.yaml        | 14 +++++
>  drivers/tty/serial/Kconfig                    |  1 +
>  drivers/tty/serial/stm32-usart.c              | 53 ++++++++++++++++++-
>  drivers/tty/serial/stm32-usart.h              |  1 +
>  4 files changed, 67 insertions(+), 2 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
