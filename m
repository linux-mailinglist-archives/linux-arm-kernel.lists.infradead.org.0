Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5E6F968
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:00:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fWGFCW8gMMHgAM2YbsRjG34Ri1LjEIQtyxP8/iIotVw=; b=LiUURuHQM2YcCa
	8YyNblBk03nYp3f4cC/xcJ3BwdhV4+9Ue1GL7fAIPxGSi29KI5ORgfJrkCLioLKlw760CGSCso5PM
	raopD5w+p+jzfrvLHvBgW2HLTzIrntXrLrQYX/IUSwjQCUtt29j0wAlYLbQ+NaObc+T3lv10VbHHf
	5XWKrsZ/0QK/eNjS9sPh9sg75JFe5fUtjKGVdVo3t56JnYwJMwZQgmOuApPzcjDTmalslS2U4QTRD
	CrosNhexSKuPZVv1/eCqEnelp/QXw0Wigqd7hpGEiQTdF3Bol6CWJzInxa8nPnnw4fM5mcSGUXImr
	R0tE9cJ9rSXrcm0nO00Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSN8-0007Zx-85; Tue, 30 Apr 2019 13:00:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSMz-0007Z9-RU; Tue, 30 Apr 2019 13:00:27 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9370121670;
 Tue, 30 Apr 2019 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556629225;
 bh=6uyo25WyDxBB8idcqXt73kqZXjeBFFDDZvVdaT5bDMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Wel7tJuOeiyFnNUE3BPYWvgK9s8ruu2/VD+nDgGsh+EsOXnnm95LB0h/cAUEwXQFY
 MnWzOly0L5CudBtd68+KHPcjGiRz1EDNdInSGLmKUJ/1AU4E0oNs1u1MEHdmhAN5Md
 midzc5ngvzeBG1Waf+MFTp4fCE20h5SEnFVTklbQ=
Date: Tue, 30 Apr 2019 15:00:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
Message-ID: <20190430130022.GA4565@kroah.com>
References: <20190429073658.32009-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429073658.32009-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_060025_913250_A7D256D3 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, devel@driverdev.osuosl.org, f.fainelli@gmail.com,
 sbranden@broadcom.com, eric@anholt.net, rjui@broadcom.com,
 linux-kernel@vger.kernel.org, julia.lawall@lip6.fr,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 01:06:58PM +0530, Vatsala Narang wrote:
> Modify return statement and remove the respective assignment.
> 
> Issue found by coccinelle.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> ---
>  drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

You sent two different patches that did different things with the same
exact subject: line :(

Please make them more unique.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
