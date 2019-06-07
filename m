Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F6F382A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 04:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VGaYxoGqZ3Hzzb31WbP5pjJ44JXjvL1oF/NgI6VyfJM=; b=i1mqLKrHN29pZ0
	riP0BDRu8QXH/4NP4vzi9p4u8wo/7bjcXqM0bgrRpxn5JS00naJ70+x0l1Ke7tn5FuE7J0gTvMe+9
	E8waKAAkev5mrS7rrIW3aJJAfGMUvfQW2acqz8MSgE1NEuH/jf5B0LFHdGTsyj36dztkBiNSre9/T
	/gSAQb5ChFfTzrlwLwKwDZrN91qtPPBRQPbKBzD9QlC0Y6pNqYrqGjuZ/L/KvqkXihNzM/dKkmXLV
	JA6OiTLwkoJFY43FlkN8kapg3GXbp/zvJWi3H4LiltkgJFeAycC/SSHsEg6lCDMwQvl8XcmvLtcAp
	uI8MjBJ8J/ibUikEOK6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ4Vy-0004uS-2H; Fri, 07 Jun 2019 02:21:58 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ4Vm-0004u3-7A
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 02:21:47 +0000
Received: by mail-yb1-xb44.google.com with SMTP id x187so227557ybc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 19:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ypCRpLGfpU1UTauZw8qNAOgzbjXvHTif8VBKbvg8Yv0=;
 b=sbZ4UhtQKg5EgRtrg7vRjKJMr8vXoJDJ2sy0wlwAvzzyODxcsgFiYX+gdXWWxxMmc2
 t+dbJScuXiVZQoszVJ4kfPowotE8aLagjUWGrTfUytsiU/fKwNxGIpx/heREknnLhU8G
 bA6s09NdVszAHpONG5qJHWmBAF/l7+nVKgQiskJgH1g1cEaRq5k/3jjkLCak0ttca1gF
 M9LJjLvkeheLN0Imi7fmeNspKiJhpOl1dL6MQrwhEjzynL+ETosKxZfTQbKZcfy4/kC6
 9xnl9C5s8K7ckGISDEJ5xcw+YqRoFw0Dy9VUaoV+zJnC6pWCLCOd0JDFOB9UjbRBKN8n
 fa/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ypCRpLGfpU1UTauZw8qNAOgzbjXvHTif8VBKbvg8Yv0=;
 b=byYOavcnKnGFTKu6Tnafx2s2rguYm2Ha5bZj2m7O0UUU4WqkaEXEi/VDFU+QZPLCNP
 Z/laWgrdddz4EoCnO3sKMX9qI8qX+1h0fjbZBbndan6MgydHDi8hgumgfEFIbIdNh1zx
 TwhUQthQa432aSfSvIMgoRS4bwKcl65AdZrZZLx+eBiJZNUzw6q/DuzP5MjpgXIaQ4Bq
 KXpTL+F1AoovYBFSW/uRky6luwQjtvguuOj6s7VUTRc7lAlq4w6MZA+K4bY3mckKAezz
 ZoMyC7C7aR9+vP+8zkl8w6AL4PKSNeIe56m4GA3bNNSweROMXKqXb2OEeZQ4xU13TvpN
 99GA==
X-Gm-Message-State: APjAAAUktgUUjxf65h9+zOAhkB/wQZ44OB4233R5LOBFu+jU0AhJR1Or
 B7LgmAnnAbjelLfetsF2+X0vvA==
X-Google-Smtp-Source: APXvYqx8iXRsTTJwXfeqfERnwv6goa9I+YMKIbTRglHzyqAa1kuPeFPIxG0H3RXeycT45RqygpWihw==
X-Received: by 2002:a25:97c6:: with SMTP id j6mr24142048ybo.513.1559874104275; 
 Thu, 06 Jun 2019 19:21:44 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id j14sm215444ywi.7.2019.06.06.19.21.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 19:21:43 -0700 (PDT)
Date: Fri, 7 Jun 2019 10:21:36 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] Documentation: coresight: Update the generic device names
Message-ID: <20190607022136.GE5970@leoy-ThinkPad-X240s>
References: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
 <20190603190133.GA20462@xps15>
 <99055755-6525-694e-a15d-5de7318a80da@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <99055755-6525-694e-a15d-5de7318a80da@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_192146_324126_E222080A 
X-CRM114-Status: GOOD (  19.98  )
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
Cc: coresight@lists.linaro.org, corbet@lwn.net,
 linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Thu, Jun 06, 2019 at 05:21:19PM +0100, Suzuki K Poulose wrote:
> Hi Mathieu,
> 
> On 03/06/2019 20:01, Mathieu Poirier wrote:
> > Hi Suzuki,
> > 
> > On Thu, May 30, 2019 at 04:11:17PM +0100, Suzuki K Poulose wrote:
> > > Update the documentation to reflect the new naming scheme with
> > > latest changes.
> > > 
> > > Reported-by: Leo Yan <leo.yan@linaro.org>
> > > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Cc: Jonathan Corbet <corbet@lwn.net>
> > > Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > ---
> > >   Documentation/trace/coresight.txt | 34 +++++++++++++++++++---------------
> > >   1 file changed, 19 insertions(+), 15 deletions(-)
> > > 
> > > diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.txt
> > > index efbc832..7b427cf 100644
> > > --- a/Documentation/trace/coresight.txt
> > > +++ b/Documentation/trace/coresight.txt
> > > @@ -326,16 +326,20 @@ amount of processor cores), the "cs_etm" PMU will be listed only once.
> > >   A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
> > >   listed along with configuration options within forward slashes '/'.  Since a
> > >   Coresight system will typically have more than one sink, the name of the sink to
> > > -work with needs to be specified as an event option.  Names for sink to choose
> > > -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
> > > +work with needs to be specified as an event option.
> > > +On newer kernels the available sinks are listed in sysFS under:
> > > +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
> > > -	root@linaro-nano:~# ls /sys/bus/coresight/devices/
> > > -		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
> > > -		22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
> > > -		20070000.etr     20120000.replicator  220c0000.funnel
> > > -		23040000.etm  23140000.etm     23340000.etm
> > > +	root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
> > > +	tmc_etf0  tmc_etr0  tpiu0
> > > -	root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
> > > +On older kernels, this may need to be found from the list of coresight devices,
> > > +available under ($SYSFS)/bus/coresight/devices/:
> > > +
> > > +	root@localhost:/sys/bus/coresight/devices# ls
> > > +	etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
> > > +
> > > +	root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
> > 
> > On the "older" kernels you are referring to one would find the original naming
> > convention.  Everything else looks good to me.
> 
> True, but do we care what we see there ? All we care about is the location,
> where to find them. I could fix it, if you think thats needed.

IIUC, either the old kernel or newer kernel, both we can find the event
from ($SYSFS)/bus/event_source/devices/cs_etm/sinks/; the only
difference between them is the naming convention.

So the doc can use the same location to find event for both new and
old kernel, and explain the naming convention difference?

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
