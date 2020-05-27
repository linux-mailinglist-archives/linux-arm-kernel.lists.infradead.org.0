Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B251E344E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJK7QhGq7LGBGrVcq02WJNOvyRtv56y923tjM0cAIGs=; b=LSgZY2aatJMgUH
	JYT6wabyc6a91FGlNr8W0CsW7c8akRuJMBLTG5x9cMswfPAlNz9k+g9DjXPecCoruM83qsOHXXsLj
	pP4xU+Qnotrf0a3Mfk3pDIVhYyRmAlLtWfpoTPeohCv4h5ejsrfeaeietvkbaAmtWRzQs/eMX2BHb
	n2y96sB38eq3DA7BNuw4Ui6gop6LaZvZHGE24n7Y90KQxRvIAK8EayNJ7iKhOf+K9Qz26ak/Z5rxv
	jXsJPashwAWjYv3En/uYuh3iFHGB4G2Zy7zR7M03hQy72bsUhTVpNRxISa83rIN9XW9/0+6nJeevA
	vcoPGnVky8KhETm2bnuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkRp-0000Km-3g; Wed, 27 May 2020 01:01:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkRe-0000Jo-Qb
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:01:23 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7E9B2089D;
 Wed, 27 May 2020 01:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590541280;
 bh=NtZy5/K3/zCTcG/yP4zAKmzCDT70slJ8ic2T/Pp+kCg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=F/+TmWTl8teuTFMAfcjl519GMYb1JpQU7IFk0YGOjpJzSWNT9tSOh/sqLuXF9qwNZ
 uRXemv0/3ahLWAbpwAjrX98j8AAMFhSPx9ZmBRWCUVuBzuSa5yQITiCfx3lUpkEqTa
 pB5Ig7CDi1s2TVLG0PdGmP4eO2PqgUkABQPIza/E=
MIME-Version: 1.0
In-Reply-To: <1583185843-20707-2-git-send-email-jolly.shah@xilinx.com>
References: <1583185843-20707-1-git-send-email-jolly.shah@xilinx.com>
 <1583185843-20707-2-git-send-email-jolly.shah@xilinx.com>
Subject: Re: [PATCH v2 1/4] drivers: clk: zynqmp: Limit bestdiv with maxdiv
From: Stephen Boyd <sboyd@kernel.org>
To: Jolly Shah <jolly.shah@xilinx.com>, arm@kernel.org,
 linux-clk@vger.kernel.org, michal.simek@xilinx.com, mturquette@baylibre.com,
 olof@lixom.net
Date: Tue, 26 May 2020 18:01:20 -0700
Message-ID: <159054128018.88029.11167718877921501862@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_180122_880057_70CB75AD 
X-CRM114-Status: UNSURE (   5.82  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Jolly Shah (2020-03-02 13:50:40)
> From: Rajan Vaja <rajan.vaja@xilinx.com>
> 
> Clock divider value should not be greater than maximum divider value.
> So use minimum of best divider or maximum divider value.
> 
> Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
> Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
