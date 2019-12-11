Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104A911A8B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEBOL5rKNdXpWR7r2SjKYk4E5RGFjP38aXMioLUIJRQ=; b=UitiuZYld7ku5c
	Acs14TtLbP24p+9dhQzI//LhIVJRv5rVmecrsFBuwJQVKzclQVBxGHCzDDBe/ubwEHxedjWsyLxCw
	4mrLhve9sVbCwVBXzYywBQgGx18LK/GxDpKwFasCDLTmIeFy9cAhYKo/gPZq2tgAL3SgaXdp79JQk
	+MuQLYfqu8IU2ljltaQDYxTBzNhAXrOGJGrfNY1zJLVInQFg3GZIBJS4+zzPB2csc1fJcOBHSL0kc
	wmeSSqlpb9ziY+rH/GjnX+gtObg7c7XfeLwRzwcl1oO60d0UH2VamZn7xnN9AEF1XHJB2NYFsdRpS
	dW9wI2RHu86qM52guiuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyzZ-00013o-A1; Wed, 11 Dec 2019 10:13:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyzS-00013M-CD
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:13:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AEAF1FB;
 Wed, 11 Dec 2019 02:13:05 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 521A83F6CF;
 Wed, 11 Dec 2019 02:13:04 -0800 (PST)
Date: Wed, 11 Dec 2019 10:13:02 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 13/15] cpufreq: scmi: Match scmi device by both name and
 protocol id
Message-ID: <20191211101302.GD20962@bogus>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
 <20191210145345.11616-14-sudeep.holla@arm.com>
 <20191211023909.7iun7kdk6pjkync6@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211023909.7iun7kdk6pjkync6@vireshk-i7>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_021306_459415_3CC304D4 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Wed, Dec 11, 2019 at 08:09:09AM +0530, Viresh Kumar wrote:
> On 10-12-19, 14:53, Sudeep Holla wrote:
> > The scmi bus now has support to match the driver with devices not only
> > based on their protocol id but also based on their device name if one is
> > available. This was added to cater the need to support multiple devices
> > and drivers for the same protocol.
> >
> > Let us add the name "cpufreq" to scmi_device_id table in the driver so
> > that in matches only with device with the same name and protocol id
> > SCMI_PROTOCOL_PERF. This will help to add "devfreq" device/driver.
> >
> > Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> > Cc: linux-pm@vger.kernel.org
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  drivers/cpufreq/scmi-cpufreq.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
> > index e6182c89df79..61623e2ff149 100644
> > --- a/drivers/cpufreq/scmi-cpufreq.c
> > +++ b/drivers/cpufreq/scmi-cpufreq.c
> > @@ -261,7 +261,7 @@ static void scmi_cpufreq_remove(struct scmi_device *sdev)
> >  }
> >
> >  static const struct scmi_device_id scmi_id_table[] = {
> > -	{ SCMI_PROTOCOL_PERF },
> > +	{ SCMI_PROTOCOL_PERF, "cpufreq" },
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(scmi, scmi_id_table);
>
> Applied. Thanks.

This will break the build without patch 1/15, so preferably must go as
part of the series. Sorry for not missing to specify that detail.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
