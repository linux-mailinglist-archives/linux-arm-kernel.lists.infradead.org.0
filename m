Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA36F3B8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 16:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKZFlWfz4LONF6TTVZmiyMXDJUXfgl2Igh3z7gC0uK4=; b=D9p+YdZF4Y3VpZ
	nKadqQUSpoBmkbhAtTg4z9ilag9A7MTb7TSAvz61QNN+tEH+rpgArhnaQfxFH57H9seSm+2P51m35
	szwSJgZVFGwYvOOpqlYLPYRnj6tGYQNfCv83CMcp3EcktIeYgD0mYlcQ6i/fr0ntLo0n6BePbckKq
	ok16zMDSQxKW9vN+iNRmafNx++kqY1qf8wzSKZpnqPf99n1/Ql+CC5qX9LEtvb8+wZq07zFCbDbcZ
	+eKWwf0lJYmWAtMSCm1O7qPlgyiFQG3EYns7xwWSQ6HjmpQWSDG3y2EeQ56IucWIZTUHZvUQjMHFW
	1S1eyAcGS7MeS4vAJrSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpCwm-0006vn-JW; Sun, 21 Jul 2019 14:36:20 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpCwV-0006ul-Jg
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 14:36:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id b13so16142245pfo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 21 Jul 2019 07:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dUXYRm/uz8K2XBOkvg3xI+TWD4KiZR/gBR+tdrB+5/M=;
 b=u0nQEgsK5XW04foSXvHPhWir6Of8Loz+g4o1MYIxaxq55hOEcaaWNiMpb5HGyV69Mp
 zU7SxNdTK7YpclZx+ToLBA1sXGYxMOst7ZBHPvmZjezavtjt0dCkOh+1Syq5z41v1q81
 CNj+TO6N3SxamhlgyGY7RPZ8nVqLWTuxbi6oqlsp8HrU92n2O9ZGzCAHMy8MsvMJg7ct
 8oaWekIuk5dKn/WDFAM/VOTVjTAixOtgtR4sTEUIR/B0t5v8ujKPs43C0WXLTJfkRPwA
 +4IP3CoifdQcu33xzcgM5KKdfH/PyzLTXybDCY4YhqijHirIPsr/ICvB7G61iXgFTngb
 x7kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dUXYRm/uz8K2XBOkvg3xI+TWD4KiZR/gBR+tdrB+5/M=;
 b=pKCkBwiCV3v9o+kIszd2KdK9lskYTzqR08YDlYQ5uRnFJr7UetAanlxVXyEgyIE3v/
 EixmlK/JviiAo0UT9jRuxx6EOpdxSbOrwYSKU5X1Y7GjlzJFBaHSgCw17I2UN7k7o62D
 GoFlbtHAsNCP2O/s2pqDumYncRcrFg+351IWkYjl1dx3K/2SlhO9ymY21knLDcRi+BHP
 fVnPX66eBtiwNfpQfnF4dALjUaTEGJjC4AEZ2OFjs5gI0WVnJHTpGOSAaqwVU/tda19j
 6bn4t3I/nxuqzA5n7X8bnX8ntxUwZXg9ZIbI/vi1sSW77Ibq+5ESN+WFoTwBfOi9ys0x
 sEfw==
X-Gm-Message-State: APjAAAUATGyYMrdvwAG3332n6Lg3CHFURp8tGEYBo1HT7HbCFRHVvT6M
 0VMD0jhaBpOvPWZ7YYSvc3FlNQ==
X-Google-Smtp-Source: APXvYqy6pit+B+1VE5RtCzbLoThJOVpMtSj3TBYYM5jFRngMM3NfToD4eEpQOnXJCxl5W46gRJWmTA==
X-Received: by 2002:a63:774c:: with SMTP id s73mr66455192pgc.238.1563719761745; 
 Sun, 21 Jul 2019 07:36:01 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1433-81.members.linode.com.
 [45.33.106.81])
 by smtp.gmail.com with ESMTPSA id o3sm68687081pje.1.2019.07.21.07.35.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 21 Jul 2019 07:36:00 -0700 (PDT)
Date: Sun, 21 Jul 2019 22:35:53 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCHv8 5/5] coresight: cpu-debug: Add support for Qualcomm Kryo
Message-ID: <20190721143553.GA25136@leoy-ThinkPad-X240s>
References: <cover.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <e2c4cc7c6ccaa5695f25af20c8e487ac53b39955.1562940244.git.saiprakash.ranjan@codeaurora.org>
 <20190717165602.GA4271@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717165602.GA4271@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_073603_669212_7FB3A856 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Rajendra Nayak <rnayak@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 David Brown <david.brown@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Sibi Sankar <sibis@codeaurora.org>, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 10:56:02AM -0600, Mathieu Poirier wrote:
> On Fri, Jul 12, 2019 at 07:46:27PM +0530, Sai Prakash Ranjan wrote:
> > Add support for coresight CPU debug module on Qualcomm
> > Kryo CPUs. This patch adds the UCI entries for Kryo CPUs
> > found on MSM8996 which shares the same PIDs as ETMs.
> > 
> > Without this, below error is observed on MSM8996:
> > 
> > [    5.429867] OF: graph: no port node found in /soc/debug@3810000
> > [    5.429938] coresight-etm4x: probe of 3810000.debug failed with error -22
> > [    5.435415] coresight-cpu-debug 3810000.debug: Coresight debug-CPU0 initialized
> > [    5.446474] OF: graph: no port node found in /soc/debug@3910000
> > [    5.448927] coresight-etm4x: probe of 3910000.debug failed with error -22
> > [    5.454681] coresight-cpu-debug 3910000.debug: Coresight debug-CPU1 initialized
> > [    5.487765] OF: graph: no port node found in /soc/debug@3a10000
> > [    5.488007] coresight-etm4x: probe of 3a10000.debug failed with error -22
> > [    5.493024] coresight-cpu-debug 3a10000.debug: Coresight debug-CPU2 initialized
> > [    5.501802] OF: graph: no port node found in /soc/debug@3b10000
> > [    5.512901] coresight-etm4x: probe of 3b10000.debug failed with error -22
> > [    5.513192] coresight-cpu-debug 3b10000.debug: Coresight debug-CPU3 initialized
> > 
> > Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > ---
> >  .../hwtracing/coresight/coresight-cpu-debug.c | 33 +++++++++----------
> >  drivers/hwtracing/coresight/coresight-priv.h  | 10 +++---
> >  2 files changed, 21 insertions(+), 22 deletions(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-cpu-debug.c b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > index 2463aa7ab4f6..96544b348c27 100644
> > --- a/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > +++ b/drivers/hwtracing/coresight/coresight-cpu-debug.c
> > @@ -646,24 +646,23 @@ static int debug_remove(struct amba_device *adev)
> >  	return 0;
> >  }
> >  
> > +static const struct amba_cs_uci_id uci_id_debug[] = {
> > +	{
> > +		/*  CPU Debug UCI data */
> > +		.devarch	= 0x47706a15,
> > +		.devarch_mask	= 0xfff0ffff,
> > +		.devtype	= 0x00000015,
> > +	}
> > +};
> > +
> >  static const struct amba_id debug_ids[] = {
> > -	{       /* Debug for Cortex-A53 */
> > -		.id	= 0x000bbd03,
> > -		.mask	= 0x000fffff,
> > -	},
> > -	{       /* Debug for Cortex-A57 */
> > -		.id	= 0x000bbd07,
> > -		.mask	= 0x000fffff,
> > -	},
> > -	{       /* Debug for Cortex-A72 */
> > -		.id	= 0x000bbd08,
> > -		.mask	= 0x000fffff,
> > -	},
> > -	{       /* Debug for Cortex-A73 */
> > -		.id	= 0x000bbd09,
> > -		.mask	= 0x000fffff,
> > -	},
> > -	{ 0, 0 },
> > +	CS_AMBA_ID(0x000bbd03),				/* Cortex-A53 */
> > +	CS_AMBA_ID(0x000bbd07),				/* Cortex-A57 */
> > +	CS_AMBA_ID(0x000bbd08),				/* Cortex-A72 */
> > +	CS_AMBA_ID(0x000bbd09),				/* Cortex-A73 */
> > +	CS_AMBA_UCI_ID(0x000f0205, uci_id_debug),	/* Qualcomm Kryo */
> > +	CS_AMBA_UCI_ID(0x000f0211, uci_id_debug),	/* Qualcomm Kryo */
> > +	{},
> >  };
> >  
> >  static struct amba_driver debug_driver = {
> > diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
> > index 7d401790dd7e..41ae5863104d 100644
> > --- a/drivers/hwtracing/coresight/coresight-priv.h
> > +++ b/drivers/hwtracing/coresight/coresight-priv.h
> > @@ -185,11 +185,11 @@ static inline int etm_writel_cp14(u32 off, u32 val) { return 0; }
> >  	}
> >  
> >  /* coresight AMBA ID, full UCI structure: id table entry. */
> > -#define CS_AMBA_UCI_ID(pid, uci_ptr)	\
> > -	{				\
> > -		.id	= pid,		\
> > -		.mask	= 0x000fffff,	\
> > -		.data	= uci_ptr	\
> > +#define CS_AMBA_UCI_ID(pid, uci_ptr)		\
> > +	{					\
> > +		.id	= pid,			\
> > +		.mask	= 0x000fffff,		\
> > +		.data	= (void *)uci_ptr	\
> >  	}
> 
> I will pickup this patch - it will show up in my next tree when rc1 comes out.

I tested this patch on the mainline kernel with latest commit
f1a3b43cc1f5 ("Merge branch 'for-linus' of
git://git.kernel.org/pub/scm/linux/kernel/git/dtor/input"). FWIW:

Tested-by: Leo Yan <leo.yan@linaro.org>

P.s. Acutally I tested this patch for 5.2-rcx a few days ago and found
a regression for CPU debug module: I observed the CPU debug module
panic dump will stuck.  After I pulled to latest kernel code base the
CPU debug module can work well; also works well with this patch.  F.Y.I.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
