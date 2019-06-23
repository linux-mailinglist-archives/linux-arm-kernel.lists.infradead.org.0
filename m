Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6364FBE8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 15:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k2DYDbzsxwC1tJ/wFI6UdJCuLUnHB6lZ9l91nfkLgRg=; b=cCrftW0c/Zp7Q/IsuojtYTroA
	umNi33Sj6J4rq+orxgKCozmJWtFHjQa0NolxYQjXIQgiWxrKO5txFRtyGFAU8drx4isXrBY0Ep95h
	nMAtLASGfpawzKIwOG0YFQ3ac+M59PYDXRS9JFkqmpC5wnOSzrNGcdZaTTxPN9785Q3szMRA+Zzzc
	X4a691e/jJ29jYRHidFe4RK5O5cMGLWPl0pjgn6qswd856CADxraeuijHXWMMF5e2KsLrDiBztxhQ
	xOMQFJlWeKYExNIRNdQlB7HbKq5mvA27iVzmzXrGpSW0C+fLtp6zAbLfhtVhK0i7Au8Kq9l9uUGtu
	gWVBY6MZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf2b3-0007uy-GA; Sun, 23 Jun 2019 13:31:53 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf2ao-0007u3-Gz; Sun, 23 Jun 2019 13:31:40 +0000
Received: from fsav405.sakura.ne.jp (fsav405.sakura.ne.jp [133.242.250.104])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x5NDVU9l019165;
 Sun, 23 Jun 2019 22:31:30 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav405.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav405.sakura.ne.jp);
 Sun, 23 Jun 2019 22:31:30 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav405.sakura.ne.jp)
Received: from [192.168.1.2] (118.153.231.153.ap.dti.ne.jp [153.231.153.118])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x5NDVTux019135
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Sun, 23 Jun 2019 22:31:29 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] ARM: dts: rockchip: add ethernet phy node for tinker board
To: Andrew Lunn <andrew@lunn.ch>, Jose Abreu <joabreu@synopsys.com>
References: <20190621180017.29646-1-katsuhiro@katsuster.net>
 <1871177.hjLhdHVgcu@phil>
 <ccf5ad2c-bd56-2d77-4728-d7906045e302@katsuster.net>
 <20190622175508.GE8497@lunn.ch>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <8a006d47-a546-163f-0c3f-f35b0056ba3a@katsuster.net>
Date: Sun, 23 Jun 2019 22:31:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190622175508.GE8497@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_063138_787518_42B7AB3E 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Heiko, Andrew,

Thank you for comments. I found the commit that has regression:
   74371272f97f net: stmmac: Convert to phylink and remove phylib logic

So I'll report it to netdev and stmmac guys.

Best Regards,
---
Katsuhiro Suzuki


On 2019/06/23 2:55, Andrew Lunn wrote:
> On Sat, Jun 22, 2019 at 11:50:10PM +0900, Katsuhiro Suzuki wrote:
>> Hello,
> 
> Hi Katsuhiro
> 
> Please also report this to netdev, and the stmmac maintainers.
> 
> ./scripts/get_maintainer.pl -f drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> Giuseppe Cavallaro <peppe.cavallaro@st.com> (supporter:STMMAC ETHERNET DRIVER)
> Alexandre Torgue <alexandre.torgue@st.com> (supporter:STMMAC ETHERNET DRIVER)
> Jose Abreu <joabreu@synopsys.com> (supporter:STMMAC ETHERNET DRIVER)
> "David S. Miller" <davem@davemloft.net> (odd fixer:NETWORKING DRIVERS)
> Maxime Coquelin <mcoquelin.stm32@gmail.com> (maintainer:ARM/STM32 ARCHITECTURE)
> netdev@vger.kernel.org (open list:STMMAC ETHERNET DRIVER)
> linux-stm32@st-md-mailman.stormreply.com (moderated list:ARM/STM32 ARCHITECTURE)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM/STM32 ARCHITECTURE)
> linux-kernel@vger.kernel.org (open list)
> 
>> I have not bisect commit of root cause yet... Is it better to bisect
>> and find problem instead of sending this patch?
> 
> My guess is that it is one of these three which broken it:
> 
> 74371272f97f net: stmmac: Convert to phylink and remove phylib logic
> eeef2f6b9f6e net: stmmac: Start adding phylink support
> 9ad372fc5aaf net: stmmac: Prepare to convert to phylink
> 
> 	     Andrew
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
