Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93C02165A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 11:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TsfSqTBjRJphaz2GuG2rPjRqF8CJOkbjRJQqg6cg3M4=; b=hIGL7sIavPIR9alSdQoGaYVV7
	Uco05ge4OrcXNh7KDEteWSGnsbcCa/pjKlpKncvdcYdZTIgelmtPwXzyfYIKWaCSo2bBafEqYC5ts
	dwrIYAcRUvU6v7mJG1clDigyVxRA7qRcPUY/K9TkB3WaBfzenldTeoYuvtZgoFt9iGehWa7Xs5H3e
	xcY63TpLVSP9ZcveRwFlDKmCeV4PnGYesKr7L8rfKdtXhysXcM/9qJD3iKmzbOJ8twjHfwtFGiZGm
	fIExsdC4Urbi/HBqzYu2IdIGRh5OA+8TsB61Z6bbFR+lt6yELpfRS+pvYObPqqmicdgDRna9HK/uF
	xoBryjFjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZHU-0004bf-Di; Fri, 17 May 2019 09:36:00 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZHN-0004aC-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 09:35:54 +0000
Received: from [192.168.178.167] ([109.104.37.130]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MkIEJ-1gz9TR0Kgj-00kgs3; Fri, 17 May 2019 11:35:48 +0200
Subject: Re: [PATCH] arm64: defconfig: enable NXP FlexCAN driver
To: Pankaj Bansal <pankaj.bansal@nxp.com>, Leo Li <leoyang.li@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
References: <20190516134516.19351-1-pankaj.bansal@nxp.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <d31b2b01-7d07-7da3-3f06-d3ba4862dca4@i2se.com>
Date: Fri, 17 May 2019 11:36:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516134516.19351-1-pankaj.bansal@nxp.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:DSK6hNQTs92FgqjBSvP3ibGSrf9+Qxxa6PJrsaU06UBZcuKvc4u
 3/e+3t+S+wtSizmZRBteVQk74abmpWGYVscZhfemkTWR6VB3bxmgG43U8S4YYoZx20J7ab9
 szeR7IttVc8x88+PXiaChxSKSNog65cWEd8S0a5atD06FuTNIAWCYy4C02C+6yLNGq+uOAl
 +5K9NMilQOFRd+bakmJaQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ppeYlBxF+ms=:2vamtbXZdzbWJsGcva0EZK
 5a/FlwKI7m/3sg34XU9/KT4P+zxLfDnm1ftLUWrU0rTuSEWBMaRBZFjGzQAPP0eEX7OdZ6EMY
 l9OvFRBhhbdTvDgcYpKI8nWPmKXo1R5A5BrqjoHgyXfy6DtCDZ1vJtE5tJ/iqaE/zQaWfXQGE
 tolKP6n3c//nRa90Ufo57+cGGjPVzOcakb6MBi907n6Tgi7qhcjtIZVx/51j9VY3drDhKJPaW
 ydSWUZTgGZ9a0S7P0AtVFT/0JSpTLu2v8zctOaHaM9L0d5p5rNidWpQGh7EPR1qhXsaVQUNWb
 AA92Yo1P70K+M/9XAJzQYxojchD4YA67dNDTifFpXF8CElOpT+Bhhm9Xag724V+jXtUE/e+Zf
 IiJmo+rj7uRrwFQcYXrkTRS5P94n+K8kvxofcWkAcwLwJJNFpB2x+am3/FBuUVuZQoHLNbWMV
 Y5R31KJpMBANIQ5zikLnPE/JS9SAdX9HKFhWiC/Q+QvBdBHkJvcYbKfC6AFig53+3S4aIZGo4
 q/C2+jYTzz5lziTuOHxsffVo+V2LGPwRJzvEUI9tDBslu7rVFuOkkNTuXaXHnrC4/qWJiHqX0
 +I2higTfQKB3cYTYwT53yadcjXbBpIOe2ew4X0OM3I9sjkx//LAPEg9qMl6ftjsQzHPUdaivn
 pwa3GyOrxJcqQpy8+7Mz5e7wg8e3MduE34qM23nbsr1Ik8nq+GKLbI1OOhP2yKB/xv9PVTpmh
 0S9TZEBW5gIwpok9LLu7WM9TPxIFLXadOuUxpgjOe+B+VypVERa0wh0OWOY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_023553_637347_E0D5FE9E 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pankaj,

Am 16.05.2019 um 10:21 schrieb Pankaj Bansal:
> Enable driver support of NXP FlexCAN controller.
the commit log should better explain why this is necessary. I'm assume 
this is needed for some i.MX8 board.
>
> Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> ---
>   arch/arm64/configs/defconfig | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 2d9c39033c1a..8c176e65bef2 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -180,6 +180,8 @@ CONFIG_QRTR=m
>   CONFIG_QRTR_SMD=m
>   CONFIG_QRTR_TUN=m
>   CONFIG_BPF_JIT=y
> +CONFIG_CAN=y
> +CONFIG_CAN_FLEXCAN=y

I think CAN support isn't boot critical, so better make this a kernel 
module.

Stefan

>   CONFIG_BT=m
>   CONFIG_BT_HIDP=m
>   # CONFIG_BT_HS is not set



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
