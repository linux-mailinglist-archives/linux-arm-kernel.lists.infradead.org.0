Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B373991F14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 10:37:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUwzvf7c71n3Ri64hACTxKqWvPjGb0STUXFoL9dzaKQ=; b=cSXwwHi/4rFTh8
	XCrh2PanfSlfJEZmJAVry81MMPym9B3iR441AfMSRtqhee2JzklMPhz+NUJNbkFD0XqxNyyFdm+RQ
	ciduuAc0vkLMpzlim2F4o0OIfwz1XJbyCEIMvZ0CCwIOYKchAXrKwwjdXgk3m4wcUQDKPSeyA/STR
	K3sm1okUmlVHUEbIVJDABXFUZ1fcj9D3y4uU9fXENM5f2p7tItvcAwRtYPKG8WM021IDjSFQBxd/8
	SvEO723B7GJBORM/ynjyi1EuZeCjT2KrBuHpdixGsZRN4oEfWeSFr+2vz0WNCF/HBd+OI1ZRDs/wC
	uhSX4+j0QHZiLwzgH12g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdAf-0001Ns-7u; Mon, 19 Aug 2019 08:37:45 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdAK-0001La-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 08:37:25 +0000
Received: by mail-pl1-x644.google.com with SMTP id h3so631557pls.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 01:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MLF4tD6+FJYl38ePAWlkoj5Z15+ny3oYCgbHrSJNz8A=;
 b=LCxXHuzlxnVHVppnji+DvHkFP/SZLymrp5bS89fSrkUX9wmkOXSaBohOb7SboQaqF4
 lfmi3bvVVib3WfL4+7WDoC8xYs+s06jY207Ob2AfP/3njR2W7SomPIqQ9waB9mwUn0YN
 c05eHQ8l8d9OizbMy/elctv0YCkurzezb34QQ710k/u2H/d4cQy/6Ws1kxU3yIiSnxvv
 EIhQPimc5Zx+TnB2PZgZihS+V/hUdmY6H/AmZzhTg7XiFMYt6HB/JqGoTvjQ3h+b4FTl
 cHD7uh1oD0VMfE203q/6vB2yuwb0rctRYFg/fFid3KKinDq1ArBn34NHt/+21a37+Al3
 W3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MLF4tD6+FJYl38ePAWlkoj5Z15+ny3oYCgbHrSJNz8A=;
 b=PthsVjecoMwU505mZPv2zst4bXZWOjaa1lWdkN3A6HgCiINUAAqvPcC9c6DIbDB8su
 omDT4ecMlAQZoNRYNFfuSWqWYJX3QxhbxqwLgDXGdnBMR9veTt1z+mLElm9E1gexTKNC
 mOXWxf6bvDqsCzYvsUaJQJYqfL0soiqA9H+uloLCu+IEawDQwcGzOmkuxZMmmN0auZh5
 tQDiO+1+Nd/7wdD1J9C+Ocyx/pmb8aNarPUXMreGxVVyrEfG6Sd7adjCoEac/D89TVFk
 ApsS4xRTokgmnCfL1wdYMKqUAox+p18NKDJuomhlVcRkHb1CGB2elXVH1yTM6DDd3qEx
 QZQg==
X-Gm-Message-State: APjAAAXNKggeazwbP3kTQ0F0bTzorET3ry/KL4iW8Y5/6YLp4qJZNf/U
 rZhFE8qQ/NdoJyTfm6gmP4SnAA==
X-Google-Smtp-Source: APXvYqz9ND/C3CgHtCCh37J8vJRsiNrGnMOQWJPmZy8F/EO5ELC+GGDRZy6iFapGHd4fJ+RtC7S0RQ==
X-Received: by 2002:a17:902:5a04:: with SMTP id
 q4mr21659669pli.280.1566203843709; 
 Mon, 19 Aug 2019 01:37:23 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id z24sm20403594pfr.51.2019.08.19.01.37.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 01:37:23 -0700 (PDT)
Date: Mon, 19 Aug 2019 14:07:21 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH RESEND V2 4/7] cpufreq: imx-cpufreq-dt: Add i.MX8MN support
Message-ID: <20190819083721.w75clbpu2vtoeocx@vireshk-i7>
References: <1566109945-11149-1-git-send-email-Anson.Huang@nxp.com>
 <1566109945-11149-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566109945-11149-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_013724_614515_F2BE86FF 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, abel.vesa@nxp.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com, festevam@gmail.com,
 mturquette@baylibre.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-08-19, 02:32, Anson Huang wrote:
> i.MX8MN has different speed grading definition as below, it has 4 bits
> to define speed grading, add support for it.
> 
>  SPEED_GRADE[3:0]    MHz
>     0000            2300
>     0001            2200
>     0010            2100
>     0011            2000
>     0100            1900
>     0101            1800
>     0110            1700
>     0111            1600
>     1000            1500
>     1001            1400
>     1010            1300
>     1011            1200
>     1100            1100
>     1101            1000
>     1110             900
>     1111             800
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
> No changes.
> ---
>  drivers/cpufreq/imx-cpufreq-dt.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
