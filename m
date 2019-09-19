Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAC3B7D41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 16:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZNXs73J6vQYOrYxY/gTqfEfvRDOUN9K3P3toNKHmqs=; b=hZUKDnwrSctvAC
	PLXAQ8StIyJJ10EfQwZFsqlW7yBevuJDP3uawTXyMHYCtmmyiKN6Cqvu37K/0PpJTc4435jK+9Bib
	/mXvhnbPIguMiMVOfF3B6vpx28yy62qwgm/1e7YvkyOVTrQ1f02xxms/D72N5dfNXrF4ZRCND+aPs
	WlNXih3FZApvQriN1EQOc3iJpVB2Nm/8F/fRJ3408PO2y26XuOvJGqDiqmC3Rm2DcJ1OdsG4hckpq
	1NqdatSIRPnJ8ngDBQwlVgC8JbVAiDIp8cf769IIkKVbQAX+a7g6d4Z0ZIGr9yX74cvzkpRc2fVV8
	4WYSluro0a3efSbj7iOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxmh-0005KC-U6; Thu, 19 Sep 2019 14:51:52 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxmL-00057m-OP
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 14:51:31 +0000
Received: by mail-ed1-x544.google.com with SMTP id c4so3508772edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 07:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vg2zcBttUsMDTXTj6Y52ujR6gzQ0UC888oEHXYicUhU=;
 b=BB6nymCjrYWzk/ezn8V9Bq8KAzOheOe4V00zoaJQI/atMda4h54Mjta1Uc/U1nU5Sv
 P6uItwg2j6i5JS/3XBWemgPA5lOFQlGF4omk6PSeLFhTPsuwvLfEdAN8F1cZA7Fy9KDZ
 A2YZuhQ4yXE1EiOkGERPUkqchDSHIsSEoDo5/WkhC0zhcUY4OtX81qD1iqULmAkagnwK
 dTz/N78siErEbNh/2BPf/7174+TI8olQ+ElxPCIRoWyvP3GV6e2NqI+7g2CK6e0Opqha
 WHvMmg1qNdrM9FHLjYqcHpKnPlaJMQWxp/xK1G6+AJFDSKtYA5YRCKwktG72ZCxkar5v
 W6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vg2zcBttUsMDTXTj6Y52ujR6gzQ0UC888oEHXYicUhU=;
 b=L48ipbiK1kw/LOOzFjrbTSTBYosiUCCHYl6OhRjk8wRxjYv3cmmO9c1ltxgwRxJI3D
 Cb33srmYdYb4hPiXlBlTKNhTGD1uDTWzSu5kAWwQG8RIdfalFvRjdvwskGpx08hFqm/l
 XZLSwRScprwZuvTPLLVubYVEsZmPobrXnUuoR8BAWaY7IcQyFEP5vMHDoCIpLAz+hAun
 OVFyGvj3pqVSQ7/ml1Xnins56DAAYgRjEYqqTaNRXeS2Z2XBHbAQHDyiiJdb1bLMARNJ
 H4e1BDJOIXjylNvTMQzd9TYu2cOdPnlxpULfCKcWRjyz5uWze3f4hhjmmSQ7y6wPic+i
 wu1Q==
X-Gm-Message-State: APjAAAVi14I40f+uE3h31PSiP84Txvy6rNiONIOxIynsGGPvJal9uOgE
 v8r39ELQYtMBdI5rIvVd/kyIng==
X-Google-Smtp-Source: APXvYqyCvmJGG8xROMmxyF0PjR7AUd5prnHdYr7FnNrvlnFxqdqu5Pi0sRzdrKGCbsxBEQrr2IcUKA==
X-Received: by 2002:a17:906:31c3:: with SMTP id
 f3mr15028805ejf.296.1568904685177; 
 Thu, 19 Sep 2019 07:51:25 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id f6sm1666003edr.12.2019.09.19.07.51.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 07:51:24 -0700 (PDT)
Date: Thu, 19 Sep 2019 16:51:22 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Auger Eric <eric.auger@redhat.com>
Subject: Re: [PATCH 3/8] iommu/arm-smmu-v3: Support platform SSID
Message-ID: <20190919145122.GA1013538@lophozonia>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-4-jean-philippe.brucker@arm.com>
 <63d4a71a-8e3f-f663-34bc-6647971b7e4b@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63d4a71a-8e3f-f663-34bc-6647971b7e4b@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_075130_102707_FDE04E29 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 jacob.jun.pan@linux.intel.com, robin.murphy@arm.com, joro@8bytes.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

Sorry for the delay. I'll see if I can resend this for v5.5, although I
can't do much testing at the moment.

On Mon, Jul 08, 2019 at 09:58:22AM +0200, Auger Eric wrote:
> Hi Jean,
> 
> On 6/10/19 8:47 PM, Jean-Philippe Brucker wrote:
> > For platform devices that support SubstreamID (SSID), firmware provides
> > the number of supported SSID bits. Restrict it to what the SMMU supports
> > and cache it into master->ssid_bits.
> The commit message may give the impression the master's ssid_bits field
> only is used for platform devices.

Ok maybe I should add that this field will be used for PCI PASID as
well.

> > @@ -2097,6 +2098,16 @@ static int arm_smmu_add_device(struct device *dev)
> >  		}
> >  	}
> >  
> > +	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> In case the device is a PCI device, what is the value taken by
> fwspec->num_pasid_bits?

It would be zero, as firmware only specifies a value for platform
devices. For a PCI device, patch 8/8 fills master->ssid_bits from the
PCIe PASID capability.

> > +	/*
> > +	 * If the SMMU doesn't support 2-stage CD, limit the linear
> > +	 * tables to a reasonable number of contexts, let's say
> > +	 * 64kB / sizeof(ctx_desc) = 1024 = 2^10
> ctx_desc is 26B so 11bits would be OK

This refers to the size of the hardware context descriptor, not struct
arm_smmu_ctx_desc. Next version moves this to a define and makes it
clearer.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
