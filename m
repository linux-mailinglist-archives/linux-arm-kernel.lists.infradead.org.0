Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD30ED6E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 02:27:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZMncGNZisS+93Cr5ddv5YXl2SrN8jxgSnAyPxb13aM=; b=V7IqH3SrOm7iLj
	hjFY8ue5XS88DeL+lMNpk7ZHVaCnI5U0gNPgqp9PcjGMNEQYzbQzf/9Q2K5wGdFKvZYhE9uaHvCV5
	K+IspFdzFQULlHy/UB78RocatqyzP4UgJELJycMt03aIHaOTa/N5fCsb3JMghJHhKuRFmQ8+9Cftp
	GM9VerEBPhkCQjQzYQRx2KX9WKDzEPdywbXVagG0rDdMVrql8Wd0Fm33pO+x1k2TFpmYuPeooSi8V
	ZwFnKoKWAv5uemeMDp2UBRzsqBzHvexq36ICcOqnjtY6O1oED49rMuCPevkVPDCuXssiSaa4iLlG2
	ABGpF186uRfiDV0Qe1jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRR9B-0005zy-9x; Mon, 04 Nov 2019 01:27:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRR94-0005zR-EY
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 01:27:03 +0000
Received: from dragon (li1038-30.members.linode.com [45.33.96.30])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77A0E214D9;
 Mon,  4 Nov 2019 01:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572830822;
 bh=Hw+hwKVQUsNdBF/kcpsFusDQL/5LzDx1ZI16h1Gs/0c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cEnEO8WQAZ1Ps68a5ITLLen2o72C1yvGJTn2nnSHDdSqGyRpmbx0Kd/MGtqLtVEFF
 NerVOI+g+07CxlCqdxnpy5kwi7bZQKx1Le/MS0w+DBqvf34zxDwB/acsG/F3NPhmMx
 Qz7WCHXnfy7hdoTh31OY4TnBgYFlQUyevEme3DE8=
Date: Mon, 4 Nov 2019 09:26:37 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Marcel Ziswiler <marcel@ziswiler.com>
Subject: Re: [PATCH v2 5/5] dt-bindings: arm: fsl: add nxp based toradex
 colibri-imx8x binding docu
Message-ID: <20191104012635.GH24620@dragon>
References: <20191026090403.3057-1-marcel@ziswiler.com>
 <20191026090403.3057-5-marcel@ziswiler.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026090403.3057-5-marcel@ziswiler.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_172702_507913_628FB324 
X-CRM114-Status: UNSURE (   8.21  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 26, 2019 at 11:04:03AM +0200, Marcel Ziswiler wrote:
> From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> 
> Document the NXP SoC based Toradex Colibri iMX8X module and carrier
> board devicetree bindings previously added.
> 
> Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

I changed subject a little bit as below.

  dt-bindings: arm: fsl: add nxp based toradex colibri-imx8x bindings

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
