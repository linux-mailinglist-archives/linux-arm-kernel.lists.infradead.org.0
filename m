Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8254120E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZZsaucmm9sTm9kDw2x4GuRvMo1ktLNKzG0VkqkYuJM=; b=mtgW5EC3ngF4sH
	7WHtR9wLqf8qxdDrbejOKtQi/XjtptsUhfSRa9xss0DjHCJHm31EoyVUTRgH2zEK1mT0px0fRaOd+
	Mi779lK3z1ShgjbqCR6Sps9nbLuATSPhhxTJn/rm8Y3hDep6kZFVJriCpvGQAUuwRHvemIf6h7h7L
	hUbJoPzieIgD3EA3liPNDfmdPMoT9qNxYAXDKLL2LFTY8cqmFzK4B65yF5v91pRUFPLk27Ly3YnEW
	uld+4uLDOGlrnWxucvTT6EYNRr2RL5Zd1FI0LitSFEk2G4+v7e8dxNEiaNHKySC3Jww9mn0YRqKvE
	0MYAez0+zIT7zFSdezIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFIb-0002M0-HA; Thu, 02 May 2019 17:15:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFIP-0002Kb-Vw
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 17:14:59 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DE6820675;
 Thu,  2 May 2019 17:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556817296;
 bh=58kgeTvNAwTn6DXw7BdMdqSpsZyBdfuvDAuxf//UEYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NEd6H7BUxehxi3tX0dJdbTDZo0ALEWIZKflD/2Cg8E7hDjzhyo40r5eeGSWBgwksR
 TfpAsRSZs+V4xsLmDzx3p3vqEmojEV5jGnaIDnp008hdA98rH6gieXJeuX9esJrzu5
 yrje3UkM4Qt3iFYNixYjwEG0HJLrsA9k4Hy5ee8I=
Date: Thu, 2 May 2019 19:14:50 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/4] coresight: next v5.1-rc7
Message-ID: <20190502171450.GA1794@kroah.com>
References: <20190502165405.31573-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502165405.31573-1-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_101458_808040_8A0F74A1 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 10:54:01AM -0600, Mathieu Poirier wrote:
> Hi Greg,
> 
> Please see if you can add these to your tree for the coming merge window.
> They are confined to the CoreSight subsystem and have been in linux-next for
> a week now.
> 
> We can simply wait for the next cycle if you think it is too late for this one.

Snuck them in right now :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
