Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D2312662F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bB/QhZFExizhrudHxI6pvd5ZM6xrccjN85NmAEeFenY=; b=B0mTdWh71hcGA1
	1rAVgQej7QDmKO9BkCNNhh2sZ/xIB69mMCnNoT9qkE8lNhxNBId04t4bTnHtelwGtjuTBGAx1OGTw
	iVqkWeI35dh8DOGrLtWnOq2Cp1iZWJazgQxtmpKEqlswtgcDbNc/4I6DqLjCoWgEyPTT3cXeIoKjs
	1h8oRhVVzcdNMm8HJxrQmibNHqfBuG5jFjVlSZX5mD9YCzW+xhuVeqbovEC4s5SX2O642ePPBGZwX
	WIMgpjhiTcvXOJErqKc6LesG+ZH4YTaYZZi/5z6KEjFCw1LhuJ0QOq8GgEKtoSdVhzEhDGJ/jIJWC
	ZtDWjCmzost/AEWTctsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy8x-0003sH-MT; Thu, 19 Dec 2019 15:55:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy8l-0003Nz-KN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:55:04 +0000
Received: from localhost (unknown [122.178.234.230])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 226FA2067C;
 Thu, 19 Dec 2019 15:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576770902;
 bh=XAe58tWkatLiv8U7yH0Pi/yFrHc9gUQ/cOhT6V93d/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CgcM8KNJxpwGrcMVhDHuqC5MbtAT1hNmQzgTKdAfgY0e5JaaUW148Cx5JLbqEMFhs
 WAACX1p3/uI99rrzjaMD4YAPnQyJHakW8rtvrOzwtOzDpNmJCCQk4rcUThtDUdnI5U
 4+/DMZ5Q3yqKJpH+KXnptFP2LRP4KAyH9ufe68Js=
Date: Thu, 19 Dec 2019 21:24:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [EXT] Re: [v5 1/3] dmaengine: fsl-edma: Add eDMA support for
 QorIQ LS1028A platform
Message-ID: <20191219155458.GY2536@vkoul-mobl>
References: <20191212033714.4090-1-peng.ma@nxp.com>
 <20191218062636.GS2536@vkoul-mobl>
 <VI1PR04MB44311BE955B863C73DF4CD4CED530@VI1PR04MB4431.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB44311BE955B863C73DF4CD4CED530@VI1PR04MB4431.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_075503_713544_08550BB0 
X-CRM114-Status: UNSURE (   8.42  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-12-19, 08:08, Peng Ma wrote:
 >Btw pls send bindings as patch1 and driver changes as patch2.
> [Peng Ma] I don't understand this sentence, Please give me more information.
> As I know patch1 is driver changes, patch2 is dts changes, patch3 is binding changes.
> You accepted patch1 and patch3, I am puzzled for patch2 and your comments.

The order of patches should always be dt-bindings first, followerd by
driver change and the dts changes as the last one in the series.

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
