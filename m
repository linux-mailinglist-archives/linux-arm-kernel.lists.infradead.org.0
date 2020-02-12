Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511A215B4B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 00:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHHdG6x1yeN4ck8IlDCHUDrkZapXx0WLDVjBSG4WUCA=; b=G1gZd1XId3Xpmy
	TpnhDMJBK7Qn7WZfY8KSAEwxmDRojiUqF0uu3BRAIThHHtl+eQzJqTN5AH7+98zRmrKnlbCPAuXGO
	pBDJbo+bngLhBalzaJnHAqz4RlFnoikdGbd5r8ADC0+tnKLl2QLfy9OOrCaEs5Ogmh+TFRn74yNe4
	CH2qd2VT62+6fmZZnNtJcQu2zLZvoC4STu/PPTMbMo9IYHrJk+ilnnjK1kb7e0mjRlOb9Bb7/VpS1
	NuFPdFK3Zk/zn3r77hq4Nk9PWCYRBtBWmjUt1YcVyRuA+BeRPuFpSaabwgRQM8QFeedctFQJQcx4C
	2LA8IZttnje2cmLxz+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j21T9-0001za-Vj; Wed, 12 Feb 2020 23:30:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j21T1-0001zB-Lu
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 23:30:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4309E20848;
 Wed, 12 Feb 2020 23:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581550251;
 bh=we5n/gcqUjIvedGn0eRQwQef3T06WrtffLUf78P4t3Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=frwv+dEI1N/HfY5SRH4s9yaL236SUHB3p4gtn6gG0ZWYS2yL96CfFV8sdwhAHVuZL
 CdXTiPWZqYvzrT9dBLaSKX+iKZrW9YaZMEUCb3vzHGvhIipwSKxBmwlJKpxC3ZxAyA
 gKlRMr+91LDQdPpaGz3UYh5nU+X66gGKMHJiNtW4=
MIME-Version: 1.0
In-Reply-To: <1579522208-19523-5-git-send-email-claudiu.beznea@microchip.com>
References: <1579522208-19523-1-git-send-email-claudiu.beznea@microchip.com>
 <1579522208-19523-5-git-send-email-claudiu.beznea@microchip.com>
Subject: Re: [PATCH 4/8] ARM: at91: pm: add pmc_version member to at91_pm_data
From: Stephen Boyd <sboyd@kernel.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, linux@armlinux.org.uk,
 ludovic.desroches@microchip.com, mturquette@baylibre.com,
 nicolas.ferre@microchip.com
Date: Wed, 12 Feb 2020 15:30:50 -0800
Message-ID: <158155025048.184098.9718921656256470902@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_153051_734675_3238A2CF 
X-CRM114-Status: UNSURE (   5.92  )
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2020-01-20 04:10:04)
> This will be used to differentiate b/w different PLLs settings to be
> applied in the final/first steps of the suspend/resume process by doing
> PLL specific configurations.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
