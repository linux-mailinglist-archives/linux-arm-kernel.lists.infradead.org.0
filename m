Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C086D4BDEE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kKrzbLFypiWb4S88jMErjEnJ7EXVDjvElQlHtDSXqbg=; b=Qb5J/4YrT/fjaB
	cFTwsHqa8AtLrHB9WFFlRtb/Zb/rcqxeF6VyhQ/L9+dM0Xk8Vbl4zC+oIwJ1gSQ4BHfvDD30nWEkX
	ySVeD0kTCb4LiPDsnZ0L28vL6vodPPZYVOIXGLj/3bzZzLuXnqRA3NbAcXH3KmK0K1VBpi/9bNFOB
	MaZSW+K1/UT1i2+AcnXkjOUhTUiNZz/AvpfxdbmYP6HC4+J5fYZ21g8P666kujPavZ2AQl/j9I04y
	uUyBnF5aDKjNCduyfbKAGIEqEGbF2EwmTUA5RAGiBzZpfxAZtHAA4fOTEvf/QvsVn7a7BTgOQf0qH
	W3uyteglpgIr/MrXxC0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddKl-0002S1-RW; Wed, 19 Jun 2019 16:21:15 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddKd-0002RE-6s
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:21:08 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id C6137724C798EC8775D4;
 Wed, 19 Jun 2019 17:21:03 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by LHREML712-CAH.china.huawei.com
 (10.201.108.35) with Microsoft SMTP Server id 14.3.408.0;
 Wed, 19 Jun 2019 17:20:53 +0100
To: <arm@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 <olof@lixom.net>, <arnd@arndb.de>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm64: dts: hisilicon dts updates for v5.3
Message-ID: <12521191-b14c-8e54-a09f-c0de3d9f8326@hisilicon.com>
Date: Wed, 19 Jun 2019 17:20:53 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_092107_404792_58A3B80C 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Wanglai Shi <shiwanglai@hisilicon.com>, John Garry <john.garry@huawei.com>,
 jinying@hisilicon.com, Guodong Xu <guodong.xu@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K
 Poulose <suzuki.poulose@arm.com>, Salil Mehta <salil.mehta@huawei.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linuxarm@huawei.com,
 xuwei5@hisilicon.com, Haojian Zhuang <haojian.zhuang@linaro.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Leo Yan <leo.yan@linaro.org>, Zhangfei Gao <zhangfei.gao@linaro.org>,
 Shiju Jose <shiju.jose@huawei.com>, "Liguozhu
 \(Kenneth\)" <liguozhu@hisilicon.com>, Zhangyi ac <zhangyi.ac@huawei.com>,
 Tangkunshan <tangkunshan@huawei.com>, huangdaode <huangdaode@hisilicon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi ARM-SoC team,

Please consider to pull the following changes.
Thanks!

Best Regards,
Wei

---

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://github.com/hisilicon/linux-hisi.git tags/hisi-arm64-dt-for-5.3

for you to fetch changes up to 9500ff14c4cf0eedf4c5f55175b9046768db5cbd:

  arm64: dts: hi3660: Add CoreSight support (2019-06-19 15:43:31 +0100)

----------------------------------------------------------------
ARM64: DT: Hisilicon SoCs DT updates for v5.3

* Hi3660 SoC and related boards:
  - Added CoreSight trace components

* Hi6220 SoC and related boards:
  - Updated CoreSight funnel and replicator using new bindings to fix warning

----------------------------------------------------------------
Leo Yan (1):
      arm64: dts: hi6220: Update coresight DT bindings

Wanglai Shi (1):
      arm64: dts: hi3660: Add CoreSight support

 .../arm64/boot/dts/hisilicon/hi3660-coresight.dtsi | 456 +++++++++++++++++++++
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi          |   2 +
 .../arm64/boot/dts/hisilicon/hi6220-coresight.dtsi |   6 +-
 3 files changed, 461 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/hisilicon/hi3660-coresight.dtsi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
