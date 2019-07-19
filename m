Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447646E2A4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 10:40:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j5gSLfRy5lyu9LLH+AN5vx0zNuPLNoIp61y0Ynlt++U=; b=KGf
	gkMosSVWRvuF9wP7sNprGMunxyMCR7QJhu4bgxODPrFdxLgXKrZ4dptiNWkWBPvraw6QUUfZCqIm2
	A9Jhfng5f8a8jzQIUQBiSWpha8mRp1Y2f3U2e00EBrMvapUgbJLdRUescub5tdSa9YeCA/vEx5e3N
	7t7AWlZNNBwghQnvJTV0jKVHAKh3sOpgl4A/9e/8R5YrJz4ln6jXNB6zU+YisE+5Udqg3P/5IGFUi
	Zm1cOs/CPhsHOlFzHxgBtLI8n8DZSSP/OdNRFmCybGP9lyD8XsWVE+BSIh5JpQmoe+i1XBb2eaIYQ
	9AkM6CBV7V7zRUcWaEr61zPk2npbtvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoORC-0005YI-0L; Fri, 19 Jul 2019 08:40:22 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOQu-0005AW-UC
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 08:40:06 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 01:40:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,281,1559545200"; 
 d="gz'50?scan'50,208,50";a="319906194"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2019 01:40:02 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hoOQs-0009J6-90; Fri, 19 Jul 2019 16:40:02 +0800
Date: Fri, 19 Jul 2019 16:39:11 +0800
From: kbuild test robot <lkp@intel.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: [arm-platforms:arm64/tsclock 2/3] sched_clock.c:undefined reference
 to `timestamp_clock'
Message-ID: <201907191609.Vi2sqSbi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="basmh3wipy676rnc"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_014004_998398_19839CC9 
X-CRM114-Status: UNSURE (   4.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kbuild-all@01.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--basmh3wipy676rnc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/maz/arm-platforms.git arm64/tsclock
head:   22732b2bda218421a201507dd658592266a1c99c
commit: 02c92a0f7abc288728b5cda1e8b728af8dc3c461 [2/3] sched/clock: Allow sched_clock to inherit timestamp_clock epoch
config: riscv-allnoconfig (attached as .config)
compiler: riscv64-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 02c92a0f7abc288728b5cda1e8b728af8dc3c461
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=riscv 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   kernel/time/sched_clock.o: In function `.L0 ':
>> sched_clock.c:(.init.text+0x114): undefined reference to `timestamp_clock'

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--basmh3wipy676rnc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--basmh3wipy676rnc
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--basmh3wipy676rnc--

