Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 396204BE03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Aq6/5+zF8BGnbzglRMOi0x2dpSBnm5WPEYrSlm6l9ug=; b=WG7Y0DfjPlJZhM
	hUM608F6eHZVW4aY9ic6F/Y3G8gA++OZMsJCFuE9h03tn1AZJ5/vfh5DtPTLywDtVeCYggm5UXfqC
	+FmKgo9v6em+71Mi/vDBF6Sh+ufp2fPJLQ8Xzk3sjTzRxW6pTCk2aJpXeUQBVXYYGw3vjcxEhNj72
	0VthGBaewh/3h13PQN3N4lMD6sRQ8fWexRZxrnBo4xLgICfUCyl34JEXiHxnqh5zkl5ChtwueTRbj
	yM5UV7cNrzlIyqwol+htnMU/KZflG/MxNsLGJpJ6zHAyrY3BZAzUXv9mt7xkyJaqewmpsRB6CZhxO
	T2AUlYA8vvxC0bJb1QBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddPn-0004vL-Ds; Wed, 19 Jun 2019 16:26:27 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddPd-0004u9-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:26:19 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id D27E2A5D0A9EADE301E3;
 Wed, 19 Jun 2019 17:26:14 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by lhreml704-cah.china.huawei.com
 (10.201.108.45) with Microsoft SMTP Server id 14.3.408.0;
 Wed, 19 Jun 2019 17:26:04 +0100
To: <arm@kernel.org>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 <olof@lixom.net>, <arnd@arndb.de>
From: Wei Xu <xuwei5@hisilicon.com>
Subject: [GIT PULL] arm: dts: hisilicon dts updates for v5.3
Message-ID: <85bbc3ba-8e22-f5f6-dfca-d78a8a5662d3@hisilicon.com>
Date: Wed, 19 Jun 2019 17:26:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_092618_053582_917CD6D3 
X-CRM114-Status: GOOD (  10.49  )
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
Cc: Salil Mehta <salil.mehta@huawei.com>, John Garry <john.garry@huawei.com>,
 jinying@hisilicon.com, Guodong Xu <guodong.xu@linaro.org>, Mathieu
 Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, linuxarm@huawei.com,
 xuwei5@hisilicon.com, Haojian Zhuang <haojian.zhuang@linaro.org>,
 Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>,
 Leo Yan <leo.yan@linaro.org>, Zhangfei Gao <zhangfei.gao@linaro.org>,
 Shiju Jose <shiju.jose@huawei.com>,
 "Liguozhu \(Kenneth\)" <liguozhu@hisilicon.com>,
 Zhangyi ac <zhangyi.ac@huawei.com>, Tangkunshan <tangkunshan@huawei.com>,
 huangdaode <huangdaode@hisilicon.com>
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

  git://github.com/hisilicon/linux-hisi.git tags/hisi-arm32-dt-for-5.3

for you to fetch changes up to 06c3cba62b3be0a46427a2a63b2f08c617d14530:

  ARM: dts: hip04: Update coresight DT bindings (2019-06-19 16:28:34 +0100)

----------------------------------------------------------------
ARM: DT: Hisilicon ARM32 SoCs updates for v5.3

- Updated CoreSight funnel and replicator using new bindings to fix warning
  for the hip04.

----------------------------------------------------------------
Leo Yan (1):
      ARM: dts: hip04: Update coresight DT bindings

 arch/arm/boot/dts/hip04.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
