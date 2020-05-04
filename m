Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1798F1C3201
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 07:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4kMTyNjX8VW25KMw9Myx5jfQPI+KBSASXz21CaFjtY=; b=lCmeYCyiL3el1h
	VVJ//i8ShKV236NP2754J7rt89Nx+3l1o4HgA7mqKMr3yVoVytVGI/Wk/0kCAjao8M70E0TiBmm7e
	M1ZTWngaazz7v0PhpqZxFNHmQR2dJUpCsOc4dgfIBXHAGqdZauZHSXSvMvz4sAVaiTbjTofKmdJ49
	s6p7+B5+AJD/tjghjgVGy+5NFaNJSuW2Zv3xUSdVijPAKvwdBW2WKttFYVbFN1MCBD+lRlbhCX2c4
	sT93zMzWh+b1np2d2UAdEbkU6fXv1Wb0xf5gs/fMbA9hEs0RFjU5J5gJkuTOtVKzSRmhBbK1v9+Bj
	0hZY+h1zY5JR+Tgu+d/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVTDD-0001xv-5P; Mon, 04 May 2020 05:00:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVTD6-00018q-Kl; Mon, 04 May 2020 05:00:09 +0000
Received: from localhost (unknown [171.76.84.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A092B206EB;
 Mon,  4 May 2020 05:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588568407;
 bh=Sqc/o6T+nFXemlcgmHtEKzYmFketuc1fqMA+mAYUeDk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jh/tZLGNy9PXS1axw9ThF1Bu2U1hXjRht+1LYX3q+T2LIeI+WgJbw8jtUhyWEgaKS
 AbWfBefqHzR8MFRhh3GQeG+cDfP3op4FsS39CkC2WLQ3NEcNPeBnMNRKpAnZnRUxZK
 4HkDPuptej2x4y2OCE1Bm2sPGzOlVgyrDMCwiD1s=
Date: Mon, 4 May 2020 10:30:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Subject: Re: [PATCH v3 1/1] dma: actions: Fix lockdep splat for owl-dma
Message-ID: <20200504050001.GC1375924@vkoul-mobl>
References: <2f3e665270b8d170ea19cc66c6f0c68bf8fe97ff.1588173497.git.cristian.ciocaltea@gmail.com>
 <20200502122333.GA1375924@vkoul-mobl>
 <20200502173500.GA7621@BV030612LT>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200502173500.GA7621@BV030612LT>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_220008_705804_38A49CEF 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On 02-05-20, 20:35, Cristian Ciocaltea wrote:
> On Sat, May 02, 2020 at 05:53:33PM +0530, Vinod Koul wrote:
> > Hi Cristian,
> > 
> > On 29-04-20, 18:28, Cristian Ciocaltea wrote:
> > > When the kernel is built with lockdep support and the owl-dma driver is
> > > used, the following message is shown:
> > 
> > First the patch title needs upate, we describe the patch in the title
> > and not the cause. So use correct lock, or use od lock might be better
> > titles, pls revise.
> > 
> > Second, the susbsystem is named dmaengine:... not dma:.. You can always
> > check that by using git log on the respective file
> > 
> > Pls do add fixes and further acks received on next iteration.
> >
> 
> Hi Vinod,
> 
> Thank you for reviewing and sorry for the mistakes! I'll be more careful
> next time with all those details.

No issues, we do learn a bit everytime :)
> 
> I've submitted the updated patch: [PATCH v4 1/1] dmaengine: owl: Use
> correct lock in owl_dma_get_pchan()

Thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
