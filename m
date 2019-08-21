Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3002E97F45
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z42fESzt+GAlYiCwmT7uMEM/fDmCbm6TwfjdeFxWLi4=; b=EhB1nDdO2TGf/u
	8tNUeXX7dTNtc0w5xXM3zhR6wk+uiLbEkIvH4hg+7NAiqCqFRHx7XACyM/R+wB4VQwy9dEdNa9E4E
	G5Z/KvEkC2U3U9y1Wv33TBaAoAeBqFJEV6gGN9U68jZ2vD6drRQv98q7mNascE8CnCoPAgPcoZZn/
	CysorlyFni6c0CLFnl3xfMq3RcKKAudgmP7If0UX4EnQrumbKUQhXKejv2DPzESqowtLZea32vY8n
	VlO9f8Q5AJY5Mqc/tG0aEAUkfO5Kv9MmexmOkJVX3i2/UmqSJUctQSUSJo9Qgq5gf2w2aM+LyqD5y
	BzGonoqKJA2V8n5ARXHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SnR-0005BE-NP; Wed, 21 Aug 2019 15:45:13 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SnE-00059g-9J
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d2ipJgskj1KEFwtR3VC5y7DGS2nKxHaE3OCt1pU7bQs=; b=rDR4iBM6F7m5OGmABrNkpFJyBo
 ItjdBWifYVfJw+pPyL5pd+WkwAK2B9yDLmVb5JNyapKyvXN/KCc9Tr+LcZq3k0rk/L0Va8hx+xKlz
 4HG7FjZDKOVGNRriFTRPpZEgxmcT/UYFiwUx/PrhxKPsTyBPHQU+zty8TUmiu1DHuAmw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i0Sn9-00060h-P0; Wed, 21 Aug 2019 17:44:55 +0200
Date: Wed, 21 Aug 2019 17:44:55 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH v2] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100 kHz
Message-ID: <20190821154455.GD22091@lunn.ch>
References: <20190821013936.12223-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821013936.12223-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_084500_477769_5314C2FC 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 06:39:36PM -0700, Andrey Smirnov wrote:
> Fiber-optic modules attached to the bus are only rated to work at
> 100 kHz, so decrease the bus frequency to accommodate that.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

I took a quick look at some of the SFP standards. 100KHz is part of
the standard. So we should try to remember to keep an eye of this as
other boards are merged.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
