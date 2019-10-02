Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6545C8FD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 19:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvYehLi3/lPkQrX79TUAIqktp/6o5gQUChZDid1ZR+s=; b=D5+tDdQR82imGT
	WXB8HBlT2KHSl/CQ3kOWciTIEcAr/fFZRICdfQ4OX3e+Rn9nNeAQgNYakIvNpXgLKfMYR2fWv221Z
	YoSPXGQjA9R0JEVKyqS7aZhVFsoVM+dDzGqV6R9bnjYg0SMyaWQkrT6kOHVonkFHNSrtOvb0WlcZj
	inmS7TelogP2kk2Mz01dSxETuVAKcWZI8KTM9DnbhLSSqdWen/Z5DKmKOYSDEu5MeF4Cm4L1X7ETO
	OSwyzrzGjA55VZpXfanMgsadYbZg5mZZ1Zs+SmC37I10G5EHqAbVS4MHRHspbzKHReH8ICePHD1cU
	KHm0M9z+HVr8B36joamw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFiMw-0002Cn-S9; Wed, 02 Oct 2019 17:24:54 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFiMn-0002C8-KJ
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 17:24:46 +0000
Received: by mail-wr1-f67.google.com with SMTP id n14so20567540wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 10:24:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8OID6bEMxv+Gv/QZ0YNXTE8bbklUElxmTKC2iUlX+wc=;
 b=FXvvzDkaCmUc2XDUkUvOoKYJI0MGl0ZBAnYJKF0F++dzjOqH4yU8Khn6lcdWiL+lUP
 5sjiyRDyU2nMoUqHr1X/qI8c1Cvmol2vcYOzqIxh029ti9BNx3CWF3cNtvm9DvcjQ8pA
 LllUIxhXxEJghES2F2RDQy99mm6OrNWYO+xnVRcVg0PeJ0SSsH1//OWWme4dNDYEOhlf
 qcZ4/xnFqrnmT0XD2edg/RnDGlepWMIJytQ2JfgzTwGIbmQJ4VYOG6TH7BJLrT03M9/4
 IyNG0FvnKxqb0lN0bgxRBykL4u7M/egtuUUmjfPlDu4tPV7DAclp57h9BmlezixdGONU
 TpxA==
X-Gm-Message-State: APjAAAVqGjtYdBUDTkqscbr/kkGC7MktkhKUqV8SUdPt958AHFdG6ZCO
 qnOfvmbvXqX+fr228uF+Do4=
X-Google-Smtp-Source: APXvYqx57q0j9xKZVurytfcIVWaGsSq1z7w9C8yIVXe6bOgJ7O5sIHMewl93NN5Ecs+5iEJ0GKvLSg==
X-Received: by 2002:a5d:424c:: with SMTP id s12mr3652381wrr.221.1570037084261; 
 Wed, 02 Oct 2019 10:24:44 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id 26sm7246476wmf.20.2019.10.02.10.24.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Oct 2019 10:24:43 -0700 (PDT)
Date: Wed, 2 Oct 2019 19:24:40 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lukasz Luba <l.luba@partner.samsung.com>
Subject: Re: [PATCH v3 2/4] ARM: dts: exynos: Add interrupt to DMC controller
 in Exynos5422
Message-ID: <20191002172440.GD21463@kozik-lap>
References: <20191002060455.3834-1-l.luba@partner.samsung.com>
 <CGME20191002060505eucas1p2efd80ccde8c728973df8d932580cd58b@eucas1p2.samsung.com>
 <20191002060455.3834-3-l.luba@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002060455.3834-3-l.luba@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_102445_670604_623F5DB3 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com, linux-samsung-soc@vger.kernel.org,
 b.zolnierkie@samsung.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 08:04:53AM +0200, Lukasz Luba wrote:
> Add interrupt to Dynamic Memory Controller in Exynos5422 and Odroid
> XU3-family boards. It will be used instead of devfreq polling mode
> governor. The interrupt is connected to performance counters private
> for DMC, which might track utilisation of the memory channels.
> 
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 3 +++

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
