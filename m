Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9052F5F32C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 09:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzOkVctlRkPjzwmox5rb++3Byt/y8sVKFoYCNIXELkY=; b=I7Dws89dWl4X2Q
	WlFgVNzMpG6iieoIJdjOj+oyokhSJVX7vMdy38uAs9mAvWdHFnSmj2QNRkUdZ/vDksWpJlkdXk/9U
	80YZY1Z01EhVmMgaRug3aVXT3bH3DQNPOJHfQNyaP9AeJ53B0O9OyOfp1i+l2dQ2ibjz6WbUUBwmG
	/jgpc42tAxwehXEJ9DrFAdLtcT3JV5yxgsstRfqXVN7ymXietR74on7eQfc0TrYV/jRXtQbuKR2Ro
	YoyOCaJ+8qai3afBnuISmqbaiflW25LnuX4TiXe+AVwMNxJSUQi9Yu0LrVEvNQLDI2I2h+lHM2gsr
	NkfAiIDtGKGyK1ku6O3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hivmY-0005h3-8Q; Thu, 04 Jul 2019 07:03:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivlS-0005fu-2n
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 07:02:46 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9F8A2133F;
 Thu,  4 Jul 2019 07:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562223761;
 bh=0oIb/xCT3XLGQm//gpuwzJhTfVxSSNj2HGbdu4q2mfo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kjkmVNUHh0i1R1QHDk14Ed8hJdp8t230pxRxwJn6cLt81ivp639YfvpxGTRi7tn0h
 /J/az8RDFGBthzhsjX6ZC/A/W8fGVcfRvEDa35V/zj0ML+uR/v7GTNksOtZd+31Wkp
 L//KiTeWpyM1eP0YTr9N/I570G2ubODK7xbbowhI=
Date: Thu, 4 Jul 2019 09:02:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv5 1/2] dt-bindings: coresight: Change CPU phandle to
 required property
Message-ID: <20190704070239.GB32707@kroah.com>
References: <cover.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <2afedb941294af7ba0658496b4aca3759a4e43ff.1561659046.git.saiprakash.ranjan@codeaurora.org>
 <CANLsYkxvh+qUDvqG45o7qh61Noq=a=BJ4-p68ipdzxYt6n5bNA@mail.gmail.com>
 <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8fb5947e-acf8-faff-5594-2a32151ebee7@codeaurora.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_000242_565787_1EDC3F54 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Rajendra Nayak <rnayak@codeaurora.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 12:13:40PM +0530, Sai Prakash Ranjan wrote:
> On 7/4/2019 1:32 AM, Mathieu Poirier wrote:
> > Hi Greg,
> > 
> > On Thu, 27 Jun 2019 at 12:15, Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> > > 
> > > Do not assume the affinity to CPU0 if cpu phandle is omitted.
> > > Update the DT binding rules to reflect the same by changing it
> > > to a required property.
> > > 
> > > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > 
> > I'm all good with this patch - can you pick this up for the coming
> > merge window?  If not I'll simply keep it in my tree for 5.4.
> > 
> > Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > 
> 
> I think you missed adding Greg, adding him now ;)

I don't see any patch here for me to actually take :(

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
