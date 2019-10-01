Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14E6C314F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2cCHxLdG3RG5DQCmcSHQt5HjooRtvC30OFgDSy/8cQ=; b=eEQrBFQbIfj58H
	1SrRcOeuoIaSc8ztIn068besv/LWuuO6MRp9y9vkyYT3DmmAX10XN1hZQJBQ3PtdSfsg/VkTLatcc
	h6eUAkz71EbB8Js9I6NACJaHY87k4E5o4KRMd+lHqvAPU10o7uAuRSgq6uEYOHo+YnldwJlyoW9gQ
	6vFkg+tCOJMbIgXz0wkw20mAIQE8BUFDvgCMq+nJ/8ktui9zZ+e8CpILT49xiVLo63dRqKFoc9Zqk
	knrUlNt7uwMSAr4S+T6dJQGPEvYTKDtHO9vqj7ljt5LGYc75F2H+PyE4UOF0gAW+gMGRKfWuD+Z2V
	+POB2wbf48YE+bCEkd9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFMa-0004Wd-8Y; Tue, 01 Oct 2019 10:26:36 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFMR-0004VD-14
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:26:29 +0000
Received: by mail-io1-xd41.google.com with SMTP id u8so46485597iom.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 03:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7dJvQt2XADSP58gshAp3mouDAHa/fpvN+3lt4rGrgN0=;
 b=MW/6KBStB07v5dXk4ZigslPFPugYyqpQ/ScdkbBrgCiKH3o4AbFDQ1qwAd32i3L1Ut
 qcFaTGc/lhLrM65+N2L6mT4GH2quV73dZ3OW0f6J3hfFwX4x/zkGKr+2BK03MWo28DBy
 KNoWV2aGvRV8NEKSqzFK7sgsmnnNqr38yDafY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7dJvQt2XADSP58gshAp3mouDAHa/fpvN+3lt4rGrgN0=;
 b=N8/4EeyaDs2o6i7jx7/GVe/mWPuaIIELqBkSu2yzzU5iZ3ombD+6KQY+PA9JAhTagN
 NDP1pKD/rUxNSqHshfMQnM0BzKKkPK24FwXsbSyFJ9L56zPVHGntUJOAwBuJYQx0g7a6
 N/ZFp1L1xK/tSVbQFduXdiO5+dMVZphL1hUd9Ly5KzQUW0aq6dsbfScd5ZvKZtcc2M3x
 mHKKaksX/21WrCugs3oxKO9YOZ7FZ8B0Suyzh8EKLIx/HCIGNjxDEFOIElYrFAr7occG
 3OPoZjlUGu1G+TdOprjKPhGdMq6Vay6+o4d/VuVE6TeMlroV/8KYvYt1gG9VCmVF7Sez
 rlOg==
X-Gm-Message-State: APjAAAWCo2OYOaxHSKQZlc7imefYMRsexx2AT2918CcuNjdX0dqOW/0w
 Q/YDtYE9gZskd0o/kUT2YwurrjuGu8Z47uwDO6kpSg==
X-Google-Smtp-Source: APXvYqyE36IiztYNTVOMhjmeAHCFxs73KTI2V5Ei5/NiBQ6XuIFOw+4jhZSV1acSSHmC1qFffPrmWbSyxu+uPa3yx0A=
X-Received: by 2002:a5d:89da:: with SMTP id a26mr23534629iot.61.1569925585423; 
 Tue, 01 Oct 2019 03:26:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
 <20190919052822.10403-2-jagan@amarulasolutions.com> <6797961.eJj5WIFbM9@phil>
In-Reply-To: <6797961.eJj5WIFbM9@phil>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 1 Oct 2019 15:56:14 +0530
Message-ID: <CAMty3ZDKaywoPxCSD-5N2pLjtGmZ-dZ7ZgUOJqiB1V_9rfR26A@mail.gmail.com>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: Fix rk3399-roc-pc pwm2 pin
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_032627_494595_75A0BDC7 
X-CRM114-Status: GOOD (  18.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Da Xue <da@lessconfused.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Akash Gajjar <akash@openedev.com>,
 Levin Du <djw@t-chip.com.cn>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

On Mon, Sep 30, 2019 at 2:51 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi Jagan,
>
> Am Donnerstag, 19. September 2019, 07:28:17 CEST schrieb Jagan Teki:
> > ROC-PC is not able to boot linux console if PWM2_d is
> > unattached to any pinctrl logic.
> >
> > To be precise the linux boot hang with last logs as,
> > ...
> > .....
> > [    0.003367] Console: colour dummy device 80x25
> > [    0.003788] printk: console [tty0] enabled
> > [    0.004178] printk: bootconsole [uart8250] disabled
> >
> > In ROC-PC the PWM2_d pin is connected to LOG_DVS_PWM of
> > VDD_LOG. So, for normal working operations this needs to
> > active and pull-down.
> >
> > This patch fix, by attaching pinctrl active and pull-down
> > the pwm2.
>
> This looks highly dubious on first glance. The pwm subsystem nor
> the Rockchip pwm driver do not do any pinctrl handling.
>
> So I don't really see where that "active" pinctrl state is supposed
> to come from.
>
> Comparing with the pwm driver in the vendor tree I see that there
> is such a state defined there. But that code there also looks strange
> as that driver never again leaves this active state after entering it.
>
> Also for example all the Gru devices run with quite a number of pwm-
> regulators without needing additional fiddling with the pwm itself, so
> I don't really see why that should be different here.

I deed, I was supposed to think the same. but the vendor kernel dts
from firefly do follow the pwm2 pinctrl [1]. I wouldn't find any
information other than this vensor information, ie one of the reason I
have marked "Levin Du" who initially supported this board.

One, think I have seen was this pinctrl active fixed the boot hang.
any inputs from would be very helpful.

Levin Du, any inputs?

[1] https://github.com/FireflyTeam/kernel/blob/stable-4.4-rk3399-linux/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi#L1184

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
