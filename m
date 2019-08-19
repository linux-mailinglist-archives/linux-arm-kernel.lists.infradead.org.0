Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B279094B50
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 19:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvFQzk2hAzpg4PWVGBJWYOSpdrYxzbM1QXJ5anlwvE8=; b=bnd9tbVsGI0F2v
	7U0BArLUHvzNyHi4yU7GtB7bTvXh/exnJhSS9t1Md6iOD1WyrPoZEp56BXo745CJ61IBvLhuB0xiZ
	31z1nnUTdBzhlmaZSuVTY4K4GOHCwzPJ10Gc7bpTvpITji7keDF0P/NbKW6+K8qOnML3tt4ptTf7x
	hjSUUdXiT8DbUf5MUmAeesJbJ2x8F+F6E6X+JmUpMQWR0qhZvsMZjuM+gIogS+x3UmFp2DoSFBybF
	oR8xWqT319/l+UTcI3p0lroBru1nkBei+4ChDyjsfC2Fct2g/2c/rhdVkM+sPoprEZH6Rv5/jysWA
	0IYtIcNaA7m/0mWrC3OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzl9h-0003Be-0S; Mon, 19 Aug 2019 17:09:17 +0000
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzl9b-0003BI-2y
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 17:09:12 +0000
Received: by mail-wm1-f51.google.com with SMTP id o4so228829wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 10:09:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g1MHFcAEeER5KLs/4Du+ela2X0EQKeCWPmFOo3YeKyo=;
 b=UhjpW+Dyt614sIAfMRUdK63dM7Uh+l8IF4Yog9GK1W5URD6EhvUOOxRgDsabBlUTVT
 0lPHz7i0GGjOmCKk8dzO+k+cOx5SqVWujQxhSFO79nQm+Ds3XAPtg0XcWBw610121K5e
 kc9RfmeEfDtm3Tix1PMf2pI9nu9K9Nc2Pj6Qi5iCFgsDy6zHQg3qENb+8yYGbYs2emZf
 u222kjpmFyBJ4KGd7yBiUI08P93f4+InWdbKPDLoWC+szQkLyCFviWrNyrJLBCEbrGtf
 rqCqSA+vno6Bfjk8bjtZIE+aKQyIbsiR0QhqU5j9kYUTiKJ3WPXwcvfsYeDnpLQbaxbN
 LnBg==
X-Gm-Message-State: APjAAAVu1mE4IA+vUZw5Gp5v+Vm2cWqpEj+403IaphCHAxgub+yfVLuH
 aaewIgUodU0u4yKRMCmdUVg=
X-Google-Smtp-Source: APXvYqwjx7lb30hV3qt+dISr8DlDOdPErhTY7P/d1MD9Xm70SbdSRskPqJKpsDwrGHHDM+nWra5RzQ==
X-Received: by 2002:a1c:b6d4:: with SMTP id
 g203mr21503482wmf.100.1566234548932; 
 Mon, 19 Aug 2019 10:09:08 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id b3sm28668292wrm.72.2019.08.19.10.09.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 19 Aug 2019 10:09:08 -0700 (PDT)
Date: Mon, 19 Aug 2019 19:09:05 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] soc: samsung: exynos-chipid: fix memory leak
Message-ID: <20190819170905.GA14115@kozik-lap>
References: <20190816222151.11098-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816222151.11098-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_100911_130906_7A41D197 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-samsung-soc@vger.kernel.org, Pankaj Dubey <pankaj.dubey@samsung.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 11:21:51PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently when the call to product_id_to_soc_id fails there
> is a memory leak of soc_dev_attr->revision and soc_dev_attr
> on the error return path.  Fix this by adding a common error
> return path that frees there obects and use this for two
> error return paths.
> 
> Addresses-Coverity: ("Resource leak")
> Fixes: 3253b7b7cd44 ("soc: samsung: Add exynos chipid driver support")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/soc/samsung/exynos-chipid.c | 14 ++++++++++----

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
