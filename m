Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A20F150756
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:10:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QbcN8rGGjc98DN5i6x9j/hdOleHpBDDrmkTmpieGQQ=; b=EFwWsdnkK4W6yG
	I26DnDBTIZZ+teWl+jUe8QQuxdmQRfdlqmP8J+cNxYwVkpZBKhtT9rYUG0Uc3RSDz42CVkkqid61V
	dNWwj1XpVSO5NT+GkVlmYrXkanisSE+sx4Q7GFri+NKdgjvvWgGUmuMDlr2TozngE3RhbTSLZXg7W
	H9AeeIl9MyCbirvDG6IGQIMc+7CHd1MwrV2T/DtzxV2LRKFwvf6bdDXfy1Psdcl4oJWEKZNKkarb7
	C5k2ig0fswHUDtVix6wv/MwxqmAc/srdBNQ1biewFv0WzB7gg1JWAYzV1KrtdEOkZ6VLoSOVnuGCn
	CGhzsV1Yl+FHOm62ej7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLvy-0000Me-QA; Mon, 24 Jun 2019 10:10:47 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLvj-0000Ko-7P
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:10:33 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5OA62I3032026; Mon, 24 Jun 2019 12:10:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=f7nKa6SlB25HuKxpO9ORVYe76aQxcf81fhY3D6AwPCY=;
 b=qVAS3sfAEQKMyPUYW5onOQocf3HQ1xMc8a9OD35wBW1ET4c0Z+4Dm3+rqFboLskfsnvq
 L8mMSSDW3Cwvjy3glbyAwXs6v05wRZy+NzeQ83Zf3S24eyII1+VfHuj/zjb5mblxv1Iv
 UO0OC8n4axKvQk5Ek1PG8cU8IxqL6PNFQ/CPrT1/+Z6u7yJEeCdnZ9YrJPn6XMhHtMbI
 eQJVmp3lvfvasGSVYBAR2Lebs7rZy2l/a381BzqK3tcgn6RHHFO4f3TjrST9Cf9oJAB1
 FPe6EN0eDxbQHR9+LqDu5Ja2axh+NPg3/kTx550GNqA2g+DFAnNpKo9yB7QJJwZ4JER7 Qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t9d2g29h3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 24 Jun 2019 12:10:08 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 541973A;
 Mon, 24 Jun 2019 10:10:06 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 16CA22661;
 Mon, 24 Jun 2019 10:10:06 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 24 Jun
 2019 12:10:05 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Mon, 24 Jun 2019 12:10:05 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v2 0/3] DCMI bridge support
Thread-Topic: [PATCH v2 0/3] DCMI bridge support
Thread-Index: AQHVJ4OqL2qtYdvbaESId3efmYQAfaaqeW6A
Date: Mon, 24 Jun 2019 10:10:05 +0000
Message-ID: <ae097d67-58fe-82d7-78d6-2445664f28db@st.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
In-Reply-To: <20190620161721.h3wn4nibomrvriw4@kekkonen.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <85607FCBA25C3B4296E8D683984E4084@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-24_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_031031_567653_838DEDB8 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yannick FERTRE <yannick.fertre@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

 > - Where's the sub-device representing the bridge itself?
This is pointed by [1]: drivers/media/i2c/st-mipid02.c

 > - As the driver becomes MC-centric, crop configuration takes place
through
 >   V4L2 sub-device interface, not through the video device node.
 > - Same goes for accessing sensor configuration: it does not take place
 >   through video node but through the sub-device nodes.

Our objective is to be able to support either a simple parallel sensor
or a CSI-2 sensor connected through a bridge without any changes on 
userspace side because no additional processing or conversion involved, 
only deserialisation is m.
With the proposed set of patches, we succeeded to do so, the same 
non-regression tests campaign is passed with OV5640 parallel sensor 
(STM32MP1 evaluation board) or OV5640 CSI-2 sensor (Avenger96 board with 
D3 mezzanine board).

We don't want driver to be MC-centric, media controller support was 
required only to get access to the set of functions needed to link and
walk trough subdevices: media_create_pad_link(), 
media_entity_remote_pad(), etc...

We did a try with the v1 version of this patchset, delegating subdevices 
handling to userspace, by using media-controller, but this require to 
configure first the pipeline for each single change of resolution and 
format before making any capture using v4l2-ctl or GStreamer, quite 
heavy in fact.
Benjamin did another try using new libcamera codebase, but even for a 
basic capture use-case, negotiation code is quite tricky in order to
match the right subdevices bus format to the required V4L2 format.
Moreover, it was not clear how to call libcamera library prior to any
v4l2-ctl or GStreamer calls.

Adding 100 lines of code into DCMI to well configure resolution and 
formats fixes the point and allows us to keep backward compatibility
as per our objective, so it seems far more reasonable to us to do so
even if DCMI controls more than the subdevice it is connected to.
Moreover we found similar code in other video interfaces code like 
qcom/camss/camss.c and xilinx/xilinx-dma.c, controlling the whole 
pipeline, so it seems to us quite natural to go this way.

To summarize, if we cannot do the negotiation within kernel, delegating
this to userspace implies far more complexity and breaks compatibility
with existing applications without adding new functionalities.

Having all that in mind, what should be reconsidered in your opinion 
Sakari ? Do you have some alternatives ?

Best regards,
Hugues.


On 6/20/19 6:17 PM, Sakari Ailus wrote:
> Hi Hugues,
> 
> On Tue, Jun 11, 2019 at 10:48:29AM +0200, Hugues Fruchet wrote:
>> This patch serie allows to connect non-parallel camera sensor to
>> DCMI thanks to a bridge connected in between such as STMIPID02 [1].
>>
>> Media controller support is introduced first, then support of
>> several sub-devices within pipeline with dynamic linking
>> between them.
>> In order to keep backward compatibility with applications
>> relying on V4L2 interface only, format set on video node
>> is propagated to all sub-devices connected to camera interface.
>>
>> [1] https://www.spinics.net/lists/devicetree/msg278002.html
> 
> General notes on the set, not related to any single patch:
> 
> - Where's the sub-device representing the bridge itself?
> 
> - As the driver becomes MC-centric, crop configuration takes place through
>    V4L2 sub-device interface, not through the video device node.
> 
> - Same goes for accessing sensor configuration: it does not take place
>    through video node but through the sub-device nodes.
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
