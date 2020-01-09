Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E011351F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 04:33:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8BeAcEjDzQovD9/hoEVVUr3GuH1oWHUFu0Jln7ruU3s=; b=TBAfJ202fA5DNTaTAy0+WFKFFE
	uVxkH8S4ZIzjHQd0zPohRzgq9YZCMwjopngtsgQVaRpg/7RqNhQaAcVQf/fbE+JZXXoeWvt6spbEB
	1Cx0YGQwHbnaudXgs7oBvBINhhcFVS2CaXS1Rwv9YjZ7GNGIHDIP+s8RDNHVGZtt7v6N5YjJBK/wI
	H4Ol+aE2q6vP5mLTCrZtqjgDoei0E7CRJ8I9XbCj2SaLJAcZUfD47q+MGeHSfwPjFUYrsMDOcWyKU
	fzGZ7qXHAp6GhVwz76TCkyukNHU55S8HdtvOV5Xd+8/3EvxMNZ3uvIoftPDyqwm9ChG+CFz5erNE4
	6F7aS6TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipOZF-00036Q-Aj; Thu, 09 Jan 2020 03:33:05 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipOZ8-00035w-8Q
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 03:32:59 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0C09EF3CF5707CAD02D1;
 Thu,  9 Jan 2020 11:32:54 +0800 (CST)
Received: from [127.0.0.1] (10.57.101.250) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 9 Jan 2020
 11:32:47 +0800
To: <soc@kernel.org>, "arm@kernel.org" <arm@kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 "Arnd Bergmann" <arnd@arndb.de>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: dts: hisilicon dts updates for v5.6
Message-ID: <5E169EDE.8020809@hisilicon.com>
Date: Thu, 9 Jan 2020 11:32:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.57.101.250]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_193258_458557_91D78E57 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Salil Mehta <salil.mehta@huawei.com>, jinying@hisilicon.com,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Tangkunshan <tangkunshan@huawei.com>, John Garry <john.garry@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, xuwei5@hisilicon.com,
 huangdaode <huangdaode@hisilicon.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>,
 Shawn Guo <shawn.guo@linaro.org>, "Liguozhu
 \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi ac <zhangyi.ac@huawei.com>,
 Shiju Jose <shiju.jose@huawei.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM-SoC team,

Please consider to pull the following changes.
Thanks!

Best Regards,
Wei

---

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

   git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-dt-for-5.6

for you to fetch changes up to 6fa154e46c723b1eaa24ad16fbe92c2a3bf98dbc:

   arm64: dts: hi3798cv200: correct PCIe 'bus-range' setting (2020-01-08 
19:33:54 +0800)

----------------------------------------------------------------
ARM64: DT: Hisilicon SoCs DT updates for 5.6

- Add remote control map name of the IR device for the hi3798cv200 
poplar board
- Correct the PCIe bus range setting for the hi3798cv200

----------------------------------------------------------------
Shawn Guo (2):
       arm64: dts: hi3798cv200-poplar: add linux,rc-map-name for IR
       arm64: dts: hi3798cv200: correct PCIe 'bus-range' setting

  arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts | 1 +
  arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi       | 2 +-
  2 files changed, 2 insertions(+), 1 deletion(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
