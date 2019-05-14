Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 432FC1CD59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtxeTDjCutdutlX5cZVALxNciWJfVhjPoLqlTN0rVdU=; b=Pe2MRVFntRUvYM
	pehnGBqX99gcY4KgNz3bXVdbqCChCWn4qY7iJaFJJrCtDhf5gj9TPpg1qnq0rsgTHwEbCKrXV55Yb
	IV0iGVBiUdITt2NUfjHtKzP3xvnmZ4eJd/34o5erRAEgfl0Xa97vsJJTEJOQYH6zru0OdpJv+DZBv
	DiVtRY9QSM8xSusWv2HaVaUQGyKc+Gt5JkmHx/qt+9GdrdHOB6rBtd/tQnw1o/6HUz41i0IZrE4Gh
	Tc7TS4lEyLPM5r1y5nz7t3xaT0ydfZEF9hY0QxHuSg6AfJ0HG+bExSt68AxTlLyrg8Gsyt17OGlD/
	iMeq38bNd+//T3b38qHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQanW-0007Mt-Bk; Tue, 14 May 2019 17:01:02 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQanP-0007MX-AO
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:00:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89FCF374;
 Tue, 14 May 2019 10:00:54 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F33F3F703;
 Tue, 14 May 2019 10:00:52 -0700 (PDT)
Date: Tue, 14 May 2019 18:00:50 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v5 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190514170050.GB20819@e107155-lin>
References: <20190508184635.5054-1-f.fainelli@gmail.com>
 <20190508184635.5054-3-f.fainelli@gmail.com>
 <20190514163707.GA20819@e107155-lin>
 <2cbed0ac-fbfc-e66e-7cb9-908478466a34@gmail.com>
 <20190514165806.GA30274@roeck-us.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514165806.GA30274@roeck-us.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_100055_365825_0A7B8091 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 09:58:06AM -0700, Guenter Roeck wrote:
> On Tue, May 14, 2019 at 09:44:02AM -0700, Florian Fainelli wrote:
> > On 5/14/19 9:37 AM, Sudeep Holla wrote:
> > > On Wed, May 08, 2019 at 11:46:35AM -0700, Florian Fainelli wrote:
> > >> If the SCMI firmware implementation is reporting values in a scale that
> > >> is different from the HWMON units, we need to scale up or down the value
> > >> according to how far appart they are.
> > >>
> > >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> > >> ---
> > >>  drivers/hwmon/scmi-hwmon.c | 45 ++++++++++++++++++++++++++++++++++++++
> > >>  1 file changed, 45 insertions(+)
> > >>
> > >> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> > >> index a80183a488c5..2c7b87edf5aa 100644
> > >> --- a/drivers/hwmon/scmi-hwmon.c
> > >> +++ b/drivers/hwmon/scmi-hwmon.c
> > >> @@ -18,6 +18,47 @@ struct scmi_sensors {
> > >>  	const struct scmi_sensor_info **info[hwmon_max];
> > >>  };
> > >>
> > >> +static inline u64 __pow10(u8 x)
> > >> +{
> > >> +	u64 r = 1;
> > >> +
> > >> +	while (x--)
> > >> +		r *= 10;
> > >> +
> > >> +	return r;
> > >> +}
> > >> +
> > >> +static int scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 *value)
> > >> +{
> > >> +	s8 scale = sensor->scale;
> > >> +	u64 f;
> > >> +
> > >> +	switch (sensor->type) {
> > >> +	case TEMPERATURE_C:
> > >> +	case VOLTAGE:
> > >> +	case CURRENT:
> > >> +		scale += 3;
> > >> +		break;
> > >> +	case POWER:
> > >> +	case ENERGY:
> > >> +		scale += 6;
> > >> +		break;
> > >> +	default:
> > >> +		break;
> > >> +	}
> > >> +
> > >
> > > I was applying this and wanted to check if we can add a check for scale=0
> > > here and return early here to above the below check and __pow10(0) ?
> >
> > Doing an early check for scale == 0 sounds like a good idea,good catch!
> > Feel free to amend the patch directly when you apply it.
> >
>
> Ok with me. Just make it == 0 :-).
>

Thanks Guenter and Florian for quick response, done now.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
