Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0695516B944
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0fpecfUMl9TvpPbS1OIR/uq7WaumNBl0kZOaJvyi6U=; b=QkKKo/wjeaUiDH
	nPyW6Qw+EDtHJbZmMHCEp28PgPMqU6EjZ3N6znAulimU3Zf9xwmy5gu2o0xNSewik5VH3kHrXEXWy
	/r8oeHKJKaJXamq0C0r8xa/M+m4PbXCvWeZ/JkbBy7d6FcTApRRmgDf9Ry5qjes+6mUIoG+V9/Nkl
	eTXigf9lMjOIwUXv4EgP2Zkj7JDctjY5Vv4zUm148zs3cFPS3XJjpTWJoo3jrfdbDAABv89LMTnTx
	biRUdqEOF+B2KHuWgFoO2Tayctcy/izkM9Kux5ffZ8yaj+iB0Br0gtvWzzLZaAIM2TneIaSvz6Gbi
	lroMMAXS42D0cGrBQzpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6T28-0002R8-0I; Tue, 25 Feb 2020 05:45:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6T20-0002Qp-2y
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:45:21 +0000
Received: from localhost (unknown [122.167.120.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 421E2222C2;
 Tue, 25 Feb 2020 05:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582609519;
 bh=j47OslZ9784bwULG/PPlCt7joegvFmVDiWVpyxhkBOo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GMw66R3/uvqjEjYGCq2fhzTOA1W2l6ouvKd+EQSx4Zj472u9nMo+0nEKWCsAHdkWT
 7ccU6etf4Zy7O3d3E8Psqsc3YajJkmx2m9AP0PoRpYUCbJFybI2muZOQ2DhMBTu7np
 zr3YDDKZkWx2d9lbYmIt1G2f134h89TdhzXFIXsY=
Date: Tue, 25 Feb 2020 11:15:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Amelie Delaunay <amelie.delaunay@st.com>
Subject: Re: [PATCH 0/8] STM32 DMA driver fixes and improvements
Message-ID: <20200225054514.GG2618@vkoul-mobl>
References: <20200129153628.29329-1-amelie.delaunay@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129153628.29329-1-amelie.delaunay@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_214520_148731_84BFB7B3 
X-CRM114-Status: UNSURE (   8.83  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-01-20, 16:36, Amelie Delaunay wrote:
> This series brings improvements to the STM32 DMA driver, with support of
> power management and descriptor reuse. Probe function gets a cleanup and
> properties like copy_align and max_segment_size are set.
> A "sleeping function called from invalid context" bug is also fixed. And
> to avoid a race with vchan_complete, driver now adopts
> vchan_terminate_vdesc().

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
