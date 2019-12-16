Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646501212FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:57:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YlqavkMGdLnJaYH7gTJbDQv3zNuJwqjRsgmvfbRhzhk=; b=G1vjoMTqOupyQt
	MriOEhJOngSHYLSWyF6MX5cMkPr8libQkcAdIyegX83m+QhuSqT2kXHTKBCAr0v7DuJu682zVkveY
	Kc0+KavhWuD/sixN19/ACMTvtISqC5iYjZU8RoQ9bsBYx/Z6U/XPiQZFRX3Mv8P239NMwQ/txp0Xy
	jGn+sPL+XWS0WG+BWusq+JTe9RIfLVpLd4lIYwmgoNxntVOYUt0MH3gt1F7JdxshNaEdxh0h5+DM9
	zgA8TmGgx7VnQlpfxGPKzVozQehZ0Yv66n+ouJwJoNx9FF0WfCqUGBCHNeDAkmwK19/n15pIQY0no
	NrVCggppsoZEudxZncug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igucy-0001FX-4z; Mon, 16 Dec 2019 17:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igucm-0001FD-JU
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:57:41 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33577205ED;
 Mon, 16 Dec 2019 17:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576519060;
 bh=V5QHOa8XPQM7/lLWcL52Ytgn4XqcFJ66wAdiIaUqteQ=;
 h=In-Reply-To:References:Subject:To:From:Cc:Date:From;
 b=OebV8do5Qlf6t07vKBJlHVFAGg0zfCRvbxhRAI2z3ivThZXyikzgcv6x/u3o3PCTv
 BmElfU8AQn9n9H/YvqlHhZz3idMzkFtTOTcIu5/o8KOhZi3C+7/YktDgeGQHD6G25H
 IGb1QURFfsdfuqX4tNH2iEC0txowf0NAgKyAdmso=
MIME-Version: 1.0
In-Reply-To: <20191128102531.817549-1-alexandre.belloni@bootlin.com>
References: <20191128102531.817549-1-alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: fix possible deadlock
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Mon, 16 Dec 2019 09:57:39 -0800
Message-Id: <20191216175740.33577205ED@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_095740_664457_E9F29371 
X-CRM114-Status: UNSURE (   8.35  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org, Michał Mirosław <mirq-linux@rere.qmqm.pl>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2019-11-28 02:25:31)
> Lockdep warns about a possible circular locking dependency because using
> syscon_node_to_regmap() will make the created regmap get and enable the
> first clock it can parse from the device tree. This clock is not needed to
> access the registers and should not be enabled at that time.
> 
> Use the recently introduced device_node_to_regmap to solve that as it looks
> up the regmap in the same list but doesn't care about the clocks.
> 
> Reported-by: Micha\u0142 Miros\u0142aw <mirq-linux@rere.qmqm.pl>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

Applied to clk-fixes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
