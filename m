Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CAB6165DDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 13:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HqApGmuRhexjVFebPhRWWjvilI31nKev6fYWlspaoUU=; b=IaFdqkjhOuA8AoeJB6GHmZdd/P
	1RnqIofYDtl6H6nr1+tQ1S0s6vxv5ExUgvhndktYsJRsYD2lsFU/SwU0ss8ozP237Tma6s11R2pXR
	z4+c1JJC0md6dXADGWPwKKwv9jqQ/Jx3vi12XfvZJ5qoi1QvYdKiL/QiEiPI5OlDIZmI1XjvfhFkX
	1qhcZ+GSJi5sQgt0+nAb47wfGACGlROsBiCb6gmFImljLvBFT18Fe3cqB4PlyljgGslejbmXHpueA
	WrP8x0qko8votzBuNm7uSxtSb6F6LRirwB4NsLsTdzCmbJtBOdKQ3Pp2I+FLsqiymjy7yQQFGYQeH
	a4nnUbEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lGv-0002pq-8W; Thu, 20 Feb 2020 12:49:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lGl-0002p8-O0
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 12:49:32 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F287924672;
 Thu, 20 Feb 2020 12:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582202970;
 bh=mHvCLEeijc9+28uoKBLvBs1OnwDR7LB3lcAGddq+hWQ=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=RsDP3uJiJbgkmVJWKr98zJKa899YRuMZ6g3VwxN+9csxvI/tLvVPzH+tpoU4/Y6l7
 aLzbsjRnJsc8rvhrQpM1fZbrhRcvFli5B6QwwDYQimMn7L6pdJ3OuJcdxQxqddWNFX
 3OBKHqpwnQylQwi+Fmte8YEcGhMLjYa3q7gnII0k=
Date: Thu, 20 Feb 2020 12:49:29 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Esben Haabendal <esben@geanix.com>
To: netdev@vger.kernel.org
Subject: Re: [PATCH 2/8] net: ll_temac: Add more error handling of
 dma_map_single() calls
In-Reply-To: <20200218082631.7204-1-esben@geanix.com>
References: <20200218082631.7204-1-esben@geanix.com>
Message-Id: <20200220124929.F287924672@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_044931_803861_290DC93C 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: , stable@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.5.4, v5.4.20, v4.19.104, v4.14.171, v4.9.214, v4.4.214.

v5.5.4: Build OK!
v5.4.20: Build OK!
v4.19.104: Failed to apply! Possible dependencies:
    d1441d4782f2 ("net: xilinx: replace dev_kfree_skb_irq by dev_consume_skb_irq for drop profiles")
    d84aec42151b ("net: ll_temac: Fix support for 64-bit platforms")
    fdd7454ecb29 ("net: ll_temac: Fix support for little-endian platforms")

v4.14.171: Failed to apply! Possible dependencies:
    aa5848bc4043 ("net: emaclite: Simplify if-else statements")
    d1441d4782f2 ("net: xilinx: replace dev_kfree_skb_irq by dev_consume_skb_irq for drop profiles")
    d84aec42151b ("net: ll_temac: Fix support for 64-bit platforms")
    fdd7454ecb29 ("net: ll_temac: Fix support for little-endian platforms")

v4.9.214: Failed to apply! Possible dependencies:
    aa5848bc4043 ("net: emaclite: Simplify if-else statements")
    d1441d4782f2 ("net: xilinx: replace dev_kfree_skb_irq by dev_consume_skb_irq for drop profiles")
    d84aec42151b ("net: ll_temac: Fix support for 64-bit platforms")
    fdd7454ecb29 ("net: ll_temac: Fix support for little-endian platforms")

v4.4.214: Failed to apply! Possible dependencies:
    860e9538a948 ("treewide: replace dev->trans_start update with helper")
    aa5848bc4043 ("net: emaclite: Simplify if-else statements")
    d1441d4782f2 ("net: xilinx: replace dev_kfree_skb_irq by dev_consume_skb_irq for drop profiles")
    d84aec42151b ("net: ll_temac: Fix support for 64-bit platforms")
    fdd7454ecb29 ("net: ll_temac: Fix support for little-endian platforms")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
