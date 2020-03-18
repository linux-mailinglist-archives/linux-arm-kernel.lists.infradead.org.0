Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B09F18A225
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVOW3EBMTB3WTzVwqg28mRYdKT/eoATk8wPnmjxJRRk=; b=q5C4C7v/5jkrua
	lh6p5tS7sz2aDdxEdQYFp4aDEos/wsjWrRKwUjwzLevj1BtTRtsPd3SX2tDcFpAQjKsWY1hWCJjvz
	YY8dHwvvFsEhc8P22caF1BAxDzr59/cMshvpYWPKJreQ403CR6Btntfy+XuUJOEClVHWGheTNBmc5
	3C9MCNHeZS4RtVwuGbbdtNWxvCQQTBSWP+0M4B1rdgPe8ak8DjpvGU0sZH6GJRU9NPTiMyzklNWYp
	PRo7oLEfOv57xTZvu1uf6um4Dh/ZEsG/csW2BbHnhUeFWyczIKZA/M9K7++J6EtO3kHJ3q5Dado6L
	tsJVXG0IFAjG93H9AIQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdBH-0001lY-6p; Wed, 18 Mar 2020 18:12:39 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdB8-0001l6-92
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:12:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id h11so2014413plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 11:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zc8e3F8aKkBkRLdoAfVahNzmIGP0Ifmt+x4WYR/4FYM=;
 b=BObFkvuXsZYKRTRUbcRxLWak56/FypliNA3RcCnJZGuLpFy7wrc97kUlPk8udUALq5
 ZOYtgVkpYBDvDarRT3+FMgPCglUiXPsYjZtGOhzZzsYX/LlVuX1h97lnwbkG55qCK8lV
 U8+1fQfJc7z1TIGqiodgPp7iSkx6BmiPES27QQI4x/djQIWMyRCTVFKzhzCmuV+PphhK
 aIlVxjKhWvkH0+ChqOJns2kU72sic0br8Ga1+CkqjU4dus13vMflTqFPM7SAkqx7mq4t
 AMjmFJPgRlolN1QsEbM88PVQc0aR0PzoLpHH0d02KHKuTQhULsYr6VBLKokxYGqDtPt0
 L+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zc8e3F8aKkBkRLdoAfVahNzmIGP0Ifmt+x4WYR/4FYM=;
 b=VKJsSS8SI5jL8CvBEFh80toNyOgNwaYZTwhz21yl3ExlzXBHs4kEJ00W3oVb33g5cD
 0CruXkqC2QIwY10WPOu07nmUoKgrC466BuQbTw2EuBUH7e9fazHBeXLgNUJ99JCNX2Ve
 MuwEmXgxcwCUdhAZYbOcR3eJ91O0igeXIXaPZd2OCJxFKoE7VismjGA8g8qCw/Fq4H0m
 /Ehf4cRqrwK3h19mjUiFYP7thkZLLQRCC1+r3qdwddxr0ktjWo30VFRWhAX6fcsGNloB
 1jF0tG8370YwUJ+25e/RprwJ+avXtY79P766k+Ek9hTGnHNjwg5cZ9qRWkdXcmf3biS+
 sJow==
X-Gm-Message-State: ANhLgQ18NALeHCLL0vmUr5GBX4sSW+A8NRWX/cgDB+7/6h0ZqE9nbNnL
 /413ZD6IaC7j6eweoiD8vSpNQw==
X-Google-Smtp-Source: ADFU+vt8AD++aXB0Ov1yHrk0wa9HmjHpKTx8yRP3M/CqVhHzh56BmyAHhnXrt3wlKilZBDmbsDWzwg==
X-Received: by 2002:a17:90b:1987:: with SMTP id
 mv7mr5782683pjb.148.1584555148726; 
 Wed, 18 Mar 2020 11:12:28 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id q43sm3115219pjc.40.2020.03.18.11.12.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 11:12:27 -0700 (PDT)
Date: Wed, 18 Mar 2020 12:12:26 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 01/13] coresight: cti: Initial CoreSight CTI Driver
Message-ID: <20200318181226.GA18359@xps15>
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-2-mathieu.poirier@linaro.org>
 <20200318132241.GB2789508@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318132241.GB2789508@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_111230_351698_EA99387E 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 02:22:41PM +0100, Greg KH wrote:
> On Mon, Mar 09, 2020 at 10:17:36AM -0600, Mathieu Poirier wrote:
> > From: Mike Leach <mike.leach@linaro.org>
> > 
> > This introduces a baseline CTI driver and associated configuration files.
> > 
> > Uses the platform agnostic naming standard for CoreSight devices, along
> > with a generic platform probing method that currently supports device
> > tree descriptions, but allows for the ACPI bindings to be added once these
> > have been defined for the CTI devices.
> > 
> > Driver will probe for the device on the AMBA bus, and load the CTI driver
> > on CoreSight ID match to CTI IDs in tables.
> > 
> > Initial sysfs support for enable / disable provided.
> > 
> > Default CTI interconnection data is generated based on hardware
> > register signal counts, with no additional connection information.
> > 
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> You didn't cc: all of them to get review comments?  I've added it
> above...

Thanks

> 
> And signed-off-by implies reviewed-by.

This set has been refined over several iterations.  I added my R-b to patches
that I had reviewed and did not need attentions anymore.  Since this is supposed
to be a chain of custody I decided to keep my R-b and append my S-b before
queueing in my tree.  I have seen this done many times before but will remove if
you think it is better.

> 
> > +/* basic attributes */
> > +static ssize_t enable_show(struct device *dev,
> > +			   struct device_attribute *attr,
> > +			   char *buf)
> > +{
> > +	int enable_req;
> > +	bool enabled, powered;
> > +	struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > +	ssize_t size = 0;
> > +
> > +	enable_req = atomic_read(&drvdata->config.enable_req_count);
> > +	spin_lock(&drvdata->spinlock);
> > +	powered = drvdata->config.hw_powered;
> > +	enabled = drvdata->config.hw_enabled;
> > +	spin_unlock(&drvdata->spinlock);
> > +
> > +	if (powered) {
> > +		size = scnprintf(buf, PAGE_SIZE, "cti %s; powered;\n",
> > +				 enabled ? "enabled" : "disabled");
> > +	} else {
> > +		size = scnprintf(buf, PAGE_SIZE, "cti %s; unpowered;\n",
> > +				 enable_req ? "enable req" : "disabled");
> 
> sysfs files should never need scnprintf() as you "know" a single value
> will fit into a PAGE_SIZE.

I've seen many patches using scnprintf() that were merged.  We can change this
to sprintf().

> 
> And shouldn't this just be a single value, this looks like it is 2
> values in one line, that then needs to be parsed, is that to be
> expected?

There is no shortage of files under /sys/device/ with output that needs parsing,
but this can be split in two entries.

> 
> Where is the documentation for this new sysfs file?

All the documentation for sysfs files are lumped together in a single patch [1]
that is also part of this set.

[1]. https://lkml.org/lkml/2020/3/9/643

> 
> > +const struct attribute_group *coresight_cti_groups[] = {
> > +	&coresight_cti_group,
> > +	NULL,
> > +};
> 
> ATTRIBUTE_GROUPS()?

As with all the other coresight devices, groups are communicated to
coresight_register() and added to the csdev->dev in that function.

> 
> > +static struct amba_driver cti_driver = {
> > +	.drv = {
> > +		.name	= "coresight-cti",
> > +		.owner = THIS_MODULE,
> 
> Aren't amba drivers smart enough to set this properly on their own?
> {sigh}

Would you mind indicating where?  builtin_amba_driver() calls
amba_driver_register() and  that doesn't set the owner field.

Thanks,
Mathieu

> 
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
