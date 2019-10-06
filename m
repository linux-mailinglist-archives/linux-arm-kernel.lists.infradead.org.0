Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A80CCDB2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 03:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHrhyKAryqyTyqr1C1Ag504hSvrk5TRBXYjy0p0we+g=; b=cXrGjvJ2s/ymOL
	dD6ugnNq9r0ejVhyE/j6Cyq4IRZJtc5qX/SMjJlkqkYrH2iG4WV1/CwjOsZI8wsBmL9y2nqC1FVTO
	oLFJtYajRVbp923I0d4MHKfgVXGDuB/qH/jf/krS8M7l01RIuuspnDlxTW/xVnw4LWcYaP/7cbGnM
	5rQvOqIuSlouX4GP5oX8t4K03YoStIkVHQXTMNh39oI/WmSobBCat2UHyaP0vnCb6Fpd/fxNlrbMu
	dX1rE4eFqDGJYgkOXqFF7OsW0UDTCdVZH2ko/x810A4FzPqa1fxqiWSHptSD58mWhZwuKKeiaYocC
	g8HCEY8ZV1mp6/nlxxKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGvFb-0008CT-P9; Sun, 06 Oct 2019 01:22:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGvFR-0008C4-KD
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 01:22:10 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84B3A222C8;
 Sun,  6 Oct 2019 01:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570324929;
 bh=lg1rcaPaYzlWfGFd7qFkTdrWx6pX1IzDsEq3GfuVM7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tKSRDosiWc8MJ8AXoLQ4RxgA03z9u8Yw/Mbw9HgGxtf+SR359QrHrFv5dG332rVLh
 rcNM/S4ZtrviI1Kjak/neKKCbN2JsuXaLNiTIgzaa6N4Mt78oYPERAX1oHpmBvVY9G
 ePT4hYVqeBXGDU6yEJga2m5VXaHZ7DI4UiahDyF8=
Date: Sun, 6 Oct 2019 09:21:51 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] soc: imx: imx-scu: Getting UID from SCU should have
 response
Message-ID: <20191006012149.GI7150@dragon>
References: <1567624394-25023-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567624394-25023-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_182209_683910_B5D73AB4 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, abel.vesa@nxp.com, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 03:13:14PM -0400, Anson Huang wrote:
> The SCU firmware API for getting UID should have response,
> otherwise, the message stored in function stack could be
> released and then the response data received from SCU will be
> stored into that released stack and cause kernel NULL pointer
> dump.
> 
> Fixes: 73feb4d0f8f1 ("soc: imx-scu: Add SoC UID(unique identifier) support")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
