Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD8B16E948
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:04:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQQ0vihHT6kAELe+TRM3co+A2PmG9GkW5IEN4t57vtg=; b=QNSS6di7wt7P6A
	0uHL9HuodGvO5OKtxq3tOcBks2rxQS9raGHxLp31ML/jFLcEFyoX86PvixxXpfd/ThlB57yfcwsP3
	5pPNr2ZGche1x7Omv/ANKD6gBw28Yp2Fo6Yjx9jS1yl2+pHc+2a5slSPvPjjYtMM2cKr+FaKHazAe
	tGgqrYKn+w8SpNVUB1OHcBjQ3KiUULPnwg+eOmQ3qq58nCiwcIHQeP8J3hBfFwSj3oTzZf3109f4d
	sUSCVqR+1xHjO4dOzUoP2Lp6AaLI8fi3SoVHHFCWbuBxUSYZbgVd8sady0U8vkyb3RBacRqR/aP1j
	4bYnBzlE9434SKxEHpdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bkQ-0004qU-DK; Tue, 25 Feb 2020 15:03:46 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bkE-0004pw-Aw
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:03:38 +0000
Received: by mail-qk1-x742.google.com with SMTP id b7so12150084qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 07:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wAHb7rK639CcDCtnM7iJQZElyiD2uywLhpHa6tq57/0=;
 b=j3YeRKujuPj9zGjGOLEkt6wdH3hlRbWvAzwSpsAFnd+E0Vl11Qkczyj0JZGkg6Rd/d
 OyORz2UcsIwsakv9MMRaOoz/C/BbwKMHNX+pXr3AtBb/VtQ53CsVk5jd5v340Qua6VDw
 Bedv2EeiN5pdEZFaYMTd0GQB1lnUxvpYO8pOg5bT7QO/OU9WQ8naLOVo/67Z56BjwymC
 kDH5k9Hxz+ZkY7KLoxOgPswpMct6k9BAX2ni0w86KyYaNEohu20Ed8BOJuZ8U2M5MFKj
 nacWEMMAjE6jXiWafw8SOxqrluPoCzTYzDOgvLqI2nsE5BlNorCr2l81nYX9/nayT6iB
 PMyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wAHb7rK639CcDCtnM7iJQZElyiD2uywLhpHa6tq57/0=;
 b=p9iMTsOSe2l/TVZ4JuabnseHe9AcE8MmNt04/ucVoPwgJHSKWMddFgMQP8ntlZ+T9K
 L7I09aP0CV5Z0EuZ/58GgSBM3DP9LWbuMTqxP4z1pxhMGaeUoOchjND41CjUASZ//yDE
 jLQQ49cOIyFR/4az3a3MCih8nKLn5eDhxygcrc5v9/HrtuUxnv77aqBlqjXskUV7ezdW
 eCcssfYF2VtD7yEyrCVKeq04GQPsy5bg4Vwl6m5vXcQ3gqeyDOAxwAXpjqXRhK9G4P+f
 MKCD6yy5y9AC/R81aBxLQtnoHXshqXlBHdLvSPzFNnVIwtp5dKD7pEtRCCr2F+/6D5B7
 orvg==
X-Gm-Message-State: APjAAAWfgCRb7XL2ynDMGYOn4XFfy7SQ5OkfKW3rxQW5Z4AoYCG0HuJp
 hbYxKiudkho7ji14bAgJrv1SfqZ44LI36xwr/OXidA5P
X-Google-Smtp-Source: APXvYqzigvoxgWcb3ZmCCwvHRtpN3dxkcq9+kpu7VpR9hQ20upkiH0Yza2Z8PIe6Eb+Flk9FSwpWt8uJ4z71H80aDnk=
X-Received: by 2002:a37:a9c3:: with SMTP id s186mr4972168qke.118.1582643009968; 
 Tue, 25 Feb 2020 07:03:29 -0800 (PST)
MIME-Version: 1.0
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-9-mike.leach@linaro.org>
 <04b739fd-7bb3-bd28-8013-918e7d4dfcb7@arm.com> <20200221165134.GA25043@xps15>
In-Reply-To: <20200221165134.GA25043@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 25 Feb 2020 15:03:18 +0000
Message-ID: <CAJ9a7VjJMtftam3t_e25ckOW_dufncbqdLkHeV3G8e7W9K5bCw@mail.gmail.com>
Subject: Re: [PATCH v9 08/15] coresight: cti: Enable CTI associated with
 devices.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_070334_377803_5E238F05 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>, Sudeep Holla <sudeep.holla@arm.com>,
 Jonathan Corbet <corbet@lwn.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As using devm_... for allocation, there is no need to explicitly free
up tc->con_dev_name, also the lifetime of the connection is linked to
the lifetime of csdev, so we can drop the devm_kstrdup in the csdev
case so this becomes

/* match: so swap in csdev name & dev */
               tc->con_dev_name = dev_name(&csdev->dev);
                tc->con_dev = csdev;
                return true;

Same true for similar link in patch 1, removing 2 un-needed
allocations, leaving 1 to be fixed up with error checking

Mike


On Fri, 21 Feb 2020 at 16:51, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Fri, Feb 21, 2020 at 12:20:17AM +0000, Suzuki K Poulose wrote:
> > Hi Mike
> >
> > Sorry for the delay. one minor comment below.
> >
> > On 02/10/2020 09:39 PM, Mike Leach wrote:
> > > The CoreSight subsystem enables a path of devices from source to sink.
> > > Any CTI devices associated with the path devices must be enabled at the
> > > same time.
> > >
> > > This patch adds an associated coresight_device element to the main
> > > coresight device structure, and uses this to create associations between
> > > the CTI and other devices based on the device tree data. The associated
> > > device element is used to enable CTI in conjunction with the path elements.
> > >
> > > CTI devices are reference counted so where a single CTI is associated with
> > > multiple elements on the path, it will be enabled on the first associated
> > > device enable, and disabled with the last associated device disable.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > > ---
> > >   drivers/hwtracing/coresight/coresight-cti.c  | 129 +++++++++++++++++++
> > >   drivers/hwtracing/coresight/coresight-cti.h  |   1 +
> > >   drivers/hwtracing/coresight/coresight-priv.h |  12 ++
> > >   drivers/hwtracing/coresight/coresight.c      |  71 +++++++++-
> > >   include/linux/coresight.h                    |   4 +
> > >   5 files changed, 212 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > > index 77c2af247917..c4494923d030 100644
> > > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > > @@ -4,6 +4,7 @@
> > >    * Author: Mike Leach <mike.leach@linaro.org>
> > >    */
> > > +#include <linux/property.h>
> > >   #include "coresight-cti.h"
> > >   /**
> > > @@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> > >     return err;
> > >   }
> > > +/*
> > > + * Look for a matching connection device name in the list of connections.
> > > + * If found then swap in the csdev name, set trig con association pointer
> > > + * and return found.
> > > + */
> > > +static bool
> > > +cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> > > +                 struct coresight_device *csdev)
> > > +{
> > > +   struct cti_trig_con *tc;
> > > +   const char *csdev_name;
> > > +
> > > +   list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > > +           if (tc->con_dev_name) {
> > > +                   if (!strcmp(node_name, tc->con_dev_name)) {
> > > +                           /* match: so swap in csdev name & dev */
> > > +                           csdev_name = dev_name(&csdev->dev);
> > > +                           tc->con_dev_name =
> > > +                                   devm_kstrdup(&csdev->dev, csdev_name,
> > > +                                                GFP_KERNEL);
> >
> > In the extreme rare case of an allocation failure, we may want to
> > check if the allocation was successful or not, rather than silently
> > ignoring it. With that fixed,
>
> Line 419 and 423 in patch 1 need the same attention.
>
> >
> > Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
