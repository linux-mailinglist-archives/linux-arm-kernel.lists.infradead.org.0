Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2D113556
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:01:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfK4Z127C2qnYviJzanVq80Hun4G75az0/2zIzZ89DY=; b=L4YSRF8R3NAS3c
	BAcFA3SHW+MaoPjAqGxqt7PwIx//SUBC06iolz9zo7IYjFcoPgfZ7gnzy7N770Eu/D5vB2YVMBzes
	+B+kaRJ6mDRincjC3e+KbFxj/Zm2fcmRVhIHFbS57V/q63U9hAX/E7P0ezL2842krTIx3+MuJ0xH+
	ZH5k70GXemnz/zXdl/qVj3j0eKOmi7WS9c7o13Wl3SLzRkWObcgm5PT0PHgFfRBEluItsCL/ZFHvj
	rDzBzMuLiHhlhsCkuTZdjL2hOMfaEpKjVKpxCRs6RmjCM7LGxrQFQ64v5fALSTrfuBNc1MuKzwxzF
	yNYeEIgME+7MdSlIRkHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZuB-0004qy-4A; Wed, 04 Dec 2019 19:01:43 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZts-0004cI-2V
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:01:26 +0000
Received: by mail-ua1-x941.google.com with SMTP id x15so195935uar.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kLLyy4J1Ke9PrZQ4Qj04E9LcGP1qYhIJ+e8+Ik/qzcQ=;
 b=zvKuifqq2fTHKGaaySG8Ii7zKmTTY9KKpiGE8IyRXZiOwcFumS4AWFjMNkscTipP8G
 gTGDombWwvw1Z+YF38r87v7LJjM4hOMwpNu4XSvVd0lAcMpkab47C1XxotXliGl0Yzu5
 l8tWJhjBrk7Mwbr0JGLCsugek5MhtWEZD0zFOIsavSkPrJUkk2ouWFD+IHjYjfJAR/3W
 RO54ryk3Fh90qb1ZPrAw7iAxKkWDad/YNn3tiA6Cgf9XwVzZv3WoF4r+rbkV9YR8OiG7
 ojNZMcczVKCGSzgnwC3IzyYr8c84tPdMij/fTS9Qcr+GaM2OTnLw2USSCLIgrP1HBYLt
 8HVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kLLyy4J1Ke9PrZQ4Qj04E9LcGP1qYhIJ+e8+Ik/qzcQ=;
 b=GTfMFCqzkvyyVZcgbac+umw3PCpaqFRgENUCwwHj9wa/qb6XWSuTIgJalr7G2QZYw0
 OlPsEz6pKAAAzalU6lo21jk2few0qVNRQmmpspWfNPNPyzrT0i7dlWRv+Ll+29bHDnw+
 gwUeYgFXF96tQUv011WQ0A+y1N2z3itZSAri3SQ93Bj58LEkw2zom/6fw8DoooM/ExRg
 oeeHDDMApH3m0M9a8IXWwOllpZGn/eQxDwxzUo8JphOcZNMOzGw2TT9aFhzyC3guRCZa
 nkZlIWUJ3wBQU2R+JBU07l8pRFpZgHpyx4ryyET1pSa77tA8W3SsiFs1gi1/4B3Ccs1/
 EnCw==
X-Gm-Message-State: APjAAAU0j+xjC7JZFX+GtyjAWkDhzVwl9yze+HOFD6saHUyEvEG+lfIa
 AI7fFwREAcfKL4M9cREcWSmAIAaTbDhYnt9yhFvACw==
X-Google-Smtp-Source: APXvYqxXFbilFYCqRDvgO+JIAEXdda9SxuFIcHboobOrP9MObrVUHhvF1mZrUcbPZchI10idx8MMEc5SqXHZ02Drnoc=
X-Received: by 2002:a9f:3f46:: with SMTP id i6mr3792634uaj.60.1575486082135;
 Wed, 04 Dec 2019 11:01:22 -0800 (PST)
MIME-Version: 1.0
References: <20191030182132.25763-1-f.fainelli@gmail.com>
 <20191030182132.25763-2-f.fainelli@gmail.com>
 <CAHLCerP6ricempeG=x-a2_aA6__YqADPKAEG5y7qPYNcD2=47Q@mail.gmail.com>
 <9adf0bd8-99ee-0f38-4608-67c92ba42c88@gmail.com>
In-Reply-To: <9adf0bd8-99ee-0f38-4608-67c92ba42c88@gmail.com>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Thu, 5 Dec 2019 00:31:11 +0530
Message-ID: <CAHLCerN0bJC0sMtZ2DneZSStkeTjQKHZeTNjJ4A31yV07hPb_A@mail.gmail.com>
Subject: Re: [PATCH 1/6] thermal: brcmstb_thermal: Do not use DT coefficients
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_110124_228907_7D1FF827 
X-CRM114-Status: GOOD (  28.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 11:12 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> On 12/4/19 12:41 AM, Amit Kucheria wrote:
> > On Wed, Oct 30, 2019 at 11:51 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> >>
> >> At the time the brcmstb_thermal driver and its binding were merged, the
> >> DT binding did not make the coefficients properties a mandatory one,
> >> therefore all users of the brcmstb_thermal driver out there have a non
> >> functional implementation with zero coefficients. Even if these
> >> properties were provided, the formula used for computation is incorrect.
> >>
> >> The coefficients are entirely process specific (right now, only 28nm is
> >> supported) and not board or SoC specific, it is therefore appropriate to
> >> hard code them in the driver given the compatibility string we are
> >> probed with which has to be updated whenever a new process is
> >> introduced.
> >>
> >> We remove the existing coefficients definition since subsequent patches
> >> are going to add support for a new process and will introduce new
> >> coefficients as well.
> >>
> >> Fixes: 9e03cf1b2dd5 ("thermal: add brcmstb AVS TMON driver")
> >
> > I think you should fix the computation formula as the first patch and
> > then merge the rest of this patch into your second patch.
> >
> > I don't think the intermediate state of converting named constants to
> > magic numbers is needed just to convert it over to another set of
> > parameters.
>
> ok, so you would rather see this patch using the defined constants while
> fixing the formula, and in a subsequent patch getting rid of the
> constant names since they are going to be added to a per-process table,
> does that sound reasonable?

Yes, that way the first patch would fix a bug (and with a Fixes tag
potentially gets backported to stable), the second would convert over
to the per-process table.

Regards,
Amit

> >
> > Regards,
> > Amit
> >
> >> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> >> ---
> >>  drivers/thermal/broadcom/brcmstb_thermal.c | 37 ++++------------------
> >>  1 file changed, 6 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
> >> index 5825ac581f56..42482af0422e 100644
> >> --- a/drivers/thermal/broadcom/brcmstb_thermal.c
> >> +++ b/drivers/thermal/broadcom/brcmstb_thermal.c
> >> @@ -48,15 +48,6 @@
> >>  #define AVS_TMON_TEMP_INT_CODE         0x1c
> >>  #define AVS_TMON_TP_TEST_ENABLE                0x20
> >>
> >> -/* Default coefficients */
> >> -#define AVS_TMON_TEMP_SLOPE            -487
> >> -#define AVS_TMON_TEMP_OFFSET           410040
> >> -
> >> -/* HW related temperature constants */
> >> -#define AVS_TMON_TEMP_MAX              0x3ff
> >> -#define AVS_TMON_TEMP_MIN              -88161
> >> -#define AVS_TMON_TEMP_MASK             AVS_TMON_TEMP_MAX
> >> -
> >>  enum avs_tmon_trip_type {
> >>         TMON_TRIP_TYPE_LOW = 0,
> >>         TMON_TRIP_TYPE_HIGH,
> >> @@ -108,23 +99,11 @@ struct brcmstb_thermal_priv {
> >>         struct thermal_zone_device *thermal;
> >>  };
> >>
> >> -static void avs_tmon_get_coeffs(struct thermal_zone_device *tz, int *slope,
> >> -                               int *offset)
> >> -{
> >> -       *slope = thermal_zone_get_slope(tz);
> >> -       *offset = thermal_zone_get_offset(tz);
> >> -}
> >> -
> >>  /* Convert a HW code to a temperature reading (millidegree celsius) */
> >>  static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
> >>                                         u32 code)
> >>  {
> >> -       const int val = code & AVS_TMON_TEMP_MASK;
> >> -       int slope, offset;
> >> -
> >> -       avs_tmon_get_coeffs(tz, &slope, &offset);
> >> -
> >> -       return slope * val + offset;
> >> +       return (410040 - (int)((code & 0x3FF) * 487));
> >>  }
> >>l
> >>  /*
> >> @@ -136,20 +115,16 @@ static inline int avs_tmon_code_to_temp(struct thermal_zone_device *tz,
> >>  static inline u32 avs_tmon_temp_to_code(struct thermal_zone_device *tz,
> >>                                         int temp, bool low)
> >>  {
> >> -       int slope, offset;
> >> -
> >> -       if (temp < AVS_TMON_TEMP_MIN)
> >> -               return AVS_TMON_TEMP_MAX; /* Maximum code value */
> >> -
> >> -       avs_tmon_get_coeffs(tz, &slope, &offset);
> >> +       if (temp < -88161)
> >> +               return 0x3FF;   /* Maximum code value */
> >>
> >> -       if (temp >= offset)
> >> +       if (temp >= 410040)
> >>                 return 0;       /* Minimum code value */
> >>
> >>         if (low)
> >> -               return (u32)(DIV_ROUND_UP(offset - temp, abs(slope)));
> >> +               return (u32)(DIV_ROUND_UP(410040 - temp, 487));
> >>         else
> >> -               return (u32)((offset - temp) / abs(slope));
> >> +               return (u32)((410040 - temp) / 487);
> >>  }
> >>
> >>  static int brcmstb_get_temp(void *data, int *temp)
> >> --
> >> 2.17.1
> >>
>
>
> --
> Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
