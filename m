Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4896718A22E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 19:15:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3Eat8tqRUDsZHEC78O1vyKcWk4n+DsviyXNFRIzFvI=; b=m09dEOnD4jl5xL
	9IvRuR2x/VkEwww0cXQTG2LYw8oqbQnrRPCI7966i+nYoowtLXYZtFdtmiEsLUYo6lU4xb8cZy+EC
	FFWPmvkeArCM6DI4MXJv9TLUk10IIU4QqjDB4Gb/U3LAafNzW0d7rDMrB15Ia1pnF1sz4pcD88UXu
	dwvU/9fY38fJF+PsKZx6uRdrdrnsQ7R4Iii3k/2tlCWxY6iajZ3Uxljd5HPXMlHwo9c4oy+fxnOmi
	2h/7y2G2W/k/rRMvP5Co38YlumrJskyTjX911dBCw7xRsmvQiqdisQANaxs06EVdkz41cL91K/jx3
	kwxYoF/q/2tt+m4MrBJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEdE5-0003dQ-JK; Wed, 18 Mar 2020 18:15:33 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEdDs-0003cm-8m
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 18:15:21 +0000
Received: by mail-io1-xd41.google.com with SMTP id w7so10581372ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Mar 2020 11:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G3ezxdprHPC/cW/uKAbsl7U/GdK+KSS74BcxSx0wptQ=;
 b=WLVVjmm/0PMM1l1p6mDIVriTyJMJ0Th4tquzPahs8W/LnzwtxpNz6jDrsqwMj83DYl
 rt1/0GMd0/IJApxkA6y+pEOMFi3PRsiD7CWqdRV3C4xQq1BtuGfPkyaFw5GY4UTpRh+t
 3pukT1OWurinsg+ucUwnnUpmNhwFxNo01T3dS/9Y1VROoU+3qlJoveEMhYdFa340GYrt
 JNWJZnHaGG3/awfsFukSXDJorBi3REn7/YvXWulIyHgrno7QTqIc8D+fJHecyIA5Rw0F
 aDuXkjrXNLfDlCm56VR7BkduHGPR7AhHAepYAK6QBJTHF1WX2FO660zP0sr33jJ5QkjY
 1oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G3ezxdprHPC/cW/uKAbsl7U/GdK+KSS74BcxSx0wptQ=;
 b=hXvaqD4KCBFxDP3Alv+Y1rqG6jqEqcApZBei7R+NuHIor3rJjVHP9NoRznOT26KXqR
 LtcNIBoeK6dAZ4MCgw9WGe09cXYxj1hiAZWFP5vu/s1LpnRTXLPcG/6O+W1tdRG8tgXd
 6mTWn8YY4ILEU8ivXPuAHAZQtsW8Qy6J1eDIPl3woat5isgPeL8ZUbaT3YXimeZVk4fA
 jqBn3x5bkE6bvLT9nYG/fgQU0rG2f5CvJ0YuKCHj9E9QeXQXKPDQoZ9mtcOeMAfW5G4r
 o4PgJjiyZ4vIq6B6enmr+OiVeSrNs+DCxyr1P5IacT0XTyWa4o4VIFXwBRULFyPiJZY8
 4DuA==
X-Gm-Message-State: ANhLgQ2nBp0SeaPBZXAP1m7+MJxnDFVZHqzhwKn9y+muNcXM8v74SvVS
 ZAHrYUG7djwhER9paZVO+Zr2Q1S1UkMP1cID78HsdQ==
X-Google-Smtp-Source: ADFU+vsy1Xcz73+8WOjXa+8SolKRUHeZY/s0KA74nqezOvrFq97BgP/0qG96ERIthIjEQ+53e3HMW0S91FCfhZMyXik=
X-Received: by 2002:a05:6638:f01:: with SMTP id
 h1mr5469337jas.36.1584555315208; 
 Wed, 18 Mar 2020 11:15:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200309161748.31975-1-mathieu.poirier@linaro.org>
 <20200309161748.31975-2-mathieu.poirier@linaro.org>
 <20200318132241.GB2789508@kroah.com> <20200318181226.GA18359@xps15>
In-Reply-To: <20200318181226.GA18359@xps15>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Wed, 18 Mar 2020 12:15:04 -0600
Message-ID: <CANLsYkxxUuaAZEy8fHm1aWDocdaRg1rUKan6tQQh6+T4afTxFg@mail.gmail.com>
Subject: Re: [PATCH 01/13] coresight: cti: Initial CoreSight CTI Driver
To: Greg KH <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_111520_318373_B07EE19F 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 18 Mar 2020 at 12:12, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Wed, Mar 18, 2020 at 02:22:41PM +0100, Greg KH wrote:
> > On Mon, Mar 09, 2020 at 10:17:36AM -0600, Mathieu Poirier wrote:
> > > From: Mike Leach <mike.leach@linaro.org>
> > >
> > > This introduces a baseline CTI driver and associated configuration files.
> > >
> > > Uses the platform agnostic naming standard for CoreSight devices, along
> > > with a generic platform probing method that currently supports device
> > > tree descriptions, but allows for the ACPI bindings to be added once these
> > > have been defined for the CTI devices.
> > >
> > > Driver will probe for the device on the AMBA bus, and load the CTI driver
> > > on CoreSight ID match to CTI IDs in tables.
> > >
> > > Initial sysfs support for enable / disable provided.
> > >
> > > Default CTI interconnection data is generated based on hardware
> > > register signal counts, with no additional connection information.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> > > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> >
> > You didn't cc: all of them to get review comments?  I've added it
> > above...
>
> Thanks
>
> >
> > And signed-off-by implies reviewed-by.
>
> This set has been refined over several iterations.  I added my R-b to patches
> that I had reviewed and did not need attentions anymore.  Since this is supposed
> to be a chain of custody I decided to keep my R-b and append my S-b before
> queueing in my tree.  I have seen this done many times before but will remove if
> you think it is better.
>
> >
> > > +/* basic attributes */
> > > +static ssize_t enable_show(struct device *dev,
> > > +                      struct device_attribute *attr,
> > > +                      char *buf)
> > > +{
> > > +   int enable_req;
> > > +   bool enabled, powered;
> > > +   struct cti_drvdata *drvdata = dev_get_drvdata(dev->parent);
> > > +   ssize_t size = 0;
> > > +
> > > +   enable_req = atomic_read(&drvdata->config.enable_req_count);
> > > +   spin_lock(&drvdata->spinlock);
> > > +   powered = drvdata->config.hw_powered;
> > > +   enabled = drvdata->config.hw_enabled;
> > > +   spin_unlock(&drvdata->spinlock);
> > > +
> > > +   if (powered) {
> > > +           size = scnprintf(buf, PAGE_SIZE, "cti %s; powered;\n",
> > > +                            enabled ? "enabled" : "disabled");
> > > +   } else {
> > > +           size = scnprintf(buf, PAGE_SIZE, "cti %s; unpowered;\n",
> > > +                            enable_req ? "enable req" : "disabled");
> >
> > sysfs files should never need scnprintf() as you "know" a single value
> > will fit into a PAGE_SIZE.
>
> I've seen many patches using scnprintf() that were merged.  We can change this
> to sprintf().
>
> >
> > And shouldn't this just be a single value, this looks like it is 2
> > values in one line, that then needs to be parsed, is that to be
> > expected?
>
> There is no shortage of files under /sys/device/ with output that needs parsing,
> but this can be split in two entries.
>
> >
> > Where is the documentation for this new sysfs file?
>
> All the documentation for sysfs files are lumped together in a single patch [1]
> that is also part of this set.
>
> [1]. https://lkml.org/lkml/2020/3/9/643

Correction - this link should be:

https://lkml.org/lkml/2020/3/9/642

>
> >
> > > +const struct attribute_group *coresight_cti_groups[] = {
> > > +   &coresight_cti_group,
> > > +   NULL,
> > > +};
> >
> > ATTRIBUTE_GROUPS()?
>
> As with all the other coresight devices, groups are communicated to
> coresight_register() and added to the csdev->dev in that function.
>
> >
> > > +static struct amba_driver cti_driver = {
> > > +   .drv = {
> > > +           .name   = "coresight-cti",
> > > +           .owner = THIS_MODULE,
> >
> > Aren't amba drivers smart enough to set this properly on their own?
> > {sigh}
>
> Would you mind indicating where?  builtin_amba_driver() calls
> amba_driver_register() and  that doesn't set the owner field.
>
> Thanks,
> Mathieu
>
> >
> > greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
