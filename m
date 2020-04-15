Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B781AACEC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLzsRKIbVcek+nUF4IbZeRGsXuSU7RYcvELDy0ML/r0=; b=p92ZSQFqCks0G4
	s7WwO8GnRfYmD5Rq521w4A7ma7m7vxhZxY/o6ZfSYJTuBtWGHvjlgIdHG5X+EDcd2fGgdFwMXLOJy
	ZL3wIEqRWF90dBwRVxsGefN/T3lGJWfqW1XK+K5/BWq3clnxYWdyIHbcuBsygZCzwkn1RPdaR5Mer
	RRnEm7fQw6SBinHw/lqzhnaQ8cMYc01kEcrVANbOB6a+TWVGphbrVWzG0/OWIYoCkmmC3WK4oJlZU
	Tb8M6ScooumalQMGO4+7xOeGnLH7zLhCogjQi7EMMzTsC8m/3NKU0s/NUDwjHrDNf3kXncN9/7tLw
	VtKYNp1Ni7yRIoBLBnyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkXn-0004F0-Hj; Wed, 15 Apr 2020 16:05:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOkXd-0004Ed-7h
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:05:34 +0000
Received: from localhost (unknown [106.201.106.187])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E3822166E;
 Wed, 15 Apr 2020 16:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586966732;
 bh=Eon/kODku4B5cB6+FzYwFxrHvEHuLXWbf464ab57/ss=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MYhWL3GFqyivUyvIaZmO4yuG4loQCi3kVFJBVgBAxQpnz1QUDuhEtU52Agsvhh654
 tLlm35JWq25Ca+Q+Safov5zorpriyWBTBnAJW+5ibrc3zuOgl5cy3o8IIp3rQBk3CZ
 d+EfcXmLliXGrWIHiU6qPmxzS1ASfjGjKPWRojT0=
Date: Wed, 15 Apr 2020 21:35:21 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH] dmaengine: ti: k3-psil: fix deadlock on error path
Message-ID: <20200415160521.GX72691@vkoul-mobl>
References: <20200408185501.30776-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408185501.30776-1-grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_090533_294845_36AD474B 
X-CRM114-Status: UNSURE (   6.90  )
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-04-20, 21:55, Grygorii Strashko wrote:
> The mutex_unlock() is missed on error path of psil_get_ep_config()
> which causes deadlock, so add missed mutex_unlock().

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
