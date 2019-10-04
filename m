Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6C5CBB41
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 15:07:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTDHyQutDeZPoZ8a/qlGkJo053a+LW2bOo7gjXR+RKQ=; b=DB10Bb6QHAMHfP
	5bhuqnrCMdAOnC4WXow6RZFf4A532/rDw8xcI7vFQN2YutyeGjrN8MZCkcx8VI6OO9rD/Je+4FBP0
	vlygypLU75CezHRfEbrQtAlMtZooXNXdmhfzwnUHM6e1C00vTxqyle32tKobNwpqvT5hpC0ubQjvm
	q5cWkp+rFmnsBNoexI6xRZT+4P4L6b1QWfpLAbH+oPFFhK+XVE5GuG46r52uRww3rU8y+OUg/oj/i
	vOfwb2HZ8x+wvY7u9sHPof5Z8ftYOeKTPtX/k7DE3c577AZRi6vwB0PnRd0GYBjHjde2npfkT1jMv
	ZvPMhba7c0BGBxsAIzRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGNIx-0003fb-HF; Fri, 04 Oct 2019 13:07:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGNIh-0003bF-Kt
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 13:07:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 827BC215EA;
 Fri,  4 Oct 2019 13:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570194435;
 bh=CFOCouonhzz00UEFUDuYK1KXMg/m6E5gMfXnX/sdPAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M2hNx4wBJ3d6xKK06wIa4l/jLjZEavgdqqygSEgxPkVPkwhmI+W9ieVmynxzKF+O9
 H16/ubVYs/dKerC8+r7HrMMcIzoocZLmnbamnWenR9kZdXrkDmmrGyQ55hvZvTl+ji
 rrKfFhUVaH7tKWXGggTaeRFccoog52ppxMZOJrOU=
Date: Fri, 4 Oct 2019 15:07:12 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
Subject: Re: [PATCH v5 3/5] serial: fsl_linflexuart: Be consistent with the
 name
Message-ID: <20191004130712.GA622272@kroah.com>
References: <20191002130425.28905-1-stefan-gabriel.mirea@nxp.com>
 <20191002130425.28905-4-stefan-gabriel.mirea@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002130425.28905-4-stefan-gabriel.mirea@nxp.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_060715_710656_1B0B8A32 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>, "will@kernel.org" <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 01:04:42PM +0000, Stefan-gabriel Mirea wrote:
> --- a/include/uapi/linux/serial_core.h
> +++ b/include/uapi/linux/serial_core.h
> @@ -290,7 +290,7 @@
>  /* Sunix UART */
>  #define PORT_SUNIX	121
>  
> -/* Freescale Linflex UART */
> -#define PORT_LINFLEXUART	121
> +/* Freescale LINFlexD UART */
> +#define PORT_LINFLEXUART	122

This is a different change, and one that should be split out and
submitted now, for 5.4.  Please do that as the id number is incorrect,
don't bury a valid change in the middle of a "marketing renamed the
device" patch :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
