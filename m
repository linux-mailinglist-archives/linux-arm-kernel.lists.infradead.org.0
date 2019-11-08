Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F05F5A95
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pX83VvuH2P+aU7MPLpuwYqawhTvXzxZrBo1tNv5jSHY=; b=Wo+ekhSUJ+++kD
	VuYzP43xp0VykIdDOKsoGZ/1n/wOTtI4d8BzeuybwN1PlETiD4ORy4dFwoDheXOZmqwOa/i7tP4N1
	p5S+Y4gQsU4s6Eafcu3vQp7DTyUkEyIN/B/RyN9+lVz13eWTflVYR2LGR4GBZ3AFN4U3jPPDROaMc
	yGiM3Ma3PYGIYXFyUYjeaqDWhD+rROBOOIP3K/hkT275nrW5Xvuh3oEnTtsbNIVlAaFXuTjy/IDnj
	0QtulhbG9hRZZ5WdBnbOjIsmgApgI9togeF+RGD6XI1pdBR4iMrzK6QCaJaC675SvVcyRQN3hNsCv
	XN3q2Yq6Cr7VarTSkLzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCQ0-0003xQ-HR; Fri, 08 Nov 2019 22:07:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCPg-0003nk-D1; Fri, 08 Nov 2019 22:07:29 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA7F321848;
 Fri,  8 Nov 2019 22:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573250848;
 bh=gLwm52RY9G/9492fo3p2MflMQXw59u4hMZtGnCihRjI=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=nX5Fa3AXOotSVNgz+B4jYyonyO9RE9BQ3kFBxu0zn8Q18WcuTvegmFPzPBt4AW4CJ
 EfRdNBOoGtyKd3Ry7sXe2l1NJGVMvJNNVFu2CjeLACYvPiXqeKhadRBcYuAF0k/+qF
 yZ3gj8Or59VrVJqO3VE5/YX41ow5SrsYAYpopDOE=
MIME-Version: 1.0
In-Reply-To: <20191027162328.1177402-4-martin.blumenstingl@googlemail.com>
References: <20191027162328.1177402-1-martin.blumenstingl@googlemail.com>
 <20191027162328.1177402-4-martin.blumenstingl@googlemail.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 jbrunet@baylibre.com, khilman@baylibre.com, linux-amlogic@lists.infradead.org,
 narmstrong@baylibre.com
Subject: Re: [PATCH v2 3/5] clk: meson: meson8b: use of_clk_hw_register to
 register the clocks
User-Agent: alot/0.8.1
Date: Fri, 08 Nov 2019 14:07:27 -0800
Message-Id: <20191108220727.DA7F321848@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_140728_480935_6B36C494 
X-CRM114-Status: UNSURE (   6.04  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Martin Blumenstingl (2019-10-27 09:23:26)
> Switch from clk_hw_register to of_clk_hw_register so we can use
> clk_parent_data.fw_name. This will be used to get the "xtal", "ddr_pll"
> and possibly others from the .dtb.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
