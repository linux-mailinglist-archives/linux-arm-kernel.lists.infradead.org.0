Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A448A1813BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:55:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ii5cqEThdBZ0x1ZgPjpcIg/SfgQbuEpZqMBQhkWwz7Q=; b=aozdNIhOaDJbcW
	DhLZW3CsJMJ+JqciXuGqyDvoBU7iEu1TuJcoDstk70MMXKtQdtVxE/G2SooBeM6qXLZag6bj1uiYP
	VSYX5i3OEqM/0lmVIQtZSw6b/aKDE6DxRbbCmMona7Kqu9ZQucdZYqCdMD1fg7QJ9O0aNvKJgIi5g
	ExLlxap8a2xc3Rvtv7vmctQ7QI7b9X0qbIRR4P89UOhsBm+u1G+TWIQvvN0+ZQp+tEQBKOBKvn1EM
	M1nqRYgHEw0cmtm9HxgQpYIAfJo32rVpGMPmuBmSqWWmQbO6vzq8r4D3vwtue8i80lo86/qQiUuJ/
	cSN+6GKYWvTiexd70D6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBx9E-000847-KU; Wed, 11 Mar 2020 08:55:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBx93-00083l-7g
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:55:18 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C7EE520873;
 Wed, 11 Mar 2020 08:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583916916;
 bh=0ig719qF57xMjabG6POD53mHZVoOUP1KuWNeaq573R0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V43tAO0ACoA3JdfRHjOn9zZn2Wb2Qp3Khnjp/rCGPSnjyZp97U+mNSohEFmytVHM7
 yscdk7an4Txq45MYWm2En70FFi4rHGTjxm/6ygSylt+2NkxNH8IEC5qkpQNwMNUI9d
 2bKo4PqWSNR8557NyaTX70Ta6ohHPUKDs1sUX7Fs=
Date: Wed, 11 Mar 2020 16:55:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH] ARM: dts: imx25-pinfunc: add config for kpp rows 4 to 7
Message-ID: <20200311085511.GH29269@dragon>
References: <20200305212623.5601-1-martin@kaiser.cx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305212623.5601-1-martin@kaiser.cx>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_015517_296870_D82A4D47 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 10:26:24PM +0100, Martin Kaiser wrote:
> i.MX25's Keypad Port (KPP) can be used with a key pad matrix of up to
> 8 x 8 keys. Add pin configurations for rows 4 to 7.
> 
> The new defines have been tested on an out-of-tree board.
> 
> Signed-off-by: Martin Kaiser <martin@kaiser.cx>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
