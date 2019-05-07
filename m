Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C1916A1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyjGvknmpVSQdtIqgp+uZwj3fcr9kaQjlUAA/LWLzDM=; b=p1LWTBAJJFjI3j
	uGWD4b53GcDjd4YJquTWv1v2WVSFoHh1rlQ2/HUhS3CIOVj7OM/ZMaE25zh4Bq19zclSbA78rf8Nm
	GX5NIkRWwR7C69RYDjz/pUrqwyWT3Q5LypgYymdQHTtLd5ou+NmW+JLn7foh6tmEa9jbOM7RgLWkV
	3V4hESiK//VYpxdOxrxRC0eekyV64g2jtGEKIu5D6vpg6JvFDDEfY9BHfItQlsB6meA5LR9OkmYpO
	Ta+yGFgV+8zNrOS8/VtImChG3DwfmjCaTZR0TqzK9mCZpP7NJTcRaD6m2GvsiAdu7DkH/xm0GEM5f
	skRd5BvtVgg6G7UpwPjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4nb-0004mF-DC; Tue, 07 May 2019 18:26:43 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4nU-0004lM-Qz
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:26:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id 85so8724555pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 11:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Ka6LMhnLUqE6odqHoqHbUWiiXGVvr4B6Nmgf+rChy8c=;
 b=cOcuYAIPrMY/Uq90XRPSi4cwB9on+DinYs/8giKSoraOxRpRFgcbT3A6dE4d2DKjUv
 SXbOQOv+3PyvNj527v/E9s7lqOOovuVcSomj9Pfk8n8qBuRP+sr8URGGVUP1vgGE7etT
 4x23lx6yYTZLM8N3lfTgLxgne1laMn1FFlf3cy/zl/CcfYbLF4qD6BrESasSNWvGvIeW
 gWBxisQbxafoJQxI3sckzXNufldEjSrnUnistzYprsfX3iUmVdfPS0yJwgiSjESAhu+B
 dtp6ip6P6bdUar1QCgOnYKw+6kyjsQSSaYnzCfw3aSc79sk+w4QoYNHVkBUk3MnSwkp8
 8/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=Ka6LMhnLUqE6odqHoqHbUWiiXGVvr4B6Nmgf+rChy8c=;
 b=i64/u4/36Ajw02kpqQ+R+HB39pYVe2Q+udWrzZwQp8vfnhzkmyBD6Dt1CMpaumVe02
 KjiXVqKaO+9JWcRS59y6MI84VBtCks6gta1Y7L+YkFL1rQu5KLPoWHLTwWt1sAj/JTSR
 Zf0AWE9iX0JBUuH/R1PUuk0NOybT+H5OyuMP8/hJ1HY2LRhxcoJHzXIdDwaeOiqATm/L
 h/j0NtipPxh1RIzU7m7+NcqiKsCnfBEka1SkOeGHaXrjjdusVEPBuvnux43TE/UZWRkz
 O2itp0i0r1KDC22e86xhvqq7CM7yLyRA+A0h0WJE9luu4afwYZ6aK0kRuTetRTnJPBeR
 /jbg==
X-Gm-Message-State: APjAAAUilBxSAVJhJoSivY1GDQdEX4qvbpv6dlWs/X+xBBcQdZIpeFku
 zjR+dYcpoUamlBe90kB0RhDB2JkJ
X-Google-Smtp-Source: APXvYqzb2/1UXpXeRyCSxRVpxZ155VBzZSFtSfXBZM1fiBmJtLpX7RPquqonlMC+TGl2KFDs/mKNZw==
X-Received: by 2002:a63:f707:: with SMTP id x7mr40797735pgh.343.1557253594058; 
 Tue, 07 May 2019 11:26:34 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id a80sm2725413pfj.105.2019.05.07.11.26.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 11:26:32 -0700 (PDT)
Date: Tue, 7 May 2019 11:26:31 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/2] hwmon: scmi: Scale values to target desired HWMON
 units
Message-ID: <20190507182631.GA29510@roeck-us.net>
References: <20190506224109.9357-1-f.fainelli@gmail.com>
 <20190506224109.9357-3-f.fainelli@gmail.com>
 <a4dd5f4f-af12-8783-c612-cf3e88a9b94f@roeck-us.net>
 <e67efa2b-813c-c9f3-8f3d-b32c1b61ebc8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e67efa2b-813c-c9f3-8f3d-b32c1b61ebc8@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112636_877303_CE1A4FF1 
X-CRM114-Status: GOOD (  29.49  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Tue, May 07, 2019 at 10:44:00AM -0700, Florian Fainelli wrote:
> On 5/7/19 6:55 AM, Guenter Roeck wrote:
> > Hi Florian,
> > =

> > On 5/6/19 3:41 PM, Florian Fainelli wrote:
> >> If the SCMI firmware implementation is reporting values in a scale that
> >> is different from the HWMON units, we need to scale up or down the val=
ue
> >> according to how far appart they are.
> >>
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >> =A0 drivers/hwmon/scmi-hwmon.c | 55 +++++++++++++++++++++++++++++++---=
----
> >> =A0 1 file changed, 46 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
> >> index a80183a488c5..e9913509cb88 100644
> >> --- a/drivers/hwmon/scmi-hwmon.c
> >> +++ b/drivers/hwmon/scmi-hwmon.c
> >> @@ -18,6 +18,51 @@ struct scmi_sensors {
> >> =A0=A0=A0=A0=A0 const struct scmi_sensor_info **info[hwmon_max];
> >> =A0 };
> >> =A0 +static enum hwmon_sensor_types scmi_types[] =3D {
> >> +=A0=A0=A0 [TEMPERATURE_C] =3D hwmon_temp,
> >> +=A0=A0=A0 [VOLTAGE] =3D hwmon_in,
> >> +=A0=A0=A0 [CURRENT] =3D hwmon_curr,
> >> +=A0=A0=A0 [POWER] =3D hwmon_power,
> >> +=A0=A0=A0 [ENERGY] =3D hwmon_energy,
> >> +};
> >> +
> >> +static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor,
> >> u64 value)
> >> +{
> >> +=A0=A0=A0 u64 scaled_value =3D value;
> > =

> > I don't think that variable is necessary.
> > =

> >> +=A0=A0=A0 s8 desired_scale;
> > =

> > Just scale ? Also, you could assign scale here directly, and subtract
> > the offset below. Then "n" would not be necessary.
> > Such as
> > =A0=A0=A0=A0s8 scale =3D sensor->scale;=A0=A0=A0 // assuming scale is s8
> > =A0=A0=A0=A0...
> > =A0=A0=A0=A0case CURRENT:
> > =A0=A0=A0=A0=A0=A0=A0 scale +=3D 3;
> > =A0=A0=A0=A0...
> > =

> > That would also be less confusing, since it would avoid the double
> > negation.
> > =

> >> +=A0=A0=A0 int n, p;
> > =

> >> +
> >> +=A0=A0=A0 switch (sensor->type) {
> >> +=A0=A0=A0 case TEMPERATURE_C:
> >> +=A0=A0=A0 case VOLTAGE:
> >> +=A0=A0=A0 case CURRENT:
> >> +=A0=A0=A0=A0=A0=A0=A0 /* fall through */
> > Unnecessary comment
> =

> Is not removing the comment going to upset gcc when using
> -Wimplicit-fallthrough?
> =


There is no implicit fallthrough, and the comment would have to be
ahead of the previous case statement. Such as:

	case VOLTAGE:
		scale++;
		/* fall through */
	case CURRENT:
		scale++;
		break;
	...

Two case statements together don't count as fall through.

Guenter

> > =

> >> +=A0=A0=A0=A0=A0=A0=A0 desired_scale =3D -3;
> >> +=A0=A0=A0=A0=A0=A0=A0 break;
> >> +=A0=A0=A0 case POWER:
> >> +=A0=A0=A0 case ENERGY:
> >> +=A0=A0=A0=A0=A0=A0=A0 /* fall through */
> > Unnecessary comment.
> > =

> >> +=A0=A0=A0=A0=A0=A0=A0 desired_scale =3D -6;
> >> +=A0=A0=A0=A0=A0=A0=A0 break;
> >> +=A0=A0=A0 default:
> >> +=A0=A0=A0=A0=A0=A0=A0 return scaled_value;
> > =

> > Here we presumably want a scale of 0. However, if the scale passed
> > from SCMI is, say, -5 or +5, we return the original (unadjusted)
> > value. Seems to me we would still want to adjust the value to match
> > hwmon expectations. Am I missing something ?
> =

> You raise a valid point, not that could happen today because if the
> sensor type has a value we don't recognize, we have not registered it,
> so we would not even try to read rom it, but let's be future proof.
> =

> > =

> >> +=A0=A0=A0 }
> >> +
> >> +=A0=A0=A0 n =3D (s8)sensor->scale - desired_scale;
> >> +=A0=A0=A0=A0=A0=A0=A0 if (n =3D=3D 0)
> > =

> > Indentation seems off here.
> > =

> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return scaled_value;
> >> +
> >> +=A0=A0=A0 for (p =3D 0; p < abs(n); p++) {
> >> +=A0=A0=A0=A0=A0=A0=A0 /* Need to scale up from sensor to HWMON */
> >> +=A0=A0=A0=A0=A0=A0=A0 if (n > 0)
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 scaled_value *=3D 10;
> >> +=A0=A0=A0=A0=A0=A0=A0 else
> >> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 do_div(scaled_value, 10);
> >> +=A0=A0=A0 }
> > =

> > Something like
> > =

> > =A0=A0=A0=A0factor =3D pow10(abs(scale));
> > =A0=A0=A0=A0if (scale > 0)
> > =A0=A0=A0=A0=A0=A0=A0 value *=3D factor;
> > =A0=A0=A0=A0else
> > =A0=A0=A0=A0=A0=A0=A0 do_div(value, factor);
> > =

> > would avoid the repeated abs() and do_div(). Unfortunately there is
> > no pow10() helper, so you would have to write that. Still, I think
> > that would be much more efficient.
> =

> Sounds reasonable. Thanks for your feedback!
> -- =

> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
