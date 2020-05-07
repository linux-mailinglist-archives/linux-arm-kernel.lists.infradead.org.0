Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C211C9529
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:34:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKGOSa3r16hUPX4FiZQjUp4IbghHibo6LVnOskZlRWs=; b=jikmORaoalI2SF
	dL14nOO4zVRcj28tSxet0FqRcmRd/knOJgHwd3looMG0xpVyrX+yIBYoYXT7Ks3+692h+IDO2TMN3
	DWUyAbey2pKWfjfsrUiIl9lSEL4zfwAKRboct6LVBN8UyvpecC4cG4CvqxIM3Fqgm7CQhTOC3IM/A
	l0s/uy0tpGZhvY480XclclGbVnFYX5P7h76SzZ0LrrmLsTOSTy42WyK5PSfmP5HUhQUbrU8fhPxdg
	OiNAs7fgKq6LW3H35ctWupSdpfhsZKHQQBmjksbEUTp7LhmCLUWHTKGlKAM1rx7JnW7hpWKzG2R/8
	Z9x/EUvKm6CegAOn2RIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiXw-0001V3-VS; Thu, 07 May 2020 15:34:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWiXq-0001Uc-1Y
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:34:43 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 42CE6207DD;
 Thu,  7 May 2020 15:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588865681;
 bh=su42LeOpkqoZ9FpxsWpq/u+jVkw8iFswKLvseMb3xkM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MqGpj3R284gvc+wtAR2/E8G9RRNEz2VSI1EmoFaWXTzSSeWiZDJdSZcqH/orgGZNM
 3pkvM6V9zWFMFBzg4693wAFXpMM2ctlEy2EsbY5B+vZJw8t6/fpY7TJ9244gxU6VEc
 Fb+U+CjMoscYeEsuPnqsNI5TqcV6qAG9GVikqy+w=
Date: Thu, 7 May 2020 17:34:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v3 0/2] Add CTS/RTS gpio support to STM32 UART
Message-ID: <20200507153439.GA1919950@kroah.com>
References: <20200420170204.24541-1-mani@kernel.org>
 <20200507140750.GA2019@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507140750.GA2019@Mani-XPS-13-9360>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_083442_105633_E496B9F4 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, May 07, 2020 at 07:37:50PM +0530, Manivannan Sadhasivam wrote:
> Hi Greg,
> 
> On Mon, Apr 20, 2020 at 10:32:02PM +0530, mani@kernel.org wrote:
> > From: Manivannan Sadhasivam <mani@kernel.org>
> > 
> > Hello,
> > 
> > This patchset adds CTS/RTS gpio support to STM32 UART controller.
> > Eventhough the UART controller supports using dedicated CTS/RTS gpios,
> > sometimes we need to use different set of gpios for flow control.
> > 
> > This is necessary for the upcoming STM32MP1 based board called Stinger96
> > IoT-Box. On that board, a bluetooth chip is connected to one of the UART
> > controller but the CTS/RTS lines got swapped mistakenly. So this patchset
> > serves as a workaround for that hardware bug and also supports the
> > usecase of using any gpio for CTS/RTS functionality. As per the sugggestion
> > provided by Andy for v1, I've now switched to mctrl_gpio driver.
> > 
> > This patchset has been validated with Stinger96 IoT-Box connected to Murata
> > WiFi-BT combo chip.
> > 
> 
> Are you planning to take this series for 5.8?

I had to wait for the DT protion to be reviewed before I could do
anything.  Give me some time, if it looks ok, it will go into 5.8.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
