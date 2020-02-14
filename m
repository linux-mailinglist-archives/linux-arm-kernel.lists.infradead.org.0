Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798A515CFFC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:35:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KprwGFPh60axzXbyrCvTxH0m4can2GfNc16hhOVqyg8=; b=DkFFPs89plPtlI
	I6PQPDAqMs40n72DFC7V1FDzh1EmhVdK4PlHfWSkxgsSuLjmlaQ13JHGMO7rBCHuItbG6TMAgDByP
	Wli0jf0H0sxpfgpYrrAT3pzS6pKtX6dr3EWLDtXIldBcBZUPXKNThnNQKXR9u9YM/aOCqYCC5mAzz
	DBgG0k6PPeOjpVSOCCe2r+oeRvx+m1htzql6OSbAYd7bXBbPILPd6aHkkp1ILnNQnmSSM+KHkIzvj
	WbnSNRbdS6TXPTY6qsL/nxFiYQb6NvA0fHPjBf3Fv5zA6UnQCJjneXu3D9wh79UlByhJ1GqH+SMOL
	gEq1juNt1i5qDZT+6vvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Qon-0000np-DU; Fri, 14 Feb 2020 02:35:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Qoe-0000nQ-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:34:54 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7F1C22168B;
 Fri, 14 Feb 2020 02:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581647692;
 bh=NlFy+G7BwmwZJMBQsFrSrIwD/y9XhSxODCQxDfIySuU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tvDhV6jnoCeie0Kwf0B+4/6TxT/wSlWvZLZsiX8vs8ajAKJ0yfALbjrvcK2l0+bkS
 AvwKa6FDFPJOQ8yH6dfj/kBs/lYzCaF5ONijXXAs6mBCE0fhaOQaFDnljR+nhutpuW
 tQsMQxacnQ9HAQBNuIv/cDEos3n2wO0wy5wBdwRA=
Date: Fri, 14 Feb 2020 10:34:46 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Vladimir Oltean <olteanv@gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a: Restore MDIO compatible to gianfar
Message-ID: <20200214023446.GF22842@dragon>
References: <20200126194950.31699-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200126194950.31699-1-olteanv@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_183452_998413_AEB3C020 
X-CRM114-Status: GOOD (  11.97  )
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
Cc: devicetree@vger.kernel.org, pavel@denx.de, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, leoyang.li@nxp.com, claudiu.manoil@nxp.com,
 robh+dt@kernel.org, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 26, 2020 at 09:49:50PM +0200, Vladimir Oltean wrote:
> The difference between "fsl,etsec2-mdio" and "gianfar" has to do with
> the .get_tbipa function, which calculates the address of the TBIPA
> register automatically, if not explicitly specified. [ see
> drivers/net/ethernet/freescale/fsl_pq_mdio.c ]. On LS1021A, the TBIPA
> register is at offset 0x30 within the port register block, which is what
> the "gianfar" method of calculating addresses actually does.
> 
> Luckily, the bad "compatible" is inconsequential for ls1021a.dtsi,
> because the TBIPA register is explicitly specified via the second "reg"
> (<0x0 0x2d10030 0x0 0x4>), so the "get_tbipa" function is dead code.
> Nonetheless it's good to restore it to its correct value.
> 
> Background discussion:
> https://www.spinics.net/lists/stable/msg361156.html
> 
> Fixes: c7861adbe37f ("ARM: dts: ls1021: Fix SGMII PCS link remaining down after PHY disconnect")
> Reported-by: Pavel Machek <pavel@denx.de>
> Signed-off-by: Vladimir Oltean <olteanv@gmail.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
