Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040351BBC4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4PwPQcb6WKIzTbeBX6wf5h1Nnzd5MIFY8b3WXmdenw=; b=TPIolrOzKK16ha
	Kjntj+OBKBI8dZl2aNGsQ4Fp1ZkRhOBlWxMYURZ7lN2MLMby1rzWzsdmojpGHZViMwkv5d5lWADYt
	9FtLQgRuFZkI9JcvH52ShxU5oNZuTC4mAe4exrjzoKZouf1GeJTYhSy0Z/Mp3MZXAW2GQPjQP2X/2
	3GttvyVpXiE3w/LCe5Tn0FrsugSxxAsmjmm6a/hUyR9kV7MfZF8VDugcXyaQkSQmPbl8PPYhf1QHA
	TlfR/uuBVLAZhRIgJ3aPGrOaZN+ko/wBif7ZanWQBl3cLCV7IdUeuA7zjuneaSJD5JLs0Yx6mhkcQ
	kSjmxpW9pH6vo/slyQJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOGX-0003vY-CH; Tue, 28 Apr 2020 11:19:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOGD-0003v1-NO
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:18:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76334206D6;
 Tue, 28 Apr 2020 11:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588072724;
 bh=cTbH1jyXaJgV0FHofLFJaxzBEqrP3IX3dYt4iQDTkcA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y1JLmVMQnEo2l2sL0mUfy8t81I9jhNm+SHA6QJBHCyeYNFRyV0qdt5wtiK4N6DKd4
 EnCi+QLriR3ovNnlKrzZKRLAaRKaKEG6u3vjRB6OirRbEO3TP4d/z0Q/EVaRlohJXn
 wl76F2SFH9YI6ZIK+q8X9ZYj28shIdD6Ivzu/CKY=
Date: Tue, 28 Apr 2020 13:18:42 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH -next] tty: serial: bcm63xx: fix missing clk_put() in
 bcm63xx_uart
Message-ID: <20200428111842.GA1159152@kroah.com>
References: <1587472306-105155-1-git-send-email-zou_wei@huawei.com>
 <4cd8f963-9292-faef-1e24-df90821274d6@suse.cz>
 <73c4cebb-467b-e5d5-89bf-8a6fe29cf858@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73c4cebb-467b-e5d5-89bf-8a6fe29cf858@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_041845_778340_912F5402 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org, Zou Wei <zou_wei@huawei.com>,
 Jiri Slaby <jslaby@suse.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 10:29:58AM -0700, Florian Fainelli wrote:
> 
> 
> On 4/26/2020 11:19 PM, Jiri Slaby wrote:
> > On 21. 04. 20, 14:31, Zou Wei wrote:
> >> This patch fixes below error reported by coccicheck
> >>
> >> drivers/tty/serial/bcm63xx_uart.c:848:2-8: ERROR: missing clk_put;
> >> clk_get on line 842 and execution via conditional on line 846
> >>
> >> Fixes: ab4382d27412 ("tty: move drivers/serial/ to drivers/tty/serial/")
> >> Reported-by: Hulk Robot <hulkci@huawei.com>
> >> Signed-off-by: Zou Wei <zou_wei@huawei.com>
> >> ---
> >>  drivers/tty/serial/bcm63xx_uart.c | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/tty/serial/bcm63xx_uart.c b/drivers/tty/serial/bcm63xx_uart.c
> >> index 5674da2..ed0aa5c 100644
> >> --- a/drivers/tty/serial/bcm63xx_uart.c
> >> +++ b/drivers/tty/serial/bcm63xx_uart.c
> >> @@ -843,8 +843,10 @@ static int bcm_uart_probe(struct platform_device *pdev)
> >>  	if (IS_ERR(clk) && pdev->dev.of_node)
> >>  		clk = of_clk_get(pdev->dev.of_node, 0);
> >>  
> >> -	if (IS_ERR(clk))
> >> +	if (IS_ERR(clk)) {
> >> +		clk_put(clk);
> > 
> > Why would you want to put an erroneous clk?
> 
> Doh, somehow I completely missed, you are right this does not look legit.

Ugh, can you send a revert for this please?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
