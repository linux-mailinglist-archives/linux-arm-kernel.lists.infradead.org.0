Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AF61832E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Shlch2frXSmscjPz/v6jFL5AGlhosKD8J/hvTRlWaxY=; b=np2XfYIx+NkFxg
	yBmkz1h9n6hiWuaHwOgieWmgGxs9HTf8yaB9acvJ3TS1EXfwvaQ4DqzxhuVKEjIP1Tw2tLOQIwOu+
	aanr6PUKsVLQKZ8jqL0Zzdx0dXKVdXMh+LPm5hxJ2CgbMya3aSA3XaDMWKNM9xJVbSshbknX9tilM
	wdmEKTamwSv3vz/L0f6Wo1GN1UOtIe1NCq07IcLF1yBr1lCJMK+iSmX6tv4wiEFLv301l3A0Jj25p
	n9pqfnO5FV5oIjvFQIQKotPF8UnHvoGFWtCUrY6MnbpaPZmZCmZcG6iiM4w6tn/P+TtrvT7qH1kXY
	cqk1NqA9JADUfbI2VqLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOmD-0006gs-VT; Thu, 12 Mar 2020 14:25:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOm6-0006gS-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:25:27 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3148320650;
 Thu, 12 Mar 2020 14:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584023125;
 bh=IJZgWyzQXOaK+PHYHTp3+TM2BySWKiwXl8P6u6C0DTc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kz3ZHSch0M2pneIcsz38LoTBcir99AOr/mi2y0EjQfznsWLEIjFIMcP8jnrDBD+3b
 5oBM+G7S7+HRr+APwIIOYZkeYd3dqDVVbPUNXoitJ8uZfOv4yKGd/T2u0YTciVdWSF
 vMDNSVWvAjpuVCxI7eOyqmXolp5B61QgkS+BXytM=
Date: Thu, 12 Mar 2020 22:25:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 RESEND 3/4] arm64: defconfig: Enable
 CONFIG_IMX8MM_THERMAL as module
Message-ID: <20200312142513.GB1249@dragon>
References: <1582947862-11073-1-git-send-email-Anson.Huang@nxp.com>
 <1582947862-11073-3-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582947862-11073-3-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_072526_196978_A092BFDF 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, peng.fan@nxp.com, ping.bai@nxp.com,
 catalin.marinas@arm.com, bjorn.andersson@linaro.org, leonard.crestez@nxp.com,
 will@kernel.org, amit.kucheria@verdurent.com, aford173@gmail.com,
 daniel.lezcano@linaro.org, marcin.juszkiewicz@linaro.org, Linux-imx@nxp.com,
 rui.zhang@intel.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 s.hauer@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org,
 shengjiu.wang@nxp.com, linux-kernel@vger.kernel.org, dinguyen@kernel.org,
 vkoul@kernel.org, kernel@pengutronix.de, olof@lixom.net, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 29, 2020 at 11:44:21AM +0800, Anson Huang wrote:
> Enable CONFIG_IMX8MM_THERMAL as module to support i.MX8MM
> thermal driver.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
