Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAC712A85A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 15:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWr6CyHTqEfuduIk2GK8xG4G++2toWv2bjvBcODP46I=; b=BGJHfXtK3+oo9kZHWjq/9iFik
	tUI4wQxBcVY8U+Eg+gezQ8SxgWSuLdmwEt23kxFcXQ1BAyd6hXQvB2TL5dPZGWZ9jB1vQTrGa30f+
	cZ3aMWK9OeAC9mi37OgGMZ9Dk0iszuaPRMR4/9CEacc+xi9T4EpmWswJ/cDYJE86ij6e/hKbfXZuF
	6N5QS5DFlIYjEvIuuEhZcGJZjciaWFgP7VEpB2yjnipA7N/7HTS7YXD+rvKEkgTWybsGICiwxguqC
	xEf6ML3U/OiPn/2ynh4sJqUMuwwUgxA2rsa2DATTFZaktvqIjry5RzGlYVI9RwrYPMCNC1UC4KC2P
	CADzglIaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ik7wF-0003Lv-8u; Wed, 25 Dec 2019 14:47:03 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ik7w4-0003LN-85
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 14:46:53 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Dec 2019 06:46:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,355,1571727600"; 
 d="gz'50?scan'50,208,50";a="229907031"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Dec 2019 06:46:49 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ik7w0-00057H-Mw; Wed, 25 Dec 2019 22:46:48 +0800
Date: Wed, 25 Dec 2019 22:46:11 +0800
From: kbuild test robot <lkp@intel.com>
To: Saravana Kannan <saravanak@google.com>
Subject: Re: [PATCH v2] efi: arm: defer probe of PCIe backed efifb on DT
 systems
Message-ID: <201912252258.5LQtnCYg%lkp@intel.com>
References: <20191224044146.232713-1-saravanak@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="slrhbxnvpzslgmqz"
Content-Disposition: inline
In-Reply-To: <20191224044146.232713-1-saravanak@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_064652_308608_25CFBAF0 
X-CRM114-Status: UNSURE (   4.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: kernel-team@android.com, kbuild-all@lists.01.org,
 Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-efi@vger.kernel.org, bhelgaas@google.com, will@kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--slrhbxnvpzslgmqz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Saravana,

I love your patch! Yet something to improve:

[auto build test ERROR on efi/next]
[cannot apply to rockchip/for-next keystone/next arm64/for-next/core arm-soc/for-next shawnguo/for-next clk/clk-next arm/for-next linux-rpi/for-rpi-next at91/at91-next v5.5-rc3 next-20191220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Saravana-Kannan/efi-arm-defer-probe-of-PCIe-backed-efifb-on-DT-systems/20191225-182253
base:   https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git next
config: arm64-alldefconfig (attached as .config)
compiler: aarch64-linux-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/firmware/efi/arm-init.o: In function `efifb_add_links':
>> arm-init.c:(.text+0x64): undefined reference to `of_pci_range_parser_init'
   arm-init.c:(.text+0x64): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `of_pci_range_parser_init'
>> arm-init.c:(.text+0x78): undefined reference to `of_pci_range_parser_one'
   arm-init.c:(.text+0x78): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `of_pci_range_parser_one'

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--slrhbxnvpzslgmqz
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2kqAcG8YvkgecAP16H8zFKIHEpgAAA==

--slrhbxnvpzslgmqz
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--slrhbxnvpzslgmqz--

