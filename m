Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1809115B4D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TSZxF2kf6r4X/Nkx+LL3rLk0D6s9liYlGcOyfvUUO24=; b=shjS36kxVOtdXX
	PwS/bAB/uSLb8CFbD9hfb+KXzBVOPnDhAjj1Z3rvAUIwrk2jrZQYNQownkgcKgqQAAKobA1GFYyOi
	TbwAKUfvY30qD+xZAwXZVJzXP4Nsi9Xd6UHgh8bECnh0QQ3EVxgBoQnfgzuhUOZOkWBJkuZlva8LD
	9UdRUGmhWBiE+MLZe1vij7dF/OC4ZMGnyoMbxXerAjMxjxNEbUIFsE1WOY5a+c/ZSMN4Wv8ei7Pwf
	gTLpe4DjZEo1e8VWH4UnAhKygeW6h4PXvQ0gpYEH4L/VJDZgV2hR7mTIzK7VypDTF8mWTojUHTqzs
	qGHHoC8SLCmGSV3KrJiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21VN-0003bz-Mc; Wed, 12 Feb 2020 23:33:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21VE-0003bb-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:33:09 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D5D7E20578;
 Wed, 12 Feb 2020 23:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550388;
 bh=b9wkkGs5vusSYEpW5WxBoVJJlRyrfYZNb33I5l2fp/w=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ZtLujdCL8r3ejsmysKydkXGKgaeTM1xp1xJ3LIn3rLbWQucq7SoG7tuSInKmwZWX9
 UbX5xS9TtFfvM4O7KZ3F9oFLxua7QEQ/uFzUribxBaqDcfc/oJDr+PFMUW3dOX9ZfD
 XEQHk7r5jv/icTZwcfAokxBOc85KRWId4upWGAPI=
MIME-Version: 1.0
In-Reply-To: <20200117210529.17490-1-alexandre.belloni@bootlin.com>
References: <20200117210529.17490-1-alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: add at91sam9g45 pmc driver
From: Stephen Boyd <sboyd@kernel.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Wed, 12 Feb 2020 15:33:07 -0800
Message-ID: <158155038715.184098.9864434667513148223@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153308_319886_5C6EA53B 
X-CRM114-Status: UNSURE (   6.13  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2020-01-17 13:05:29)
> Add a driver for the PMC clocks of the at91sam9g45 family.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
