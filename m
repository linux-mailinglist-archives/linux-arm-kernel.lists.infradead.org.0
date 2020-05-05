Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BFB1C4E67
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 08:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7QmEhYCjwECN3Qq0O3arQ4oWpVhwdnlWPntLqydHxeA=; b=GLB
	SyRDICbkX1RUYY7QjBuD184kawtLUaL23LJS5HdfUDkkKoUVR/Y5BK0970adGWgPJNEYcxDRnqJxc
	EBC5yC1QAnYFSDWgcs3EzUOqinfaRhOrKSJXlYQz/tQpjUrpLEXyjE4N1qAWXEz51yLEbO1+8EZkc
	Bg+ZLMZuM5pYNg9K4v/Tk7tSdh+RLREXg3AMbpSk3bbhtK7ME8E8G1SBqm4ciFOIIR2YFmNxlsF7t
	3reCcMFW1BDUo+NpaDMxYsEnY+JiDljqbARHLbIlRa3kXymN6JyLGaO+kebddwy3FqaxNY4xgxFGF
	CCMADC/025L0JFmpLFwZ5Ai3rFVd6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVrEt-0006Od-Eu; Tue, 05 May 2020 06:39:35 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVrEn-0006O8-QJ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 06:39:31 +0000
IronPort-SDR: Q5DAzjKu5l2OMYdjBmIimDVF3V+L/0CG9BDJ1YBxddXaWYvJo0FVVzEpIzB0ijR5Kbv9dLovX+
 +aZJq9ii3MGA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 23:39:28 -0700
IronPort-SDR: qS0GUq31VgSesG0LVJR9RhZgGd+826O1ZpivNGhra2nupWgDVvYT68d6pBryoZEO3EtIjIGb3m
 ZWMgZJOHVpeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; 
 d="gz'50?scan'50,208,50";a="249373441"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 04 May 2020 23:39:26 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jVrEk-000Bd1-7Z; Tue, 05 May 2020 14:39:26 +0800
Date: Tue, 5 May 2020 14:38:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Satish Kumar Nagireddy <satish.nagireddy.nagireddy@xilinx.com>
Subject: [xlnx:xlnx_rebase_v5.4 389/1290] error:
 include/uapi/linux/xilinx-v4l2-events.h: missing "WITH Linux-syscall-note"
 for SPDX-License-Identifier
Message-ID: <202005051441.WnTdJBYo%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_233929_870211_7BAE1FDB 
X-CRM114-Status: UNSURE (   3.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Michal Simek <monstr@monstr.eu>, kbuild-all@lists.01.org,
 Hyun Kwon <hyun.kwon@xilinx.com>, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Satish,

FYI, the error/warning still remains.

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
head:   e12386f224bfe787db71c18f2c4106e886ac98be
commit: ad7b87dcaf96d4c030c364c1886c72bdbdb9ed6d [389/1290] v4l: xilinx: scd: Add v4l2 custom events
config: nds32-defconfig (attached as .config)
compiler: nds32le-linux-gcc (GCC) 9.3.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout ad7b87dcaf96d4c030c364c1886c72bdbdb9ed6d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day GCC_VERSION=9.3.0 make.cross ARCH=nds32 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> error: include/uapi/linux/xilinx-v4l2-events.h: missing "WITH Linux-syscall-note" for SPDX-License-Identifier
   make[2]: *** [scripts/Makefile.headersinst:66: usr/include/linux/xilinx-v4l2-events.h] Error 1
   make[2]: Target '__headers' not remade because of errors.
   make[1]: *** [Makefile:1195: headers] Error 2
   <stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
   make[1]: Target 'prepare' not remade because of errors.
   make: *** [Makefile:179: sub-make] Error 2

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
pQAA

--gKMricLos+KVdGMg
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--gKMricLos+KVdGMg--

