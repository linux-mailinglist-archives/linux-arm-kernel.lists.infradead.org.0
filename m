Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F51464EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeUULgFAnCEXg8Rlrz6czG0MQS8k6Vegkyfpg6WEC7U=; b=TnTSkI9vTlF0Wq
	+9yuIH3nuaC3YXeNWkmDv7IwJjyOhgh8ymmdeZMow8WjKPjQcB8O0TJ/D3SRCik4s2WpQNOyvFBqv
	1YIp57XAy/LfiJSxE9SkbTz5ZD+Ju9l8bi1yY8tlhxJF5jFn97+AGG5etLRoIcZJbBGB06MQak0Bt
	VksAZwTvVstQnFAbmlHpzVP9e2ZvyUR1OkXwMKRZEf1aWfeHMHHXSCqMfobASTxRVOv4pTYwume/e
	ErAVWufWFKqRAGuzyvO3gpguZSJK+dytoaTC/id5ftBFtnv8RK8uBTUsbK4zTnFAPxFmKDZ7N6YDC
	UtMwfgRSrX2W9rBKERPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpNz-0006WA-TY; Fri, 14 Jun 2019 16:49:07 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpM2-0004SO-Oo; Fri, 14 Jun 2019 16:47:08 +0000
Received: by mail-qk1-f195.google.com with SMTP id t8so2104943qkt.1;
 Fri, 14 Jun 2019 09:47:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IOo1pvRWjmacOSCq3ogqjxZuWWdGzC13ArgyKbSDaEM=;
 b=NZS8x/fKM5aVAvx34bfjWfm541wNy4RBj2GHcxfVszkm0bwgZKfWNjUmptmLLzgXJb
 OgkutMZ3uuExnwvq7wC1z4FOe60Xr/aU3Fh7g/OeUGxZIbpNzv1mYNvBihTqwG2d1g9/
 1f+xiM8o3z240r6uCSU6IgxsnArqw/bhBTTQuIehO2Q6Oe7P8aYArJ9PNiMWsk8OAEhi
 UuF2eFXhcQKeFLRuO3t1IFywxXB4s3zATM2FuBtAotxmXvZQDapEcYd2hgrNvjrX7dCe
 uDTssjtQNIDiNUTM9r8JAC0NNWeIG7VaXi0SjSIVTydlIbRqqEyf36uHocMRADsD0GIH
 kqLw==
X-Gm-Message-State: APjAAAVIX++dw/nPco0bI9BEhSY7mb9KBRpl16sb6NQk+GdNTAZfCxVt
 Uq/2sz3L5uOT9TuG2SNg8Q==
X-Google-Smtp-Source: APXvYqwI93cayeCpqkq1zgPJZnyXYH8EbxpzVgERa0diD8d8GwuLWqKf0sVGvoLXazEVSJSYS9lgBg==
X-Received: by 2002:a37:d8e:: with SMTP id 136mr63465224qkn.259.1560530825285; 
 Fri, 14 Jun 2019 09:47:05 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id j184sm1878283qkc.65.2019.06.14.09.47.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 09:47:04 -0700 (PDT)
Date: Fri, 14 Jun 2019 10:47:02 -0600
From: Rob Herring <robh@kernel.org>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] drm/rockchip: dw_hdmi: add basic rk3228 support
Message-ID: <20190614164702.GA20322@bogus>
References: <20190522224631.25164-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522224631.25164-1-justin.swartz@risingedge.co.za>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094706_834484_6EEA3177 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Justin Swartz <justin.swartz@risingedge.co.za>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 May 2019 22:46:29 +0000, Justin Swartz wrote:
> Like the RK3328, RK322x SoCs offer a Synopsis DesignWare HDMI transmitter
> and an Innosilicon HDMI PHY.
> 
> Add a new dw_hdmi_plat_data struct, rk3228_hdmi_drv_data.
> Assign a set of mostly generic rk3228_hdmi_phy_ops functions.
> Add dw_hdmi_rk3228_setup_hpd() to enable the HDMI HPD and DDC lines.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  .../bindings/display/rockchip/dw_hdmi-rockchip.txt |  1 +
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 53 ++++++++++++++++++++++
>  2 files changed, 54 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
