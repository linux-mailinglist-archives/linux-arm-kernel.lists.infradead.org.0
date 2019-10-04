Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9BCCB81A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=76ryO/tL4hbaaOWYG+/hyVHhtOB25gNG7UmbOTWR5gQ=; b=Nnad9j0J0EQbN3
	PPHmATVUjtYPysTmu51wSbaDc8JMacRRVRRQUhxcToK1op87L/jb8pMxlEgKnOmVlRmrTO8klpT2m
	K8zwzYR2Wz32hmWr/7nx/Na2dHnatlkG8aASLz5wwCKqiP6ud/0D9X5tRz478bTqZ0X9T/Lj2JMjc
	e8+/BPrnI2yniChufX6sqXrU2OSYuPEpC8GaaRQEryEIVJzT+Mq+YZWaD1ZMtxnqU7MZpmlopeQ6j
	N1/dYAmEBnIKG/vPcyt4Z7/uKUmh0LN9wx/XUdBfsfMENgwyPgfvrIchXEB9URewTONqinpr9NxE4
	f7NOEQJyLuFTlmyeUnJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKgJ-0000Fb-62; Fri, 04 Oct 2019 10:19:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKg4-00008y-Vb
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:19:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id t10so2921048plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 03:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5K8ntS607db3gqcfLzLCwoL2HyIKgHaBgtSTehSfcLE=;
 b=w2lrbEYz8OleWs+kIGG25hIQ6Mkbb0TcEeJPyG0izgHlgFzSjbTo3lRBMvA5CofCHI
 q3AZpFPRgx1RtXYCZIFQqWYpct3HCY4TRX4xN8s4IlefdcswauhLGdt9V1SWdfPIX1LX
 81NdCN96N0+sDL2G9st4ULRPBer3iZDtNEUHnWfiDec5toAnOqKYN5VStoqphHCu9qZb
 o2vdNM8E022EoBFoGwXoP4gvDZY9YGoieia6uFAw/Vja/RF+EEyLsjSZxDoZpoZhiPWr
 b272NpRYnrmweDTAO6cUyb19wWIVsv+BZC9NlDtnOck0TBuqquo7X6Yw2YCNw7wuNOZK
 A/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5K8ntS607db3gqcfLzLCwoL2HyIKgHaBgtSTehSfcLE=;
 b=CmLiMev9d5FuJ1BsEGaDPyQgZLKscOt7BwrJ/ddJyMIT/gLpUO7ltnu1HaNHvz5j8c
 wtnv0/2ifxyhxhSzzpkEP8RONnDfx0qzk52f33cQwYjiyrFLhR2D7UPWTkhAI2+4HEy1
 48f7zTAGSw/u0Zricdjp94fAjF8vfSlxs56hWo85LZkxUHRCNLs45rw2AVfI3hnzDZAz
 eYhPOcfVjDUZWRh8x9pCJZumMMc/6vzKsyBSAV2ksmt0GZgsOYxjfOHoS4F15nZBI/QS
 al5FP55gkumFAOVMbMOEywIhJpbh3UKQtU5kGjAscGSun+ZudFphg/Ot67CaHGe2es/Y
 hflw==
X-Gm-Message-State: APjAAAVbR/sWxBY+Hn1bDufhz9r6cPoMQ78mDBmkMLk5GzE03gh2uMS2
 Yhy2PxXIGa6ChnEuC8kDZoiM
X-Google-Smtp-Source: APXvYqwiC5YkVbZSFQhsV0TuxkbaLtwXuDVpgwko2JyvMa5X+ttRFjVAIJSxRXn6S4lVePeuh42YFQ==
X-Received: by 2002:a17:902:74c4:: with SMTP id
 f4mr5339677plt.296.1570184350880; 
 Fri, 04 Oct 2019 03:19:10 -0700 (PDT)
Received: from mani ([103.59.132.163])
 by smtp.gmail.com with ESMTPSA id o185sm9698225pfg.136.2019.10.04.03.19.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 04 Oct 2019 03:19:09 -0700 (PDT)
Date: Fri, 4 Oct 2019 15:49:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v4 2/2] media: i2c: Add IMX290 CMOS image sensor driver
Message-ID: <20191004101902.GA19685@mani>
References: <20191003095503.12614-1-manivannan.sadhasivam@linaro.org>
 <20191003095503.12614-3-manivannan.sadhasivam@linaro.org>
 <20191004092336.GL896@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004092336.GL896@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_031913_094844_E9A4329C 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Fri, Oct 04, 2019 at 12:23:36PM +0300, Sakari Ailus wrote:
> Hi Manivannan,
> 
> On Thu, Oct 03, 2019 at 03:25:03PM +0530, Manivannan Sadhasivam wrote:
> > Add driver for Sony IMX290 CMOS image sensor driver. The driver only
> > supports I2C interface for programming and MIPI CSI-2 for sensor output.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Could you remove the unneeded ret variable from imx290_power_on() and
> unneeded goto in the same function?
>

yep, sure.
 
> The MAINTAINERS entry belongs to the first patch adding new files.
> 

You mean the bindings patch? If then, sorry no. Usually the devicetree bindings
belongs to a separate patch and that is what perferred by Rob. I prefer the
MAINTAINERS entry in a separate patch but I've seen subsystems maintainers
asking to squash it with the driver patch. But squashing it with bindings
patch seems weird to me.

Thanks,
Mani

> Then I think this is good.
> 
> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
