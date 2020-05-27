Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE7B1E366E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 05:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZaD2qEVnMgez6YPO1hzt4BnSlPu594uXlk4/aYy0Ww=; b=Um+rW6HXwlBbbO
	+dG0Mog0b7uELeD9Re6lBJVzEojFglxoJ3enbO4Ji7cQYdD6PUP1a2XSzZ/8erNF07IKUBKfydVZ9
	E+t5/g21GpScZgp9xe1ttXYY56z0vbn5F7N2QjunIaO4uosJzPR/F6WCJCJGL6PI7Wic3zqhVA/zB
	MmrOLTbh7uHc+UkgK6T7gU5Eli9CQQmrBaIMvj2W4TpSYe1WGZMwjwE/AXxGIQk0uQlKR2EmF0pub
	trGM05eI7ye6DsDDHAiOQkFGXF4IkXHt/ktkD0nx5LXfYEUGs9YT+4BfBDetlbmcIP3PCos24qqbU
	r4zYhRXhorLpA8aZUmOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdmeb-0005Jq-9Q; Wed, 27 May 2020 03:22:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdmdt-00055Z-A3
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 03:22:10 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87E4F20899;
 Wed, 27 May 2020 03:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590549728;
 bh=s5AebhNv/fPiQf8H+bfjKhgpA0L+7vopYyWrgXREc6E=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=xWJ4CBd9kqaTGDZiwWSamKLHHekIrHClNJvFxkxs74v+HTuWi8LS8E+u0rGklHHKF
 myywATth3Ipr8LdP591NPlptlNJ6Lbn+Z9HrkYn7k1lEyDWVOU2tEIajw0FwApJpar
 RHvJO2qNfzoSFjbILDTY4KvZY4/KWcKAMqqIx23Q=
MIME-Version: 1.0
In-Reply-To: <1588508289-10140-2-git-send-email-claudiu.beznea@microchip.com>
References: <1588508289-10140-1-git-send-email-claudiu.beznea@microchip.com>
 <1588508289-10140-2-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 2/2] clk: at91: pmc: decrement node's refcount
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mturquette@baylibre.com, nicolas.ferre@microchip.com
Date: Tue, 26 May 2020 20:22:07 -0700
Message-ID: <159054972792.88029.18036666635801379426@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_202209_384197_9779F325 
X-CRM114-Status: UNSURE (   5.97  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-05-03 05:18:09)
> of_find_matching_node() increment node's refcount. Call
> of_node_put() to decrement it after it was used.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
