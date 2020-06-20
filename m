Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 446EB201F06
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 02:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HI/jDjaBTy/qPDvJMwZMzXjVe9PeU11wH1B3uTDgmTs=; b=QnmO3INRQ2JZOd
	D4Zz0ey9M7l3cDyt1r11e/dsRIaoFvKCfKAfn5L7DK3c6xCY4F4UwTQ5zOrCAnO9Zv3aXlyeb5JnM
	Oq0UiHEawTc0S99hn0mbjOPrrxH4uGlPtDtM+nLe8R6yTmNdkmjslRX1AwW3pyd8v7+id6Ya/80yv
	4lgoxJBa+r7o0ExCTG+Z2MC7SxxvQVUVl3yAVKRQCK+eWbjM1DENQZQWflw+cO8Ime2LjBxn1fce9
	7MCWN5RVD0N606Be1OVMwCgrXEhNtgvPvC7rnjNbxiuf+dGz7WtSNSkuucbid20LEUZqeFoptNH9g
	bndNFW4iiVZssnv2Yg4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmR8F-0007KL-Du; Sat, 20 Jun 2020 00:13:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmR84-0007Iq-Gz; Sat, 20 Jun 2020 00:13:05 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 200A922518;
 Sat, 20 Jun 2020 00:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592611984;
 bh=oKZt2XpuBFJetNv+O+2UZ/i8GnyLDNthpwC/ZKvtjmg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=XgvNYlUvhN2x6f88No+RZzedTdb9nFnbSttEHcgcHobq+lhoe4InsxoIWvsr+CvN8
 1nIl8n7Y5mZWboVsJ68l0Gdtv4DKqV2nsmVBRDY1DwQ7rQWRz5f6Zt47Nh9qwX0R9b
 0vB4E2PB3mGpdTXS4tAL66Xe2gcK6fML6Ex+hqR8=
MIME-Version: 1.0
In-Reply-To: <0b8f09baff1ff3c471631e6f523e2b2cd773ec47.1591867332.git-series.maxime@cerno.tech>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
 <0b8f09baff1ff3c471631e6f523e2b2cd773ec47.1591867332.git-series.maxime@cerno.tech>
Subject: Re: [PATCH v4 1/3] dt-bindings: clock: Add BCM2711 DVP binding
From: Stephen Boyd <sboyd@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Fri, 19 Jun 2020 17:13:03 -0700
Message-ID: <159261198344.62212.6959178295186241543@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_171304_581314_70473866 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Mike Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-06-11 02:23:15)
> The BCM2711 has a unit controlling the HDMI0 and HDMI1 clock and reset
> signals. Let's add a binding for it.
> 
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Reviewed-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
