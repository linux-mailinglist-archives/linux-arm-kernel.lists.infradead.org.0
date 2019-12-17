Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA0C1232DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 17:46:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEQc4/K1o/FNvMu2sj+g0LwyBjJYaWUrN+73hNM6wio=; b=e68U7ryvUUjKoa
	IuddB2ciLFEJUVd9H3IJF2bYl9EpaDGrawhuoHScYUpKnvFfb/ZnawJg85GTSCaVgdAgyOaq6WSTG
	y2M6892GdNoimujbF1raUKExo9z+/Jp2D7M0QQY0H9q+TpUY0jyud0MS8ROquSsZDqYB0gXNPHfr4
	j+Psw4yCfmxkQ77W4szLiMttJgW8Y5HRf8U83c+0PN+G5z0O1ViQuXZYhFn5PH9ZYO8B0jSTGRoqw
	T3yGRe2E/aV0SjBoJeIJwUW3M5/J8u+PQ49Vy3nKQLpDAq+r2qJ2WMznXEg+JoTjb8cso+7fUee3C
	ll8Fk0q0kdpj6kSIeM1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihFzZ-0001zP-P4; Tue, 17 Dec 2019 16:46:37 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihFzP-0001yU-13
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 16:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576601185;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aKsNtbLIFJyPIxbIhkuqQwDdLTOvYVf+IcaJaDg+WqE=;
 b=Oeb/ZN3rBkmuzKXHZwq7klgJfPbEideHPVDz0UWz+gH7okkpPN7Cffepr/jmi9ifNQXu14
 4yVyZ38nJeYKUvZoyhZuP/wTxgws2yfvO6QrmgKW+iv0srRdflelPapk6zMOak9lHtUNvh
 bjrtxvuwA2Cpo1tBKN9nQOcyZty5tT4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-LUxbjDeDN6Cb23G4hPtXJw-1; Tue, 17 Dec 2019 11:46:23 -0500
X-MC-Unique: LUxbjDeDN6Cb23G4hPtXJw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A25A8005B1;
 Tue, 17 Dec 2019 16:46:19 +0000 (UTC)
Received: from [10.36.116.117] (ovpn-116-117.ams2.redhat.com [10.36.116.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 481785D9E1;
 Tue, 17 Dec 2019 16:46:15 +0000 (UTC)
Subject: Re: [PATCH v3 03/13] iommu/arm-smmu-v3: Support platform SSID
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
References: <20191209180514.272727-1-jean-philippe@linaro.org>
 <20191209180514.272727-4-jean-philippe@linaro.org>
 <e5b9a017-585a-5425-77bd-be40b86010e6@redhat.com>
 <20191217152108.GB2305883@myrica>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <d3ef7adf-4e9e-6b7f-c4eb-52a8f1eaa16c@redhat.com>
Date: Tue, 17 Dec 2019 17:46:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20191217152108.GB2305883@myrica>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_084627_142596_11785BA3 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, guohanjun@huawei.com,
 lorenzo.pieralisi@arm.com, will@kernel.org, linux-pci@vger.kernel.org,
 joro@8bytes.org, jonathan.cameron@huawei.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, sudeep.holla@arm.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 12/17/19 4:21 PM, Jean-Philippe Brucker wrote:
> Hi Eric,
> 
> On Tue, Dec 17, 2019 at 12:05:18PM +0100, Auger Eric wrote:
>>> +		fwspec = dev_iommu_fwspec_get(dev);
>>> +		if (!err && fwspec)
>>> +			of_property_read_u32(master_np, "pasid-num-bits",
>>> +					     &fwspec->num_pasid_bits);
>>> +	}
>> This patch dedicates to platform devices however I fail to understand,
>> at that stage, how/when do you retrieve/store the same max capability
>> for PCI devices?
> 
> For PCI devices, the max capability is only described by the PCIe PASID
> capability, not by firmware. Patch 13 deals with PCI by setting
> masted->ssid_bits from the PASID capability directly, ignoring
> fwspec->num_pasid_bits.

Get it now. thank you for the explanation.

Eric
> 
>> Besides,
>>
>> Reviewed-by: Eric Auger <eric.auger@redhat.com>
> 
> Thanks!
> Jean
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
