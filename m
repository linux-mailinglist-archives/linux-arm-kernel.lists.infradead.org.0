Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE8B186A04
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 12:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4MPM4mkLc03mGlNB+POzvaU0LnXXsqb8vVrRAbsf7cw=; b=JNvddK+/wuQ9I+
	NZMjtM6t1jLpP1ZhKs2UTJTZSPziQ8pyPaPH/+ryKAMcUjHsvsP4rFRPPAroOo4KmtaozSYyMrz7X
	Rlh8sXBDwlV2Am06StaeqMSpKBdZyUGeVva/nW9Z+6JJSA+CSH65BZO1DHkXvdBmDlbb3B4g2UKf6
	DS31BzFzWISXGczFpKGgADkLy1qPXhdlREzUpZt0c3uxlPa6XzWAPfe3Rq8gD7yqJVnTnbzfeOnSU
	vh/guqJ2eygceYOjeJVNbjo4xL1Ksz8BW0q2+QcnANv/4PfLHhixZGKMjDdzaLAETrgotvJgigWl5
	1DwctS5vsQvc/lQ/Q/QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDnrI-0004IK-OT; Mon, 16 Mar 2020 11:24:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnr9-0004GS-0y; Mon, 16 Mar 2020 11:24:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y8G04rfoWKUYzwsoZKQ5OhBejLp6XViSQs7CrSOGTTM=; b=faw7oWA9PeRP5tE0NxZu6Ae69
 ALbTYfZYMc/tDDu7yWb2uKEGnzTwABdSYzR7JInOVhXdKmP1u4ZlaVgFYI/Ebe1GBaWzwsK3RIOwN
 CzsPoCLYHOAWPiqKy67VxvfyJxJoMsV0mG8ycjXH2Cegk75D6qilj0DJatUzt1RIIEGnQZbT+4lty
 XGWzg+PXBEU08Tc7xPKkaoTM8YzESxwh0UKhzrgpYi8t0+41dZPtLPK3aNKqr9Pg1/ENqyD/YZA8r
 Sc5Q02sRfSdjuWfol0uBSOHQA0ZCwu+hMVgBN81KZL+7QvccD01s1rhw9Jt+bERARCTpJztK2p4sk
 kHuEXGswQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37186)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jDnqp-0000e3-Ef; Mon, 16 Mar 2020 11:24:07 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jDnqn-0001mN-BG; Mon, 16 Mar 2020 11:24:05 +0000
Date: Mon, 16 Mar 2020 11:24:05 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 1/2] rtc: mt2712: fix build without PM_SLEEP
Message-ID: <20200316112405.GN25745@shell.armlinux.org.uk>
References: <20200316104701.209293-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316104701.209293-1-alexandre.belloni@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_042427_066077_F046CF9E 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 11:47:00AM +0100, Alexandre Belloni wrote:
> Move SIMPLE_DEV_PM_OPS out of #ifdef to fix build issues when PM_SLEEP is
> not selected.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/rtc/rtc-mt2712.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/rtc/rtc-mt2712.c b/drivers/rtc/rtc-mt2712.c
> index 432df9b0a3ac..c2709c1602f0 100644
> --- a/drivers/rtc/rtc-mt2712.c
> +++ b/drivers/rtc/rtc-mt2712.c
> @@ -394,10 +394,10 @@ static int mt2712_rtc_resume(struct device *dev)
>  
>  	return 0;
>  }
> +#endif

Maybe use __maybe_unused for these, so they can still be compile-tested
rather than #if'd out?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
