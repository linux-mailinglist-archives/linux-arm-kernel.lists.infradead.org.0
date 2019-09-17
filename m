Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537BEB5718
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 22:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+1BSa7xSfTf1YOJYVG8twhGaROGLEQzBy52ePG+4NA=; b=WW5ruzLPfE+jCE
	zn8Gk6MWAFBzhH4oPn24Rh+wjI33pGv3vlI1JWCzerQXJzNkfPOTPujNTUf0Jd1LvGByvlPhDecJJ
	RTuyVdwtSLUltkHb3SrdkDYV6jyMQ0v4qRNB3ob/GJlegSC84BoXwTBYLpzpglKGd/CibDDuyUfJ4
	bfKow5vN1OciQTU7N0JAWSoZMYEL+TnfovM22XK/9DOVGfbc0Xsd74ZMT/a+dkcpcwt1i1iHNt8H9
	PR1mQ4RfLyizWr6VAzPnxSil4fjnn7u2jQMXaVC6+T6VKeFcytUP/bvZWmW6tF1yRQI50xxT/sOpT
	iwEpO8zlqQMz7n2PVDoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAKHT-00077x-6E; Tue, 17 Sep 2019 20:40:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAKHD-00077N-9A
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 20:40:44 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D69A52054F;
 Tue, 17 Sep 2019 20:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568752843;
 bh=zU0HD00NHDxc5VqtXTSUFWjVKlZEMVpOor9bnEEN6as=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=TzwJSuHtK9O6pP7iDKb0A8NndvJr/oVyOTYw79OI8o+5ptcNio8Fg80A43/+DW51X
 20kK+6EbMB6P/91fBEOHZMMa2E8Zx1CsSN9/MYFlIPV9a3uSNdCuCA1dq/zHi3JOy1
 NqwnirYyqXr6FWANRBgstIYTO8N8yVvIpS/4X9zQ=
MIME-Version: 1.0
In-Reply-To: <20190916161447.32715-4-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-4-manivannan.sadhasivam@linaro.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mturquette@baylibre.com, robh+dt@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v5 3/8] clk: Add clk_hw_unregister_composite helper
 function definition
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 13:40:42 -0700
Message-Id: <20190917204042.D69A52054F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_134043_336699_EE282FC0 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 darren.tsao@bitmain.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, fisher.cheng@bitmain.com,
 alec.lin@bitmain.com, linux-clk@vger.kernel.org, haitao.suo@bitmain.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Manivannan Sadhasivam (2019-09-16 09:14:42)
> This function has been delcared but not defined anywhere. Hence, this
> commit adds definition for it.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Can you add a fixes tag?

Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
