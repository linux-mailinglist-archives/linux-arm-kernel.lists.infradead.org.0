Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BDC129212
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 07:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P69pOS9N05PiLLPLmdzBDGoglXMiLRxD2puhvDhQVDo=; b=KH4ZFpCSbwfyD1
	Ha53orCldKhbzJ0Va/ddiViyvZMpN1SiE4jjAfV3fSprL4ByRo1q4+DGA8AqbsmRy68Q8vUNbJ9Xu
	MRZSoGS6tc0Ml1hyASyb67x53ysonfdg2qRZgyyvkdkFhI3jyam3vnw2L/vsc/lg7lMxD8LVTbJsa
	jBiD3G7NgQNtNIHY/35T9dnzcOJAi4a3fbPLUuY0H1/2xvvcLk7EBtukVPXeupGgg79Cb5m01CvwE
	fh8w7kZmS0eq23tZl7IZSxfmmrVBC+f1aOtPag8SzlWk8mGgOUfBW8BslVa786S9j3PpCCjh9n6+6
	xDkriPg64CqZQZtBfZ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHcs-00035S-ID; Mon, 23 Dec 2019 06:55:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHcf-00034H-2S
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 06:55:22 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9620B20663;
 Mon, 23 Dec 2019 06:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577084120;
 bh=39ehGZ6TuL922vgrdz2h/bRu6TOJa3ZY3hJJ2N9KD9A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HW+GJS5OxSVhugdZ53LcIsfKTacGVpg6i8VPohFdkaXvBTZZ5Gft/aTeytg9wPTQw
 qC0xltbypWCL5MPPInkZw5WdA/K0miyj1St6t+XwQyHSW9o//mvtbP81SnAKQ5LA1W
 okYlXQFuzM2+Zuu5b/dE0xSVXprh64vRDs1D4FmA=
Date: Mon, 23 Dec 2019 14:54:59 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: ls1028a: fix little-big endian issue
 for dcfg
Message-ID: <20191223065458.GO11523@dragon>
References: <20191213021839.23517-1-yinbo.zhu@nxp.com>
 <20191213021839.23517-2-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213021839.23517-2-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_225521_146160_4EB209DC 
X-CRM114-Status: UNSURE (   8.33  )
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

On Fri, Dec 13, 2019 at 10:18:39AM +0800, Yinbo Zhu wrote:
> dcfg use little endian that SoC register value will be correct
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> Acked-by: Shawn Guo <shawnguo@kernel.org>
> Acked-by: Yangbo Lu <yangbo.lu@nxp.com>

I reworded the subject and commit log a little, added Fixes tag and
applied a fix.

    arm64: dts: ls1028a: fix endian setting for dcfg
    
    DCFG block uses little endian.  Fix it so that register access becomes
    correct.
    
    Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
    Acked-by: Yangbo Lu <yangbo.lu@nxp.com>
    Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
    Signed-off-by: Shawn Guo <shawnguo@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
