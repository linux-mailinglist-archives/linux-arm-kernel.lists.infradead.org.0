Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC24E1E529C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvGI2IhFrq6+J1JX6Jb/1dC8evsSIJBt+uOGH4AqXCY=; b=hzGNLUIxzbh+Hd
	tQkPWJvG9pRe8XZd46M1K1BYKcypFZ0t9NfGsGAbQ8NZZtUpn3q7QhqjdmX26FexZefhb9uv180Vp
	qwloUrfG7P3Z2n7n1/ohiy7VNj1XiT+osasgmSMO4KVLt+L+Gucetn9IYv6OcMg0T3/36vB9nZ2Xb
	F6uJV109UlKUh4WCK3gmpvlZqTe1mdMtAdbU7YsFAmQOFYOCDr9Qt6W+NhH/oXWyy9s8uQG9bPDLH
	ByfRUDZA/RMqRw8a2x1lwTW7+andoOr0yHGSSnEb9dabMI7RtKy/LAt9TkA1Y9sBuWZHTmtw31gqk
	UMo7cNwr1ynixLedQfOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6xc-0007zE-Jr; Thu, 28 May 2020 01:03:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6vK-0006Mw-OJ
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:01:32 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A087208B8;
 Thu, 28 May 2020 01:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590627690;
 bh=j1Cwhp+MH8Kk4E8xmJNO9CpZqOY9hYn6fArceRHafsg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fKvZOu2EuUMlNXBB878WfmTHvvutF+lWcuOHsqfRHhqzY0yAJOBnkjsmGfC9KSQTQ
 mD5uDGJ/iX6JlD31h0zJkNTqDqJKVv2+5JSGvIatEYW3VsEq8aOARMhJf5dsTKRqac
 d5wn6Z9Se3qJ4wS/FfrVAIzqbfKVN6iZKfsQzlUA=
MIME-Version: 1.0
In-Reply-To: <20200519224151.2074597-10-lkundrak@v3.sk>
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-10-lkundrak@v3.sk>
Subject: Re: [PATCH v3 09/13] dt-bindings: clock: Make marvell,
 mmp2-clock a power controller
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Wed, 27 May 2020 18:01:29 -0700
Message-ID: <159062768959.69627.47616154297435181@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_180130_823134_F5DE33A1 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-05-19 15:41:47)
> This is a binding for the MMP2 power management units. As such apart from
> providing the clocks, they also manage the power islands.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> 
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
