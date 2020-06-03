Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0831ECD8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 12:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/RPQ5aiPWOJFD9mZvAP+4zIwH4/wrqVpmJE4ZgdLzA=; b=pLoA505mC3e6GR
	/L4gQbQtV1C8BdjamAdK9ze+HmIP96GKu+xRUZkzHtHWjnDgnmTwXkr8nHHMODYIfbRQYZWCQCMxx
	NUH9ZncAhq6/DouQUpZYvBO07tMSvtifccGe4swK83rXPqAMe51IqeIH8+xCyH+M/BXz1jJo48zX5
	WO91O7ifOaa0gMgowHjobJD3YwIUo87GiA+z3Q6/9V2YHN/s30ss1BZzYRTwA80IGjQFi76mJPiN3
	bnJrDkzyBSMn/gjQFKQql1olFVH1hJVwdvpnJmmu7LBzb6Ax7PBasfjLiACIMk1gtcFdrd8LxjRUG
	r5/WZIFlAC//TzHAquOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQeU-00061j-E9; Wed, 03 Jun 2020 10:29:42 +0000
Received: from mx.baikalchip.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQeK-000610-9G
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 10:29:34 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 3C623803083B;
 Wed,  3 Jun 2020 10:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BDaQih7ZGqX2; Wed,  3 Jun 2020 13:29:25 +0300 (MSK)
Date: Wed, 3 Jun 2020 13:29:24 +0300
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [soc:baikal/drivers-1 4/5] drivers/bus/bt1-apb.c:330:3: error:
 implicit declaration of function 'readl'
Message-ID: <20200603102924.6qnmvjg2tncn3jv3@mobilestation>
References: <202006030720.Ds2L3QJH%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006030720.Ds2L3QJH%lkp@intel.com>
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_032932_501364_8B8AA0AB 
X-CRM114-Status: GOOD (  10.51  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, arm@kernel.org, kbuild-all@lists.01.org,
 linux-arm-kernel@lists.infradead.org, Serge Semin <fancer.lancer@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 03, 2020 at 07:21:26AM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git baikal/drivers-1
> head:   83ca8b3e8f213f49cc68b5c1fbcf88ebb24671eb
> commit: 8f93662d8324940e8925a0e492c587dbcf7c7fee [4/5] bus: Add Baikal-T1 APB-bus driver
> config: sparc64-allyesconfig (attached as .config)
> compiler: sparc64-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 8f93662d8324940e8925a0e492c587dbcf7c7fee
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=sparc64 
> 

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> drivers/bus/bt1-apb.c: In function 'inject_error_store':
> >> drivers/bus/bt1-apb.c:330:3: error: implicit declaration of function 'readl' [-Werror=implicit-function-declaration]
> 330 |   readl(apb->res);
> |   ^~~~~
> cc1: some warnings being treated as errors

That branch lacks of fixup commits available in the for-next and baikal/drivers
branches. So it is redundant, since it has got only the initial BT1
APB/AXI commits. Following up fixups haven't been merged in there, which cause
the warning.

-Sergey

> 
> vim +/readl +330 drivers/bus/bt1-apb.c
> 
>    318	
>    319	static ssize_t inject_error_store(struct device *dev,
>    320				      struct device_attribute *attr,
>    321				      const char *data, size_t count)
>    322	{
>    323		struct bt1_apb *apb = dev_get_drvdata(dev);
>    324	
>    325		/*
>    326		 * Either dummy read from the unmapped address in the APB IO area
>    327		 * or manually set the IRQ status.
>    328		 */
>    329		if (!strncmp(data, "nodev", 5))
>  > 330			readl(apb->res);
>    331		else if (!strncmp(data, "irq", 3))
>    332			regmap_update_bits(apb->regs, APB_EHB_ISR, APB_EHB_ISR_PENDING,
>    333					   APB_EHB_ISR_PENDING);
>    334		else
>    335			return -EINVAL;
>    336	
>    337		return count;
>    338	}
>    339	static DEVICE_ATTR_RW(inject_error);
>    340	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
