Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6A01FEF16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 11:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xC9DUnBNmalt3FrtCDBj6XZQbq+3GVC3K+46sTWBZHA=; b=graMzJhEi/Zh4U
	LrmB0EJq3o/uAJBLMASvkdYyDdTfw8J7BQuQeqo/VZCSAjP/cSv5OtVaoSRUrRR88t9KjtlYIEJG5
	1E0u4V3aLD7varuEuwmtXTmp5R1UIcYq8iBiToy9RmXmM83lmSihBfQGWVmM9+7KELrkLkZQaRGPh
	cumPyJr6jqXwCzR1AFjcaKRk29erRz/qj679F9U2/8ysoG2DDwhtIIab60y5OU3UWYtAqBw7oDTMM
	Xxb3Mi7VKeQFDa/mYtYNVbo2ZJ7bH96GG/kwcY4oDbf/ZBfTB+KTI+1qL427suEwp0XpuBEWI7ECN
	IAyvLDaRzgEQF+h/zcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrHM-0000pt-UV; Thu, 18 Jun 2020 09:56:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrHD-0000pG-NP
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 09:56:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D05FC31B;
 Thu, 18 Jun 2020 02:56:04 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81AA13F6CF;
 Thu, 18 Jun 2020 02:56:03 -0700 (PDT)
Date: Thu, 18 Jun 2020 10:56:01 +0100
From: Qais Yousef <qais.yousef@arm.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 5.7 229/388] usb/ohci-platform: Fix a warning
 when hibernating
Message-ID: <20200618095600.umb4gyegy2hszlep@e107158-lin.cambridge.arm.com>
References: <20200618010805.600873-1-sashal@kernel.org>
 <20200618010805.600873-229-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200618010805.600873-229-sashal@kernel.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_025607_808503_9A1DDF8B 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oliver Neukum <oneukum@suse.de>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>, Alan Stern <stern@rowland.harvard.edu>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sasha/Alan

On 06/17/20 21:05, Sasha Levin wrote:

[...]

> diff --git a/drivers/usb/host/ohci-platform.c b/drivers/usb/host/ohci-platform.c
> index 7addfc2cbadc..4a8456f12a73 100644
> --- a/drivers/usb/host/ohci-platform.c
> +++ b/drivers/usb/host/ohci-platform.c
> @@ -299,6 +299,11 @@ static int ohci_platform_resume(struct device *dev)
>  	}
>  
>  	ohci_resume(hcd, false);
> +
> +	pm_runtime_disable(dev);
> +	pm_runtime_set_active(dev);
> +	pm_runtime_enable(dev);
> +

I am not sure what's the protocol here, but the series was fixing similar
problems to this driver but I didn't myself directly observe a warning because
of that.

https://lore.kernel.org/lkml/20200518154931.6144-2-qais.yousef@arm.com/
https://lore.kernel.org/lkml/20200518154931.6144-3-qais.yousef@arm.com/

So just pointing it out in case they're worth backporting to stable too.

Thanks

--
Qais Yousef

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
