Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98759E61E7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 11:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EH0tMyxw3b0fT8FRcizlYYlDD7MUHwNYYl7bFVGrzx4=; b=tVshJe7taDJ4lv
	r3HjYKP8zQGGHwcVmwVsA4XbWbOKe5gFvuNCX9ZcrdAmejZQAv5/BidH/unPrSnn+GAEM8tL0ufiR
	T8L8FNqh587Ys9ZInX3rxbL7WE49FKzdiz4zGXqBR93Z8MSLC78ce54Gq1l0dGymKmzOnxD4leWeg
	TZDHmPwDXI4IwPAMdQCcHehIktKYD6eqoKwk1G1y2FGMOXh28ifOhGWyo/BSVfWLdiroMfReITC1w
	yc0SDBeOuZk+6OQfM06+YMH7BBAIjRbBC9SMOKDy+gwy/uIy0kK/jWdDZ29AzrPF1/OzgqxDiYPls
	goA5t2OYDyrHKYrpHWpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOfLJ-0003tc-82; Sun, 27 Oct 2019 10:00:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOfL1-0003tI-IM
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 09:59:56 +0000
Received: from localhost (lfbn-1-17239-195.w86-248.abo.wanadoo.fr
 [86.248.61.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D198C2067B;
 Sun, 27 Oct 2019 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572170394;
 bh=0y0SRx8HR9EiEmSNyoLk6vVHSMKEaoqC8szmDK7YJpc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yYJF8+CAHm6PzevDJyBnQR1Pt3MpZLE+pd1H5sKxWhCAvVjXPwfh7mH1GYzrIU/aE
 4EM3NyYuC6hPIRf6uYUfQsHuV3P3E1davO/gnBHj1F1CMa4tn+bu1FETFB/aRBhJOK
 z5rq957YoPIS2LV72SDJZGG/6+zD2E7f0OwzFmTM=
Date: Sun, 27 Oct 2019 10:59:31 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ss Security System
Message-ID: <20191027095931.lruqnzw2gluwfkrz@hendrix>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
 <20191025185128.24068-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025185128.24068-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_025955_628428_B1BFFAA0 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, p.zabel@pengutronix.de, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Oct 25, 2019 at 08:51:26PM +0200, Corentin Labbe wrote:
> This patch adds documentation for Device-Tree bindings of the
> Security System cryptographic offloader driver.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>

This patch and the previous one are:
Acked-by: Maxime Ripard <mripard@kernel.org>

I'll apply the DT patches when Herbert will apply the first two.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
