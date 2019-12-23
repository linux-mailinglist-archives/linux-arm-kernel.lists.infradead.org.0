Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F75B129202
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:43:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FclQZu0qqTkFqkA2Kv1pC9zh0ORnDwk4XbtmgPCNzLo=; b=fLBnpROOth0gva
	J+uBa0IfTUaEftks/OFXXPdm+BIGPr7dHf/2fK9LYyunjgKB4xBt7vGBTER7Zx5VcD0BcBzHU/whj
	wZdxnLCIjQWGJTW5vbyk5fhVlPuMLtkwGwhhii9Dailsw3NJ+/SoBPeLpEG0/zRCKOWrZkEt9L1En
	fQkJYjbNzjpEe8Abbo+wdY/ANN6/174W+7UnYI7U3KfFU6wJPNahbAF8rYKHzaenZQJtWQHpRLUCz
	uYDWIVD0m7UPwGhiaJz8A2y4+y2v6DHhd2ynnwVo3uGftZXZuGVMTtSdldTBi4UrWMOczdPLeKA2H
	E30YY4Zo+k8TARUbWugA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHRP-0006Ls-5m; Mon, 23 Dec 2019 06:43:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHRF-0006LS-Ho
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:43:34 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D697420709;
 Mon, 23 Dec 2019 06:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577083413;
 bh=jzHTI8WiVGxPNfK1Jb/+TploBriVtYYWmvmKPhAOjOI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=blI3EauGJ8VEsiIryOqTagcs7fQ4PQzc8A8xgxjYMmeGkwwYnJeR3VTmigWGeorBf
 qkMkMcRdgf3XJbtRNhsIZ+BEq1v2Dk8Gsk1FFi7/KaonabSv3Tyj8y8hAIWXU7IB1W
 258MsF/Q1mChsD5Tvm3g/9h4o6k/9jEl5hxRUCYA=
Date: Mon, 23 Dec 2019 14:43:11 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: ls1028a-rdb: enable emmc hs400 mode
Message-ID: <20191223064311.GN11523@dragon>
References: <20191213021839.23517-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213021839.23517-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_224333_609607_F7A7C6C3 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, xiaobo.xie@nxp.com, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, jiafei.pan@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:18:38AM +0800, Yinbo Zhu wrote:
> This patch is to enable emmc hs400 mode for ls1028ardb
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> Acked-by: Shawn Guo <shawnguo@kernel.org>

Did I?  You can only add the tag when people explicitly gave it.

Applied, thanks.

Shawn

> Acked-by: Yangbo Lu <yangbo.lu@nxp.com>
> ---
> Change in v2:
> 		add Acked-by 
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index 9720a190049f..61c4f772e3a6 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -93,6 +93,8 @@
>  
>  &esdhc1 {
>  	mmc-hs200-1_8v;
> +	mmc-hs400-1_8v;
> +	bus-width = <8>;
>  	status = "okay";
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
