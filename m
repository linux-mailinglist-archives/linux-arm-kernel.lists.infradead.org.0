Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9631CE10C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQoQgXZ4yHsFuZDprR9kt6jOo4VCq57aPOqPIubB3ZQ=; b=IRfpg0X+d4lJEm
	WL+eEaJe7hHb5Fvgi4WvbQhBbkLQEeHN7fGBmfH8ep9H3a2CY2rM1GUcQobUc3/txn13zFU75Ulto
	0GhQDEB9gYwMfBlu1ONHjAXH3NamMqDhAEpKs3MvZzl5vFkgYKPhxYOodgufbNETU4r0Qa08K7muI
	uUb/cNisjzPtq2hpMwPPeGrSTyN321XjBW/uJ0n0TFKiLS10phVouICnCut/jSklXx2Mw/0Q5SmQp
	dxo2F4JHxQlButzDG2vBDVtkyEMXgwbNXOhhR1fVBt2q3qzpd4U6/x1hsiWXQcC2JMP4Qy+s0oTFp
	Y2M0VoOKJDGedW71+KKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBlg-00074O-U1; Mon, 11 May 2020 16:59:04 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBlX-00073h-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:58:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id t16so4175645plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 09:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/050qfJ93sW4lLOTbSTbI1quifuX07x4Ug4l6sawsaw=;
 b=k4meKUSx1VcNFh0d8UQiBhM67iGelQTg5p104vT+K5hAqKvRAtLK3hNjXOHCas+u7y
 Y8OByJqu4RNU8G5VD5Knc6eBHU0BRWIaWWxMc28JAym5OFMoUg9Q4JywBA6VZaXLHUT9
 Dfs8GWJupDNkqNX/geKvgWMOKLginkX9+2IhU2gM3pZ22umGgBsXOX0LYVPp6ZuY/LVT
 LWVjkGrp5rUHewFiigSuNt1FSAJYE4KYKW+GI8h99wAoGfr5CDUpOs20dL77L4p0zehz
 exRkC8g3MTd8oV8LREgDRIKweMoETCZdUan0uNp7qbrrqA8I1SBqq4x7wvCRKj56F1By
 bjOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/050qfJ93sW4lLOTbSTbI1quifuX07x4Ug4l6sawsaw=;
 b=mB8EWw/jKXO9bTsARAxcTx6Y9gS/eeAUAGl74k2wxXkg5B3yB49976Q66O/4m4G7e3
 f5Ge0101c8EkwInKB0EcFg7c4qhD1qlXRdEwfkDYcv2ixHj26ZQA+oB/g7cILTos6kpC
 sRxE8dS4ybD8OXkpnmJ+BPhDkyHH/GNWc1gCCCxoZRw8nSUI76x4vmu0Q+cRMJbkPkZO
 Bh4NgXyFRcjMsG7n0AP31pTFubIA0ZY2qNstswzCyI24OimitLWtRvCZDklKm/HPcwAM
 ntM5jJDfFKm25iD/ikPb53fNwWA0tLErfIVI9raR70Q5FbwY3oA/AcM7YampYonUN9Tk
 Gubw==
X-Gm-Message-State: AGi0PubhZAOIohoUYlp1XEkgD63moY7OBgAEWdtk229T37j21ZBat/aW
 ygwK7fANuIo+8BIBi9YZWNfDIA==
X-Google-Smtp-Source: APiQypL6tL6YIy2dWdZgtY2PfLN89QTp9W/mkGnBVqR6ETrEu681DfbBZeIWFIx98Ge53JPtN6uVlg==
X-Received: by 2002:a17:90b:b07:: with SMTP id
 bf7mr24037509pjb.231.1589216334380; 
 Mon, 11 May 2020 09:58:54 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x4sm9684537pff.67.2020.05.11.09.58.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 09:58:53 -0700 (PDT)
Date: Mon, 11 May 2020 10:58:51 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Kathiravan T <kathirav@codeaurora.org>
Subject: Re: [PATCH] coresight: platform: use dev_warn instead of dev_warn_once
Message-ID: <20200511165851.GB13202@xps15>
References: <1588933721-18700-1-git-send-email-kathirav@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588933721-18700-1-git-send-email-kathirav@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_095855_500937_3D9F3C42 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kathiravan,

On Fri, May 08, 2020 at 03:58:41PM +0530, Kathiravan T wrote:
> When more than one coresight components uses the obsolete DT bindings,
> warning is displayed for only one component and not for the others.
> Lets warn it for all components by replacing dev_warn_once with dev_warn.
> 
> Signed-off-by: Kathiravan T <kathirav@codeaurora.org>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 43418a2..b7d9a02 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -284,7 +284,7 @@ static int of_get_coresight_platform_data(struct device *dev,
>  	if (!parent) {
>  		legacy_binding = true;
>  		parent = node;
> -		dev_warn_once(dev, "Uses obsolete Coresight DT bindings\n");
> +		dev_warn(dev, "Uses obsolete Coresight DT bindings\n");

We made a concious decision to use dev_warn_once() rather than dev_warn().
There can be a lot of coresight devices on a platform and warning for every
device doesn't do anything more than adding noise.

If one device is using obsolete bindings the others very likely to do so as
well.  While fixing one device, checking the remaining devices should be
intuitive.

Thanks,
Mathieu 

>  	}
>  
>  	conn = pdata->conns;
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
