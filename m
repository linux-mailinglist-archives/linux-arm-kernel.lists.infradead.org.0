Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A388E4BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 08:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rp6NBCDAA4xZaBjP0JfXNEaFfi1x9XZqKRnV/KrVvw=; b=DsDsoTHCavAGrR
	34b+Ty2O3XhO2B7QRkUJzC7X+6ACjOSxxF0MCtI6W5n2A7QnS9tUuFaOX6rly8l5+kcyb2/CJ5v7d
	Akdw/3aVnFuL1GOr+jA+mxz0OPIBJl3QTqWK+VrV+8izBW9i62bX0hQqnw2ttVxklDMYx5Fs50QsT
	EF7VYjSQxHWsdLK/6SzLF+QtAwcHfFbWljRhcUfzRNmMNmGRXrySl5BZLP/pK1iJMpYKW+kiC4TdI
	ehFwtoGbJXGIhhW9vRU9RA8ns3FU8Owrnj2m3NedCILzjBo0VWbdQ8BwO6K4bCmMb3iXEt9KKAzuM
	SjXlbciqhDmV5GO5z0iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8tz-0006sN-6m; Thu, 15 Aug 2019 06:06:23 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8tj-0006qv-41; Thu, 15 Aug 2019 06:06:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 23:06:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; d="scan'208";a="181785528"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga006.jf.intel.com with ESMTP; 14 Aug 2019 23:06:03 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>, Robin Murphy <robin.murphy@arm.com>
Subject: Re: kexec on rk3399
In-Reply-To: <59055782-7fc2-4b16-af8b-a56fb845a43f@gmail.com>
References: <ebcb52be-2063-4e2c-9a09-fdcacb94f855@gmail.com>
 <c6993a1e-6fc2-44ab-b59e-152142e2ff4d@gmail.com>
 <0408cb6c-1b16-eacb-d47e-17f4ff89e2b8@arm.com>
 <59055782-7fc2-4b16-af8b-a56fb845a43f@gmail.com>
Date: Thu, 15 Aug 2019 09:06:02 +0300
Message-ID: <87pnl7t12t.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_230607_205369_5331AC29 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,

Vicente Bergas <vicencb@gmail.com> writes:

> On Wednesday, August 14, 2019 3:12:26 PM CEST, Robin Murphy wrote:
>> On 14/08/2019 13:53, Vicente Bergas wrote:
>>> On Monday, July 22, 2019 4:31:27 PM CEST, Vicente Bergas wrote: ...
>>
>> This particular change looks like it's implicitly specific to 
>> RK3399, which wouldn't be ideal. Presumably if the core dwc3 
>> driver implemented shutdown correctly (echoing parts of 
>> dwc3_remove(), I guess) then the glue layers shouldn't need 
>> anything special anyway.
>>
>> Robin.
>
> I just checked simple->resets from dwc3-of-simple.c and it is an array
> with multiple resets whereas dwc->reset from core.c is NULL.
> So the reset seems specific to the glue layers.
> Is there another way than resetting the thing that is
> generic enough to go to core.c and allows kexec?

This is a really odd 'failure'. We do full soft reset during driver
initialization on dwc3. We shouldn't need to assert reset on shutdown,
really.

I think the problem is here:

	if (simple->pulse_resets) {
		ret = reset_control_reset(simple->resets);
		if (ret)
			goto err_resetc_put;
	} else {
		ret = reset_control_deassert(simple->resets);
		if (ret)
			goto err_resetc_put;
	}

Note that if pulse_resets is set, we will run a reset. But if
pulse_resets is false and need_reset is true, we deassert the reset.

I think below patch is enough:

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index bdac3e7d7b18..9a2f3e09aa2e 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -72,7 +72,15 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 		ret = reset_control_reset(simple->resets);
 		if (ret)
 			goto err_resetc_put;
-	} else {
+	}
+
+	if (simple->need_reset) {
+		ret = reset_control_assert(simple->resets);
+		if (ret)
+			goto err_resetc_put;
+
+		usleep_range(1000, 2000);
+
 		ret = reset_control_deassert(simple->resets);
 		if (ret)
 			goto err_resetc_put;
@@ -121,9 +129,6 @@ static int dwc3_of_simple_remove(struct platform_device *pdev)
 	clk_bulk_put_all(simple->num_clocks, simple->clks);
 	simple->num_clocks = 0;
 
-	if (!simple->pulse_resets)
-		reset_control_assert(simple->resets);
-
 	reset_control_put(simple->resets);
 
 	pm_runtime_disable(dev);

Can you test?

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
