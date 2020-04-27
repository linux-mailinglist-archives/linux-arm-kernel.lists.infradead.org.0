Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82C51BA9D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 18:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZmagrN6dUA/LBJGqFJKNsR730uQ0v82FxFgwytdCnE=; b=dx2jaE+7H2lz+5
	jy8zP92HnuklP/lFcKMfvco4LvKPl+rNc9gYZho0LNdrj9gXnR+Qn841DshoUg6UBCy4L+WSKKvaM
	rm6bTTdb4AVdlPbLn3etTA2Kyy8CSBUTBUdWxkopRPytNq+6qfLM6e+3G1aIygLcLCWC1+vIDsnq2
	H+NuUgSe7mI5y2kK0wAYl+u1pOuw/Tspx3j0NMkbIvXogct4UXCaKlvxOiyiiJPl06B8uhQ8o9Q/O
	8GJkGOWauRJF3J54VSTtqAg3G9FbbYuqKN8kbJQiz5TNKazKXn5JIKAnFYAWQyQhMXGGqoQ0xQ6r3
	sPMRQ3zNgmDD399+/ICw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6LL-0003iN-CB; Mon, 27 Apr 2020 16:10:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6LC-0003i0-UD
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 16:10:44 +0000
Received: from localhost (unknown [171.76.79.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D2FC8205C9;
 Mon, 27 Apr 2020 16:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588003842;
 bh=6y+UP73Vxjpn15HNvNYlaPBEXH1uzwIZb3nl5q1GqOQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aR1yAoAqwS+RgrXbE1AAsuiTXEZV7W92AcrPzeyict0PPlEUiEHKWRkvmzMO4oKO1
 8t1vZ23bc52pz9LNTyHP2+DXUHAnnbaSQ9r7UrlG/lPkXnZN2nk3zjzIC/SsQo75Oa
 DMs/H54jSMbM7I0mxVYOer0nm3Bobcrh/qb1G+S0=
Date: Mon, 27 Apr 2020 21:40:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 0/2] STM32 DMA Direct mode
Message-ID: <20200427161038.GJ56386@vkoul-mobl.Dlink>
References: <20200422102904.1448-1-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422102904.1448-1-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_091042_990987_FACF1916 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, Pierre-Yves Mordret <pierre-yves.mordret@st.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-04-20, 12:29, Amelie Delaunay wrote:
> By default, the driver compute if the FIFO must operate in direct mode or with
> FIFO threshold. Direct mode is allowed only if computed source burst and
> destination burst are disabled. But with memory source or destination, burst
> is always > 0.
> Direct mode is useful when the peripheral requires an immediate and single
> transfer to or from the memory after each DMA request.
> This patchset adds a way to force Direct mode through device tree.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
