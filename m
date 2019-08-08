Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4218618E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:24:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCzB6y+ToWZ1yNSHy4k9rIuEpUHub2SsqwjesMaQS0c=; b=riJga8oT20gGpr
	BK/1Ny8V9jRCZIA1ZPdHzgrZhT7c+a11qxVwGrMGEFeUfWWw+PTDRrr/B22dKtd6Ph14C9AoMuaui
	3Of6AEL+hf9RT42eiiEjpPGDLy968uc/qlEO4iS1Sb9p/QzuZDnrprYK7HhkThCSCpwFswWfCJ1n8
	3F24k0QcK9mp5epmP4rtsvEPed3CKtWP/nk84xbuhtd4C98amt30iZBkiAl3sn8NsEa97Pj9xklPS
	qgdm1LZ85xY89Bx7fY5BtJRl9+pKTkJuaXAvUorKo0A0CXfm9meZqFEOqBdeW8ApLA6R4JKJm9PC+
	r3CkGTfx2eKZjzMKbPwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhSV-0008RU-Pu; Thu, 08 Aug 2019 12:23:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhSH-0008R0-MZ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:23:42 +0000
Received: from localhost (unknown [122.178.245.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD18E2171F;
 Thu,  8 Aug 2019 12:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565267020;
 bh=pYsFBGP3kI4gJG4u1PJaSdrgvkRbRuJZQ/c/jwcwI2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZazE1taqA2r421KmDZVzNqPA+bSG3IjqBr4e1e/giVkNuwVgb3NEchPhztqU6QYfi
 GPj2QapJuzXJNzKKXvtyEycNJFqG3H7dunkUvVt9cZ3HNVHFePggOQ1fy+IpY3o9Xq
 C7ImPSlFTWh+CA67rXnQjQ9wy3ouO6RYu2i/nPpo=
Date: Thu, 8 Aug 2019 17:52:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH v3 03/24] dmaengine: imx-sdma: Remove call to memset
 after dma_alloc_coherent
Message-ID: <20190808122228.GP12733@vkoul-mobl.Dlink>
References: <20190715031716.6328-1-huangfq.daxian@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715031716.6328-1-huangfq.daxian@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_052341_756251_5C1F0589 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dmaengine@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15-07-19, 11:17, Fuqian Huang wrote:
> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
