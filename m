Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25049E488C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FhVv+1K2tZHIcnOVezPapNAjWE3QgfmDbNL2MJmdFWc=; b=D0+KMr9dzfAmZz
	tis4QILUio9/oJAg/GMgE/FbjRr+M89HBDZb3obHHgSACc3wgM+WMXPdSdrTCnmo8JPv2yNIy67WX
	5eqMGtcTm4O2gqmlY3LniNakyeu8/ptig5mzO9hyV2b+BsrS+mZ95LRf+QytL5cuFG864tibg+U/k
	XbHqujFB0zYLYURSxEp2BDTP5VTAapzqSiUQZ328T6ZaT1AQhC3+oNtHwtVuZ8xeuslmAdPpJ96JR
	v54Cx5vUQxT5zybSsIhNlkHX04ptQzhNwNOFu6NB6DM8ZWDxMCk6D1Sqnl1RQpgJm4SOnXvGZDLvD
	Ca46EbxnZwl+LHoWPBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwml-0003er-BK; Fri, 25 Oct 2019 10:25:35 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwmZ-0003dr-3Z; Fri, 25 Oct 2019 10:25:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 03:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,228,1569308400"; d="scan'208";a="201773661"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga003.jf.intel.com with ESMTP; 25 Oct 2019 03:25:18 -0700
From: Felipe Balbi <balbi@kernel.org>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to platform_driver
In-Reply-To: <fcddc3d9-f36a-4b7b-be3f-ee720fbacb05@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
 <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
 <0edb55d4-3bad-47ac-9d29-8d994d182e67@gmail.com> <877e4wj7ly.fsf@gmail.com>
 <fcddc3d9-f36a-4b7b-be3f-ee720fbacb05@gmail.com>
Date: Fri, 25 Oct 2019 13:25:17 +0300
Message-ID: <87pnil2kc2.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_032523_159289_AA2D5784 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


hi,

Vicente Bergas <vicencb@gmail.com> writes:

> On Wednesday, October 23, 2019 8:31:21 AM CEST, Felipe Balbi wrote:
>> Hi,
>>
>> (sorry for the long delay)
>>
>> Vicente Bergas <vicencb@gmail.com> writes:
>>
>>> On Tuesday, August 27, 2019 2:16:20 PM CEST, Vicente Bergas wrote: ...
>>
>> I meant something like this:
>>
>> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c 
>> b/drivers/usb/dwc3/dwc3-of-simple.c
>> index bdac3e7d7b18..e64754be47b4 100644
>> --- a/drivers/usb/dwc3/dwc3-of-simple.c
>> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
>> @@ -110,12 +110,9 @@ static int dwc3_of_simple_probe(struct 
>> platform_device *pdev)
>>  	return ret;
>>  }
>>  
>> -static int dwc3_of_simple_remove(struct platform_device *pdev)
>> +static void __dwc3_of_simple_teardown(struct dwc3_of_simple *simple)
>>  {
>> -	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
>> -	struct device		*dev = &pdev->dev;
>> -
>> -	of_platform_depopulate(dev);
>> +	of_platform_depopulate(simple->dev);
>>  
>>  	clk_bulk_disable_unprepare(simple->num_clocks, simple->clks);
>>  	clk_bulk_put_all(simple->num_clocks, simple->clks);
>> @@ -126,13 +123,27 @@ static int dwc3_of_simple_remove(struct 
>> platform_device *pdev)
>>  
>>  	reset_control_put(simple->resets);
>>  
>> -	pm_runtime_disable(dev);
>> -	pm_runtime_put_noidle(dev);
>> -	pm_runtime_set_suspended(dev);
>> +	pm_runtime_disable(simple->dev);
>> +	pm_runtime_put_noidle(simple->dev);
>> +	pm_runtime_set_suspended(simple->dev);
>> +}
>> +
>> +static int dwc3_of_simple_remove(struct platform_device *pdev)
>> +{
>> +	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
>> +
>> +	__dwc3_of_simple_teardown(simple);
>>  
>>  	return 0;
>>  }
>>  
>> +static void dwc3_of_simple_shutdown(struct platform_device *pdev)
>> +{
>> +	struct dwc3_of_simple	*simple = platform_get_drvdata(pdev);
>> +
>> +	__dwc3_of_simple_teardown(simple);
>> +}
>> +
>>  static int __maybe_unused 
>> dwc3_of_simple_runtime_suspend(struct device *dev)
>>  {
>>  	struct dwc3_of_simple	*simple = dev_get_drvdata(dev);
>> @@ -190,6 +201,7 @@ MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
>>  static struct platform_driver dwc3_of_simple_driver = {
>>  	.probe		= dwc3_of_simple_probe,
>>  	.remove		= dwc3_of_simple_remove,
>> +	.shutdown	= dwc3_of_simple_shutdown,
>>  	.driver		= {
>>  		.name	= "dwc3-of-simple",
>>  		.of_match_table = of_dwc3_simple_match,
>>
>> Can you make sure it works as you intended?
>
> Hi Felipe,
> just applied your approach to v5.3.7 and it is working properly.

Do you want to send it as a formal patch or shall I do it?

-- 
balbi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
