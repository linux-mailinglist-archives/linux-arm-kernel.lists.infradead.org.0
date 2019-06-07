Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C262638BDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 15:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C31irzdIdXPsmEWzsm8A59zuTBC7K/Try5PB3cE0jWg=; b=qtlKUMIz4TXI8x
	sxcPBe51Q/+8TwV96oapTjZCxviGbtzYXKSqd584ZQWH7HyKBY46L5FH7tguePXeJwEWaj7NW64tZ
	E1HmQ4K57lSAhYTe5Nu8qjEAtiqKw9p7K+4Hl3B7dztaaHDtwCpBT/ydxbcjmS2FeG2Q8HJRy7GJY
	jgTC6u1Fkb57l0nqL2Bk62RVLbH1LyLiUQidNM2NHgFrwkIH1pcJ/cnnWMPC4ZC5u0nZTzFl3FP04
	cxXoXZP0qKGaW9SvFbCoUBF77BM0YGNMsH2qU4qOvkvyldm+dtTGT9dIErnGJ1a9+j2TawlQm86/y
	rTdCRMUFNsFhcJyM1U4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZF92-0006rW-Su; Fri, 07 Jun 2019 13:43:00 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZF8r-0006r3-Vf
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 13:42:51 +0000
Received: by mail-qt1-x841.google.com with SMTP id i34so2266803qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 06:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3WofkuIu9igDLPAQnWn5qFH+FdgRGt2W5dGohyfL5bo=;
 b=n1lnQGKkeKsiGRx9x7uI6LTN+EX3yAuiclsjYtuaV9QgzH5H2R3zrNbiuZAkVmtF5W
 WHntmEZBrSJEVOz7HgVLx+C2H9Ovsr/y7PbdFquDC+wOkaSQQaYPbBY2L49iwXc//rlW
 M2Rfi1KuameCfRdBGip+OvrCA9SXZA4gfspYu5F7ye4Dpg7wSJTd/6dvJ8rKyljga7Al
 7bE7zLDqoe7kMwCol673Fq9oKJW1/iPKomslzazl9QfJIzpD2gag0wSK9OShHlAcXBv2
 sfL81E7/N+KKk5xEDZkPjiB3yaXMKXC5yMRtvM/RxMTMlaWIFTw9VfRhiY/tTQftsXgH
 ECtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3WofkuIu9igDLPAQnWn5qFH+FdgRGt2W5dGohyfL5bo=;
 b=jYzg7eEuJpi1OHdsmMHBMKRpD17xWSGv4c9NbLkg2m/OslYoO3yQMr6AgHd2nEqRdo
 5zcX43Ffjnh2/+RU1dJSwqOpk/bm7wDdy2rQgtoXEszcElXI2QwjUr93zcCAKpgpW/YM
 v7PM4c3Q9JBu9mjjde05XhD+J5fBuNPB1HNDNAAS7KwFJ4poSW7TAIkwpnucyPI0a7/M
 iA+hptPqT4/mjfVTkLRIUFf6GtMU4YiINvxSi0A0siqp7h3X+lvh8UgPOkHBOvmwLrmI
 ZLDoUdj9UXbjY12sDv8GGj6Ji8LxVauRm4ZkMwbwVo88pprhS+zkgzt2VFpZsKjPcw9b
 D/2A==
X-Gm-Message-State: APjAAAWX3fI1beQ4zdv6RxT7Ql1c3M1I+jRkWLCu+5Jr6pUB/h+dw75J
 P0BAb9T59yepwNspYfjEPawA/Q==
X-Google-Smtp-Source: APXvYqzHgv638dIvZYD6LkRLDpzgnhtAJFigmQgwYChIND2SwnM+zmbtS1QVchVJkw/zzaI8x8einA==
X-Received: by 2002:ac8:2cbc:: with SMTP id 57mr44959069qtw.222.1559914968187; 
 Fri, 07 Jun 2019 06:42:48 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id x2sm997287qke.92.2019.06.07.06.42.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 06:42:47 -0700 (PDT)
Date: Fri, 7 Jun 2019 21:42:39 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] Documentation: coresight: Update the generic device names
Message-ID: <20190607134239.GH5970@leoy-ThinkPad-X240s>
References: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
 <20190603190133.GA20462@xps15>
 <99055755-6525-694e-a15d-5de7318a80da@arm.com>
 <20190607022136.GE5970@leoy-ThinkPad-X240s>
 <78c98c28-4f3f-825b-18e1-c71fb63a80eb@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78c98c28-4f3f-825b-18e1-c71fb63a80eb@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_064250_034167_5D33D051 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, corbet@lwn.net,
 linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Fri, Jun 07, 2019 at 09:40:48AM +0100, Suzuki K Poulose wrote:
> Hi Leo,
> 
> > > > >    A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
> > > > >    listed along with configuration options within forward slashes '/'.  Since a
> > > > >    Coresight system will typically have more than one sink, the name of the sink to
> > > > > -work with needs to be specified as an event option.  Names for sink to choose
> > > > > -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
> > > > > +work with needs to be specified as an event option.
> > > > > +On newer kernels the available sinks are listed in sysFS under:
> > > > > +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
> > > > > -	root@linaro-nano:~# ls /sys/bus/coresight/devices/
> > > > > -		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
> > > > > -		22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
> > > > > -		20070000.etr     20120000.replicator  220c0000.funnel
> > > > > -		23040000.etm  23140000.etm     23340000.etm
> > > > > +	root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
> > > > > +	tmc_etf0  tmc_etr0  tpiu0
> > > > > -	root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
> > > > > +On older kernels, this may need to be found from the list of coresight devices,
> > > > > +available under ($SYSFS)/bus/coresight/devices/:
> > > > > +
> > > > > +	root@localhost:/sys/bus/coresight/devices# ls
> > > > > +	etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
> > > > > +
> > > > > +	root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
> > > > 
> > > > On the "older" kernels you are referring to one would find the original naming
> > > > convention.  Everything else looks good to me.
> > > 
> > > True, but do we care what we see there ? All we care about is the location,
> > > where to find them. I could fix it, if you think thats needed.
> > 
> > IIUC, either the old kernel or newer kernel, both we can find the event
> > from ($SYSFS)/bus/event_source/devices/cs_etm/sinks/; the only
> > difference between them is the naming convention.
> 
> The cs_etm/sinks was only added with the CPU-wide trace support. So, if someone
> refers to this document alone and then tries to do something on on older kernel,
> which is quite possible for a production device running a stable kernel, {s,}he
> might be surprised.

Okay, understand now.  Thanks for clarification.

> > So the doc can use the same location to find event for both new and
> > old kernel, and explain the naming convention difference?
> 
> My question is really, does the naming convention matter ? What you see
> under the directory is the name. But yes, I am open to add a section to
> explain the fact that we changed the naming scheme, if everyone agrees
> to it.

The naming convention is not important for the developers who are
familiar with CoreSight development; later who is the first time to
access kernel CoreSight modules and don't know the history for naming
scheme, the related documentation will be friendly and reduce the
barrier for using it.

I have no strong opinion for this, seems to me another choice is to
describe the older kernel with old naming scheme, something like below:

On older kernels, this may need to be found from the list of coresight devices,
available under ($SYSFS)/bus/coresight/devices/ with old naming scheme:

    root@linaro-nano:~# ls /sys/bus/coresight/devices/
    	20010000.etf   20040000.funnel  20100000.stm  22040000.etm> Cheers
    	22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu > Suzuki
    	20070000.etr     20120000.replicator  220c0000.funnel
    	23040000.etm  23140000.etm     23340000.etm

    root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program


Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
