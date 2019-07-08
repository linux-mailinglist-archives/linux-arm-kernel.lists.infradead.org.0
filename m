Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE386199A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkNMcI61CxGQUd+/0S16o3yEU5ijVnNQFRrlGuPwjtc=; b=RWk2WVOr6tvchX
	ruRDnr1kb1CmwYAiiTp/jj/l7jk57Do6G/SKnMhRNQiRO+0phQhm5gtJwHa/WqIm9P+oNcYUrqMOr
	vXOW9XVRe77SAcUW96+Dba8PnLuNibWqFiD3xRBoy1NCod2oxlFqltmImuTMeNqHfNO23xoQD1Y3E
	xcP7x/HcccmJJpV2qDoygZBbSBc6zfSkZoQv/7zrQxhuqwbPZcf0Yy+La6FPpqmdE9bmf9ZqyTL32
	uXTan9T64HdbMyPNg5lScHpyoBLca96HIXx7DUIOPc9saA560FREWuPBUNsbhJWCEEviv7Mi9r4Xu
	Vl5EmFCh1rg4POV5Ol9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkKgO-0008At-Ui; Mon, 08 Jul 2019 03:51:17 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkKgC-00089W-BF
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 03:51:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id u14so5711022pfn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jul 2019 20:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/1pK4KTnhC89gqGYh7RqYsGWCRyTdp8pAHVuXCVYQM0=;
 b=rcOUQmSGNhVpug3mIyjRLWjXiIaNo6rSisJB7mCEu56J3i3r5wszqroltHwaefo8vt
 FJDolSTb9COCAUPHEGmXp44a6WgYMNaoFB4kjRxvZjojSvG8SQMDG6OYic4T1MQE6uA2
 7Vrndp5vb1fxgXpz4LpAvyqwp0UnYxe4Ggcp7XsuGSF4TAzn/Biuj8atuRDXEXY5mUtJ
 KEZfwdEobRo9Gd/bIam2/We+/7UualkhGP2pQR2FafF5FOQ8LRRCWVZOW096GA+lW5Fm
 LZcUyPzr5ka9SttykNopIJMhRkEI2r8N8aBTz7NxcdIA/4wmiwDRB5HqwB831axXIcfV
 WuXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/1pK4KTnhC89gqGYh7RqYsGWCRyTdp8pAHVuXCVYQM0=;
 b=Pa3A5TappvqBtphWXbS8kvwR5E4OuZWvxy7QZMBkl8lHaeQrJ9XI8bUi8T6iCXf5N8
 hXqH1f1vcGXLbjnXBUaPJRz3bS19P1li0gK4M6YdbOeTr05pNkQalVgh9621oCkj2E2C
 HkXfuhUOzhodjmVprC3rpQ/zv/dPCM/zGHOTZPmx1vcptd5+01q6hIByZ3MEFI5+Dyi0
 QIz/eUN41mhY+sEUZOJRaVim80+M0RgIQcat7ZTRjhDDSsAR2UrqCon0JdVgo4fjNCHN
 kfHLxbsJ0JzSWlPLWzsNKnqH+EYtmEh6q4VSxYI673JFjrx9jk/l/Whti1phJYNSsZwJ
 BL5w==
X-Gm-Message-State: APjAAAUT0iacH7sKwE8tMXkzQWJklsmx2PwwjX6ebuD6n5ypI35p0YMx
 OwQt33kE+GsE2L9JqMjyrAJoUQ==
X-Google-Smtp-Source: APXvYqwChaIoPvXaa69JPPf8K46yTRYkCg4Tm7IDyulcIk9nICKW8Ynmx8kiGVyy7hwFcgTvMhQjWg==
X-Received: by 2002:a63:7e17:: with SMTP id z23mr19550031pgc.14.1562557861027; 
 Sun, 07 Jul 2019 20:51:01 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id b1sm16054904pfi.91.2019.07.07.20.50.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 07 Jul 2019 20:51:00 -0700 (PDT)
Date: Mon, 8 Jul 2019 09:20:57 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] cpufreq: imx-cpufreq-dt: Add i.MX8MN support
Message-ID: <20190708035057.h2lgadm56tgdqsor@vireshk-i7>
References: <20190708030308.1815-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708030308.1815-1-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_205104_452217_50A7F31E 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-07-19, 11:03, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> i.MX8MN is a new SoC of i.MX8M series, it also uses speed
> grading and market segment fuses for OPP definitions, add
> support for this SoC.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
> index b54fd26..4f85f31 100644
> --- a/drivers/cpufreq/imx-cpufreq-dt.c
> +++ b/drivers/cpufreq/imx-cpufreq-dt.c
> @@ -44,10 +44,11 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
>  	 * According to datasheet minimum speed grading is not supported for
>  	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
>  	 *
> -	 * Applies to 8mq and 8mm.
> +	 * Applies to i.MX8M series SoCs.
>  	 */
>  	if (mkt_segment == 0 && speed_grade == 0 && (
>  			of_machine_is_compatible("fsl,imx8mm") ||
> +			of_machine_is_compatible("fsl,imx8mn") ||
>  			of_machine_is_compatible("fsl,imx8mq")))
>  		speed_grade = 1;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

@Rafael: Can you pick this one directly, no point sending another pull request
for just one patch. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
