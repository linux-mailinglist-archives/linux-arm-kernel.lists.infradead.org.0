Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBF8E7D1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 00:39:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyHr4ttK2Ex46kvoItuGA9OTB90W6ntXy1K4ihdJOk4=; b=FQo8zc8AmQlWxN
	1Nj3R7Qw6Qh6y6M/l7n/hmD3bqleomaUfXEKeT4rTPAUly6olTTV3jWDnrAGnIDXXB0Y/pU0QT6AB
	OuEP3Qf5eULXZpejr2is6oH+APtn5Rrp94rsZpROuGruSIbuwANP/2OqAMB7gFElSPfQz1abEVr3X
	+6c9VWIAAAkBUAiHhd0DKlR+hsgezB+von+lVPK8YNCHYBlok1WfnASFp16l1SOF519lAQfBBqT8+
	C+i+ZbFGEsSSbP18mUHywET1KIGkD4RbqfwxCOZz+02OimrTkmvayPYWjkdlto8jgYkOuTnBLOjgg
	ncjaZH3LQKf5qWvcofRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPEbH-0006ij-72; Mon, 28 Oct 2019 23:39:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPEb3-0006hR-Gk; Mon, 28 Oct 2019 23:38:50 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C8214214E0;
 Mon, 28 Oct 2019 23:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572305928;
 bh=xBmvXJr+GIY5paJ2Zoq8AFBSZGqlYt1dcC4tldS/uxI=;
 h=In-Reply-To:References:From:Subject:To:Cc:Date:From;
 b=xwNccI+pAe6iGmxgbtPjJ4jPQY+okL5rN+zBjDAavgqBlBFw1sJThSfvC53I+zSPm
 Jmq5YcUoSX1chBtU61LDo+QGlqtshQinDmO/az6p9LQdXsVBsmH8RO5LWF5mJCpv5J
 Vjhs1ZKtCxjk9EEjMQQup3E1y76BnoDms8jCeJDc=
MIME-Version: 1.0
In-Reply-To: <20191017105348.8061-1-ben.dooks@codethink.co.uk>
References: <20191017105348.8061-1-ben.dooks@codethink.co.uk>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: make clk_half_divider_ops static
To: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>,
 linux-kernel@lists.codethink.co.uk
User-Agent: alot/0.8.1
Date: Mon, 28 Oct 2019 16:38:48 -0700
Message-Id: <20191028233848.C8214214E0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_163849_574443_8ABC2E66 
X-CRM114-Status: UNSURE (   7.13  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Ben Dooks (Codethink) (2019-10-17 03:53:48)
> The clk_half_divider_ops is not used outside or declared
> outside of drivers/clk/rockchip/clk-half-divider.c so make
> it static to avoid the following warning:
> 
> drivers/clk/rockchip/clk-half-divider.c:142:22: warning: symbol 'clk_half_divider_ops' was not declared. Should it be static?
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
