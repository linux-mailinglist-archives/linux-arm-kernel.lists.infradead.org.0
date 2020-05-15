Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DA1D5524
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eeRVsxUggQc355Eb1S1AEZnGScW1QlbMy5AisNPo3aE=; b=Q7ivxNpgnHwPcd
	QnNpmEzMuzGg2LDIt/LPqWNC33zy8vIlSz5gKrNuxkb4VpaKb1RJpIQqCGDviuXgOV0Uaet4aV68g
	UWCgUp8l8/pskRI5rfdHX/fOVWb97jQb37bpdIx6aqjSPBzOJp/VOJo9R9URz0bXhHhtr0tWc5Czi
	ITmUv9DwPGhetbC2cfXGXvxHk9I4YtVwRsrqd8WKoSXwhc6JQiyr3jrIzDUxcB1ECLIh57fvidwXi
	sWsllgFg7gmXUdy5F2jCOzWmE1DYcvzyXLg6I5C4PWI5htbTUlgWlZh3kEbbhRbxfZHRXXU3rKMJm
	452UDyWcgvAmN8fI1MrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZccx-0001q4-G0; Fri, 15 May 2020 15:51:59 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZccm-0001p5-Sp
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:51:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id 23so1114938pfy.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 May 2020 08:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tA+EMjW1VLqca6EzHa71oII4dWMrB7DJ+VRMsfne5wg=;
 b=Z5NnE/EHKLhl5fNCT/O9KT6XzbynyEvJz0IEjG4Ijbev0911UWm6o7shtlZ9ZCiEYE
 3+Ra6r140tXwXQf2O8Y4mZSrEHubQvM1K8kEW149Jyhn7vvlRfJGkqAyrKJS4ykwH+Nr
 NACf2roUlNkiqMXaLbdbnpNc5Dv/G6nMYvQpXmnnyrpOba4sWPwwMLJ/5d7J8Mpxwg9v
 dLV3yMnFwI5fr+uyKHW45Ys5fTEmk4sGTEkpWMCh/9+geopKiVRYcZ5XH0adjQNiWiY2
 RFGAkWtildUxpjvVfrwdIXfjpqMBArYV/pTJXw+mkWHjQL1ikyCcGeDxgpgwK2YhIZWB
 pv0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tA+EMjW1VLqca6EzHa71oII4dWMrB7DJ+VRMsfne5wg=;
 b=kzbuLQZvp1qQPb72lGKCwZLuuRv/5vZvtc7QtZBTwDYeYj3S3T1dH8wwPEgC7Iangp
 xRT2Ple8SG65biewhUlAuy1uZyU/oRHX3y/f9sFkaBHouxelMjHWjiZPmaH+ytCI75Hc
 VH/68cdU0x2329Fid/O9yunSjDlZ/GP8dmcIbgeDnCro/y0tCL80X37+MFS6jvXUn9cn
 ALDgpqPQaVZWFCZd/Cug5UOtecVxbqxqTy3enja00RDT14TalTH4j76TJoGTLEoKEExL
 /Cgxf1ReKgzkQbl3Vlu3q19I9yARObgxFlhJpXlJVEM0vDDIRX0qrzdG4I+h7DM/m6Lr
 JFfQ==
X-Gm-Message-State: AOAM533JG3AchbgLDkzFr9mHJTyeeYR2pLaS0SOTXRGNxXNz/w4lXalP
 lKEUAr1Z2F3SmGF6+lgsb8hAcg==
X-Google-Smtp-Source: ABdhPJwlWcwKTqlkYO68NoSZ7gIvSmCybZaXRYhqcFQVJ2OHaE2OmcfLhgtaFFi19JTcmqicgEOGzQ==
X-Received: by 2002:a62:16d5:: with SMTP id 204mr3198305pfw.10.1589557907919; 
 Fri, 15 May 2020 08:51:47 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id h17sm2261399pfk.13.2020.05.15.08.51.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 08:51:47 -0700 (PDT)
Date: Fri, 15 May 2020 09:51:44 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCH] coresight: etm4x: Add support to disable trace unit
 power up
Message-ID: <20200515155144.GA7085@xps15>
References: <20200514105915.27516-1-saiprakash.ranjan@codeaurora.org>
 <20200514180055.GA29384@xps15>
 <2c932d57288508cc72a6ee323cf5595e@codeaurora.org>
 <CANLsYkxun2EWGeLU42ShbqkJMtCTh+Q9L3t=CXQR+-2zVuuJYg@mail.gmail.com>
 <a0f8f01f28506e10001885e387d3cb4f@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0f8f01f28506e10001885e387d3cb4f@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_085148_934459_5AFEF95E 
X-CRM114-Status: GOOD (  28.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Tingwei Zhang <tingwei@codeaurora.org>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 08:37:13PM +0530, Sai Prakash Ranjan wrote:
> Hi Mathieu,
> 
> On 2020-05-15 20:22, Mathieu Poirier wrote:
> > On Thu, 14 May 2020 at 12:39, Sai Prakash Ranjan
> > <saiprakash.ranjan@codeaurora.org> wrote:
> > > 
> > > Hi Mathieu,
> > > 
> > > On 2020-05-14 23:30, Mathieu Poirier wrote:
> > > > Good morning Sai,
> > > >
> > > > On Thu, May 14, 2020 at 04:29:15PM +0530, Sai Prakash Ranjan wrote:
> > > >> From: Tingwei Zhang <tingwei@codeaurora.org>
> > > >>
> > > >> On some Qualcomm Technologies Inc. SoCs like SC7180, there
> > > >> exists a hardware errata where the APSS (Application Processor
> > > >> SubSystem)/CPU watchdog counter is stopped when ETM register
> > > >> TRCPDCR.PU=1.
> > > >
> > > > Fun stuff...
> > > >
> > > 
> > > Yes :)
> > > 
> > > >> Since the ETMs share the same power domain as
> > > >> that of respective CPU cores, they are powered on when the
> > > >> CPU core is powered on. So we can disable powering up of the
> > > >> trace unit after checking for this errata via new property
> > > >> called "qcom,tupwr-disable".
> > > >>
> > > >> Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> > > >> Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > > >> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > > >
> > > > Co-developed-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> > > > Signed-off-by: Tingwei Zhang <tingwei@codeaurora.org>
> > > >
> > > 
> > > Tingwei is the author, so if I understand correctly, his signed-off-by
> > > should appear first, am I wrong?
> > 
> > It's a gray area and depends on who's code is more prevalent in the
> > patch.  If Tingwei wrote the most of the code then his name is in the
> > "from:" section, yours as co-developer and he signs off on it (as I
> > suggested).  If you did most of the work then it is the opposite.
> > Adding a Co-developed and a signed-off with the same name doesn't make
> > sense.
> > 
> 
> I did check the documentation for submitting patches:
> Documentation/process/submitting-patches.rst. And it clearly states
> that "Co-developed-by must be followed by Signed-off by the co-author
> and the last Signed-off-by: must always be that of the developer
> submitting the patch".
> 
> Quoting below from the doc:
> 
> Co-developed-by: <snip> ...Since
> Co-developed-by: denotes authorship, every Co-developed-by: must be
> immediately
> followed by a Signed-off-by: of the associated co-author.  Standard sign-off
> procedure applies, i.e. the ordering of Signed-off-by: tags should reflect
> the
> chronological history of the patch insofar as possible, regardless of
> whether
> the author is attributed via From: or Co-developed-by:.  Notably, the last
> Signed-off-by: must always be that of the developer submitting the patch.

Ah yes, glad to see that got clarified.  You can ignore my recommendation on
that snippet.

> 
> > > 
> > > >> ---
> > > >>  .../devicetree/bindings/arm/coresight.txt     |  6 ++++
> > > >>  drivers/hwtracing/coresight/coresight-etm4x.c | 29
> > > >> ++++++++++++-------
> > > >
> > > > Please split in two patches.
> > > >
> > > 
> > > Sure, I will split the dt-binding into separate patch, checkpatch did
> > > warn.
> > 
> > And you still sent me the patch...  I usually run checkpatch before
> > all the submissions I review and flatly ignore patches that return
> > errors.  You got lucky...
> > 
> 
> I did not mean to ignore it or else I wouldn't have run checkpatch itself.
> I checked other cases like "arm,scatter-gather" where the binding and the
> driver change was in a single patch, hence I thought it's not a very strict
> rule.

The patch has another warning for a line over 80 characters, that should have
been fixed before sending.  Putting DT changes in a separate patch is always
better for the DT people.  They review tons of patches and making their life
easier is always a good thing.

Regards,
Mathieu

> 
> Thanks,
> Sai
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
