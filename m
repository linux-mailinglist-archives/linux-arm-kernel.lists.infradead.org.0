Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FB01A7035
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 02:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5uf4V0nkjIIwVfTh+N6Y9WPzECGNOoaGliFQy3crRWs=; b=Lyr4iBSv8+d/xGLVpVRKDQ+B2
	Cg6LvO7ZQTaeZQuFqzQ1Tf1H0mp7j2WUTskjiMkx/z82+tHBTdoe1hi5vsMUMzLY7eYa4Q/G3RQMP
	gCiWUddxKoI0KN6A/pC0+G+//FTfh+b6QJkOxlsFPvVSO2h0X4XsXpiuOle/aTFdpQ9uwVNj/ZdpR
	m1Dp5gkT7EJquTQmU9EUt79IJ4pfIJ2rwn5N/UDh9Cl/H2w1TDBVVlcVgDiMrsYyHYvbXyPdvNhKR
	sOrZKvyEhnFMEHAtxPo4OtGqF6vFSZz9XN/17XOUWgdFtqAxvcNWwo6NdZMvbEuTtVzzW/IaAmfgr
	bkuEYvFUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO9ZK-00007E-Ol; Tue, 14 Apr 2020 00:36:50 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO9ZE-00006j-6X
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 00:36:45 +0000
IronPort-SDR: ztK0vhwH1l0+WJo/SkUGQ0UctNMIGVfvjzYvD2sOazvM2+Q/ROWv6oT/BqZzl0SYkToPowyB29
 YWIqTlmm2mYg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 17:36:42 -0700
IronPort-SDR: a41KvqkdVXp4UoGrGKFWGWiUC/eCoeVt/lH5ZhWBBDQwq+Dd32AkHcHXQg6jxo9CHTkqDVou1E
 vjIoubPuOQ9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="256341076"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2020 17:36:40 -0700
Subject: Re: [xlnx:master 9789/9999] drivers/usb/dwc3/core.h:1462: multiple
 definition of `dwc3_simple_wakeup_capable';
 drivers/usb/dwc3/core.o:drivers/usb/dwc3/core.h:1462: first defined here
To: bjorn@helgaas.com, kbuild test robot <lkp@intel.com>
References: <202004140212.PdfY02eO%lkp@intel.com>
 <CABhMZUUEFK_b=3qx7O+puzfh6ioZbTcQHWCq9P=J-FV+d_r05w@mail.gmail.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <b5da1119-bad3-9840-15f6-867a5d890b06@intel.com>
Date: Tue, 14 Apr 2020 08:36:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CABhMZUUEFK_b=3qx7O+puzfh6ioZbTcQHWCq9P=J-FV+d_r05w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_173644_278895_E30C1F31 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: Bjorn Helgaas <helgaas@kernel.org>, Michal Simek <monstr@monstr.eu>,
 kbuild-all@lists.01.org, ARM <linux-arm-kernel@lists.infradead.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/14/20 3:44 AM, Bjorn Helgaas wrote:
> On Mon, Apr 13, 2020 at 1:42 PM kbuild test robot <lkp@intel.com> wrote:
>> tree:   https://github.com/Xilinx/linux-xlnx master
>> head:   81566a0b82c7995ca879463e66573c76ba774ea2
>> commit: 16e9a62655524541cb2f2c59fd5f1f167fbf73dc [9789/9999] asm-generic: Make msi.h a mandatory include/asm header
> Why do I care about this?  I have no idea what the linux-xlnx tree
> mentioned above is.  The 16e9a6265552 commit doesn't exist in
> linux-xlnx or in Linus' tree.
>

Hi Bjorn,

Do you mean the above tree ("https://github.com/Xilinx/linux-xlnx") is 
not the official tree,
Could you possibly tell us the official site?

Best Regards,
Rong Chen

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
