Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6FB458F0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7/O1UzHk1+MEQuQWg+rXagPYr3PXbf9TfSeZMHGOuI=; b=MBgCAm2IawG67q
	ZHSIrgKpHr2WVsDLiq8q9NFwZm2EkMFllsVDTwk/G1UMBA+inw66COfb0uRTQOQXM/A6AwawHUzBr
	koG73SPxYXOxF6e5gDsuheKnN1OY5bKpa3gbeV+6h9cklhodfigW2jhaIWdXhrm05xh1pmmK5ouYe
	ofZ9CbhEOffYVd+7nIE4hMIFO1cgF+1ZkE4GeRKHzuP2FcG0theGSTImoh6r53tT0NnxzlwF1ksmh
	QwvPqA3JBKk6xl6CSPD7M9PjEJMevLLJNCT9ipL3xAfXYlbEdqOb4GYpPDzzy1FBGmvjhmUEJzS/m
	huyLIxLV7M2rqDL8Y5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbih4-0001pj-FU; Fri, 14 Jun 2019 09:40:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbigj-0001Uf-42; Fri, 14 Jun 2019 09:40:02 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbige-0004BS-1j; Fri, 14 Jun 2019 11:39:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
Date: Fri, 14 Jun 2019 11:39:55 +0200
Message-ID: <4025583.lUYsg5j2zl@phil>
In-Reply-To: <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024001_315157_EE60CDB6 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Robin Murphy <robin.murphy@arm.com>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 8. Juni 2019, 01:07:48 CEST schrieb Peter Geis:
> On Fri, Jun 7, 2019 at 8:58 AM Leonidas P. Papadakos
> <papadakospan@gmail.com> wrote:
> >
> >
> > I'll test on my board, but if in the end it does end up being a change
> > to both tx and rxpbl then we can replce the 2 tx/rxpbl options with
> > one, as far as I know:
> >
> > snps,pbl = <0x4>;
> >
> >
> 
> The big change was actually snps,aal.
> As per the TRM, DMA channels not address aligned have severe
> limitations, if they work at all.
> 
> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
> combined with your snps,txpbl = <0x4>.

same as with the other patch: I've lost track of what matters,
so please resend the ones that matter with appropriate
Tested-by, Reviewed-by tags by involved people.

Thanks
Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
