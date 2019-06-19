Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5134BF79
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:19:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uMVp0w3ifCetLpdgFNzIxoY9RzqR4H4VYMYAlsCj3pM=; b=Q2AwGVugwTyGBd
	tR9bOblPrCZT515U1kfN105VRaZPHRu61VHs3gkA8/CXd5obdwaHlg/1m8FhfD0DvtDSTwjI1M5On
	zw8KdqvvsdDJbMeFHI7eGIw/BVJlnQlb9VLOsVll7mDCicpJwWCPggGbYYSd/VUbuAbeIlYSZmIlT
	f7DZq7agt08IydTJdV3xZll3TyZo9UoMQH/mIpQp3DyDKHLNb69knExffjjU5kEKhS7s201MjKU41
	4TpTdKfsRsmGhO0aNbZV6ueRBZgGoav92bdbeBRF9xD5Vo04GCsxtriifvV/fqzL+97w8V8yVMfZw
	eYFplWHRFgIufjvFfVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeF9-0002rp-7l; Wed, 19 Jun 2019 17:19:31 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeF1-0002rO-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:19:24 +0000
Received: by mail-wr1-f68.google.com with SMTP id x17so59316wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:19:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YSHXApb/QZTy9FH4NqMivJMJI0my9DBc54bc3V6ZLlU=;
 b=ikWuyT6IbPI1SHBgWiMeBLpNW+ms5BYZlnJk/xDw+JJOMx9RXYcJr4eNwCPtL1jkR/
 6JEdUtKVUxYRcGNfC36z6HA1Tl8IThcyhchkvDxcLeqdu3e5UOGNNUkJrzbVHQfv2ktf
 1ZUmTbcgPweRsac8LboVySjROarRchjYZwFZqBStflORivws8TjGwl4wdZHSJ6AoTWQV
 dz/umdCx7Uogo/E4djd1Mrmazc4bVQVYvvvts71CSeVHjbWGV75KPvWBsBqlfshh/vIu
 LWJ2dcM9is0YB5CFCPDCDlTQ0sS9TT+7GWd38MvDi5ll1Waqvm9mJv1DGIkCf7rx9/WJ
 wLOQ==
X-Gm-Message-State: APjAAAXjhJjfQuDezsCAn7s64qvudOOe0bVxvGz5EKCjmWu9Fcm+I3bx
 ATxDA/pPGhvOh+rI8i4K3FA=
X-Google-Smtp-Source: APXvYqwty5Jfr1k3SfjRZOwaKl9aqzAMOMJYJNBmXyW+H/bMRuMbgg5Saekb/fuB24oIyl8AT3kc9w==
X-Received: by 2002:a05:6000:1203:: with SMTP id
 e3mr22889711wrx.300.1560964760735; 
 Wed, 19 Jun 2019 10:19:20 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id z126sm1166666wmb.32.2019.06.19.10.19.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 10:19:19 -0700 (PDT)
Date: Wed, 19 Jun 2019 19:19:18 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
Subject: Re: [PATCH][v2] ARM: dts: exynos: add flash support to galaxy-s3
 boards
Message-ID: <20190619171918.GA24076@kozik-lap>
References: <20190615170428.GA3447@kozik-lap>
 <20190618001742.2828-1-GNUtoo@cyberdimension.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618001742.2828-1-GNUtoo@cyberdimension.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_101923_289961_7B2A64B5 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Simon Shields <simon@lineageos.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 02:17:42AM +0200, Denis 'GNUtoo' Carikli wrote:
> From: Simon Shields <simon@lineageos.org>
> 
> The galaxy s3 boards use an aat1290 to control the flash LED.
> This patch adds the relevant device tree configuration to use it.
> 
> Signed-off-by: Simon Shields <simon@lineageos.org>
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org> [rebase]
> ---
>  arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi | 32 +++++++++++++++++++++
>  1 file changed, 32 insertions(+)

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
