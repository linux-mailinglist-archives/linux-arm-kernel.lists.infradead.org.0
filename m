Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090E11809A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 21:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yGKmtjs7ev1Z5U2eDVpj4zO3WU/QcsKbO/x5t7qyQA=; b=mzmfW3CNC217ld
	defmIxtTZjSwmCFkrh6ZpIznW61GyBu9ufoNVyv/Rhi0bnl8TDb7AmgWRQKIMT+n4K9s83emvP9An
	PKlay3bpSBF6hN5EvnRSrc53J/cCPq2d76zUeEF7KLds9olK2C7pif772nY0PGjYRyGTtlq3v41XW
	cdnsgF9FqjDYq6qCOpVlg0ODW99IbOpbEaKZMoBqVq97liM7u9ynu+iORcLpTk4BlNeZ0Xg9KFFH0
	P3vOQFemGOHHKBOF6UM/+yqI/PUV4jXLbG8TVU5y3fmOKidLk1mSrjW7UOCXe85uScWJdBgiuG3PY
	8afeBDTTVLJ0UN9i53dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOSQb-0002qL-Ho; Wed, 08 May 2019 19:40:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOSQT-0002pm-BV
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 19:40:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id z16so10582165pgv.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 12:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7Xc+7OcJpMvDCLjFgyfFFHfxL3+Nwu8VrHOrlj3FvEg=;
 b=gA0wLPNq/n/8ixJaFO0KfTJuXx0bYSFib4d8PRnYnRoRWIlBAqZtQfqpPUrVQUkMw0
 yp6z42kaNOFUQFtgv+ObJmrn0ovteqmXR1lhOeNT2hFBhPPbEb56uXPQ9tlzK14DRgbO
 HvGP8PCjcsfrz4Cx9F7R/HboeKP6jcQLP30Y4Ua0bMOCV1dKSxsuR1WKHFjts+qExDvp
 QcW6CUnLtEC1xOeUCnqerVZ3fbVVQjCzPYtvBkQzFX0zmUUSf1M01g++Bl2NeJcxKN6j
 o0itCM8jpOn/80DmGTBVMaW3DnVu/hZ3qHU1yg6CCW3hGvpOIfKuHzizSbW+MQf2ASnD
 Z8yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=7Xc+7OcJpMvDCLjFgyfFFHfxL3+Nwu8VrHOrlj3FvEg=;
 b=bFeFoWuSmdCWvr4bZsssj+XI7A2I+RXKlZHnH5cVW/uwTWck/btcxtNuQ+0mWEVjPg
 KAHvsHTVVCmxpE10D9UiN49nWQJUD40YKh/ofgabpLq4XegZWhrsejTEsPzVJR+JC8GD
 ShrBFUopVuYCLeCwUkJnDZ8BkOVXVbnEyrqtH6Wh07fW1l65aoCVZwFhC2jX6oEJOMg6
 pPrcKFOkvpmu2bsBrBVUvLsM1TKMxsbPUTg/jsuKG+k6CeArW3ZNxdln7P+/KFVz1sUV
 SbHeik+RY5Y/5wZebwfPVyb6hUPeLtwd8mQq2zVCmPHLWcwZVGe5Ed6Dr/0R898IRMHW
 vokg==
X-Gm-Message-State: APjAAAXE7Mb4BPaY0bmuuyHfVAQPNEoFI60D9IXne6O31pCzqtNnEM+R
 IQwCMt0pzMl3MRoydEkPZtQ=
X-Google-Smtp-Source: APXvYqy+Mps/PyObzV+AuLgHZJTJg7RaPtGqFSmI758A8f++3nmdl5bdmN6yqa/mgHxnHrytM0TiuQ==
X-Received: by 2002:a63:1048:: with SMTP id 8mr49167502pgq.70.1557344424885;
 Wed, 08 May 2019 12:40:24 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id t7sm41031pfa.42.2019.05.08.12.40.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 12:40:23 -0700 (PDT)
Date: Wed, 8 May 2019 12:40:22 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v4 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190508194022.GA28200@roeck-us.net>
References: <20190508170035.19671-1-f.fainelli@gmail.com>
 <20190508170035.19671-3-f.fainelli@gmail.com>
 <20190508183244.GA25133@roeck-us.net>
 <258aec23-055b-61c2-c0f6-2ff1abc006cd@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <258aec23-055b-61c2-c0f6-2ff1abc006cd@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_124025_396541_512F603F 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 11:34:50AM -0700, Florian Fainelli wrote:
> On 5/8/19 11:32 AM, Guenter Roeck wrote:
> > Hi Florian,
> > 
> > On Wed, May 08, 2019 at 10:00:35AM -0700, Florian Fainelli wrote:
> >> If the SCMI firmware implementation is reporting values in a scale that
> >> is different from the HWMON units, we need to scale up or down the value
> >> according to how far appart they are.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >>  drivers/hwmon/scmi-hwmon.c | 46 ++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 46 insertions(+)
> >>
> >> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> >> index a80183a488c5..4399372e2131 100644
> >> --- a/drivers/hwmon/scmi-hwmon.c
> >> +++ b/drivers/hwmon/scmi-hwmon.c
> >> @@ -7,6 +7,7 @@
> >>   */
> >>  
> >>  #include <linux/hwmon.h>
> >> +#include <linux/limits.h>
> >>  #include <linux/module.h>
> >>  #include <linux/scmi_protocol.h>
> >>  #include <linux/slab.h>
> >> @@ -18,6 +19,47 @@ struct scmi_sensors {
> >>  	const struct scmi_sensor_info **info[hwmon_max];
> >>  };
> >>  
> >> +static inline u64 __pow10(u8 x)
> >> +{
> >> +	u64 r = 1;
> >> +
> >> +	while (x--)
> >> +		r *= 10;
> >> +
> >> +	return r;
> >> +}
> >> +
> >> +static int scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 *value)
> >> +{
> >> +	s8 scale = sensor->scale;
> >> +	u64 f;
> >> +
> >> +	switch (sensor->type) {
> >> +	case TEMPERATURE_C:
> >> +	case VOLTAGE:
> >> +	case CURRENT:
> >> +		scale += 3;
> >> +		break;
> >> +	case POWER:
> >> +	case ENERGY:
> >> +		scale += 6;
> >> +		break;
> >> +	default:
> >> +		break;
> >> +	}
> >> +
> >> +	f = __pow10(abs(scale));
> >> +	if (f == U64_MAX)
> >> +		return -E2BIG;
> > 
> > Unfortunately that is not how integer overflows work.
> > 
> > A test program with increasing values of scale reports:
> > 
> > 0: 1
> > ...
> > 18: 1000000000000000000
> > 19: 10000000000000000000
> > 20: 7766279631452241920
> > 21: 3875820019684212736
> > 22: 1864712049423024128
> > 23: 200376420520689664
> > 24: 2003764205206896640
> > ...
> > 61: 11529215046068469760
> > 62: 4611686018427387904
> > 63: 9223372036854775808
> > 64: 0
> > ...
> > 
> > You'll have to check for abs(scale) > 19 if you want to report overflows.
> 
> Yes silly me, my test program was flawed, thanks for pointing out that.
> You are okay with returning E2BIG when we overflow?

Yes.

Thanks,
Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
