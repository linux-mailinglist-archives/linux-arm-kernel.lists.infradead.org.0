Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9578A349
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 18:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD1PGl09aRlXZsd3m1GRYs0Uh8w6PgAgl2AS10IgIpQ=; b=jCaH57PA2Ryf1U
	R3aiqhcRNn333TGIi78NSCKrOIH9elLaphdlWFQLJs2P9PZT6doLmZjUnbVKfPD4/VttOSdiBvRJZ
	R0GSDYSbuilEv7PDE6VpY2MKJ5YpPofK4l28eNMEmIcLSaOl2sWOtxxj+cNZVNaO7Ag1gYw4v37wC
	FArCnbLjAKZRwhXyMNzREk7D5Airkk91Ls9EC7oQ4K/XRAAtvsyHHFFmYTAZJFJ0Gxi6GJk4gNjXe
	j903Ir8F+6cDlRGpTAYfF7LA0/rovmbhB9KR5PSi3kG1dmKWzz14IqYfEFWCNscpOjclq2SeTUrmE
	i4eUrJpu8kjdAOwZ6ZZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDBb-00022D-RW; Mon, 12 Aug 2019 16:28:43 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDBQ-0001yo-4a
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 16:28:33 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7CGSSO6082982;
 Mon, 12 Aug 2019 11:28:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1565627308;
 bh=IsKWgqgOglbaA6eYIe/r12Zf5tXCWsmgx1YMeflw7pY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=k1vjYN/uiF81v43522pzxwnJM4QIt1smtzfCqAKw3TsOp5y3pigH2fwmguZGIpBV0
 f4F4jQPxhApuQ/gfhORnEtUSVrccfREOb7LHI4URSZ7wcH7fgQyDF5rULGOY5kJqf4
 OMgA6bShR1TPvJNx2CNByzAdBdw6d0sdEM4e2DY4=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7CGSSbf067422
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 12 Aug 2019 11:28:28 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 12
 Aug 2019 11:28:27 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 12 Aug 2019 11:28:27 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7CGSRX0093082;
 Mon, 12 Aug 2019 11:28:27 -0500
Subject: Re: [PATCH] rpmsg: virtio_rpmsg_bus: replace "%p" with "%pK"
To: "Andrew F. Davis" <afd@ti.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>
References: <20181024011909.21674-1-s-anna@ti.com>
 <1cc3d697-6fde-901b-2e35-2e2b53b44425@ti.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <2ef5e274-df09-c3a0-41ed-a945d1902eaf@ti.com>
Date: Mon, 12 Aug 2019 11:28:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1cc3d697-6fde-901b-2e35-2e2b53b44425@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_092832_271618_6959CEAD 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 8/12/19 10:47 AM, Andrew F. Davis wrote:
> On 10/23/18 9:19 PM, Suman Anna wrote:
>> The virtio_rpmsg_bus driver uses the "%p" format-specifier for
>> printing the vring buffer address. This prints only a hashed
>> pointer even for previliged users. Use "%pK" instead so that
>> the address can be printed during debug using kptr_restrict
>> sysctl.
>>
> 
> 
> s/previliged/privileged

Bjorn,
Can you fix this up when applying.

> 
> You describe what the code does, but not why you need this. %pK is used
> for only about 1% of pointer printing, why do you want to leak this
> address to userspace at all?

Andrew,
Default behavior of %pK is same as %p, but it does allow you to control
the print. The reason is clearly mentioned in the last sentence in the
patch description.

regards
Suman

> 
> Andrew
> 
> 
>> Signed-off-by: Suman Anna <s-anna@ti.com>
>> ---
>>  drivers/rpmsg/virtio_rpmsg_bus.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
>> index f29dee731026..1345f373a1a0 100644
>> --- a/drivers/rpmsg/virtio_rpmsg_bus.c
>> +++ b/drivers/rpmsg/virtio_rpmsg_bus.c
>> @@ -950,7 +950,7 @@ static int rpmsg_probe(struct virtio_device *vdev)
>>  		goto vqs_del;
>>  	}
>>  
>> -	dev_dbg(&vdev->dev, "buffers: va %p, dma %pad\n",
>> +	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
>>  		bufs_va, &vrp->bufs_dma);
>>  
>>  	/* half of the buffers is dedicated for RX */
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
