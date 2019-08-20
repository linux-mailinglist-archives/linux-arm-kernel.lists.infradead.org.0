Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E7395798
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 08:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vX5I0mJaGFtVqLwaSWIjiShQwEF7b8IMyXeqL/AwiXw=; b=k6Isli73odBOUz
	zJRyJSLtKAMBzQfbwvIsyU6P4o6K2O2Qg3o7O6mpliortqPvYPy02/hcvUPyW405BwMZ4L5Cc7FfZ
	Df+B6rVr99pPVNdYs0rw2/Za3e1vy3NWdMELf4uZLlBGqpG6zI+UUEE5ywmwXDute/l2ov2BHO8dt
	b2z0qyNFL0GYyD+Ahe4uT+C+GxBlsZ8NpM7VNFnYjKhU74AICyt/x1LHl5AgIe7gLnKB/4RJLbMwo
	XMA7jA7Vs/CEW1yUtIwuhwMHbJXklLzn4OMdfBap0NzfzFAjWpq+Y7LqinVUOwF0g0YYfKXj/cJfx
	oTShQ+FVG3icq4LZBp+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxui-0008Js-OI; Tue, 20 Aug 2019 06:46:40 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxuS-0008Gd-0C
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 06:46:25 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 23:45:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; d="scan'208";a="262072785"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.13.128])
 by orsmga001.jf.intel.com with ESMTP; 19 Aug 2019 23:45:27 -0700
Date: Tue, 20 Aug 2019 14:49:34 +0800
From: Philip Li <philip.li@intel.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [kbuild-all] [PATCH v3 4/5] arm64: perf: Enable pmu counter
 direct access for perf event on armv8
Message-ID: <20190820064934.GF4479@intel.com>
References: <20190816125934.18509-5-raphael.gault@arm.com>
 <201908182002.KAH4UW2w%lkp@intel.com>
 <a41e1a4b-b082-725a-b24e-9c92f66d174a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a41e1a4b-b082-725a-b24e-9c92f66d174a@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_234624_107935_F49839A0 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, kbuild test robot <lkp@intel.com>,
 peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, mingo@redhat.com,
 kbuild-all@01.org, linux-arm-kernel@lists.infradead.org,
 raph.gault+kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 08:59:33AM +0100, Raphael Gault wrote:
> Hi,
> 
> On 8/18/19 1:37 PM, kbuild test robot wrote:
> > Hi Raphael,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> > [auto build test ERROR on linus/master]
> > [cannot apply to v5.3-rc4 next-20190816]
> > [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> This patchset was based on linux-next/master and note linus
thanks for the input, we will look for how to find better base to test.

> 
> Thanks,
> 
> -- 
> Raphael Gault
> _______________________________________________
> kbuild-all mailing list
> kbuild-all@lists.01.org
> https://lists.01.org/mailman/listinfo/kbuild-all

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
