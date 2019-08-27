Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A893E9DB79
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 04:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KkrN+VXUjsx0IRsbwodpqKntW73MXyrAcZkEx5VHr8A=; b=kco23P+Ur/LpAF
	C6duDOqyjYFrG2Fh+Hkvgk9xEcFt660+nhYeQ4gty74ptupTSw8cL6IstBSQGo1L8jysK4d8aU3sS
	0GHdx9EeKP3Nzuc2mvv4HpEmVI8mu8X5dL6dwv3JoT4JRlgme/+XxVZSTjBuJHN5vUMd5tKDYeF06
	QgW7Z+Rf0D3H7peYS9dAJbTUFZcN1jtQDppjpag5xXGih9fEPmTcKCpfHmwyirmDAvyPay/lsnu7u
	OhjEtIlcl8W3GgrwoXctpxtKoac8iyvSlJ+XpA/FLAZm1L/1TayKanbNq29Ust5m+gVeYeQpol7/X
	LsGQIV9YBfisHlYEVdTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Qn8-0002pn-DX; Tue, 27 Aug 2019 02:01:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Qmr-0002oy-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 02:00:47 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91CAC206E0;
 Tue, 27 Aug 2019 02:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566871244;
 bh=MD3sr2OAksfs0NgAVZIyjzyTAVQ933/C4tnk/zWmHvo=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=KKAmz9jBCgs55lt1JUWBC6wEihVGwH2eJlWekUmiAHQlHNBSQ9hfI35tKDoisVQk6
 HdBs2Y5wtgaFrBcGW2ON8fxbhdkD/NliHsyJGMXn19bSPectvaDItTx5pd6wjJ55wT
 z4Yn1Rc/2GZC8jtdzkMH5LcPSQD5Mrc/P1BiAwfU=
Date: Mon, 26 Aug 2019 19:00:44 -0700 (PDT)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Christoph Hellwig <hch@lst.de>
Subject: Re: swiotlb-xen cleanups
In-Reply-To: <20190816130013.31154-1-hch@lst.de>
Message-ID: <alpine.DEB.2.21.1908261859490.3428@sstabellini-ThinkPad-T480s>
References: <20190816130013.31154-1-hch@lst.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_190046_044191_7E62F5C5 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 xen-devel@lists.xenproject.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 16 Aug 2019, Christoph Hellwig wrote:
> Hi Xen maintainers and friends,
> 
> please take a look at this series that cleans up the parts of swiotlb-xen
> that deal with non-coherent caches.

Hi Christoph,

I just wanted to let you know that your series is on my radar, but I
have been swamped the last few days. I hope to get to it by the end of
the week.

Cheers,

Stefano

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
