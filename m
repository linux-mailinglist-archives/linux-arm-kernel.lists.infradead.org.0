Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF33E1CB3DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 17:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fW/b2vaRi7BJQEHtzpgc/u+bw1MxHEuRQ8gWXMsjCBk=; b=lrRAAbw3t1SVO0
	Brx3zGlI69KwVYIJ+TqZmESHLu+I7ng+B2Du01br+TMmNfex9VyDy3iu4mNKBZ/25Pr8EJHpZI64E
	Bz2chj1zQ3b9aDpp4pi6XXGGtEDZZzT7MLTIV3LEzkDhDZyytC/+OLqJb0lxT/OmqqC//xQi4ou39
	h1Kr7F+Xrdgeon3pv9iOOdMCEYmCvB5Zr300RW/fe4FwM1eZB8wZieX0rUQrasaBGzOOvIHsBESPt
	+FomMW1TPWNY3AY8eBs5g1EtYnuu6iloL8V6D9KOLlklVBTAB+3judxDrOGtsgJhvMoiRC988sf/V
	Y20PkuGTp+/GNquazk0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX5DW-000348-Rr; Fri, 08 May 2020 15:47:14 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX5DP-00033i-JV
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 15:47:09 +0000
IronPort-SDR: ftv7z3oKCxKEOt9skkVFHZjQQUO4eU1rLwmFeQ/cqCN34+ilFF3G1JWaranaaxACH9z39S7OTA
 eKs/5C0L1gIQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 08:47:06 -0700
IronPort-SDR: Sel7FdH0q3f8Lix0Jyeozwq3EnjuK57zg16tVwe/7+FqMVfO9pJTHQ6nrvUfZpg1oJoySNXN32
 5JiumWgt4jkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,368,1583222400"; d="scan'208";a="305515521"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 08 May 2020 08:47:04 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jX5DL-0001tO-RK; Fri, 08 May 2020 23:47:03 +0800
Date: Fri, 8 May 2020 23:46:37 +0800
From: kbuild test robot <lkp@intel.com>
To: Venkateshwar Rao G <venkateshwar.rao.gannavarapu@xilinx.com>
Subject: [xlnx:xlnx_rebase_v5.4 253/1296]
 drivers/gpu/drm/xlnx/xlnx_scaler.c:868:4: warning: Uninitialized variable:
 nr_rds [uninitvar]
Message-ID: <202005082353.EBWsReQQ%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_084707_683784_F3966232 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.4
head:   0b197959bbbdb68e1da974bd013339f08704b178
commit: d8f499927fa09de02d76a3af3c49afb3eb92797d [253/1296] drm: xlnx: scaler: Adding vpss-scaler driver

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/gpu/drm/xlnx/xlnx_scaler.c:868:4: warning: Uninitialized variable: nr_rds [uninitvar]
      nr_rds -= nppc;
      ^

vim +868 drivers/gpu/drm/xlnx/xlnx_scaler.c

   800	
   801	/**
   802	 * xv_hscaler_calculate_phases - Calculates h-scaler phases
   803	 * @scaler: Pointer to scaler registers base
   804	 * @width_in: input width
   805	 * @width_out: output width
   806	 * @pixel_rate: pixel rate
   807	 *
   808	 */
   809	static void
   810	xv_hscaler_calculate_phases(struct xilinx_scaler *scaler,
   811				    u32 width_in, u32 width_out, u32 pixel_rate)
   812	{
   813		unsigned int loop_width;
   814		unsigned int x, s;
   815		int offset = 0;
   816		int xwrite_pos = 0;
   817		bool output_write_en;
   818		bool get_new_pix;
   819		u64 phaseH;
   820		u32 array_idx = 0;
   821		int nr_rds;
   822		int nr_rds_clck;
   823		unsigned int nphases = scaler->max_num_phases;
   824		unsigned int nppc = scaler->pix_per_clk;
   825		unsigned int shift = XHSC_STEP_PRECISION_SHIFT - ilog2(nphases);
   826	
   827		loop_width = max_t(u32, width_in, width_out);
   828		loop_width = ALIGN(loop_width + nppc - 1, nppc);
   829	
   830		for (x = 0; x < loop_width; x++) {
   831			nr_rds_clck = 0;
   832			for (s = 0; s < nppc; s++) {
   833				phaseH = (offset >> shift) & (nphases - 1);
   834				get_new_pix = false;
   835				output_write_en = false;
   836				if ((offset >> XHSC_STEP_PRECISION_SHIFT) != 0) {
   837					get_new_pix = true;
   838					offset -= (1 << XHSC_STEP_PRECISION_SHIFT);
   839					array_idx++;
   840				}
   841	
   842				if (((offset >> XHSC_STEP_PRECISION_SHIFT) == 0) &&
   843				    xwrite_pos < width_out) {
   844					offset += pixel_rate;
   845					output_write_en = true;
   846					xwrite_pos++;
   847				}
   848	
   849				scaler->H_phases[x] |= (phaseH <<
   850							(s * XHSC_HPHASE_MULTIPLIER));
   851				scaler->H_phases[x] |= (array_idx <<
   852							(XHSC_HPHASE_SHIFT_BY_6 +
   853							(s * XHSC_HPHASE_MULTIPLIER)));
   854				if (output_write_en) {
   855					scaler->H_phases[x] |=
   856					(XV_HSCALER_PHASESH_V_OUTPUT_WR_EN <<
   857					(s * XHSC_HPHASE_MULTIPLIER));
   858				}
   859	
   860				if (get_new_pix)
   861					nr_rds_clck++;
   862			}
   863			if (array_idx >= nppc)
   864				array_idx &= (nppc - 1);
   865	
   866			nr_rds += nr_rds_clck;
   867			if (nr_rds >= nppc)
 > 868				nr_rds -= nppc;
   869		}
   870	}
   871	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
