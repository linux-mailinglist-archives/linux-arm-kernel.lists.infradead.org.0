Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566F613024E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 13:03:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEWpmGaee+7GA9GycjAYNPzJ8WWmNpFAGgB4oTEIpp4=; b=gvjF9LGipfRs/K
	p5+A7vZ8JKTDlzIN7YP0a26fg2qLyM0sz+uJzdOFdGaADaQFM0SdsE3AQtaJT3IIkL2lytUdyo9wq
	TRe1vrppYn7uxYHlQabBWPVeFEWXZkTOaJM+cHqPZ+DAhlVbl5hesO4E4rRQL49nnDD5EItI4auD8
	R8sf7IUKNmH3cNivmuXeJpNfr6SXNBOednPQe9W5r0QDd2w/XHMGB1rwJeq4eIJ5Qfsc13pGJRQwD
	iucv8kpECRuwCA6AAsdt5s+Sn0EhbzeIeEacFWiqKzl8OtNfjGBMbZakB/1ZFmu5PoDUpChwkfsJm
	YYHJ6zTHKKwh9R8OvfTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ini9K-0003Fi-AW; Sat, 04 Jan 2020 12:03:22 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ini9B-0003Ek-90
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 12:03:14 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jan 2020 04:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,394,1571727600"; d="scan'208";a="214717996"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 04 Jan 2020 04:03:05 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1ini93-0009qt-B6; Sat, 04 Jan 2020 20:03:05 +0800
Date: Sat, 4 Jan 2020 20:02:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 2/2] clk: qcom: Add ipq6018 Global Clock Controller support
Message-ID: <202001041937.BBQYk2aO%lkp@intel.com>
References: <1578050744-3761-3-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578050744-3761-3-git-send-email-sricharan@codeaurora.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_040313_361436_A7CEC80B 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kbuild-all@lists.01.org, sboyd@kernel.org,
 linux-arm-msm@vger.kernel.org, linus.walleij@linaro.org,
 linux-soc@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-gpio@vger.kernel.org, agross@kernel.org, sivaprak@codeaurora.org,
 sricharan@codeaurora.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sricharan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on clk/clk-next]
[also build test WARNING on v5.5-rc4 next-20191220]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Sricharan-R/Add-Global-clock-controller-support-for-IPQ6018/20200104-133041
base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-129-g341daf20-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/clk/qcom/gcc-ipq6018.c:2623:17: sparse: sparse: symbol 'lpass_core_axim_clk_src' was not declared. Should it be static?
>> drivers/clk/qcom/gcc-ipq6018.c:2642:17: sparse: sparse: symbol 'lpass_snoc_cfg_clk_src' was not declared. Should it be static?
>> drivers/clk/qcom/gcc-ipq6018.c:2661:17: sparse: sparse: symbol 'lpass_q6_axim_clk_src' was not declared. Should it be static?
>> drivers/clk/qcom/gcc-ipq6018.c:2674:17: sparse: sparse: symbol 'ftbl_rbcpr_wcss_clk_src' was not declared. Should it be static?
>> drivers/clk/qcom/gcc-ipq6018.c:2680:17: sparse: sparse: symbol 'rbcpr_wcss_clk_src' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
