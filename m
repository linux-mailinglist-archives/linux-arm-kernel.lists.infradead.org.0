Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F55D125303
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 21:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMyxcLjJwNC0WcIO3Qfbx5aYDsNxlWPSj/3fPFUphKw=; b=foHocs+qCxKOsE
	BHcgmh6o9Rehi6orDQfncztDchyzAD5uo3QJ3reVzoZmiwMxFFjhpkuVxSgRkIlkikPsZZPBhAkOR
	H3Lt8ayiFRR47OyGSI0dg4CvdfasD6Wjyw3sDtB/jcxj9sI3HVSZxOy4E0Usoz+7cOlh8WMuEIfyV
	yi2Db9M8yivv7tBGthbNC15afbec5IGAKnhOoMcXI2y2G22le/tJ/xCQvE6gMResvFbsLTOXz/vdH
	d2em2+2BIquWfyKOGFFuGcL+OyjWHDcbYOOt1CvSQFFw8nM/7tEaHxMH4noTejTHcdjOeUSyz1k+l
	kVhyUiB3rfb0nbFwPjgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihflK-00030C-2E; Wed, 18 Dec 2019 20:17:38 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihfl8-0002zm-P7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 20:17:27 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D8CFE153CC127;
 Wed, 18 Dec 2019 12:17:25 -0800 (PST)
Date: Wed, 18 Dec 2019 12:17:25 -0800 (PST)
Message-Id: <20191218.121725.838258577232002957.davem@davemloft.net>
To: Jose.Abreu@synopsys.com
Subject: Re: [PATCH net-next 0/7] net: stmmac: TSN support using TAPRIO API
From: David Miller <davem@davemloft.net>
In-Reply-To: <cover.1576664870.git.Jose.Abreu@synopsys.com>
References: <cover.1576664870.git.Jose.Abreu@synopsys.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 18 Dec 2019 12:17:26 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_121726_816791_0455A57A 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Joao.Pinto@synopsys.com, alexandre.torgue@st.com, Richard.Ong@synopsys.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, boon.leong.ong@intel.com, peppe.cavallaro@st.com,
 andre.guedes@linux.intel.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Wed, 18 Dec 2019 11:33:04 +0100

> This series adds TSN support (EST and Frame Preemption) for stmmac driver.
> 
> 1) Adds the HW specific support for EST in GMAC5+ cores.
> 
> 2) Adds the HW specific support for EST in XGMAC3+ cores.
> 
> 3) Integrates EST HW specific support with TAPRIO scheduler API.
> 
> 4) Adds the Frame Preemption suppor on stmmac TAPRIO implementation.
> 
> 5) Adds the HW specific support for Frame Preemption in GMAC5+ cores.
> 
> 6) Adds the HW specific support for Frame Preemption in XGMAC3+ cores.
> 
> 7) Adds support for HW debug counters for Frame Preemption available in
> GMAC5+ cores.

Series applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
