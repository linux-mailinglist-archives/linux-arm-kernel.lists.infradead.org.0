Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 837B61D4988
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Py9D7tditO+lGqmo/fHDg/zfzr1c0QXrs3Qkb1NE5Xs=; b=Sab9/netM1cKEvN8Bv6v5OKl+
	NuZuPJJB6vz7syGPd5yxvVX5gsd1o4Ap3TmdmUuUcd8l4v+IA5LP7eAzXFsZVmPzw4oD6EoMuAdBW
	sM/S/PsPgMoSGYFt7b4ql1TXyQ5AixfbjOUdnGu2UgWzEn7RZOxtS41p+zgroqSzyYKDBoXdx/vMf
	BmTfkcQbSC2/dWz90/+heCPzKrQZyxx5D/+s2DZ80XFzl4uZ87vFLQzuHm+QsggMl+lSzx9qgvGc1
	4+Ra+ZtrluSU0/L75YB3UjDzxKw8XHD1TgSBUcRsmiX6ARXCsLKYdNj3VHiDN2xEYhj4jR08FDP/G
	sf0b6U/Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWdp-00066P-9D; Fri, 15 May 2020 09:28:29 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWdd-00065M-Eq
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 09:28:21 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 15 May 2020 18:28:14 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id E2B71180B60;
 Fri, 15 May 2020 18:28:14 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 15 May 2020 18:28:14 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 580F41A15C4;
 Fri, 15 May 2020 18:28:14 +0900 (JST)
Received: from [10.213.29.28] (unknown [10.213.29.28])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 6BDE612013D;
 Fri, 15 May 2020 18:28:13 +0900 (JST)
Subject: Re: [PATCH 5/5] PCI: uniphier: Add error message when failed to get
 phy
To: Bjorn Helgaas <helgaas@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <1589518105-18368-6-git-send-email-hayashi.kunihiko@socionext.com>
 <202005151454.wRtXzaiY%lkp@intel.com>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <e41c81f6-837a-e07a-458a-d388f373cb41@socionext.com>
Date: Fri, 15 May 2020 18:28:12 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <202005151454.wRtXzaiY%lkp@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_022817_613394_7283E239 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/15 15:51, kbuild test robot wrote:
> Hi Kunihiko,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on pci/next]
> [also build test WARNING on robh/for-next v5.7-rc5 next-20200514]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Kunihiko-Hayashi/PCI-uniphier-Add-features-for-UniPhier-PCIe-host-controller/20200515-125031
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
> config: i386-allyesconfig (attached as .config)
> compiler: gcc-7 (Ubuntu 7.5.0-6ubuntu2) 7.5.0
> reproduce:
>          # save the attached .config to linux build tree
>          make ARCH=i386
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> In file included from include/linux/device.h:15:0,
> from include/linux/pci.h:37,
> from drivers/pci/controller/dwc/pcie-uniphier.c:18:
> drivers/pci/controller/dwc/pcie-uniphier.c: In function 'uniphier_pcie_probe':
>>> drivers/pci/controller/dwc/pcie-uniphier.c:470:16: warning: format '%d' expects argument of type 'int', but argument 3 has type 'long int' [-Wformat=]
> dev_err(dev, "Failed to get phy (%d)n", PTR_ERR(priv->phy));
> ^
> include/linux/dev_printk.h:19:22: note: in definition of macro 'dev_fmt'
> #define dev_fmt(fmt) fmt
> ^~~
>>> drivers/pci/controller/dwc/pcie-uniphier.c:470:3: note: in expansion of macro 'dev_err'
> dev_err(dev, "Failed to get phy (%d)n", PTR_ERR(priv->phy));
> ^~~~~~~

This should be fixed. I'll fix it in v2.

Thanks,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
