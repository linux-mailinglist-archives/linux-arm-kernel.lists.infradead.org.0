Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA09C97D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 07:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73E9G99htu2tPH71SAylDCAI8N+EvKtPYcKEbYeon2c=; b=p2hcQxCqArVfCUKPLkdLHc03D
	2drmSEG1AtMmwQcM5+eJtsmewt+YfHsyl5W7ezrVJnwH15037P4PsBXcr3B8F6+KJsao84toZwh50
	3PnKuxGePwVBnHLI1cqGw0rS30B+viWJ0wyQF+CSGH8P7Rush6Dnis7oj1jsUgxIXKUSRAGJyqwO0
	MqEVAoXUPlsteWlg1DqOrGS0zjbj2iv5GQvQuGmUoTNqFSHJuu2crh/SyaKlwXUxZ2vfYjiSMGx+9
	jAr1LyNgXtIOcusYIFQlNXhY/LazizkwU0wGfnxLlhWBL9yZtN+mfOcu4xn2H7Xxb32fDKoclk+6c
	jHjm5feTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFtR7-0006O2-Ah; Thu, 03 Oct 2019 05:13:57 +0000
Received: from mail.kapsi.fi ([2001:67c:1be8::25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFtR0-0006NK-NM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 05:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
 s=20161220; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hP031RxHuMgAPYFFoqnXvAf+Ck07yKWJha6BUPagUqk=; b=WFkabIw3Kd3dagHrC3eSGaQtVO
 /U+hHGuTVJqD7+gMAHwEnVGRX75Y8zGjKCE/uzipE0aP9sncy0wjQvnrVbTPMdtk/aUAawXdDtoW9
 mni87ucSU0kXsCMnGKzOuH0DXtoj6eIHvEsAMIYRKpkwlX7k9kRialA6/JxK0/5EqAKxIseaD2ry7
 3v3WSD4CWtWryYxsxQ232II0lUOfwovLDBSrxhiVUCnczYTaTmJ/M8iBUmO+xFDXjLWtnORyHLzot
 XbAX6ImgX40ma0SLA3uQC3AiqqqYd4LwmG3g63P13QHaHZgdJ0XAO5/54ajUN7jkMB58RT38CVA1m
 m9G7mbxw==;
Received: from [39.110.237.146] (helo=[10.23.107.35])
 by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <cyndis@kapsi.fi>)
 id 1iFtQl-0002gp-SY; Thu, 03 Oct 2019 08:13:36 +0300
Subject: Re: [PATCH] arm64: tegra: Set dma-ranges for memory subsystem
To: Thierry Reding <thierry.reding@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Georgi Djakov <georgi.djakov@linaro.org>, Maxime Ripard <mripard@kernel.org>
References: <20191002154654.225690-1-thierry.reding@gmail.com>
 <20191002154946.GA225802@ulmo>
From: Mikko Perttunen <cyndis@kapsi.fi>
Message-ID: <a0a299d2-a08f-1a4d-728e-6d7c54fa0e5a@kapsi.fi>
Date: Thu, 3 Oct 2019 14:13:21 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191002154946.GA225802@ulmo>
Content-Language: en-GB
X-SA-Exim-Connect-IP: 39.110.237.146
X-SA-Exim-Mail-From: cyndis@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_221351_091477_7332BE9B 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:1be8:0:0:0:0:25 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 0.49, Thierry Reding wrote:
> On Wed, Oct 02, 2019 at 05:46:54PM +0200, Thierry Reding wrote:
>> From: Thierry Reding <treding@nvidia.com>
>>
>> On Tegra194, all clients of the memory subsystem can generally address
>> 40 bits of system memory. However, bit 39 has special meaning and will
>> cause the memory controller to reorder sectors for block-linear buffer
>> formats. This is primarily useful for graphics-related devices.
>>
>> Use of bit 39 must be controlled on a case-by-case basis. Buffers that
>> are used with bit 39 set by one device may be used with bit 39 cleared
>> by other devices.
>>
>> Care must be taken to allocate buffers at addresses that do not require
>> bit 39 to be set. This is normally not an issue for system memory since
>> there are no Tegra-based systems with enough RAM to exhaust the 39-bit
>> physical address space. However, when a device is behind an IOMMU, such
>> as the ARM SMMU on Tegra194, the IOMMUs input address space can cause
>> IOVA allocations to happen in this region. This is for example the case
>> when an operating system implements a top-down allocation policy for IO
>> virtual addresses.
>>
>> To account for this, describe the path that memory accesses take through
>> the system. Memory clients will send requests to the memory controller,
>> which forwards bits [38:0] of the address either to the external memory
>> controller or the SMMU, depending on the stream ID of the access. A good
>> way to describe this is using the interconnects bindings, see:
>>
>> 	Documentation/devicetree/bindings/interconnect/interconnect.txt
>>
>> The standard "dma-mem" path is used to describe the path towards system
>> memory via the memory controller. A dma-ranges property in the memory
>> controller's device tree node limits the range of DMA addresses that the
>> memory clients can use to bits [38:0], ensuring that bit 39 is not used.
>>
>> Signed-off-by: Thierry Reding <treding@nvidia.com>
>> ---
>> Arnd, Rob, Robin,
>>
>> This is what I came up with after our discussion on this thread:
>>
>> 	[PATCH 00/11] of: dma-ranges fixes and improvements
>>
>> Please take a look and see if that sounds reasonable. I'm slightly
>> unsure about the interconnects bindings as I used them here. According
>> to the bindings there's always supposed to be a pair of interconnect
>> paths, so this patch is not exactly compliant. It does work fine with
>> the __of_get_dma_parent() code that Maxime introduced a couple of months
>> ago and really very neatly describes the hardware. Interestingly this
>> will come in handy very soon now since we're starting work on a proper
>> interconnect provider (the memory controller driver is the natural fit
>> for this because it has additional knobs to configure latency and
>> priorities, etc.) to implement external memory frequency scaling based
>> on bandwidth requests from memory clients. So this all fits together
>> very nicely. But as I said, I'm not exactly sure what to add as a second
>> entry in "interconnects" to make this compliant with the bindings.
>>
>> Adding Georgi and Maxime, perhaps they can help clarify.
>>
>> Thierry
> 
> Updating Maxime's email address.
> 
> Thierry
> 
>>   arch/arm64/boot/dts/nvidia/tegra194.dtsi | 32 +++++++++++++++++++++++-
>>   1 file changed, 31 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
>> index 6900e8bdf24d..f50150217806 100644
>> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
>> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
>> @@ -53,6 +53,8 @@
>>   			clock-names = "master_bus", "slave_bus", "rx", "tx", "ptp_ref";
>>   			resets = <&bpmp TEGRA194_RESET_EQOS>;
>>   			reset-names = "eqos";
>> +			interconnects = <&mc TEGRA194_SID_EQOS>;

It seems to me that the memory client ID may be a more appropriate 
identifier for the interconnect. Stream IDs can sometimes change at 
runtime based on software. Devices can also have multiple memory clients 
using the same stream ID (or not).

Cheers,
Mikko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
