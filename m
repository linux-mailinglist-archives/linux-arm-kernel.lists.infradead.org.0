Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FCC1CFE72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 21:37:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IZuIp0Q3Fa4XWO8d39GefTKmfWbnwDXUQZjk08hsdM=; b=msOyVffBZEnQk8
	q0Zrw/8GIfrjw5i4KSeW2/yWErq8e0QPXl++OBy3oIXLK6N0CHNseafvkRpyl50rbYeyVJwL5Szl2
	FkwDqhueD/oeasosMd3c3yKUzEB0tTZEtVP2CPKM4fsDtUS423lcOQmmBivm9MLu8uuJ8ulRhS1gQ
	Mo5M2Xmsf+rtdAec3hJmt5FC6vBg+CMvrN/q0lHXCumw+x1RpJzmkxXPz0wck/kym4s676kAnA6NG
	GrLCflI387cV+rIiHScB2kJ9fx10vaNzv7vKmzMiKFH+b9s9heQn++V8lorOxxED6TIVModxiVKvx
	M0jcTgO4XbhD3hxXDj/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYahw-0002xB-2x; Tue, 12 May 2020 19:36:52 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYahd-0002ot-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 19:36:35 +0000
IronPort-SDR: wtPVwr+KxW0yjEd3nrLMUyLChbUSHbyX4CjOncWGK5sK4wFoNXSywzbC7i0ToPNOxp7azs8bxz
 OAN4by80flTQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 12:36:31 -0700
IronPort-SDR: 40b3KvgkS9aSfwRCgpfLB4gaMBu95CKV3Stjz1bYcKsh385+GCLANaLSVBNa9TnjMSRSs1ldeo
 Rz4DqPcnq4sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="286765976"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 12 May 2020 12:36:26 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jYahW-000D61-2b; Wed, 13 May 2020 03:36:26 +0800
Date: Wed, 13 May 2020 03:36:16 +0800
From: kbuild test robot <lkp@intel.com>
To: Vishal Sagar <vishal.sagar@xilinx.com>, Hyun Kwon <hyunk@xilinx.com>,
 laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
 robh+dt@kernel.org, mark.rutland@arm.com,
 Michal Simek <monstr@monstr.eu>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Dinesh Kumar <dineshk@xilinx.com>, Sandip Kothari <sandipk@xilinx.com>,
 Luca Ceresoli <luca@lucaceresoli.net>, Jacopo Mondi <jacopo@jmondi.org>
Subject: Re: [PATCH v13 2/2] media: v4l: xilinx: Add Xilinx MIPI CSI-2 Rx
 Subsystem driver
Message-ID: <202005130315.tuxScSNE%lkp@intel.com>
References: <20200512151947.120348-3-vishal.sagar@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512151947.120348-3-vishal.sagar@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_123633_800526_7F8A566B 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: kbuild-all@lists.01.org, Hyun Kwon <hyun.kwon@xilinx.com>,
 Vishal Sagar <vishal.sagar@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vishal,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on linuxtv-media/master]
[also build test WARNING on v5.7-rc5 next-20200512]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Vishal-Sagar/Add-support-for-Xilinx-CSI2-Receiver-Subsystem/20200512-232348
base:   git://linuxtv.org/media_tree.git master
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-191-gc51a0382-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/media/platform/xilinx/xilinx-csi2rxss.c:816:5: sparse: sparse: symbol 'xcsi2rxss_enum_mbus_code' was not declared. Should it be static?

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
