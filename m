Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08483174A32
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 00:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GpNqEb/qR5DeGAbT1aRrOeYARuJb+sUDwP2Lxb5YmvU=; b=iWfvkTN7EC7Aji
	rxhi/niTI469UlsyURi/uWiM6vRloMnL5Zx1t4GWsm2l9zGPMBcFarLv9W/uTGOSvwi0xZkNEd4q3
	8OX58gA397PpTCAmiOdapnv9/MJZfgIdxnyGLd9lJiLuoGkMNUmoXc93OpeOEgpoMKNqvtwfDixMi
	AkHzSOOChkytde1N9ttuaWOO3MzWrZzmz+PKkfu6DmE7/AtgoLe04xpuDYc513CRJHbwo5n1kP5rU
	/PzdoNKfGuLiARTpgzlGPoohNb6yl2etBsqm08m9/uJJ89GW+iMaapRKS++4wjRmIGUL+BIzVdY/W
	nQyfAcgnCR4CW0olRPgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8BkY-0005DX-Gi; Sat, 29 Feb 2020 23:42:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8BkL-0005Cc-Bj; Sat, 29 Feb 2020 23:42:14 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8BkC-0004p9-60; Sun, 01 Mar 2020 00:42:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Describe RK3328 GPIO_MUTE
 users
Date: Sun, 01 Mar 2020 00:42:03 +0100
Message-ID: <2986513.xosFKxlJ7S@phil>
In-Reply-To: <59fe8a7d-22ab-6098-5266-4fdf4bf41adb@arm.com>
References: <cover.1581376744.git.robin.murphy@arm.com>
 <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
 <59fe8a7d-22ab-6098-5266-4fdf4bf41adb@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_154213_551827_2F4D0ED4 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-rockchip@lists.infradead.org, broonie@kernel.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 28. Februar 2020, 13:48:50 CET schrieb Robin Murphy:
> Hi Heiko,
> 
> On 18/02/2020 9:32 pm, Robin Murphy wrote:
> > Add explicit properties to describe existing boards' GPIO_MUTE usage
> > for the analog codec.
> 
> Are you happy to pick this up now that the driver patches are queued?

very happy :-)
And applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
