Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B2F15A24E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 08:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwub784rBBSK0810UIPDIvE5Uc2rKIGZ8HNu4ErZTto=; b=YRLxEu5yRIxTIq
	m3pmfBPz/wkSFl0aEgwgs9QLEK1IAM18SDyKLRooOu6cqLmSsP4w+JRLJp0M8SLJrc6l+jdhQoAlv
	1nt2TKB9BiqkKD8N0V26j+GK/2rXs8qTRNMUPjkKYGBxRVfw6tmuFK9wS6HAVe1s1lyatOE06v3SM
	7Ej6YWZoGIx9n7EMCR0skrCjNlOQxXfcsUwgy376QPxoskXnmhfyx9MWp4sAIMtCpIjIScpq8xcA4
	7mYp5zFaek/XCrNDwJFZoNshyonDHTqNvCnmaka67lyKwfMDR5Lo1tS3S9CXOEgeO6P9tw+uC8eRH
	8b3TBbHqudyk8dScqzKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1mg2-0008US-E6; Wed, 12 Feb 2020 07:43:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1mfv-0008U9-0A
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 07:43:12 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 699FD20714;
 Wed, 12 Feb 2020 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581493390;
 bh=Y/lvTukTLmPOkYD/rx8zMVp2+4fDIRR1J9tNyDvhbEM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NzZzo+8Ixnt1JdwZyhMjOnqkAtXiIgFTYuaJ/PBsToWIPsFccM9/meR1xNiK4lwsO
 6kikxucTUYL/LZQ77Iva8UAapB2MDK36vSCza/aPKDrOc9D2BjO63s39z4EzdBqqSN
 GPyEJRZ/lVbqtVg/N7pYxbmfiSGxAYmk1m8Z9n9I=
Date: Wed, 12 Feb 2020 15:43:05 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Aapo Vienamo <aapo.vienamo@iki.fi>
Subject: Re: [PATCH v3] ARM: mxs: Enable usbphy1 and usb1 on apx4devkit DTS
Message-ID: <20200212074303.GD11096@dragon>
References: <20200112140039.25420-1-aapo.vienamo@iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112140039.25420-1-aapo.vienamo@iki.fi>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_234311_064543_D17FDE99 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 04:00:39PM +0200, Aapo Vienamo wrote:
> Enable the USB host port on the APx4 development board.
> 
> Signed-off-by: Aapo Vienamo <aapo.vienamo@iki.fi>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
