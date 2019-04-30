Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3EF10275
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfVN+69eVzP7N8YT/alzNt0VqKHuMAkff4jRYdUcrUQ=; b=Zm7krKr+WOyKWR
	rhuNT0pt82O037yrLkUEoZWnHZqbvuOVOxcYvobSASv731jShy8Q81ZvhWREYkZO4WWnsj75AwU8K
	TfRr5YSSgurQdNXT49LY57rbfCK9MjLNKZo0aBlz0ub/9OOHki7xIzQqo2rfHLE6ujlhyuBugJgum
	ALTHUqB8MuyJSLiPrh7oT+tK2Uuo1BjMTgin5nGZSjveUUUkjGFaRR8NM9UJZkx4hs5na2BAM9POh
	9h4bjSoOWAotey23e5O9QST7f7uJsEfc8C1XXnHJ79aMp/NjMpp0IId219uSbPCUWH4NtBGdq34QI
	r+tQ/sHZmUfJCdNjvaIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLbMc-00058t-Py; Tue, 30 Apr 2019 22:36:38 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLbMW-00058Y-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:36:33 +0000
Received: by mail-oi1-f193.google.com with SMTP id l203so12671419oia.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:36:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/mJXhoJojCpUvedjSobrKy+qo2rbTnzoSCiZ/p9K6Ps=;
 b=cMJ2H2t4a55p+gFzmLTuyuz2DxXrksUdD5PNFhgwy1oUtNzlftCcTw3WkZo7B2U/uS
 wv4RfPsYduUPVd0lX1g+yjkwdC8bhll1efvTnwN5MKCV4R5Qyl+Y4hc2kNtg5xXipRTo
 x8qvAo9+OG19ijkNMi9b8dDMpyNH+ym9BRk/ftrAn0WQoqHjNv2Cid/qC8VkeoGol7Qp
 pq4wN3Jrz1vS0D8iks6eMIUVwsojPH/Pcj83HQs+qE+giq9nAbayzT8xpU8leFXxn5Bl
 Fo92Qc7Z+Gg9UvSy9w8YzGv6+sV7+dYD2RH9BcsADLR5AA4I4B9N8vkaeUzhEr3cC5t0
 BEwQ==
X-Gm-Message-State: APjAAAUE69WsDh9O4CgVwWhli6dF0vw1ht5WqeBMIIhsjxzewbzOlg3l
 KShTJNsOxZS/k4Tu+wwGPg==
X-Google-Smtp-Source: APXvYqwWpWTkDLi/5cn+5ZNlMzpXt22goFTzWSrZmnH77oxGSI9CYCDloavg5F/4ChkQG7MOO7VPjA==
X-Received: by 2002:aca:b505:: with SMTP id e5mr4667584oif.136.1556663791364; 
 Tue, 30 Apr 2019 15:36:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e21sm3956588otr.38.2019.04.30.15.36.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 15:36:30 -0700 (PDT)
Date: Tue, 30 Apr 2019 17:36:29 -0500
From: Rob Herring <robh@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 3/4] Documentation: devicetree: add PPMU events
 description
Message-ID: <20190430223629.GA22317@bogus>
References: <1555681688-19643-1-git-send-email-l.luba@partner.samsung.com>
 <CGME20190419134822eucas1p29c6eff0f500311749b33c4f556123cf0@eucas1p2.samsung.com>
 <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555681688-19643-4-git-send-email-l.luba@partner.samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_153632_696359_9E853065 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, krzk@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 03:48:07PM +0200, Lukasz Luba wrote:
> Extend the documenation by events description with new 'event-data-type'
> field. Add example how the event might be defined in DT.

Why do we need event types in DT? We don't do this for other h/w such as 
ARM PMU.

> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  .../devicetree/bindings/devfreq/event/exynos-ppmu.txt  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt b/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt
> index 3e36c1d..47feb5f 100644
> --- a/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt
> +++ b/Documentation/devicetree/bindings/devfreq/event/exynos-ppmu.txt
> @@ -145,3 +145,21 @@ Example3 : PPMUv2 nodes in exynos5433.dtsi are listed below.
>  			reg = <0x104d0000 0x2000>;
>  			status = "disabled";
>  		};
> +
> +The 'event' type specified in the PPMU node defines 'event-name'
> +which also contains 'id' number and optionally 'event-data-type'.
> +
> +Example:
> +
> +		events {
> +			ppmu_leftbus_0: ppmu-event0-leftbus {
> +				event-name = "ppmu-event0-leftbus";
> +				event-data-type = <PPMU_RO_DATA_CNT>;
> +			};
> +		};
> +
> +The 'event-data-type' defines the type of data which shell be counted
> +by the counter. You can check include/dt-bindings/pmu/exynos_ppmu.h for
> +all possible type, i.e. count read requests, count write data in bytes,
> +etc. This field is optional and when it is missing, the driver code will
> +use default data type.
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
