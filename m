Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6358E4FC06
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 16:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=60znvII9P0Jh1AjVlj1V0v1gJw/vJyRcR36fTdmoNwo=; b=TdW8sbrBf5oUw+ZmrgGdIIGJLW
	D85Estub/pSnpbvNmGp6SB411Zj4Z7bZ791XwZRnz5j6jOadJsfGtfHdBS1PS8Ph02u5AnjyhqjaL
	LtH80f+BYJRGs9riMymglAl/nVEh8YebPFn1WH84kuhQYinzwvZU2+Cwqad7RMreKq1eSdqI/DPGb
	RyHKcPz3DPZaoBtroHT29fNqMWp6WmtLcJXam3mT041GUFUuVcKcKjXbs/i/JW13l3gpjOre/Zm4J
	J6KSf9ZPsgokgobNPxGTbGPKgMOkkJdyqAYU3NV4zqRpcY/+hT+Xr22Q+c48qHIVhEPt5KUx9XGqj
	R4Rp81sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf3H0-0003Lm-E8; Sun, 23 Jun 2019 14:15:14 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf3Gm-000367-F8
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 14:15:01 +0000
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x5NEEuE2037688;
 Sun, 23 Jun 2019 23:14:56 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav305.sakura.ne.jp);
 Sun, 23 Jun 2019 23:14:55 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav305.sakura.ne.jp)
Received: from [192.168.1.2] (118.153.231.153.ap.dti.ne.jp [153.231.153.118])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x5NEEtSo037679
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Sun, 23 Jun 2019 23:14:55 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
To: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Jose Abreu
 <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: stmmac regression on ASUS TinkerBoard
Message-ID: <8fa9ce79-6aa2-d44d-e24d-09cc1b2b70a3@katsuster.net>
Date: Sun, 23 Jun 2019 23:14:55 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_071500_732803_871A7BCD 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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
Cc: Andrew Lunn <andrew@lunn.ch>, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello stmmac maintainers,

I found this commit and that has some regressions:
   74371272f97f net: stmmac: Convert to phylink and remove phylib logic


My environment is:
   - ASUS TinkerBoard
   - SoC is RK3288
   - Using STMMAC driver
     drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
   - Using this device-tree
     arch/arm/boot/dts/rk3288.dtsi ('gmac: ethernet@ff290000' node)

Current linux-next on my environment, 'ifconfig eth0 up' does not work
correctly with following message...

-----
root@linaro-alip:~# ifconfig eth0 up
[  105.028916] rk_gmac-dwmac ff290000.ethernet eth0: stmmac_open: Cannot 
attach to PHY (error: -19)
SIOCSIFFLAGS: No such device
-----

I checked drivers/net/ethernet/stmicro/stmmac/stmmac_main.c and found
stmmac_init_phy() is going to fail if ethernet device node does not
have following property:
   - phy-handle
   - phy
   - phy-device

This commit broke the device-trees such as TinkerBoard. The mdio
subnode creating a mdio bus is changed to required or still optional?


Best Regards,
Katsuhiro Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
