Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECF492468
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XyIYnorpfgtUYOJ6ZzKC4iFdck4DYYf/n1VkQ9+/5U=; b=NjlZVzTyS0LomS
	EuanbxIRfTTz47WNmKG0FjYsXC6cnDE47Fm7YVe0aYwwBjlG7dvzdmgMl6qkeiLpX2+H4H+KfARLk
	ocIQPUXaYTc2lj/mai99lbomQPekzuvp7BrJaCIH3nAv72XrdaGIQVnpFfJHK1Gof5HmfAvFpFZV3
	ShT8zHTvxnQvwjNd/EPRkr3T/vvOR8FS+Zlsiealjhe9X22ezsG1yf+5+tokF5miKCl6OQ3qK87YI
	TJ+523O3KSzEbHlXXnmReKsziDupAHqywGb1G1utgiEGVA0atHUUUfC/Q0I626vhuG6J3gZTuIg6u
	ojs5kbI74gQA3rA0+FqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhR4-0006YH-KC; Mon, 19 Aug 2019 13:10:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhQt-0006Wd-NN
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:10:48 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0416C2086C;
 Mon, 19 Aug 2019 13:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566220247;
 bh=efgMIFqbDub5AwYwoCwk6l2PFpmusRxRiQTqU1CB5XE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GZyi85pST9l8iaCgZUCUoS2J5F5RXdWTLtK/ebZtddL0C53Hgr9mw0Fjh8fXHOweN
 mJlCAxk706p3+QtP8GMgHJ2IQmu+JHVI6WT/FZPxADhkQJLQpJkXqjEm62Tt7J9cPj
 AM5eeH0z1Fni93ZYLW4fXEeARzf9ZMmuLcdJXCU8=
Date: Mon, 19 Aug 2019 15:10:35 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v5] arm64: dts: ls1028a: Add esdhc node in dts
Message-ID: <20190819131033.GH5999@X250>
References: <20190815033901.18696-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815033901.18696-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_061047_785651_DC1ADE6C 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Ashish Kumar <Ashish.Kumar@nxp.com>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 yangbo.lu@nxp.com, jiafei.pan@nxp.com, xiaobo.xie@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 11:39:01AM +0800, Yinbo Zhu wrote:
> From: Ashish Kumar <Ashish.Kumar@nxp.com>
> 
> This patch is to add esdhc node and enable SD UHS-I,
> eMMC HS200 for ls1028ardb/ls1028aqds board.
> 
> Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
