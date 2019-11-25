Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D4710864C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 02:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8+rSjBpQYlHbPc446MQhwL4gA7vRDNtRvEFf3/6AM4=; b=QZpm1+uotEyGw+
	0SVj0TMlnaXOCgvt3BdVOBCTZI+TJJ0KIiYJxYjk/KWWefFR2eUChHlFkgAwL+YBBmqdataMbrsPP
	CfVeSm6gOm9vdSpJ2oq04hgQxWha8uJLWpOAloTnxIK34D9FoSuxFs41LGimBIvGJAQqaB6ygCvfW
	C1gUFHriZaUZy5jfZXrf492SUSFLegmGwyw0dLBqiDRFlBRwtoY8P6MNvZxQMZ7lc7pKDCHGfc7wW
	jDiB0otBLDcFSD5EQr9hiyLCSsbArvYS6buJFSSlLBWDJNt2Ab0OTQw5c53QMcvIJK1kNrTNqT6kC
	jOi/xgKkDDylM7JDuf9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ399-0007lF-KO; Mon, 25 Nov 2019 01:26:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ38y-0007kf-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 01:26:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9C482071A;
 Mon, 25 Nov 2019 01:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574645184;
 bh=QvJ2UCxZIyi9D2D4sgklmTYVy5/F6tCTlX3mUMdXStU=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=XBiZu3VM/lSjv2zWuaM73156on41HE0dlMdhUjf+43CnyV3RQ9Nq4hPGl0/hy7mdx
 SlQLhcazbkyAalIehVzgwjbmzb+0LEb+EnTil46m0E+tHCpUHRx2Da9j6m2PQAMqDl
 GU+nfGClh6bPkXKLmmXeSGmTsYB2SNZoX7u4Quqw=
MIME-Version: 1.0
In-Reply-To: <9d986ef7a3cb379cea59616ad18e96e3245cbaba.1574458460.git.leonard.crestez@nxp.com>
References: <cover.1574458460.git.leonard.crestez@nxp.com>
 <9d986ef7a3cb379cea59616ad18e96e3245cbaba.1574458460.git.leonard.crestez@nxp.com>
Subject: Re: [PATCH v7 2/5] clk: imx: Mark dram pll on 8mm and 8mn with
 CLK_GET_RATE_NOCACHE
From: Stephen Boyd <sboyd@kernel.org>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Rob Herring <robh+dt@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 24 Nov 2019 17:26:23 -0800
Message-Id: <20191125012623.D9C482071A@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_172624_338943_7D801442 
X-CRM114-Status: UNSURE (   9.60  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Artur Świgoń <a.swigon@partner.samsung.com>, Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>, Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>, Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>, Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org, MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Martin Kepplinger <martink@posteo.de>, Silvano di Ninno <silvano.dininno@nxp.com>, linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-11-22 13:45:01)
> DRAM frequency switches are executed in firmware and can change the
> configuration of the DRAM PLL outside linux. Mark these CLKs with
> CLK_GET_RATE_NOCACHE so we always read back the PLL config registers and
> recalculate rates.
> 
> In current DRAM frequency tables on 8mm/8mn only the maximum frequency
> uses the PLL so it's always configured in the same way. However reading
> back the PLL configuration is the correct behavior and allows additional
> setpoints in the future.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
