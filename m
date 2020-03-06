Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7AF17B3F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 02:50:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2aCAV+oZKEx6engMBssJnz5IAkgPRGA+KiQcGGOe2s=; b=aMuQkrHyrn4mAp
	mmJ79vKTPUhQm6VhRkO8jKxpeink0I/LuToY2747tV4PNcBb9UPNbt3LcyWB4JEDXmsMbilLAPy9w
	koH4WDtEta4XWIehUv3jz0lhDalV92n6jLotbVwjmNq6UlO8mIZxj5LXRfNq0L2bXLdJdDHQcAJaR
	EwWSLcKD4DF3ZWqtSfUw7SmymuyXL3vspMqVAbc9MUR2hMqMj7lhxhyV46OcaY4hG2ziKt2KmHJY+
	E+5Hy8aYd/3UGAXZkr6FKUShOb+kxqCnh4EHpt0YL+pEmYuQkN33pDueQKLeS6o39Xsa50Q54aiOp
	QL1X9w/gVG4O3tHBrEMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA27g-0006MI-Ew; Fri, 06 Mar 2020 01:49:56 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA27J-00069J-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 01:49:36 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jA273-0005lA-UF; Fri, 06 Mar 2020 12:49:19 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 06 Mar 2020 12:49:17 +1100
Date: Fri, 6 Mar 2020 12:49:17 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: "Dragos Rosioru (OSS)" <dragos.rosioru@oss.nxp.com>
Subject: Re: [PATCH] crypto: dcp - fix scatterlist linearization for hash
Message-ID: <20200306014917.GE30653@gondor.apana.org.au>
References: <1582643152-17278-1-git-send-email-dragos.rosioru@oss.nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582643152-17278-1-git-send-email-dragos.rosioru@oss.nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_174934_231896_D3F3B95F 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marek Vasut <marex@denx.de>, Horia Geanta <horia.geanta@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 05:05:52PM +0200, Dragos Rosioru (OSS) wrote:
> From: Rosioru Dragos <dragos.rosioru@nxp.com>
> 
> The incorrect traversal of the scatterlist, during the linearization phase
> lead to computing the hash value of the wrong input buffer.
> New implementation uses scatterwalk_map_and_copy()
> to address this issue.
> 
> Cc: <stable@vger.kernel.org>
> Fixes: 15b59e7c3733 ("crypto: mxs - Add Freescale MXS DCP driver")
> Signed-off-by: Rosioru Dragos <dragos.rosioru@nxp.com>
> ---
>  drivers/crypto/mxs-dcp.c | 58 +++++++++++++++++++++++-------------------------
>  1 file changed, 28 insertions(+), 30 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
