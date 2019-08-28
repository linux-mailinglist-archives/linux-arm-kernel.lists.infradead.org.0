Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4FCA0251
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zz85zfSooNnqnAOgUYwKNP0+bNV7YtS4c5JF7faYM1E=; b=QLHPrzbAvWQq4h
	fAElZwjIbURX1fAvmi0+lsepHYAFbdeuVl7OU/mU8+JjWqticQ1+V5ctl0pEhicUSUPP7v+zPAh9A
	PWfs+t/Om0dP3Gjb7ymZWMbrKDj+Shy6Q7R7MgonX1WSfWdXeyViwuwvTRUVOg6OWX+pYHB+kwsFs
	lA+Y4IHPJua4R3nK244q9rRMb0ts4jm/KsgaaGnBk5If5Dvzo3Q5FaQeeFW6S0Un8yMEaPj/2flOR
	W/w6ELwge8j+w6zPofyLOCkWkSaipVCvLaACnDw4MZzRqmiBIcZ643KGLksaR0z7Y1GmVPfuuYo57
	FXxRKpgonVc+vrEMiWUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xVr-0008U6-Qm; Wed, 28 Aug 2019 12:57:24 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xVh-0008Tm-JZ
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:57:15 +0000
Received: by mail-qt1-x843.google.com with SMTP id u34so2853265qte.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 05:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o1DwZzEtFbDqE+HotFGGh4Yfc3ybukBgxMhxavQT+kM=;
 b=Ic9IwM42CLt7bvMtH9xFcb5LZqdzf74aHXU7VwlFM9UAwSINFUp8nrya7NtTN1nl04
 121s7ggsh8a7al+ftVHvAzL3G847qQLqSqecVs4HomdkFeNK8YthCokHOrWTtriixoke
 1PQRksI9o/u8aPws9nBw2Zu415LAHiNm5ezldbsO3hF680jc71H5g0I16Ir74Z86g16d
 8r+UweelvrEUn59KnGRtv4TyoQBWfwAqM4Z73gA/jiCjqla5ZdUz58BRILqpxLUvPqGJ
 486m8+QwLhH+fR4UOnxs4ikmQ7tMcw9exd/vABRaZ25kgU1dk5wA12j2bKJviLqpg7Xd
 iWZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o1DwZzEtFbDqE+HotFGGh4Yfc3ybukBgxMhxavQT+kM=;
 b=AJQLEZ7rCW/SidEms5IQqAhuRTSnvQCI7viTh5B16rvmbubyWRqTC+6K/6ELx8GKKd
 yAski5ELKxRJo504XKY7Rf8tb2xhMZ76ocifM/9SBWCWwTJVoB9Jy/PvtqmnxbqRUMrU
 H3zy35FzYWwKnz6TITRb/MnoSqsjxlitU52hBTtDf8Wzh6Q7mh1XGJFwTeBPZrzBvg91
 Ne9tdgMQvy6Q0c9MFjMOPIzIakEueSbnVXtsRn0MKTf7IhX+YgvNVB06jbQIAVBr+r2i
 dk/xsRqewmcaowZBDg4SRPr/tufcebOx+ZC59m9mhCJmgtgeQca0+YMY4jLQh89fTgjx
 dmmQ==
X-Gm-Message-State: APjAAAX0TDb4iwMQtD2tVxC/0aA1BVNYcZv1IU/MqDbyqYu0DrYDvbsx
 BB1fhyiIE3LJnDyX2Jt6E/LsrIR+LZL1vu5+SdA6DA==
X-Google-Smtp-Source: APXvYqxKWf3JSzlqsz66v/Zgfpf4ovDaMdB862VtXEjqKFUuOpZjhTSnRZjznxSc/2+bzSFPBPOpGpTmc2d8hYXtpaU=
X-Received: by 2002:ac8:51c4:: with SMTP id d4mr4045194qtn.176.1566997030605; 
 Wed, 28 Aug 2019 05:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190819205720.24457-1-mike.leach@linaro.org>
 <20190819205720.24457-6-mike.leach@linaro.org>
 <20190828033654.GE26133@leoy-ThinkPad-X240s>
In-Reply-To: <20190828033654.GE26133@leoy-ThinkPad-X240s>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 28 Aug 2019 13:56:59 +0100
Message-ID: <CAJ9a7VhtTCW3_eGOrBi76-QgVhthKCtuA5FzXCSy9rQXvrc3bQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] coresight: etm4x: Improve usability of sysfs API.
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_055713_654207_E799D874 
X-CRM114-Status: GOOD (  25.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu, Leo,

Will split & fix comments.

Thanks

Mike

On Wed, 28 Aug 2019 at 04:37, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Mon, Aug 19, 2019 at 09:57:17PM +0100, Mike Leach wrote:
> > Some changes to make the sysfs programming more intuitive.
> >
> > 1) Setting include / exclude on a range had to be done by setting
> > the bit in 'mode' before setting the range. However, setting this
> > bit also had the effect of altering the current range as well.
> >
> > Changed to only set include / exclude setting of a range at the point of
> > setting that range. Either use a 3rd input parameter as the include exclude
> > value, or if not present use the current value of 'mode'. Do not change
> > current range when 'mode' changes.
> >
> > 2) Context ID and VM ID masks required 2 value inputs, even when the
> > second value is ignored as insufficient CID / VMID comparators are
> > implemented.
> > Permit a single value to be used if that is sufficient to cover all
> > implemented comparators.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  .../coresight/coresight-etm4x-sysfs.c         | 24 +++++++++++++------
> >  1 file changed, 17 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > index 3bcc260c9e55..baac5b48b7ac 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm4x-sysfs.c
> > @@ -297,8 +297,6 @@ static ssize_t mode_store(struct device *dev,
> >
> >       spin_lock(&drvdata->spinlock);
> >       config->mode = val & ETMv4_MODE_ALL;
> > -     etm4_set_mode_exclude(drvdata,
> > -                           config->mode & ETM_MODE_EXCLUDE ? true : false);
> >
> >       if (drvdata->instrp0 == true) {
> >               /* start by clearing instruction P0 field */
> > @@ -972,8 +970,12 @@ static ssize_t addr_range_store(struct device *dev,
> >       unsigned long val1, val2;
> >       struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> >       struct etmv4_config *config = &drvdata->config;
> > +     int elements, exclude;
> >
> > -     if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> > +     elements = sscanf(buf, "%lx %lx %x", &val1, &val2, &exclude);
> > +
> > +     /*  exclude is optional, but need at least two parameter */
> > +     if (elements < 2)
> >               return -EINVAL;
> >       /* lower address comparator cannot have a higher address value */
> >       if (val1 > val2)
> > @@ -1001,9 +1003,11 @@ static ssize_t addr_range_store(struct device *dev,
> >       /*
> >        * Program include or exclude control bits for vinst or vdata
> >        * whenever we change addr comparators to ETM_ADDR_TYPE_RANGE
> > +      * use supplied value, or default to bit set in 'mode'
> >        */
> > -     etm4_set_mode_exclude(drvdata,
> > -                           config->mode & ETM_MODE_EXCLUDE ? true : false);
> > +     if (elements != 3)
> > +             exclude = config->mode & ETM_MODE_EXCLUDE;
> > +     etm4_set_mode_exclude(drvdata, exclude ? true : false);
> >
> >       spin_unlock(&drvdata->spinlock);
> >       return size;
> > @@ -1787,6 +1791,7 @@ static ssize_t ctxid_masks_store(struct device *dev,
> >       unsigned long val1, val2, mask;
> >       struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> >       struct etmv4_config *config = &drvdata->config;
> > +     int nr_inputs;
> >
> >       /*
> >        * Don't use contextID tracing if coming from a PID namespace.  See
> > @@ -1802,7 +1807,9 @@ static ssize_t ctxid_masks_store(struct device *dev,
> >        */
> >       if (!drvdata->ctxid_size || !drvdata->numcidc)
> >               return -EINVAL;
> > -     if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> > +     /* one mask if < 4 comparators, two for up to 8 */
>
> One maks is <= 4 comparators.
>
> > +     nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
> > +     if ((drvdata->numcidc > 4) && (nr_inputs != 2))
> >               return -EINVAL;
> >
> >       spin_lock(&drvdata->spinlock);
> > @@ -1976,6 +1983,7 @@ static ssize_t vmid_masks_store(struct device *dev,
> >       unsigned long val1, val2, mask;
> >       struct etmv4_drvdata *drvdata = dev_get_drvdata(dev->parent);
> >       struct etmv4_config *config = &drvdata->config;
> > +     int nr_inputs;
> >
> >       /*
> >        * only implemented when vmid tracing is enabled, i.e. at least one
> > @@ -1983,7 +1991,9 @@ static ssize_t vmid_masks_store(struct device *dev,
> >        */
> >       if (!drvdata->vmid_size || !drvdata->numvmidc)
> >               return -EINVAL;
> > -     if (sscanf(buf, "%lx %lx", &val1, &val2) != 2)
> > +     /* one mask if < 4 comparators, two for up to 8 */
>
> One maks is <= 4 comparators.
>
> > +     nr_inputs = sscanf(buf, "%lx %lx", &val1, &val2);
> > +     if ((drvdata->numvmidc > 4) && (nr_inputs != 2))
> >               return -EINVAL;
> >
> >       spin_lock(&drvdata->spinlock);
> > --
> > 2.17.1
> >
> > _______________________________________________
> > CoreSight mailing list
> > CoreSight@lists.linaro.org
> > https://lists.linaro.org/mailman/listinfo/coresight



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
