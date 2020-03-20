Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476CE18C61F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:51:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uq2yEmQFhMSzbFVTl1+kFyeoB7LyKmfe6I5m0lYlayE=; b=jENVtKRr+HnF0W
	11IT5/Jv6fP71flcTU88oEgRr0orRsuhPds9fCbZi0EJ8eEUS1MsnsmW31CDyFlrf0KlcJRQ55LKn
	eUpVH5cN0sTAv1GAlI9nm8kC0Xr4jTBhU+OeZMAJfwb3LFqLjpRAH+0rcyXTVqUiEnkkoZ6J9vmnk
	G8lgL4P30DjLLhERoekLiY9ipv4tv5IrcRSRd2HKVrM+vEKNLh67D07IXnsUEE/54rTfAqiEBorJj
	GyBsDzs9jjzrxdsIqyf6LlsFdqDGJkjX7EQms27+N3u/++3X3izOllzEJdAib08dusryQ05QbdoxZ
	ZRr383CiLS0EJUbEVlWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8h8-0002Y9-1y; Fri, 20 Mar 2020 03:51:38 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8gt-0002UW-JG
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:51:26 +0000
Received: from gwarestrin.me.apana.org.au ([192.168.0.7]
 helo=gwarestrin.arnor.me.apana.org.au)
 by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
 id 1jF8gW-0001WX-Vp; Fri, 20 Mar 2020 14:51:02 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Fri, 20 Mar 2020 14:51:00 +1100
Date: Fri, 20 Mar 2020 14:51:00 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [Patch][Fix] crypto: arm{,64} neon: memzero_explicit aes-cbc key
Message-ID: <20200320035100.GE27372@gondor.apana.org.au>
References: <20200313110258.94A0668C4E@verein.lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313110258.94A0668C4E@verein.lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_205124_027286_F59992D4 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 12:02:58PM +0100, Torsten Duwe wrote:
> From: Torsten Duwe <duwe@suse.de>
> 
> At function exit, do not leave the expanded key in the rk struct
> which got allocated on the stack.
> 
> Signed-off-by: Torsten Duwe <duwe@suse.de>

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
