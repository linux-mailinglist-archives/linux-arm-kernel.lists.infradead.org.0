Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A461B5D93
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 16:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HbqBkukQspuZP7+2qyXRlfvAB2IpYXijsX3ZGcmdL8=; b=YVMtMQK6egK3GR
	fwE8A2xiHLPQVc5CH07naJjqkwh5iRG4pPMBnHgKk4JRLTeiTU1YVnfAEXI3Zr+EA6rH1AO4tC+K8
	i31H+0yfos1rNaIPbEAI0xYwE3oDhC1Cc/t7n/HM84cHz/u8cTFduO5N5tH3wWAdjZtfovDtHx/fo
	fZIxxC2r/Ka01/1HEAldtiiU65wjnK5zegdl79C/7/QIptsgtTy91kPmAh+GRqNlVVkPXfIWwBbtw
	uYkGgqunlZNyQNyyuNW0PX1DLKhV2SOtIlSOOHggpvrIYdtvWWse4n3c2Um/R0kqyN4DnU5w6kbY+
	ob95KA1I64DMF2JrrXjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRcjl-00029v-9x; Thu, 23 Apr 2020 14:21:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRcja-00028x-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 14:21:47 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 994CA21556;
 Thu, 23 Apr 2020 14:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587651705;
 bh=57gqQPQd4IJylfioNNAGGdvJ1fl8K/ZNVE8ybhs2MSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BYsM2BpMxM7Ivd/k9Iiy3wmf1/8mUchXgiGnl+DjJL5TkPenz6E1IUsKzAL2rWDw4
 /Ov6uolvX7dVHRfYWmClluhdfi2Y0ccXCB8+5pPCTiw/Z7WvhbfQTCFnTgVgnBtPZU
 iff/89edXcjeS41kWSZKShGt1HpQiNe3YDlVQH18=
Date: Thu, 23 Apr 2020 22:21:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: imx: Add Beacon i.MX8m-Mini development
 kit
Message-ID: <20200423142135.GB9391@dragon>
References: <20200324144324.21178-1-aford173@gmail.com>
 <20200324144324.21178-2-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324144324.21178-2-aford173@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_072146_190258_A2D2D3EB 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 09:43:23AM -0500, Adam Ford wrote:
> Beacon Embeddedworks is launching a development kit based on the
> i.MX8M Mini SoC.  The kit consists of a System on Module (SOM)
> + baseboard.  The SOM has the SoC, eMMC, and Ethernet. The baseboard
> has an wm8962 audio CODEC, a single USB OTG, and three USB host ports.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
