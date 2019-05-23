Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4786F278D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LnLPnT5v4F3bwbpTyZpbCSlQxMYHSaLCW0Y6M2Ps8A=; b=uOqpHKt9dDF21P
	hRKITU2+DkSuHCgr12D/advJ66s0j6sdK3xO0LAEoI5N8UtLggn3vIwPp3b+z9iFFUWgNRfkUFb/c
	dF+Crd45WfT/KsCIiwQc4L9B66/sN3hLLQJKfNIF2kCl/kjl10q0TUUYsjgNSmkzIUf0v/fYpLzL1
	7NuDmMkGVS2HiQDQD2T3Ald85yIzLz+v77R6FyiwxQX0+NK8h3Ck+DPHe6SG4RCFT/Kh5X/clm7Lk
	QOlkz/9OMswry/eGmbNmjViQN4KM4iP329Qc/YLtFUwMCafLHT+I0pi7jhYYqn4yxGuHLpQgq3Onk
	T8bMZEBoDPY3MYeCgZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjhY-0005Bl-Bx; Thu, 23 May 2019 09:07:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjh8-00050C-Mz
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:07:36 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F90220856;
 Thu, 23 May 2019 09:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558602446;
 bh=R6tEjLas6MCcccFsLl09D1g/U6ahQt0pSWcx7kkBmNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MXYXGoMKGUoph3WRN7mBSSc7ka02CFH/wvKGoRlpJhc3nHyoVDOd7ZNLCmbBNIhQh
 X/ub24N0+AKD84WD8zHsy8My0v9Zo2NLmVNmwezRJqOzzqMFIXfjmeouRAP80wHI5q
 iX076YMfG2TdVL+EeR8DTgOB5WmxhQvIUyxEkrY0=
Date: Thu, 23 May 2019 17:06:29 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH RESEND 1/2] ARM: dts: imx53: Add capture-subsystem device
Message-ID: <20190523090627.GS9261@dragon>
References: <20190520132411.8540-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520132411.8540-1-festevam@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_020727_585554_5B20124D 
X-CRM114-Status: UNSURE (   7.58  )
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
 kernel@pengutronix.de, slongerbeam@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 10:24:10AM -0300, Fabio Estevam wrote:
> From: Steve Longerbeam <slongerbeam@gmail.com>
> 
> Add video capture_subsystem device node, and include both CSI ports.
> Prepare for adding sensors by adding the parallel sensor anchor endpoints
> to the CSI ports.
> 
> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied both, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
