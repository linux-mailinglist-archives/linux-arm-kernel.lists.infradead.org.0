Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6155207E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:22:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YesmAI5+wuPOTwmqrA/sXrZHEUlJG+9LmAYK2UrxFmE=; b=XKz0MW21ph4fgv
	hpxVqcGfmxGh851K/0nbGdtdNoan33MokwZMAC5cIdQmY+7Z0cFd88vVCPgCZl7gE8o/Or6CbsHfB
	29Ipzuk03CuONO55Z5Xk4lrB9kjPjp6qc4kyhQET5CIqsoxgQ3TVZES1yzShNqEmlniVhvIFQjOxy
	RjW4v6PKwnfmZtHkeXd9DPFuZI9q9r4s5u9/ZeGsdk50T5qWQRtGJw9RJXAJwUDy0GaxDAaESF4pB
	E3P6eOyz8IL13AQIudyK8B06KU9Lis3WF96K0MZ46Xg326VbODhkDrgAmvJRmz3GSD+K17FSpimr2
	l0xY0oYh3RGFo7akXKkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGKx-0006Qb-A8; Thu, 16 May 2019 13:22:19 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGKp-0006Pp-82
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:22:12 +0000
Received: by mail-yb1-xb44.google.com with SMTP id v78so1254379ybv.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4c/eHlt6Y2MSltoHNBiW76PU+BUs11lf5e6M64GBW24=;
 b=BXvLxUG+rrwtufrtsoEwanZPpxvShNZboOp0jN1+zafuntCSmyO8gX2zolP3Vr3pw+
 09rvmfQO1fjL1gJMr3BvEZUvig9MpmYjUXz9sT7RhtbjAVfqGqFxX9YPnCB0+MYmbYCr
 Y60LJ2FSL6+/MF8N88rCw7bO8t6sYffb43cyAbJsRaR9tzgdLZb2bfYHofuka3if48uV
 zeV+gQkP0sTel0HLOtdgrB/Brvt6XOcx1V4BJzM/12B6HSo/eJPxaGKYcfwdtan4y8j+
 ix85zsiqYKteo9ZwSpFslfF57pJdFciRFHkLNxrjKsWoJ3yri8+D7dVoRpCcqJsLKCUv
 v4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4c/eHlt6Y2MSltoHNBiW76PU+BUs11lf5e6M64GBW24=;
 b=Cn256FCWeHk6eH3mG5r7VMCzmEJzVowUQSMEhgtx96rbOeyLx6Iy6htFoNIqiQsobL
 kp74PWMGxmAfslett6BLPYzsGFiPo313t7sN8HImaTgYKTHmL7HF4aqAyqnuuWAt8SP9
 NYnUQHzo289wAQzXRbtb3Qm4nuJYCXJojaLFuIOAiteSoDzz74/dgWJAV+888ROlsmun
 EHWrGQAekS+JPH8SAvv/oWq40PyHndbjCRDjTPzrxLyDBV8WvhDUHAhPC13A9K+fUqaN
 6ZjLv68W1n7NqrHL7pUx4XaKr5wjLFYtvYou2ZjkdcD4CrcDGns5XoNEaDe4DnoCL/7Z
 U1lg==
X-Gm-Message-State: APjAAAVPXtqXirKCOkeRz1zIYlVzEvLMxcMzWAgi6/mEAlSnJ0v1Vvac
 Uy7aJOE+LQL0lOMnbb0DVANNxA==
X-Google-Smtp-Source: APXvYqw9jqhY5l1HANdlGqjcRlv2RmkEXMS5oeV+k8cx1Pw7T8hUhYJ4WqE5HLWtD0vmeuLgsJ2NTQ==
X-Received: by 2002:a25:2254:: with SMTP id i81mr21841202ybi.343.1558012929941; 
 Thu, 16 May 2019 06:22:09 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li483-211.members.linode.com.
 [50.116.44.211])
 by smtp.gmail.com with ESMTPSA id e6sm479541ywb.71.2019.05.16.06.22.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 06:22:08 -0700 (PDT)
Date: Thu, 16 May 2019 21:21:56 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 04/11] ARM: dts: ste: Update coresight DT bindings
Message-ID: <20190516132156.GF12557@leoy-ThinkPad-X240s>
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190508021902.10358-5-leo.yan@linaro.org>
 <CACRpkda4aEfgW6e7EfqC=FE_=QzKi5UTDLLzHEryQ6kpcKYzVg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkda4aEfgW6e7EfqC=FE_=QzKi5UTDLLzHEryQ6kpcKYzVg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062211_344347_1E8E3269 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Mike Leach <mike.leach@linaro.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Thu, May 16, 2019 at 02:53:48PM +0200, Linus Walleij wrote:
> On Wed, May 8, 2019 at 4:20 AM Leo Yan <leo.yan@linaro.org> wrote:
> 
> > CoreSight DT bindings have been updated, thus the old compatible strings
> > are obsolete and the drivers will report warning if DTS uses these
> > obsolete strings.
> >
> > This patch switches to the new bindings for CoreSight dynamic funnel and
> > static replicator, so can dismiss warning during initialisation.
> >
> > Cc: Linus Walleij <linus.walleij@linaro.org>
> > Cc: Lee Jones <lee.jones@linaro.org>
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> Will I need to carry this patch or will you send it to ARM SoC?

Please pick this patch into your tree and I will monitor rest
patches with other maintainers.  Thanks a lot!

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
