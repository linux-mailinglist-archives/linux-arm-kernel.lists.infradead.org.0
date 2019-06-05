Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F32356D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 08:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIhWUMOQFGuGCOdoNNoLdUJemVRRedtTZ55ePFBYxFg=; b=LF+ngl+6cc4qmp
	EiQ8/CDF7PCt8aQAJuFuIJbzTrVT0tfNUQUtyb8ix1OCbBM9NZZ5ep0it1LSIZhyYH3QLb0d16/Tx
	16Bfs+3CRr4WbUctbF1x3u7CaR49angzXahjf+yizp10IvmqLMzjgraTubrcSrUIOQQ+wp4ofddF+
	6ZTuvr5wblMBi95OVW5u3RzDO5f6+wiY6hTiBXtrFCX7yv3L3DTCi+dNJ0G2H009ZxURaVLi3iqU+
	0c2NmO0w0thUMvvfgN1WMICJgt/nVgLuT86lVFpCHnxLE7JX80Q2oarM+gY2izLauBiswAlFC1lur
	ITHa5mpkzAtiwmapzO4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYPG6-0007jk-K3; Wed, 05 Jun 2019 06:18:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPFz-0007j3-4p
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 06:18:44 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 317C0206BA;
 Wed,  5 Jun 2019 06:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559715522;
 bh=MSV/rGzBVTZxIWJspsr0g5i+nW0XZGAzFdtujk9ds4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VjS1UvQCfrsxwpe/wmB0X+D7gqfthNMQYKRQv0P/B2WstrCv5+A557HhdzD2+cyxa
 Sb2lNU9CcNTaynzsUBmRLzITWkypYyY84HrlXtF/5mgHSL+lcicrV/PvON9yVqy4CW
 h32x655vtOJeZ+AboDSDEQ6hfeUv4Js8z2UhJkl8=
Date: Wed, 5 Jun 2019 14:18:27 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: Enable sata.
Message-ID: <20190605061825.GE29853@dragon>
References: <20190524073022.32174-1-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524073022.32174-1-peng.ma@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_231843_202265_18D1CC83 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 03:30:22PM +0800, Peng Ma wrote:
> Change the sata node to enable sata.
> 
> Signed-off-by: Peng Ma <peng.ma@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
