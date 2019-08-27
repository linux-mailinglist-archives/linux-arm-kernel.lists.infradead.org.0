Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 046DC9F404
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 22:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWX1kcr0hxnQVChMEfhUAmsw7dEsoSnv8e45cPHdZnU=; b=KKk3YXTqJofp86
	s1Gbs+6CZVJ1QLXKA/1Fmma85af34Qu5A1RWv7vM5baH42iLdsmlDvLeoZhnkmgdt2ZKSUnkkmFw3
	VZS9wLictJJlMt42OOT2fNfrxj662BCSR/9/ccvGTU2lUSmARLb6ag52m2qclJs4KKobcfb6npORT
	eD8W0yAQSFIFLGMmk+YCQudVDbD0lC3kTkC+gy0eSb3yUIcAxCC6VK+BybXWB46osAitEmVV5U2gH
	w2CmKOI2AK8r0D8w5dtAwL1a5FcdrPcmbjcD57M0cgL0WZwb8Bf5SCrKnV52FNVMqyzKPwvGE+kEc
	QZhisvXAxyPBm2G6ealQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2i1m-00086E-GF; Tue, 27 Aug 2019 20:25:18 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2i1e-00085t-QD
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 20:25:12 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7RKP70B093527;
 Tue, 27 Aug 2019 15:25:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566937507;
 bh=gEFdEpF3+WHvpWSJY5udGgk0X9B9uxOZiubUNpvloVw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gcOryOkGkUDvclbsETxSdDLvTp8FonXjm/u4yweBik1ycTS8nZcVasBirRn4DeKBN
 4DFdcUTmNi8isNNyhJxCTXIirpZLs+VBkjAVsjsarVL93BGGH2IEHH1+IjQyuKEAty
 jOs/TJeujygUh250pCOKKxZH7xsIXLHgtic7mSvY=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7RKP7RV064462
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Aug 2019 15:25:07 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 27
 Aug 2019 15:25:06 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 27 Aug 2019 15:25:06 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7RKP6DQ070466;
 Tue, 27 Aug 2019 15:25:06 -0500
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
To: Bjorn Andersson <bjorn.andersson@linaro.org>
References: <20181024011909.21674-1-s-anna@ti.com>
 <40831f80-1e36-66ca-b8e5-684d46ba167e@ti.com> <20190827051007.GK1263@builder>
From: Suman Anna <s-anna@ti.com>
Message-ID: <8d36d695-dd66-c21f-f49e-f6dc3dbdfc5a@ti.com>
Date: Tue, 27 Aug 2019 15:25:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190827051007.GK1263@builder>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_132510_955283_73B9D0BE 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Loic Pallardy <loic.pallardy@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Bjorn,

On 8/27/19 12:10 AM, Bjorn Andersson wrote:
> On Fri 09 Aug 13:25 PDT 2019, Suman Anna wrote:
> 
>> Hi Bjorn,
>>
> 
> Hi Suman
> 
>> On 10/23/18 8:19 PM, Suman Anna wrote:
>>> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
>>> printing the vring buffer address. This prints only a hashed
>>> pointer even for previliged users. Use "%pK" instead so that
>>> the address can be printed during debug using kptr_restrict
>>> sysctl.
>>
>> Seems to have been lost among the patches, can you pick up this trivial
>> patch for 5.4? Should apply cleanly on the latest HEAD as well.
>>
> 
> I share Andrew's question regarding what benefit you have from knowing
> this value. Should we not just remove the va from the print? Or do you
> actually have a use case for it?.

I mainly use it during debug when comparing against kernel_page_tables
and vmallocinfo. The pools that we use are not always guaranteed to be
from linear memory, and behavior changes when using with CMA or DMA pools.

Note that usage of %pK does not leak the addresses automatically, but
atleast enables me to get the values when needed. The changes also bring
the usage in rpmsg core in sync with the remoteproc core.

regards
Suman

> 
> Regards,
> Bjorn
> 
>> regards
>> Suman
>>
>>>
>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>> ---
>>>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
>>> index f29dee731026..1345f373a1a0 100644
>>> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
>>> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
>>> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
>>>  		goto vqs_del;
>>>  	}
>>>  
>>> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
>>> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
>>>  		bufs_va, &vrp->bufs_dma);
>>>  
>>>  	/* half of the buffers is dedicated for RX */
>>>
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
