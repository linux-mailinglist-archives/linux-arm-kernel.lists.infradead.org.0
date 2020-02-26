Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C142170A51
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:20:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r32opMRSEOptdvvHd6fnJI5DPP7a8l1MZLw0jik+CFI=; b=qD5LxawwVnuaY2
	DziW15R8naxNlmhTsKiTWofJXaIQQeAMlQZ9/IoUkTs4ekIWsrIEK76EgHw9G8PsI0jdzlCHYCAnI
	vmcoT4uHFLIqfKVaAtBTO+HhQfZVZVvZYN3BBthCyZPxKDjxemX8UEGHisJeyL90cvJnJHe6h5AKU
	8+6OVjf3ziIsFWx9jeblZ27nS7DLkwEvXXVOcswF8lTTyREluT6LycjYYZ7yODu/EmPe6YYNG08PK
	NcILX8F30lmiZLYQz8IszPCNg3c9543jk7RN+d8z/rZYXJz9zfzq8qrXtAhGyuco+rWlzKJ2V7eQA
	gOgqzVsc6V+tFOCFSG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j746p-0004MN-0W; Wed, 26 Feb 2020 21:20:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j746g-0004LV-Ep
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:20:40 +0000
Received: by mail-pl1-x641.google.com with SMTP id ay11so216899plb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:20:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9CiQT/kMWRksr1hp63TAHSJ3ufcI1s7CqCu0d0GyycE=;
 b=KMgLrDGOqPhlWy8vN1SiYK34JngSlLxfmRkvpdP4YzZIN1/C2V8KvjjmYG8rfLZUH2
 7/qMu72zpkd8084wIfLIAHfBTFgzJARt1WlkqBsSINx0LgKq2cPHamx6C50gtHb4VTU3
 kr0v2Fk7mTNQLqmhHAcdMhOuJ35NmAv6mLlBqR8VoaH375kXqWsMtrCOOp03EC0Lizkh
 28Jb9tZEwp5kwQO+SHBd0u0XVNczTAZj/6wY4deoV1KaKJ9uES7F/6YqxVSGCndYmTTk
 cBT6eL3yDtQtuwJ/feNVXnEOukvVapc3LjWedtoz8jzmqhqv/TymkH2ieN6BU7WUhYp9
 CYoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9CiQT/kMWRksr1hp63TAHSJ3ufcI1s7CqCu0d0GyycE=;
 b=NKVxUZxVPL75Mg1fLQ+t7YWkSvPuIqELxXFaRxlRk26T/doSqcKMjy4w4B5V6rYjcA
 ZEQP3Lg6/Scvxaqy1Z3TDWDCj9HY1V0eXiXnry9LtMPmgAT9KvRfR4AzBt1lItu3ohOk
 FDtDFTpIOvCQlgZwZMf/Q6h6d1RTkUj86aS87ubJgsQvTvdDEWUl20baRWZx4lJ53AH8
 Yvc40ETehjR3vH17zispBM9bZ5Mx3onG1s5xoldJNl8TgINoc3gdFpi/846eG2qBzgF9
 lbejf3qbQfmD3LlxYemJfVazIPA79GCNeUE1MAzLo6YPPazc3rTcvwX7iFcY9h9tblrJ
 fpPQ==
X-Gm-Message-State: APjAAAXdHk5LFPIxdbWmXv9tzljkWCz7MPG9LIXoKs/L7QrtTrq0tPNV
 ptNFbIQZEKoKfr3xVye9jGG5qA==
X-Google-Smtp-Source: APXvYqyeYsTqqUfBfSLT0KIkP0VpNMu2Qxg2PbwfXNSAx7Q2x0VcvWwMpOzy39BLAC8BKsBSbxHG2A==
X-Received: by 2002:a17:902:8ec6:: with SMTP id
 x6mr1160415plo.247.1582752035365; 
 Wed, 26 Feb 2020 13:20:35 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q66sm4375210pfq.27.2020.02.26.13.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:20:34 -0800 (PST)
Date: Wed, 26 Feb 2020 14:20:32 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 5/6] coresight: cti: Add in sysfs links to other
 coresight devices.
Message-ID: <20200226212032.GB30754@xps15>
References: <20200211105808.27884-1-mike.leach@linaro.org>
 <20200211105808.27884-6-mike.leach@linaro.org>
 <20200214225839.GB20024@xps15>
 <CAJ9a7VjLxTjH7OhRCoPSfiv28kSJ8=LEKSMRfwu41Du+HCh9pA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7VjLxTjH7OhRCoPSfiv28kSJ8=LEKSMRfwu41Du+HCh9pA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_132038_560712_BDAEF62C 
X-CRM114-Status: GOOD (  31.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 01:37:17PM +0000, Mike Leach wrote:
> Hi Mathieu,
> 
> On Fri, 14 Feb 2020 at 22:58, Mathieu Poirier
> <mathieu.poirier@linaro.org> wrote:
> >
> > On Tue, Feb 11, 2020 at 10:58:07AM +0000, Mike Leach wrote:
> > > Adds in sysfs links for connections where the connected device is another
> > > coresight device. This allows examination of the coresight topology.
> > >
> > > Non-coresight connections remain just as a reference name.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > ---
> > >  drivers/hwtracing/coresight/coresight-cti.c | 41 ++++++++++++++++++++-
> > >  1 file changed, 40 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > > index 9e18e176831c..f620e9460e7d 100644
> > > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > > @@ -441,6 +441,37 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> > >       return err;
> > >  }
> > >
> > > +static void cti_add_sysfs_link(struct cti_drvdata *drvdata,
> > > +                            struct cti_trig_con *tc)
> > > +{
> > > +     struct coresight_sysfs_link link_info;
> > > +
> > > +     link_info.orig = drvdata->csdev;
> > > +     link_info.orig_name = tc->con_dev_name;
> > > +     link_info.target = tc->con_dev;
> > > +     link_info.target_name = dev_name(&drvdata->csdev->dev);
> > > +     coresight_add_sysfs_link(&link_info);
> >
> > I understand there isn't much to do if a problem occurs so just catch the error
> > and add a comment to assert you're doing this on purpose.
> >
> 
> When I revisited this code I saw an imbalance between the case where
> the CTI is created first and the associated CSdev is created first.
> The result could be shutdown path where the CTI removes sysfs links
> after the csdev has been removed - which really shouldn't happen.
> Also we could try to remove a sysfs link that we failed to set in the
> first place - again not ideal
> 
> I've reworked this code to fix this, and now if the sysfs link fails
> to be set, then we do not set the association between CTI and csdev
> components.

Ok

> This is not sufficient to fail either component from registering, as
> we may have successfully registered previous associations with the
> same CTI.
>

That is also my opinion.
 
> It seems unlikely that the sysfs link could fail, but if it does, is
> it worth using a dev_warn() to at least log the failure?
>

Yes, that would surely be helpful. 
 
> Regards
> 
> Mike
> 
> 
> > > +}
> > > +
> > > +static void cti_remove_all_sysfs_links(struct cti_drvdata *drvdata)
> > > +{
> > > +     struct cti_trig_con *tc;
> > > +     struct cti_device *ctidev = &drvdata->ctidev;
> > > +     struct coresight_sysfs_link link_info;
> > > +
> > > +     /* origin device and target link name constant for this cti */
> > > +     link_info.orig = drvdata->csdev;
> > > +     link_info.target_name = dev_name(&drvdata->csdev->dev);
> > > +
> > > +     list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > > +             if (tc->con_dev) {
> > > +                     link_info.target = tc->con_dev;
> > > +                     link_info.orig_name = tc->con_dev_name;
> > > +                     coresight_remove_sysfs_link(&link_info);
> > > +             }
> > > +     }
> > > +}
> > > +
> > >  /*
> > >   * Look for a matching connection device name in the list of connections.
> > >   * If found then swap in the csdev name, set trig con association pointer
> > > @@ -452,6 +483,8 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> > >  {
> > >       struct cti_trig_con *tc;
> > >       const char *csdev_name;
> > > +     struct cti_drvdata *drvdata = container_of(ctidev, struct cti_drvdata,
> > > +                                                ctidev);
> > >
> > >       list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > >               if (tc->con_dev_name) {
> > > @@ -462,6 +495,7 @@ cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> > >                                       devm_kstrdup(&csdev->dev, csdev_name,
> > >                                                    GFP_KERNEL);
> > >                               tc->con_dev = csdev;
> > > +                             cti_add_sysfs_link(drvdata, tc);
> > >                               return true;
> > >                       }
> > >               }
> > > @@ -546,10 +580,12 @@ static void cti_update_conn_xrefs(struct cti_drvdata *drvdata)
> > >       struct cti_device *ctidev = &drvdata->ctidev;
> > >
> > >       list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > > -             if (tc->con_dev)
> > > +             if (tc->con_dev) {
> > >                       /* set tc->con_dev->ect_dev */
> > >                       coresight_set_assoc_ectdev_mutex(tc->con_dev,
> > >                                                        drvdata->csdev);
> > > +                     cti_add_sysfs_link(drvdata, tc);
> > > +             }
> > >       }
> > >  }
> > >
> > > @@ -602,6 +638,9 @@ static void cti_device_release(struct device *dev)
> > >       mutex_lock(&ect_mutex);
> > >       cti_remove_conn_xrefs(drvdata);
> > >
> > > +     /* clear the dynamic sysfs associate with connections */
> >
> > s/associate/associated
> >
> > > +     cti_remove_all_sysfs_links(drvdata);
> > > +
> > >       /* remove from the list */
> > >       list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
> > >               if (ect_item == drvdata) {
> >
> > With the above:
> >
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >
> > > --
> > > 2.17.1
> > >
> 
> 
> 
> -- 
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
