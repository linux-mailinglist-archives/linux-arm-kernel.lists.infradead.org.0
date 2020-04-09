Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF11A35F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:33:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDP0U9IY2oNaBvW+Gg31dCK8spRANHbTVhnTSZtwSxM=; b=P8dbtOdALjluib
	wp5/33SYpVluTfcUVtmvI4dG7X6Q3zSuL7dhirbNFAbDNrd3JZzMkZvnbNtCUNMjUDvLXIoEVOF6/
	T21hKELufLolmdgNOLe9QEfJ+5ti1UZMbST2zXsHI7Mp4PK/j1H8HfBT7tZKszm6xBM3v7lxbLOud
	+9KTdZqQRf5TW9KLGBjWGhP1Gqv/th3QsvL6qN0D3w8TftuiUeJDEDhFOmhLgV4+9ZDKQD9yw4Gbm
	+zzRfE470KICSJzzxoJ1ZNrabO6wGqQ8TWgQFkMDnC1rl/3wziYNI3s06HYLw3NdCSvCDjGzR/EBp
	Jr5IY0iTggZzKE9uLRhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYEz-0008Ku-VJ; Thu, 09 Apr 2020 14:33:13 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYEs-0008Jt-MV
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:33:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t108aSZwNrLLBTSbxD8GRa59ihUeOfYwdyM3oFc/ymk=; b=yegRnYyS0d6o7FbYu4mfEk7ndZ
 iDEx32RSJY5N+n8TtYqGlRN7WkPP+mAX7DIwPl+nJFE52m+xtOchIwo0CIzlQ/RmS5UVlD39ynfBQ
 UGa4HGYpMu2HG5t0Rt0CrY0dDDZA5IRTtYF1SpVbWuUZuUJd0hPXZXPu29igqxPcix5Q=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jMYEV-001omz-2C; Thu, 09 Apr 2020 16:32:43 +0200
Date: Thu, 9 Apr 2020 16:32:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Pawel Dembicki <paweldembicki@gmail.com>
Subject: Re: [PATCH v2 2/2] ARM: dts: kirkwood: Add Check Point L-50 board
Message-ID: <20200409143243.GK389953@lunn.ch>
References: <20200409070448.3209-1-paweldembicki@gmail.com>
 <20200409070448.3209-2-paweldembicki@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409070448.3209-2-paweldembicki@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_073306_874899_25621F56 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Stephan Gerhold <stephan@gerhold.net>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Gregory Clement <gregory.clement@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Brown <broonie@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 09:04:44AM +0200, Pawel Dembicki wrote:
> This patch adds dts for the Check Point L-50 from 600/1100 series
> routers.

Hi Pawel

Looks very good. Just a minor comment:

> +&eth1 {
> +	status = "okay";
> +	ethernet1-port@0 {
> +		speed = <1000>;
> +		duplex = <1>;
> +	};
> +};

This is a non-standard way of doing a fixed link.  But looking at the
driver, that is all it supports. I also don't think it is worth the
effort converting it. Kirkwood is so old we hardly see any new boards
using it.

So:

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Since we are in the merge window at the moment, this won't be merged
for a while.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
