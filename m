Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF83B168423
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDkktBNvh4zJh2GS+8lUgYnQA0p9ZZJM61XvAKnVabM=; b=V2V+xsI8CqplNm
	xib3/cH5hgZ/rRyBpulz3eVQBz81EpLLVjS+sG6UzrIBp964mY/Aa+tiVf3kZJPKrhzHDSb1qmop5
	EV6OI5AiZ3kzep9xa9TBnvCN1xjuM4K1y+e0H75kPg9irTuDZZcn0e+yOVT3IDALdb7uxDXVUzoKK
	N5PyoLNSKVfpqZFi9X6sNJuWwuEvfCThUQ5SqE1yKiInndqW1ZRdCYFGzPstKL0cB3+lt0LPpeet0
	u68SHT9AJuB7C6obAqQPEQDpasCdEcoOd0+uZYiAFfkud/6CePDGlVVTBJ35H9ULsU6DJAo55jny2
	3ZHkhNxcpJY3W/WIcOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BWp-0008Gt-3l; Fri, 21 Feb 2020 16:51:51 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BWc-0008GH-17
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:51:40 +0000
Received: by mail-pj1-x1041.google.com with SMTP id m7so2368258pjs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 08:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tEM+tesVTVelhRXwBYSeP4xDuDSKuUzJHlaSkE25t30=;
 b=DtEiys/4qhH8hyv+tP020VfRN3Jsc8PfosTjpDz8jJXXoNQnmpflnAl/Z/Ke1pMVx4
 klW6vkgnfzp1+C9/Auk+0R6WmKjTSn0QrhLR/7oGTUXilWZQIpq77IHSeel/LOEsMBJA
 EzjW1Bbrq19YEytPpTAeh44rz9FuRnjIO6MR/Z+uQ4qCVnCOWJrV01+sTWhKsWex8p8i
 IzOEFbINdr1njk6bCmzgrHVWnrEjoWNrn1GmiRoYWeQma7l3xjNJZAVpgMoPmiSFCnJw
 Gt6hzyCQmp8mKZf0da3x1LAz7MFh+KHPSoWwgotDTLtYCMlvuqb+/w0Ld2lLcBfAtqkc
 YwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tEM+tesVTVelhRXwBYSeP4xDuDSKuUzJHlaSkE25t30=;
 b=Q7aVdqB+on2zvsQjHOCeq4Y+nlaLGrNbJzZPg45XeifNIfCWC4ibEnhW3o4MV5OQPM
 625KeN4FM9x8Ln8aRPSrvYt+YYUTvyFcV/Y1vdBBNR+1y7+JWMGxJ+RmWGmrS7WGq2FK
 FG23wcfanSSY0grw+RcV7GfC7r71yCSl/q4L0JNlaEbirj+nO/85Nh1dboHt1XsW5G4L
 jdACMSYvh8Oc7gjUaPG5Pe7PAYoMBCiLPUJYR5s5OaL5Ms0CCyuczVGb1c1BeweeL2t5
 6lT9386P+qAmrSacF4ZSBEqpBXjTHQ+/gH57pN9VdSLyX/miJfGsNQOqtLeLe/6alP3l
 kOjA==
X-Gm-Message-State: APjAAAW7Z3+yNdjbojXZe2/oP7KtQh75QCRnW1IUa/UoV9ZMUGUyUAia
 MfzPw1nF06382l0d6CIf2s0VtLAi7EU=
X-Google-Smtp-Source: APXvYqzT+t3dCacWeKeKTixALPmwUeIlG7vCIxzI6q77A91pVv1ZgKkZhV/aajDg05G9jtXbeNxFcQ==
X-Received: by 2002:a17:90a:c214:: with SMTP id
 e20mr4039464pjt.98.1582303897356; 
 Fri, 21 Feb 2020 08:51:37 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id ev5sm3104850pjb.4.2020.02.21.08.51.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 08:51:36 -0800 (PST)
Date: Fri, 21 Feb 2020 09:51:34 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v9 08/15] coresight: cti: Enable CTI associated with
 devices.
Message-ID: <20200221165134.GA25043@xps15>
References: <20200210213924.20037-1-mike.leach@linaro.org>
 <20200210213924.20037-9-mike.leach@linaro.org>
 <04b739fd-7bb3-bd28-8013-918e7d4dfcb7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04b739fd-7bb3-bd28-8013-918e7d4dfcb7@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_085138_765975_C8CCF297 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-doc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 coresight@lists.linaro.org, corbet@lwn.net, liviu.dudau@arm.com,
 agross@kernel.org, robh+dt@kernel.org, maxime@cerno.tech, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 12:20:17AM +0000, Suzuki K Poulose wrote:
> Hi Mike
> 
> Sorry for the delay. one minor comment below.
> 
> On 02/10/2020 09:39 PM, Mike Leach wrote:
> > The CoreSight subsystem enables a path of devices from source to sink.
> > Any CTI devices associated with the path devices must be enabled at the
> > same time.
> > 
> > This patch adds an associated coresight_device element to the main
> > coresight device structure, and uses this to create associations between
> > the CTI and other devices based on the device tree data. The associated
> > device element is used to enable CTI in conjunction with the path elements.
> > 
> > CTI devices are reference counted so where a single CTI is associated with
> > multiple elements on the path, it will be enabled on the first associated
> > device enable, and disabled with the last associated device disable.
> > 
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >   drivers/hwtracing/coresight/coresight-cti.c  | 129 +++++++++++++++++++
> >   drivers/hwtracing/coresight/coresight-cti.h  |   1 +
> >   drivers/hwtracing/coresight/coresight-priv.h |  12 ++
> >   drivers/hwtracing/coresight/coresight.c      |  71 +++++++++-
> >   include/linux/coresight.h                    |   4 +
> >   5 files changed, 212 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index 77c2af247917..c4494923d030 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -4,6 +4,7 @@
> >    * Author: Mike Leach <mike.leach@linaro.org>
> >    */
> > +#include <linux/property.h>
> >   #include "coresight-cti.h"
> >   /**
> > @@ -440,6 +441,131 @@ int cti_channel_setop(struct device *dev, enum cti_chan_set_op op,
> >   	return err;
> >   }
> > +/*
> > + * Look for a matching connection device name in the list of connections.
> > + * If found then swap in the csdev name, set trig con association pointer
> > + * and return found.
> > + */
> > +static bool
> > +cti_match_fixup_csdev(struct cti_device *ctidev, const char *node_name,
> > +		      struct coresight_device *csdev)
> > +{
> > +	struct cti_trig_con *tc;
> > +	const char *csdev_name;
> > +
> > +	list_for_each_entry(tc, &ctidev->trig_cons, node) {
> > +		if (tc->con_dev_name) {
> > +			if (!strcmp(node_name, tc->con_dev_name)) {
> > +				/* match: so swap in csdev name & dev */
> > +				csdev_name = dev_name(&csdev->dev);
> > +				tc->con_dev_name =
> > +					devm_kstrdup(&csdev->dev, csdev_name,
> > +						     GFP_KERNEL);
> 
> In the extreme rare case of an allocation failure, we may want to
> check if the allocation was successful or not, rather than silently
> ignoring it. With that fixed,

Line 419 and 423 in patch 1 need the same attention.

> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
