Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD82C2CB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 06:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=siTNPEAF1hSq1pQIGRxUlDKHmc5C0nVbyPisGYH63Ag=; b=FkahFQYw65KzNY
	Sih8JbZIJbBPc0voaHCm1rwBg+3likcT5cJg5u3/5XfY2D6Q3qITJYVldMjxpg/gYcyp4Ep0aUoeg
	vU+g6yqy9GR9MepZc5rreZQTWc/VAxoMkLCnGfDABxvECZ/C1zkC+lISaj46QTrefxmhbarSochZa
	o1B/CFsaWE3gupRD0WUxc+n2+IXzkPy/TOymVmkUMN+CPYVlCr+GeamUOFF+S2s0GqEl8/QGtuIht
	WXM3XybR1e3WFtCQDcTRQEnHdkQ8WjeuFAJK/focC/2FpRQU7AkbdXGkNFJgjbMw7x1JtcXBYmBTU
	pBmphYkAthWQnZUt+4wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFAFe-0007Rj-SI; Tue, 01 Oct 2019 04:59:06 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFAFW-0007RO-9Y
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 04:59:00 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 21:58:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,569,1559545200"; d="scan'208";a="392314697"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 30 Sep 2019 21:58:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iFAFS-00067i-Vh; Tue, 01 Oct 2019 12:58:54 +0800
Date: Tue, 1 Oct 2019 12:58:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: [xlnx:xlnx_rebase_v4.19 1546/1668] drivers/uio/uio_core.c:564:21:
 sparse: sparse: incorrect type in assignment (different base types)
Message-ID: <201910011217.q4l6tnMm%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_215858_344885_BCE2001E 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Simek <monstr@monstr.eu>, kbuild-all@01.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexandru,

First bad commit (maybe != root cause):

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v4.19
head:   63166c634f2972b2e6949be0d5c998364af85fa8
commit: 46e491438385416be6dab43faa451e3755848cac [1546/1668] uio: rename uio.c -> uio_core.c & unify into uio.ko
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-rc1-7-g2b96cd8-dirty
        git checkout 46e491438385416be6dab43faa451e3755848cac
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/uio/uio_core.c:564:21: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __poll_t [usertype] ret @@    got e] ret @@
>> drivers/uio/uio_core.c:564:21: sparse:    expected restricted __poll_t [usertype] ret
>> drivers/uio/uio_core.c:564:21: sparse:    got int

vim +564 drivers/uio/uio_core.c

beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  555  
afc9a42b7464f7 drivers/uio/uio.c Al Viro        2017-07-03  556  static __poll_t uio_poll(struct file *filep, poll_table *wait)
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  557  {
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  558  	struct uio_listener *listener = filep->private_data;
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  559  	struct uio_device *idev = listener->dev;
a93e7b33156822 drivers/uio/uio.c Hamish Martin  2018-05-14  560  	__poll_t ret = 0;
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  561  
543af5861f41af drivers/uio/uio.c Xiubo Li       2018-07-06  562  	mutex_lock(&idev->info_lock);
a93e7b33156822 drivers/uio/uio.c Hamish Martin  2018-05-14  563  	if (!idev->info || !idev->info->irq)
a93e7b33156822 drivers/uio/uio.c Hamish Martin  2018-05-14 @564  		ret = -EIO;
543af5861f41af drivers/uio/uio.c Xiubo Li       2018-07-06  565  	mutex_unlock(&idev->info_lock);
a93e7b33156822 drivers/uio/uio.c Hamish Martin  2018-05-14  566  
a93e7b33156822 drivers/uio/uio.c Hamish Martin  2018-05-14  567  	if (ret)
a93e7b33156822 drivers/uio/uio.c Hamish Martin  2018-05-14  568  		return ret;
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  569  
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  570  	poll_wait(filep, &idev->wait, wait);
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  571  	if (listener->event_count != atomic_read(&idev->event))
a9a08845e9acbd drivers/uio/uio.c Linus Torvalds 2018-02-11  572  		return EPOLLIN | EPOLLRDNORM;
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  573  	return 0;
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  574  }
beafc54c4e2fba drivers/uio/uio.c Hans J. Koch   2006-12-07  575  

:::::: The code at line 564 was first introduced by commit
:::::: a93e7b331568227500186a465fee3c2cb5dffd1f uio: Prevent device destruction while fds are open

:::::: TO: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
