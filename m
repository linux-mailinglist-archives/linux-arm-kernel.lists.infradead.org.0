Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0836186369
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 03:48:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVUYKTD9ahvqipUODT23yONScmxnzQ2jFEes0q46DOs=; b=tXn0kRZomIkOs3
	vidcGZ6IhHH6RVLb3EMVbpNJGeOmwxO4FNPRCnICfHUukPE3xe9ahAzydwg1eW8+vydR74+Bg91zZ
	c5KbTOQKg5cEap9MTvMWaYsOmF4qn6h4PUSCyVePbCwPJGlY2gFp5nvEaJ24Swxo+9fkrsi7U8bBU
	JQCnQmyERlvxVMyHGxyeW3mbL+OUxWEz2GmBCmk9hNT1YzBcyUn8YKn40S1aAb6x+0+WpkOOXg+jO
	l1gIRvT1WdD69jqTwKnxYEYZdy9XHUleEerIDW3BgbqXQVzyrZqeN+eT+OW6p9eKXe9nuGRni0E51
	1tGoLNa4niVcDuxNqWpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDfo8-00032s-7T; Mon, 16 Mar 2020 02:48:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDflv-0001Gj-JC
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 02:46:35 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E7EC82051A;
 Mon, 16 Mar 2020 02:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584326791;
 bh=K1/WLZ41NFryaVge1DWw81xshpaeYmQE8IUKSWCjOZI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OtEFbLeUK+7TToH4aF4rIQtukmrFw33GJthLFawW6o4rCLtPXx4lYfSYoijVj6nhu
 M60J1ndoSM+ulNhzgcAkNAVfv1NQEJpUQb/m3T1nGunYCiH1F6xFYNqodtzXfQE/4O
 bDa/QaRIKJmuYvh+Df+77/WnSrY4sK8PHY0HtIyo=
Date: Mon, 16 Mar 2020 10:46:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Lucas Stach <l.stach@pengutronix.de>
Subject: Re: [PATCH] soc: imx: gpc: fix power up sequencing
Message-ID: <20200316024626.GA17221@dragon>
References: <20200313100912.24699-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313100912.24699-1-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_194631_684232_A8B8C011 
X-CRM114-Status: UNSURE (   8.51  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 11:09:12AM +0100, Lucas Stach wrote:
> Currently we wait only until the PGC inverts the isolation setting
> before disabling the peripheral clocks. This doesn't ensure that the
> reset is properly propagated through the peripheral devices in the
> power domain.
> 
> Wait until the PGC signals that the power up request is done and
> wait a bit for resets to propagate before disabling the clocks.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
