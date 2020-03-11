Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B331812E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjY3BPVZITTdhsbmn5VWnclNzbHuVcOsyvEfGbam7Mo=; b=gxIKdi8bV5Y8Nz
	1LsdpBEet7kfRg3Y2qziclUsywvW2JwI3t/41LPoWXwm+8SH677EK2YHZ+nSyhO4ZbixwdpqMtIp3
	WIVWoKAHa/3h03cUq2bkXx9sLOkFov8VjsM/vYd0DD+aKHBf8ItMn9xxOf9ghdC63hktWkzCkqxdp
	IvTrqcbtdBJ3+dkhTE0KuobA9JM3S9FnZMmgGHn8yMxsRZPQ2Qj4Bbl/GeNYCHFbIZoR2GHCdNiKI
	n5oU5qPxt5oNjC7k1nIR1FVRkJrrKLeVifEFOgMzdCRjYMMJ7PZZTjxVbTmOJUpQh8hk9TSUYtHF4
	nBiCC8C2VqWqI69Ihk9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwgP-0008Gk-O6; Wed, 11 Mar 2020 08:25:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwgD-0007vM-6W
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:25:30 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C647206B7;
 Wed, 11 Mar 2020 08:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583915128;
 bh=rAHlhHRvPjjKS+aeeYULdqr+5huBitTjNZ7B6PG4kE8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=D6s0DPuKTNoV91xWeMPOWtKXZvnFMCXUglm37l6Lz3dBxDlRLCwDLH41cswHo9JnY
 FOv2tEKEyUhTyYb94KC7fy4Xw6XT7qKV40/RfW298y3trJle3SxFPV8rpJsdGFnRIP
 VxRpHxTrqRIbf9fhM+ngiBUKbNxb1bTODmk8/ax8=
Date: Wed, 11 Mar 2020 16:25:22 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vitor Massaru Iha <vitor@massaru.org>
Subject: Re: [PATCH v6] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal
 support
Message-ID: <20200311082521.GB29269@dragon>
References: <20200303011516.14946-1-vitor@massaru.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303011516.14946-1-vitor@massaru.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_012529_267711_ACB3D892 
X-CRM114-Status: UNSURE (   8.15  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 lkcamp@lists.libreplanetbr.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 linux-imx@nxp.com, marco.franchi@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 10:15:16PM -0300, Vitor Massaru Iha wrote:
> It was based on Google Source Code for Coral Edge TPU Mendel release:
> https://coral.googlesource.com/linux-imx/
> 
> It was tested on Coral Dev Board using this command:
>   sudo stress --cpu 4 --timeout 3600
> 
> Signed-off-by: Vitor Massaru Iha <vitor@massaru.org>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
