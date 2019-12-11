Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AEE11A8EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hX6JVWEZXSPl8a0t1YkKDSHgL8MSYDN1qBA9Lr2DCVg=; b=Nyl1ocqCH1/fNz
	c2YX4YOiplL8swVEiLrkLh3yFDhM383XUrxGN3FG6f9kHm5hgC9aR+A40ICeSjBKQX2Ead2kYAOCJ
	ZgYqHSZPMnmEoU04Vbfukf62UHQEx8S8E0b6rqdLB5R7rNXcJ4heV5Eq9DuGQMj7G5d+rV4Alw2mr
	OHaOIq1Pkks0Wb1N0dRhrvPZWhWnpk0kfPfKHPkyunmb91kriNh3m+j03ZtA/QCc0/Q5wPgLkzrYZ
	NfKmAEU8ll2MvepPrwlHt/Ohp/UR3IXHWEBQXTXGkGvu605B/I1abY5CMWvhbDTKkvMCfe2d7+KxB
	sMbFtKEQ8sr3vFHBK7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezGM-0000fd-PA; Wed, 11 Dec 2019 10:30:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezGE-0000fE-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:30:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id h14so1589240pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 02:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=m5RPBzS27RTPX/pLjO63YZsQla7q8WFKSfN3yALVOAU=;
 b=f2338jd9MUtQXRgdrjHjQLyS3O5mZISNGUYevaTSwF3QRsJaJKma480XA52Toy4itJ
 peo1rVxJ8kbllcAao3v/PBTHLp7iHxp8TSFFHIDVt/9DYxkRyI8peAp92+uAIYM0yTUW
 1fvZ30tKv2ZC7sKJOXsT1obaZJL+9922mJIX0L6GXBYfRJ0520mBQzjoXjhBKKa3QbIo
 /oaNpvr4xkPU7vv7642RvsPv6tX9W4rcuoXS2SAfKsLjZ7o0PKTKlHjphFisNc7/cZ7l
 pj5AZLQE0yj2qR9S9fQjnDiHPFthnpqYIqaww8Rm68OlI3Ir5/2Oq1mVee3DX9scT/eo
 Wbyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m5RPBzS27RTPX/pLjO63YZsQla7q8WFKSfN3yALVOAU=;
 b=m4jOTGokGn2E3NxcgJ+mnSWad7sxlRw/aggK1+w9VE6Z6UpGTFwwK4HchCeVu474Uj
 XcDBqp+CiCaElGPka8omExp/eySNucGIvPbRADuJp3chpozLBeAAV4fPccQWDxsVR7ln
 IRXgymhP6JBUmoH1wV80GaSzs0zCxbcCqPXk0bhytkpk4Huwwtxg6hzxC8u7SFvhxJpN
 +MLsLIQku8sQ0k1idhJqjW6LbhZUhzg3uOkV7n6bic7bp7tMLKwPT1Dffici9uBLM2H9
 IZmoXjx+OJ98X69th3u3IrsmIZlOWh6l+A/0GSZcP61OjEG3kvipev0jiH6t36uFIQK2
 Uj+w==
X-Gm-Message-State: APjAAAXpypt5Db5lNj0kgAOW/ZDVC7WCaxzUxlrzelJhhjBWmtB8NFh3
 EC+hcleNdaaBXX5012Rpw9PvTA==
X-Google-Smtp-Source: APXvYqxP7ksjRkHEUpxo4dU1ZHuAgoQvCDvr983PA5I9GYEJRquI3QIy+fEeq9pX/dpEUYuFvRWmig==
X-Received: by 2002:a62:174b:: with SMTP id 72mr2926757pfx.185.1576060225844; 
 Wed, 11 Dec 2019 02:30:25 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id j22sm2066161pji.16.2019.12.11.02.30.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 02:30:25 -0800 (PST)
Date: Wed, 11 Dec 2019 16:00:23 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 13/15] cpufreq: scmi: Match scmi device by both name and
 protocol id
Message-ID: <20191211103023.ibduhblz6ohjaaa7@vireshk-i7>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-14-sudeep.holla@arm.com>
 <20191211023909.7iun7kdk6pjkync6@vireshk-i7>
 <20191211101302.GD20962@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211101302.GD20962@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_023026_846682_276577C8 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Cristian Marussi <cristian.marussi@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-12-19, 10:13, Sudeep Holla wrote:
> On Wed, Dec 11, 2019 at 08:09:09AM +0530, Viresh Kumar wrote:
> > On 10-12-19, 14:53, Sudeep Holla wrote:
> > > The scmi bus now has support to match the driver with devices not only
> > > based on their protocol id but also based on their device name if one is
> > > available. This was added to cater the need to support multiple devices
> > > and drivers for the same protocol.
> > >
> > > Let us add the name "cpufreq" to scmi_device_id table in the driver so
> > > that in matches only with device with the same name and protocol id
> > > SCMI_PROTOCOL_PERF. This will help to add "devfreq" device/driver.
> > >
> > > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> > > Cc: linux-pm@vger.kernel.org
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  drivers/cpufreq/scmi-cpufreq.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
> > > index e6182c89df79..61623e2ff149 100644
> > > --- a/drivers/cpufreq/scmi-cpufreq.c
> > > +++ b/drivers/cpufreq/scmi-cpufreq.c
> > > @@ -261,7 +261,7 @@ static void scmi_cpufreq_remove(struct scmi_device *sdev)
> > >  }
> > >
> > >  static const struct scmi_device_id scmi_id_table[] = {
> > > -	{ SCMI_PROTOCOL_PERF },
> > > +	{ SCMI_PROTOCOL_PERF, "cpufreq" },
> > >  	{ },
> > >  };
> > >  MODULE_DEVICE_TABLE(scmi, scmi_id_table);
> >
> > Applied. Thanks.
> 
> This will break the build without patch 1/15, so preferably must go as
> part of the series. Sorry for not missing to specify that detail.

Dropped now.

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
