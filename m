Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992875204B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 03:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UK6PQYhJ4i6FWi7ekx3vFC1qthX58vVkEr140HyHpHw=; b=DAL9vim7x/fYZu
	2pHKlCdUOOvPu8ChZLVvhZ6yloVEq2BXEh3Bn5GTQJHAMyxOhmFPYVk/IfHetXr2W7DHS4PqYC7Yw
	cmnlxq9A43EgD0D/XEbCulAKcoHpODXQjiS/j/U0QG/43Qb1oi/Ol8NxUQT53eJ1VkaJn09MDyiEs
	QM4qgwlP7KbFMFUYBhogjYBoPcQEp2fyUodMjzSFLFYdjMIyeP+snE8XIPfFiYvAofaadaepTYVU5
	0FYR/WCHljV0B6KadxF77mQmqikOALeebiWarWAsTLoKpMyf6vlUdZaGMgt9BV8zuBdls7nRYq+VI
	l8Tuj/12z0trpg1+0nEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfa5O-000450-3j; Tue, 25 Jun 2019 01:17:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfa59-000444-M6
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 01:17:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D2D520663;
 Tue, 25 Jun 2019 01:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561425431;
 bh=+hj47sTwmKBDJvyyLIh4W4IbUA1BkBMWX0D6j641nnw=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=OsfmJE8eR++j21vrxJwqy17Yga503MPRPpcQWmjPZI5IAx3z0bk4Ok6+BGvKbjfh5
 FTuP81eFgtILbUCGGQiQIb75faVHb0xeUMAht3h9wKbaqfULEZE1MzHcjbMeKUrf2Y
 ugeu7xYL2CDnBPEFufZFHyCRi9jv9g2nFIfoLTQo=
MIME-Version: 1.0
In-Reply-To: <1deb7a85-0859-54f1-950a-33de3a08f9fd@ti.com>
References: <1deb7a85-0859-54f1-950a-33de3a08f9fd@ti.com>
To: Michael Turquette <mturquette@baylibre.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 linux-clk <linux-clk@vger.kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [GIT PULL] clk: keystone: changes for 5.3 v2
User-Agent: alot/0.8.1
Date: Mon, 24 Jun 2019 18:17:10 -0700
Message-Id: <20190625011711.3D2D520663@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_181711_749056_98F949DA 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Tero Kristo (2019-06-12 04:56:15)
> Hi Stephen, Mike, Santosh,
> 
> Here's a 2nd take of the pull request for the clock changes for keystone 
> SoC for 5.3. The only change compared to the v1 is to add the required 
> drivers/firmware change in. This avoids the nasty dependency between the 
> pull requests between the clock driver and firmware driver.
> 
> -Tero
> 
> ---

Thanks. Pulled into clk-next. I guess we should increase the size of the
number of parents that can exist to be more than a u8? We're close to
getting there with the new way of specifying clk parents, so maybe we
should expand it to an unsigned int, but then we may need to optimize
finding parents when searching through all the parents of a clk.

Also, there isn't any quantification of how much better it is to scan DT
for all the clks that are used and only register those ones. It would be
nice to understand how much better it is to do that sort of scan vs.
just populating all clks at boot time. It may be useful to make the code
generic because NXP folks also want to populate clks from DT so maybe we
should provide this from the core framework somehow to ask providers to
register a particular clk or not. I haven't thought about it at all, but
it may come up that we totally rewrite this code in the future to be
shared outside of the TI clk driver.

FYI: I had to apply this patch on top to make sparse happy.

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index b417cef35769..92b77d38dd1f 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2402,12 +2402,13 @@ devm_ti_sci_get_of_resource(const struct ti_sci_handle *handle,
 	if (!res)
 		return ERR_PTR(-ENOMEM);
 
-	res->sets = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
+	ret = of_property_count_elems_of_size(dev_of_node(dev), of_prop,
 						    sizeof(u32));
-	if (res->sets < 0) {
+	if (ret < 0) {
 		dev_err(dev, "%s resource type ids not available\n", of_prop);
-		return ERR_PTR(res->sets);
+		return ERR_PTR(ret);
 	}
+	res->sets = ret;
 
 	res->desc = devm_kcalloc(dev, res->sets, sizeof(*res->desc),
 				 GFP_KERNEL);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
