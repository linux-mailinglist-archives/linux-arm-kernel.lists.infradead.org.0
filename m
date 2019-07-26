Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B46576410
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UUrDoUnbNOkMqw30NucsaUgsvlUO2UAFeqAxmVLhNY4=; b=kDi+nRlfIreN/FuvXbfcYIQRR
	xOF4KLJrw5ORz63iOPoPv3CzjujCViR6cLIVFDQ/+xcb5a5zv2KdOt1Ny7V60HBju8bmBAboENXdV
	oqxEf0FhvogGTU9z63QjymXGdbV+xDmwPyFmbK55m+HnZnCRCIH0rlTgrXD2Tsr9Ea2tRpGlMyuf3
	8uOQXbQMVXFBRSIRFClqVdBORxvfvMSJ1crY+HNSTd9UYd68gwPg1vUGK+ue9R2CSVMoaL5n1JzMr
	MHg9LbGBzh2vd3QHX6vBkDP/4D249fnz63cfRTl3f3qjhDzbHdFHfkt1T6aVoeQMVzOyKpQKZMV00
	9IPwKJ2PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqy1f-0000Xq-0u; Fri, 26 Jul 2019 11:04:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqy1U-0000X5-Sf; Fri, 26 Jul 2019 11:04:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 300D4344;
 Fri, 26 Jul 2019 04:04:27 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 86A963F71A;
 Fri, 26 Jul 2019 04:04:24 -0700 (PDT)
Subject: Re: [RFC, v3 9/9] media: platform: Add Mediatek ISP P1 shared memory
 device
To: Tomasz Figa <tfiga@chromium.org>, Christoph Hellwig <hch@infradead.org>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org> <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
 <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07>
 <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org>
 <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4460bc91-352a-7f3a-cbed-1b95e743ca8c@arm.com>
Date: Fri, 26 Jul 2019 12:04:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_040428_972699_4CA60D57 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Jungo Lin <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 26/07/2019 08:42, Tomasz Figa wrote:
> On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
>>
>> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
>>> Could you try dma_get_sgtable() with the SCP struct device and then
>>> dma_map_sg() with the P1 struct device?
>>
>> Please don't do that.  dma_get_sgtable is a pretty broken API (see
>> the common near the arm implementation) and we should not add more
>> users of it.  If you want a piece of memory that can be mapped to
>> multiple devices allocate it using alloc_pages and then just map
>> it to each device.
> 
> Thanks for taking a look at this thread.
> 
> Unfortunately that wouldn't work. We have a specific reserved memory
> pool that is the only memory area accessible to one of the devices.
> Any idea how to handle this?

If it's reserved in the sense of being outside struct-page-backed 
"kernel memory", then provided you have a consistent CPU physical 
address it might be reasonable for other devices to access it via 
dma_map_resource().

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
