Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A343A15CF54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 02:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPqBL8YpLi5d7Boz1Lws0j7SmbUJPMDsgRmk8JJdECU=; b=B0rNfO5golcFNm
	z8VWxK+mEe37056vKbgyKl9Paw454n6dXWvqWDZN9sQxPMfW6pxXTJ1WoKTw8o6h1wD7dTwiqtIUc
	r9pHg45BC5MBuB9LlUET68bdM59fpkC7XEimADhcL3r9xnaASNKmJUo46jpnO+W/P6PB/cQ1+NcP+
	IMG41v4HmFkhriSCS0eiBUTNInjhpEvDCHXzYvClKerj3shBJyzEO0FhPBmXw3ezDOvSSqLVEUmxv
	Cxg0ajb7y3wnWPNo66yP6QPyKQv5bjuvCbrfC39u8eKEzvnAUGjmYbITE+7FBeqeqBDL8nDjYM49s
	OiK8woWC9hZxbyd9TyrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2PNW-0000Ho-1m; Fri, 14 Feb 2020 01:02:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2PNP-0000HL-4P
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 01:02:40 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF30620848;
 Fri, 14 Feb 2020 01:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581642158;
 bh=iI4IRoIO+lbDK4fEiGSt+0Lrx8P1uXJjJfDUFTQIXNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=juOXp2pcRlcI3VaelnmtxREPfmHE0tasEaNZ99IdUy48z1pFmQVVPiNNjmkm66dxZ
 hcvArqJMUJ0jk2cIGEQVDEK5o9A1Ndni5Cf+iTt/olbiV46MfoqVmMt8kySpsobjCW
 5zriQNh9cj6nfcSn7XqIwOwfytfqaFv5OQO2/OIo=
Date: Fri, 14 Feb 2020 09:02:33 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] ARM: dts: imx7d: fix opp-supported-hw
Message-ID: <20200214010232.GR11096@dragon>
References: <1579428300-9894-1-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579428300-9894-1-git-send-email-peng.fan@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_170239_194309_334E94F2 
X-CRM114-Status: UNSURE (   9.11  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 10:09:32AM +0000, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Per i.MX7D Document Number: IMX7DCEC Rev. 6, 03/2019,
> there are only consumer/industrial parts, and 1.2GHz
> is only support in consumer parts.
> 
> So exclude automotive from 792/996MHz/1.2GHz and exclude
> industrial from 1.2GHz.
> 
> Fixes: d7bfba7296ca ("ARM: dts: imx7d: Update cpufreq OPP table")
> Cc: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
