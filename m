Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 081421CD50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 18:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugBhivnBHjx6gpT5xESkZoSyqqUtmSn64ytMs+SxTxw=; b=biBJz53mRbSgXA
	OKxtW7q9DajqzYpUURA+bwNJ0GSM6XouxwL2HFpUl3WFRrk4NfCXN1c6DxU46ArSne4J416Onm7Go
	P6d1BtGZn2I+WyfQHqmFiC1Y80wCeH+aqhGSnGT5PW8gwovFEu+oCG66NBIr347Bs2x5DSlfm3Sju
	RVfbP+A++ogoaedq6AY8gsFa34YToP6OROao5FGSkt2GrzpUQKYuZXANjqcvlOFMlARYqzD9zRksX
	8K23Jy89zhcMfcJ0R2oAPtO3HrNRey+cfPqCl2k58tXZzlNa3odxtyMp1WWF0gakQfZK8N5ohvaaa
	PznUZFjheUu7x1CSyHYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQakt-0005qf-94; Tue, 14 May 2019 16:58:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQakk-0005q6-AM
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 16:58:11 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so8577447plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 09:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nEerwvg48fYTdSZWsjZwyZW5riUaDK+8t7KUgCGOYTw=;
 b=JMAWbMVrrVoLfoE4HYzWVflV05bL2CGTa6q47RwAfK3zpiNbfh1OY3hwlJmPJn7dKP
 o9I/a5Fw7dEi7ZDhctz68UfvQ7D94ZuUYktdVL008wqZ9iDK3E9nSnIGRIvO782aX0Xq
 aCwLU49cDQ0IMFqgfigqd/CbBIbknLyex9OL5MPwO7T3nmCQuMPYGcCLAn93I33BQ1rr
 AdcEEi4SH9LvZLBfFR1liu3aqJdqVvcKJTCpgOSo3UCUyMsUJo8ocp8fSV3DRdI5OeO+
 UhPmzkagcOe+xJZy6Zwzu0KMzTk5S2K9iCws3VLCjuSz7fooF3RnE4zKgqWE8NvfLfXp
 VRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=nEerwvg48fYTdSZWsjZwyZW5riUaDK+8t7KUgCGOYTw=;
 b=NZ3BOHLBX8TJJuSUwlD0jw80j6MTehZLieo7EsuwLFrw5lMCbsrR+riwQcI6V7I2fw
 9aBjXKngrkSLiFHQh4IQEyChvpIalKrdv3ndcBY43Ual47Su3XY65/bmon7194IFzLFd
 ab7sO0g2mdCgxM0xM27wRujc9Mj2lOsEKYVqawRNpnsPa77zDYIquZJ3Mx0og9uqICTq
 LJ4LCXkqcos6Yh2evG6rrvyonwhiuJmTjGEGTtVC/M25o9eCIaVOxCusmY2ZDPQxuB1s
 Vs3xtYX8N2BxZpkM4qRHO5G/xiSFTlZouk8owFA5LBSB3orIHUT8xjAhON0IJ+yR0QlH
 q/aw==
X-Gm-Message-State: APjAAAX9Pe7XKmbHfmGKz/AOMxE/TKeg86PPB4EDaR1MYExjKGu5rC7c
 hzfu2H08WKewJUaL59ks9mo=
X-Google-Smtp-Source: APXvYqwoYgc0OOHXxgA1BqnwTyv/tFPPJjQELqA+1BS2Mq4lDPbq2b3DoQyDoMgNWj0jkhIpCAGsFw==
X-Received: by 2002:a17:902:a40b:: with SMTP id
 p11mr10938121plq.306.1557853089014; 
 Tue, 14 May 2019 09:58:09 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id z187sm24656658pfb.132.2019.05.14.09.58.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 14 May 2019 09:58:07 -0700 (PDT)
Date: Tue, 14 May 2019 09:58:06 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v5 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190514165806.GA30274@roeck-us.net>
References: <20190508184635.5054-1-f.fainelli@gmail.com>
 <20190508184635.5054-3-f.fainelli@gmail.com>
 <20190514163707.GA20819@e107155-lin>
 <2cbed0ac-fbfc-e66e-7cb9-908478466a34@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2cbed0ac-fbfc-e66e-7cb9-908478466a34@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_095810_356545_25D84555 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Tue, May 14, 2019 at 09:44:02AM -0700, Florian Fainelli wrote:
> On 5/14/19 9:37 AM, Sudeep Holla wrote:
> > On Wed, May 08, 2019 at 11:46:35AM -0700, Florian Fainelli wrote:
> >> If the SCMI firmware implementation is reporting values in a scale that
> >> is different from the HWMON units, we need to scale up or down the value
> >> according to how far appart they are.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >>  drivers/hwmon/scmi-hwmon.c | 45 ++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 45 insertions(+)
> >>
> >> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> >> index a80183a488c5..2c7b87edf5aa 100644
> >> --- a/drivers/hwmon/scmi-hwmon.c
> >> +++ b/drivers/hwmon/scmi-hwmon.c
> >> @@ -18,6 +18,47 @@ struct scmi_sensors {
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
> > 
> > I was applying this and wanted to check if we can add a check for scale=0
> > here and return early here to above the below check and __pow10(0) ?
> 
> Doing an early check for scale == 0 sounds like a good idea,good catch!
> Feel free to amend the patch directly when you apply it.
> 

Ok with me. Just make it == 0 :-).

Guenter

> > 
> > Let me know if you agree. I can fix up. Also I will try to test it on
> > Juno if firmware behaves correctly :)
> 
> Great, thanks.
> -- 
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
