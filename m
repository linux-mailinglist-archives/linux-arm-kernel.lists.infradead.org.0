Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E0527DF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vuebmv2fC6R7iKoFKOjeIVRJvYD/M2wsev8/yIx6fUo=; b=R28355usZ3kMzv
	pq8sWlRsgIEIl6RYKRYpyWMMid8AqBlJcdPkR2SCKd4AOCVGKA1AMhPeMV1vG4dPMmQ3915FMozBx
	Y/td55+l7xWQ71eywDJ0uqI27tvGwzA0Fn3b5oLvPf+bE6rwDcIEsiEAUuCTsHQDZkPRVzIa4XcSh
	c8JA4+dK1MWKYjnPpoYFf+GnfLblw94jwmF4ZhxHzpCUjWRNDeKdj4qlh/5kx3j2hk0coj4SDzorc
	hwnHQ0UQEHWj1zL+IDq+k5TsoPNXiZeZaaP+pKAKooK/dJQKJu9KAIlCxkIjjQGl5BIqGWlfqT3sx
	HcHByVdJsgT3HCxpHh+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTndO-0005Kz-3y; Thu, 23 May 2019 13:19:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTndH-0005Kg-AG
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:19:44 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 189252075B;
 Thu, 23 May 2019 13:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558617583;
 bh=67xQcNuqM5sekKn10QU/HrpaUWjhKtDSFwfKfrWxIMs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ghrMq4BeVibtsKrlwmJlorKd5hLqFgi7rPOtCih6rwlErfw6osp1wFo29Zft/x8Ww
 60yeAuNefIYZiTg0PElcjElcz73E3frJRcyWS47bzFH998lIBLn9A6FZ6pZTq8vIkM
 flISgcwRmiyiA3lVFJeFa4kBA92oi5rebQEp/36k=
Date: Thu, 23 May 2019 21:18:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH] ARM: imx_v6_v7_defconfig: Select CONFIG_NVMEM_SNVS_LPGPR
Message-ID: <20190523131843.GY9261@dragon>
References: <20190523001335.14081-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523001335.14081-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061943_372184_7F76475A 
X-CRM114-Status: UNSURE (   8.37  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 09:13:35PM -0300, Fabio Estevam wrote:
> The SNVS LPGPR hardware is present on several i.MX SoCs.
> 
> Select its driver by default.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
