Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F051D58520
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDpNTkCDP2RHjsTLNdyxt5nTcBoJhWMXXZMZClmnzzs=; b=pyEep2RjmXeHL1
	yaDXKSk7v8QUfeo4sgsEdHkjFaDmecmVDXWCEFoSkJG6iUL3CIUxyczF3132ZijrCUNtHU9jT1onV
	HguEOpnJct+FmLC1GGuYIs9qIWjDu4TtFO75uTdLYI+oqnVX5sG9WdwDPqtbvekAPxPGImCIgMJ2G
	IwjF5Bzyl4gl6hSRESJhlMlJRqaN1PrJnVDXdin1GJia/myVaAcs7hYJ2tL1aWhA8EQUp7wTlrdwc
	gwuhKsrhTHpvBm4qxqkqFDAZPBTv98V4cbDEyk6W0RItWTHifYi+xLswdUCnDMuTXwvW93VY/W/U6
	gSRhPhcaeoBcSk3pbrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVwI-0002LK-RS; Thu, 27 Jun 2019 15:03:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVw3-0002Kv-1D
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:03:40 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A233320B1F;
 Thu, 27 Jun 2019 15:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561647817;
 bh=9dRzJf1rsWkfWTu0ToX4+aWY5ycqC1dpc9g5Yw8Jh0Q=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=PCdi9WNkUdNkeOnM37HFHkZUCXv33cJ0PYLTwP2k6PPaZd2eYJ1BRSGAGJF+1teGV
 qzJ3EzWvpetvUKxCcuAY1gojA8KQ0UCfkJW+OZf4+oZvv4DGmgCTVzT580x6J1rcBB
 9s6YmZhQ5kqh7JHcv/malFvvkudboo0ddeXqK8pw=
MIME-Version: 1.0
In-Reply-To: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
References: <1560440205-4604-1-git-send-email-claudiu.beznea@microchip.com>
To: Claudiu.Beznea@microchip.com, Nicolas.Ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 0/7] clk: at91: sckc: improve error path
User-Agent: alot/0.8.1
Date: Thu, 27 Jun 2019 08:03:36 -0700
Message-Id: <20190627150337.A233320B1F@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_080339_095111_E501B408 
X-CRM114-Status: UNSURE (   6.17  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: claudiu.beznea@gmail.com, Claudiu.Beznea@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu.Beznea@microchip.com (2019-06-13 08:37:06)
> From: Claudiu Beznea <claudiu.beznea@microchip.com>
> 
> Hi,
> 
> This series tries to improve error path for slow clock registrations
> by adding functions to free resources and using them on failures.

If possible, resend this patch series in plain text. Thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
