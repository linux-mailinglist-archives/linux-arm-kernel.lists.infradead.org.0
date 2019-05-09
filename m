Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9474187A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4um+zI5tmAAcmE0WPADbBqQChH+qPiFvQiPTzDJrUI=; b=BdG6LPD9wLYRNv
	fQ2TqbFanZieByJLnSN4nUbjXrlZgjuRXarJPX+UDxXbOIVHK79UsV80Z8P9jqdEO1j8zW4QJrMiE
	UW/g7hKYqnjnoBZ0MeX5WwXph2hCxAdbUPHarVkvt3N/H5gpSFLtCGnyAVJCSSJCKehJ1VwBb3R6C
	Z7LmAYWy7Dv/oc4zvlsrE8MXGgf9Dxfe+9I14/+b80usjHhom8XqwApmju2HUtQ3sCzFXF+Sm7hzw
	i3qIDM/ugBRmgo+TnQr/0YZxOxeUoMzpLBcJ1Br8848HrxKlAnMRM9P4sQ7aC9V3mlHeEjOMjji5W
	wdrhXxpZHzBZpcwqnDFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfHV-00035G-2J; Thu, 09 May 2019 09:24:01 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfHA-00031d-Ei
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 09:23:41 +0000
Received: by mail-pf1-x441.google.com with SMTP id s11so988597pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 May 2019 02:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qMvKlIPlrNL8Lr3tsJwCK+5Y/oer0uCBV35dDO8Zkrk=;
 b=NIb2WRlPHYJaY9APSYPOmpC5vacCSIV3cMrBiWQ3B/dHkyFxJvA/UfHvbpyMUbKDCz
 gsufdXoTyBDhCnJyNmutfJSncarmM/zS6n0dbQA8l6odxlzRq6vvgDBAcaAz4Y3CprJ+
 TYr/norj9dDW0G+uGhWb6id+gMBiW4Yp7jk8QLbjv4shl0/JdOjGCOqDJNr8kIkjJeP1
 To4l6DWyIZpgoDAKXVGV5D4hssD0JJYO28tTGbBiN/ICU9cfY4dgv8JvNeoZ6fIExqES
 oR/gnsa/+UMi1JMtVbQ/VajewNslieyh6+0dGBjIeIsRQmQZfmJPyHm8JRhUAoudd9N1
 fwiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qMvKlIPlrNL8Lr3tsJwCK+5Y/oer0uCBV35dDO8Zkrk=;
 b=Ynn/I11WK0csXtfZzkXaC4Z9S9Z0Kk9OpYcqyWrmDfO7z/G7WmxPnUTibIcLObQzJy
 L+hLrxULKz1T2ayHMk0r3sjV2b0o3sJdPpFMfHQ1OEHmF0oFxzChuKbs65rir77Xm0H6
 DCAWDpnMH7qcYIWcJygACwIjBdpIUn0c/B4l33hE+OkxHpVhg6tF3m3GgDfTo029Wkq1
 k2jMm7GypqECCH1B1a4G9Ofs8Z6WKN6cvuqm6YTQ6mnjtzWn6yCe6dJY7RVD6QZnI7Ll
 /+ZD8VydI6TNe9ZgfODBRoqY8mPUTx6hS5thVb+vbdbKqGXspMEkBdzpyG0R4Qwm504x
 aC+w==
X-Gm-Message-State: APjAAAUvT0yOfrm7ud+By4Dp2GT/E9hNuFokuQdVtJ8BJIb3ZCCekmIw
 Bqfvxvo6go1T/h/twiagvbfC1A==
X-Google-Smtp-Source: APXvYqypzpGZwMmGq/H4pQzwC/KWTbyJwztPpSpuLhtDasGDGxwbvdZQyeDTYFPbKi+URMbMIDz2NA==
X-Received: by 2002:a63:5608:: with SMTP id k8mr3998732pgb.393.1557393819018; 
 Thu, 09 May 2019 02:23:39 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id 124sm2897822pfe.124.2019.05.09.02.23.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 02:23:38 -0700 (PDT)
Date: Thu, 9 May 2019 14:53:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v3 1/4] cpufreq: Add imx-cpufreq-dt driver
Message-ID: <20190509092336.jw54pzq7i7gzcuky@vireshk-i7>
References: <cover.1557236799.git.leonard.crestez@nxp.com>
 <607242a278a4532d0b4285e0fb56abfd5767fdd1.1557236799.git.leonard.crestez@nxp.com>
 <20190508035402.7pbikzpkzxxesmlw@vireshk-i7>
 <AM0PR04MB64349B11B2A914F705B6D302EE330@AM0PR04MB6434.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB64349B11B2A914F705B6D302EE330@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_022340_568780_49B03971 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Lucas Stach <l.stach@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09-05-19, 09:03, Leonard Crestez wrote:
> On 5/8/2019 6:54 AM, Viresh Kumar wrote:
> > On 07-05-19, 13:52, Leonard Crestez wrote:
> 
> >> +config ARM_IMX_CPUFREQ_DT
> >> +	tristate "Freescale i.MX8M cpufreq support"
> >> +	depends on ARCH_MXC && CPUFREQ_DT
> >> +	default m if ARCH_MXC && CPUFREQ_DT
> > 
> > As I said in the previous version, the if block above is redundant and
> > not required.
> 
> Sorry, I misread and thought you were referring to () rather than what's 
> inside.
> 
> Is "default m" otherwise OK? It's a reasonable implication of ARCH_MXC

I think it would be better to keep it disabled by default and so
removing the line all together would be a good option.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
