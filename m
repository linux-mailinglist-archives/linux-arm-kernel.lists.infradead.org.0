Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303D110864B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 02:26:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ck0VdaeAWwpj+Ifa7MbvdWcTq4nl8NxMw5YrZBdoar0=; b=DrLwKqi5RfnTOT
	cV+GZLwpIKNLTiQ5mY63WUYZWOB0C1RW40+RP5Bd53SK2vH/2QdhXaD2KZV7FtzOAWif+v4N5Osgz
	7mt3Ad92aN3/NMZFNSN8pdgLeS9Kz0cYekXe2nKnpD+S+pYes6FMiPdGszD4K1nM3hbVynaXp7Wx9
	kjoZyV53DWyimNQHSQRyNa+ZRERyMmbGS0qACuS+aBrxpj3UecXY56q6O/bRxNNshM0kTl8ERBvMI
	nLm6ELFs83sUBA4A1iv0Pi3yZAgTaTISH+MGa2ScMWa84Ehyo7IAjbbrQJDdmwS0tfu+IFWZaxXwQ
	9gqB2PIqd2LV989Gdb9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ38f-0007VD-78; Mon, 25 Nov 2019 01:26:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ38U-0007UR-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 01:25:56 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F205E2071A;
 Mon, 25 Nov 2019 01:25:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574645152;
 bh=IhjN9rh8pV9VLB2CL1pVUO9g/fZd+WAsAxIuOs7fzjs=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=oTVUM/SjlWs/M/RK5sbtcRCN0o2dMWS2iIOwLg3rpEOvjReonJyCkNKlM1a/vNmfE
 YoVCu+tOqzm+0WPDopMfLKbJ5rtg6Ow/LSTuTWq1pfwuWR8OTohoU2ncby5DRQvLgA
 vRZxo8b37LN38FFhgQlcF7OTPXuCuws79TDM8bmM=
MIME-Version: 1.0
In-Reply-To: <f25ec4f3793aaf60489226cb21633eb76f847210.1574458460.git.leonard.crestez@nxp.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <f25ec4f3793aaf60489226cb21633eb76f847210.1574458460.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH v7 1/5] clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Rob Herring <robh+dt@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 24 Nov 2019 17:25:51 -0800
Message-Id: <20191125012551.F205E2071A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_172555_008819_BD9016B1 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Artur Świgoń <a.swigon@partner.samsung.com>, Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>, Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>, Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Martin Kepplinger <martink@posteo.de>, Silvano di Ninno <silvano.dininno@nxp.com>, linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-11-22 13:45:00)
> These clocks are only modified as part of DRAM frequency switches during
> which DRAM itself is briefly inaccessible. The switch is performed with
> a SMC call to by TF-A which runs from a SRAM area; upon returning to
> linux several clocks bits are modified and we need to update them.
> 
> For rate bits an easy solution is to just mark with
> CLK_GET_RATE_NOCACHE so that new rates are always read back from
> registers.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
