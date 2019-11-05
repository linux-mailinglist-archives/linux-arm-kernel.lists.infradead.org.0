Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486B1F03FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:18:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1uxro5FxSUU0KMKXQgDVKN87/pMfJQzk65/ClFFEkPg=; b=DeiNvzogRTGdVv
	3JNMEnTW8Xn+/EIki6J+Y3XnmPcZA/JHNGKFLfwydDmJr8M2H2rOvXWjFhRxxMbg/MlRemD6ChSno
	1nBk/OXKl8oqQsBNQmlMCAHn+ol3uwsZCWPzkPIs1TUVrLriRx9I+k7T9YHFiYlsCBireEcoM5Ion
	GT+Lg++FAsAlFsNinRXhLsrRrF5jsjjAWfaZr+CgGRR7CYWLCWePr9+2Jmj0MWhs3SPi1rdoZj/vn
	t/9gmwWYdlW7gOesyE0EOcpXdEZCmG7eqkw8vf02SGxgTy0pvnTnrmuJhNkAwfSVuiqnhOmTDuQIE
	BbPPCtx0EfK+1PsdeyUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2Tk-0005G2-S3; Tue, 05 Nov 2019 17:18:52 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2Tc-0005FK-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:18:46 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 932D31C0007;
 Tue,  5 Nov 2019 17:18:28 +0000 (UTC)
Date: Tue, 5 Nov 2019 18:18:27 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH v2] rtc: brcmstb-waketimer: add missed
 clk_disable_unprepare
Message-ID: <20191105171827.GE8309@piout.net>
References: <20191105160043.20018-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105160043.20018-1-hslester96@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_091844_885681_7D6311AD 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/11/2019 00:00:43+0800, Chuhong Yuan wrote:
> This driver forgets to disable and unprepare clock when remove.
> Add a call to clk_disable_unprepare to fix it.
> 
> Fixes: c4f07ecee22e ("rtc: brcmstb-waketimer: Add Broadcom STB wake-timer")
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> ---
> Changes in v2:
>   - Remove the check for timer->clk and add fixes tag.
> 
>  drivers/rtc/rtc-brcmstb-waketimer.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
