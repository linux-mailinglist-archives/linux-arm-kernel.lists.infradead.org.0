Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AB03B7F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 17:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/ttfkaR3KdE6nwEHrzD5krdZVVSl2q8GnPh66uDTsA=; b=I/vzYF9/sYMj81
	wJGZ2pScY2Bq1V9KTHWkngZa9WufFH9wdvVc+o5tdI1a1CFpmGtjrPsnOrMoVwXCFuP7q6BHYXYK6
	Vle6WWdx2/tFLn3o14yU+72g6iZ8gFsXxToKQynDSl0VPbeKm00qQC2t0Za6iVbHruZw46oxiTdZg
	c51Oiwugls8zmVsQLAFtqI+Dz7boD1rpl1MJFrVQOzSEKVne9mL4OtFmSROAm8k8qq376btBMeV3H
	CCtND5sJww1bUs26GZWNwaf2KHKWOOM6E2vfqufa2TG4MF0YdydRAa/wJ+Nm1/7dxE7KerUniYX4z
	d3HDNKWFwmMz+HyNCKHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haLoK-0007j9-HG; Mon, 10 Jun 2019 15:02:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haLoA-0007iB-4F; Mon, 10 Jun 2019 15:02:03 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A32220859;
 Mon, 10 Jun 2019 15:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560178920;
 bh=OE8GdsTUm6Imy2zPdYlPLj1uy7lqP03V060qQqNy6s8=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=09qdbjyTF0YwhwLeCe/ZJYYrjFSo7df/akOmOhnJL1Nz3+iRIEvhIDMmr6W1dCBIf
 bE7KCXS2+R0ZyWXhbq4kpFl1epH3RXBDn+J48Pc3eOudwxKGJ4+mMIXjGfXhruxbkL
 xuh+QFQ8z+yVqfnuBQzH1Utbh7+3X9fCqVIbXVQw=
MIME-Version: 1.0
In-Reply-To: <20190608195317.6336-2-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
 <20190608195317.6336-2-manivannan.sadhasivam@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, afaerber@suse.de,
 robh+dt@kernel.org, ulf.hansson@linaro.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/7] clk: actions: Fix factor clk struct member access
User-Agent: alot/0.8.1
Date: Mon, 10 Jun 2019 08:01:59 -0700
Message-Id: <20190610150200.8A32220859@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_080202_187336_3083A51B 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-06-08 12:53:11)
> Since the helper "owl_factor_helper_round_rate" is shared between factor
> and composite clocks, using the factor clk specific helper function
> like "hw_to_owl_factor" to access its members will create issues when
> called from composite clk specific code. Hence, pass the "factor_hw"
> struct pointer directly instead of fetching it using factor clk specific
> helpers.
> 
> This issue has been observed when a composite clock like "sd0_clk" tried
> to call "owl_factor_helper_round_rate" resulting in pointer dereferencing
> error.
> 
> Fixes: 4bb78fc9744a ("clk: actions: Add factor clock support")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

I agree with Andreas on the function name. With that change you can add

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
