Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6C11832F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgcywvHTjJRkkCJdVLjVujKU2fcNE2cp94NfP6XU2vo=; b=cVy2BUADjtTfz+
	hy0dddvKh3VrLOWG03LaAlpHR+tsXJR5mNRtBsb1T0MUlMei+ne57aBuWUObulPbvr+BuQHcURDp1
	2TSJUGknjV4BhA4ljzpn6lXRNehPr+mcPSFbm5rmROX/EuCd3YwfMOipzbNgTGKhyk667N2X4xQ/K
	VIxu+bZijJhrFk4eB8MnDJdh4wdSTMFMB5cGm2+3V1yCE5D/JfSsTEpREaeN5GvE7zeU5l11AvHnB
	gkfVZLu4iy1mjgBrOsxQV/pzzQM8uAowgmopI/oRzjMroGuK1Wr9UjhDHm33OB7d3Df0NzY2N72yW
	Xe7DCx6Ad5QMtwcVFcgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOoJ-0007e7-7w; Thu, 12 Mar 2020 14:27:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOoB-0007dm-8F
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:27:36 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 095EE20650;
 Thu, 12 Mar 2020 14:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584023254;
 bh=NBfZaoPVGopy564X9jgj14gpTLz9p4AtaD57fbxxlBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q/VzJofeHWyEZaMZ4TO3oapRN+d4deZwCz/ZgR9waOARWpnw4C+EdWAQXMvbGxxNi
 fjFr/M1u+iH9Yys4vFp8Oc3vZPpIA9Cf2x6INiJFNJymPQ4zeovLQOGz8g7mp4jqxg
 Rsj+433EcZYFxIp9Qg8SYcEkI+zfwKS0RaAczCck=
Date: Thu, 12 Mar 2020 22:27:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 RESEND 4/4] arm64: dts: imx8mm: Add thermal zone support
Message-ID: <20200312142721.GC1249@dragon>
References: <1582947862-11073-1-git-send-email-Anson.Huang@nxp.com>
 <1582947862-11073-4-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582947862-11073-4-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_072735_314590_8E46922D 
X-CRM114-Status: UNSURE (   8.64  )
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

On Sat, Feb 29, 2020 at 11:44:22AM +0800, Anson Huang wrote:
> Add thermal zone and tmu node to support i.MX8MM thermal
> driver, ONLY cpu thermal zone is supported, and cpu cooling
> is also added.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
