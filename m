Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D94D14C604
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 06:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dTOIB67R+fwKzTcQjOIA1jTfU/8FWZkouVl26oY4d4=; b=K+iMMqYX5vufDf
	9i7hzdzHGi5mdjkiJFidg3JHFTuCBsV0PBnEBHinknkT/RHO0zH+WGvu8XIjeNooVvxCYkwFNV+A4
	F3cn37uwFO6am2vDdpB9iIk6BQ18PuW5QjrPvUekRaBuM+RL9/mdMWBQ2FPuJGN0CJtaogN1djCNN
	uDxcu6y0lDw0IDK2oBUvXQVxfttGK1pueILUTs3m1biSrKtG1zVv8FVmVJDH8TQVbcnZw/adc1nh/
	RRMYaZejNPODaniIf4bF3v9vV8LvP1rW3pi57AX0GN7mqxmwK1f4Yc4Bqa0vpP8Q4saL4vOZExZqn
	vxr8LYvtaG58Ki4F+pdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwg9L-0004Tx-6H; Wed, 29 Jan 2020 05:44:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwg97-0004Sb-TK; Wed, 29 Jan 2020 05:44:15 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 808842071E;
 Wed, 29 Jan 2020 05:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580276653;
 bh=NgC+68nCCh+o3ipJk49AAFsa+iYqq0dQPODSuJD9eoI=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=NYvJjkFN6jE/ophtq1GUZgqQMtEhQYOgtyMe+OZ01gdV8tp/Za/uhoSe00Ex/73Xw
 oRTvJLzYWq1U+c6FxVx+MwXkWrdXxAIwNbTR2O4HyZptZBeIKrCTY6DLFftQxJFotK
 6B2FakppktBbxTFPP6y/f3Tijvu93nC8elpb2lxk=
MIME-Version: 1.0
In-Reply-To: <20200120034937.128600-5-jian.hu@amlogic.com>
References: <20200120034937.128600-1-jian.hu@amlogic.com>
 <20200120034937.128600-5-jian.hu@amlogic.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v7 4/5] dt-bindings: clock: meson: add A1 peripheral clock
 controller bindings
To: Jerome Brunet <jbrunet@baylibre.com>, Jian Hu <jian.hu@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>
User-Agent: alot/0.8.1
Date: Tue, 28 Jan 2020 21:44:12 -0800
Message-Id: <20200129054413.808842071E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_214413_962172_B6D89DA4 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>, Jian Hu <jian.hu@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jian Hu (2020-01-19 19:49:36)
> Add the documentation to support Amlogic A1 peripheral clock driver,
> and add A1 peripheral clock controller bindings.
> 
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---

Would be good to get Rob to ack/review this change. Please resend and
pick up the review tags from Rob on the first patch from the previous
round and fix my comments or respond to them on that previous round too.

>  .../bindings/clock/amlogic,a1-clkc.yaml       | 65 ++++++++++++
>  include/dt-bindings/clock/a1-clkc.h           | 98 +++++++++++++++++++
>  2 files changed, 163 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-clkc.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
