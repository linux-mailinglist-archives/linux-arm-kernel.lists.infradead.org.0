Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98E891FBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 11:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfztWS85IZmWMDmadKs2np8A9xIyIXLLk1KSPCPLoiY=; b=DFOlva1r+SGV8/
	C2zQEkZsEShGfhAZPsoMMudyH5BgJz98a2R7niYUI4Sue0QYfh/50t2H73qCLUyFbfZqO6oLQtA7D
	pTFO5rcSN8ClSD+xJlDQq/lwe2ycjepZWeiAPuDttTn2OiLViI0ZNbJAx5tgxjq9lJNMxF+prtkcT
	eO8KAN4P19ruZQ5AwgYydvcPp0U5x+SXzqsZCEsUwgiaUB+RmCoEXLMyhbc8slV/kpRYFHwdDuqhi
	JKRwj+wK63aay4YN0PfKJiietf4cqD8Wno574FieIapeeKwsdHzDIkn8FeOGfzE+qk1kXLosbouPP
	rYwYSFnbJkU9u9s7ymNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdja-0000B7-AR; Mon, 19 Aug 2019 09:13:50 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdjN-0000Ae-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 09:13:39 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7J9C44g008020; Mon, 19 Aug 2019 11:13:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=qPtY65syNbZPgYlU9jqqgNS94oIfK9I+q4XLxKpjhnI=;
 b=d41pUUzNDUnezdRr90IZ61ONsJ21G4K5DZYJtf2bZZGzywRpRuiz+oGVHnaedJSLmdFm
 O8vLW82Rc0hzYKWwP/S/Lr8VYzhKTxYU+y/hIG45CCgRWVyjLtKaGzI7xIYeuJasIaUt
 lq4oGEx23LCbjfWsVQhtSaF98k/ajKzTwtXgF/hcmrlNzR9BNb5WhNOTpDpXvX4uoNNO
 SiyR0mTaR5Lj3HKIfhp7ZSXmOgwSCMxrVVuHGRDfrHYqb1LhDSLo7igN3D642yM22FzR
 mLCEY8IVjtuAfFWoY52vkRfU92aA6Qt037akHvkcwsJ/HN4GNvnBRIVTZpO3qXYyJ8nY eg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ue720tdyj-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 19 Aug 2019 11:13:30 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 743E634;
 Mon, 19 Aug 2019 09:13:29 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 620CA2CA5CE;
 Mon, 19 Aug 2019 11:13:29 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 19 Aug
 2019 11:13:29 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Mon, 19 Aug 2019 11:13:29 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Alexandre TORGUE
 <alexandre.torgue@st.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Sakari Ailus" <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v7 0/4] DCMI bridge support
Thread-Topic: [PATCH v7 0/4] DCMI bridge support
Thread-Index: AQHVVmonZD9iAGFT80+FGsi2F1VjYqcCDlyA
Date: Mon, 19 Aug 2019 09:13:28 +0000
Message-ID: <5d36f437-0de5-1aa0-09bf-51d3a415ad2f@st.com>
References: <1566204081-19051-1-git-send-email-hugues.fruchet@st.com>
 <0cd073d9-3d25-9e22-f243-f72e395e9e96@xs4all.nl>
In-Reply-To: <0cd073d9-3d25-9e22-f243-f72e395e9e96@xs4all.nl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <7454236525196C4ABD655304CB57FFD8@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_021338_217293_C10809AE 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans, Sakari,

OK to push separately the 80 char fix.

There was pending related changes on st-mipid02 and ov5640 (listed 
below), do you think it's possible to take them also ?


media: st-mipid02: add support of V4L2_CID_LINK_FREQ 
https://patchwork.linuxtv.org/patch/56969/
State	Accepted

[v2,1/3] media: st-mipid02: add support of RGB565
https://patchwork.linuxtv.org/patch/56970/
State	Accepted

[v2,2/3] media: st-mipid02: add support of YUYV8 and UYVY8
https://patchwork.linuxtv.org/patch/56971/
State	Accepted

[v2,3/3] media: st-mipid02: add support of JPEG 
https://patchwork.linuxtv.org/patch/56973/
State	Accepted


[v2] media: ov5640: add support of V4L2_CID_LINK_FREQ
https://patchwork.linuxtv.org/patch/57215/
State	Changes Requested
=> This change is needed to make it work the whole setup.
=> I don't know what to change here, even if this 384MHz fixed value 
seems strange, it works fine on my setup, on my opinion it's better than 
nothing. We could come back on this later on when other OV5640 CSI 
interfaces will require V4L2_CID_LINK_FREQ value.

Sakari, what do you think about this ?


BR,
Hugues.

On 8/19/19 10:43 AM, Hans Verkuil wrote:
> On 8/19/19 10:41 AM, Hugues Fruchet wrote:
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
>>
>> ===========
>> = history =
>> ===========
>> version 7:
>>    - minor fix on 80 char trace message
> 
> v6 is already in a pending PR. I don't really want to make a new
> PR just for a 80 char warning.
> 
> It can always be done in a follow-up patch.
> 
> Regards,
> 
> 	Hans
> 
>>
>> version 6:
>>    - As per Sakari remark: add a FIXME explaining that this
>>      version only supports subdevices which expose RGB & YUV
>>      "parallel form" mbus code (_2X8)
>>    - Add some trace around subdev_call(s_fmt) error & format
>>      changes to debug subdev which only expose serial mbus code
>>    - Conform to "<name>":<pad index> when tracing subdev infos
>>
>> version 5:
>>    - Remove remaining Change-Id
>>    - Add Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
>>
>> version 4:
>>    - Also drop subdev nodes registry as suggested by Hans:
>>      https://www.spinics.net/lists/arm-kernel/msg743375.html
>>
>> version 3:
>>    - Drop media device registry to not expose media controller
>>      interface to userspace as per Laurent' suggestion:
>>      https://www.spinics.net/lists/linux-media/msg153417.html
>>    - Prefer "source" instead of "sensor" and keep it in
>>      dcmi_graph_entity struct, move asd as first member
>>      of struct as per Sakari' suggestion:
>>      https://www.spinics.net/lists/linux-media/msg153119.html
>>    - Drop dcmi_graph_deinit() as per Sakari' suggestion:
>>      https://www.spinics.net/lists/linux-media/msg153417.html
>>
>> version 2:
>>    - Fix bus_info not consistent between media and V4L:
>>      https://www.spinics.net/lists/arm-kernel/msg717676.html
>>    - Propagation of format set on video node to the sub-devices
>>      chain connected on camera interface
>>
>> version 1:
>>    - Initial submission
>>
>> Hugues Fruchet (4):
>>    media: stm32-dcmi: improve sensor subdev naming
>>    media: stm32-dcmi: trace the supported fourcc/mbus_code
>>    media: stm32-dcmi: add media controller support
>>    media: stm32-dcmi: add support of several sub-devices
>>
>>   drivers/media/platform/Kconfig            |   2 +-
>>   drivers/media/platform/stm32/stm32-dcmi.c | 318 +++++++++++++++++++++++++-----
>>   2 files changed, 268 insertions(+), 52 deletions(-)
>>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
