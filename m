Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2E55D2AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vd8k3YFkSV8jzOZF9ralcPkSbe0MCn+RS61lmL8Cmmk=; b=peZXn8ceFj5nTp
	cesZP9QMG6krKxWVn7EvCSCtciDGEZ+Ep4Ez6JAVlJY1bWEMZrWcXY0/t4t0BUD4AW7FcFoWjjIWj
	HwyGKF/AsLnoLFRWuPwBzSTEeHKnAMqQTlhzkXCRanuJV5HhpWLgVFinvTJ5Af0f2QtiPig6KKRA1
	1e4NeSi+6bJMTpSr1qmt5paShKCjbfDQXTkAZJxPlbHHB97QLYgi5Rl9xYgUSY+Ga67Bxv13YwSYo
	O1P2KUiEvzoqSKIWICWZ/z9nv2z9XkmleszLczzRRaRJI/XoCnU2xqvCp4ZdTAk7FHj0uBDffC0E/
	sFKC0G8FLa5hZQY+2cDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiKb1-0006mv-LZ; Tue, 02 Jul 2019 15:21:27 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiKam-0006mG-Fy
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 15:21:15 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x62F82Ro028002; Tue, 2 Jul 2019 17:21:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=SzjDcNB2QeMrFWCWKsns2sD9pi5HfWIIUWIJ0NlH42M=;
 b=cI9ZfrboxcM0+cXQJkuFam761VrzZpIob6TvGDdYkNRaMLDK25m21kXCDDKDwkTrvzXJ
 FFn1IFYPeosPHTYIWw0sy1r+05ncgsx6y9L2L+s4OizRYjfpG4MyELmS2KThXh0qcwNi
 judIE+udSHlTtiefTfr1UDd7f4fLM6sfmgGsjuRJ8WdMQmagM9Y21lkprCagyb75EcnR
 zsJrjpLwPYmPtbEQXPkHfTMqe4CQYv2z7KHiv0uRrIA2Tp5MFfRUYB3EHKK4nQE6tgDi
 TY6SPi9It/IXQYsJC4Qo7FK6XzUAaQvHALZZ0RgqzdfvE1iMJyJqyAXR4EPHipJYaac5 +A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tdxvhvvsc-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 02 Jul 2019 17:21:01 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C10383D;
 Tue,  2 Jul 2019 15:21:00 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag5node3.st.com [10.75.127.15])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8BFD42D05;
 Tue,  2 Jul 2019 15:21:00 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG5NODE3.st.com
 (10.75.127.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 2 Jul
 2019 17:21:00 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Tue, 2 Jul 2019 17:21:00 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v2 1/3] media: stm32-dcmi: improve sensor subdev naming
Thread-Topic: [PATCH v2 1/3] media: stm32-dcmi: improve sensor subdev naming
Thread-Index: AQHVJ3yZHgnJxvOZ40OVy3POWcVYXaa3YwCA
Date: Tue, 2 Jul 2019 15:21:00 +0000
Message-ID: <c3dfcddd-199d-f322-a957-8c0ff1d2f5b2@st.com>
References: <1560242912-17138-1-git-send-email-hugues.fruchet@st.com>
 <1560242912-17138-2-git-send-email-hugues.fruchet@st.com>
 <20190620152640.chd4u4u5hd56ausk@kekkonen.localdomain>
In-Reply-To: <20190620152640.chd4u4u5hd56ausk@kekkonen.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.48]
Content-ID: <DDD382B92050594481214CD96E888BBA@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_08:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_082113_804342_0424EED7 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 6/20/19 5:26 PM, Sakari Ailus wrote:
> Hi Hugues,
> 
> On Tue, Jun 11, 2019 at 10:48:30AM +0200, Hugues Fruchet wrote:
>> Add a new "sensor" field to dcmi struct instead of
>> reusing entity->subdev to address sensor subdev.
As discussed on IRC, fixed in v3,
> 
> The purpose of the struct binding image source's async subdev as well as
> related information is to allow associating the two. This patch breaks
> that. If your device can support a single sensor, it might not be a big
> deal. The end result remains somewhat inconsistent as subdev specific
> information is spread across struct stm32_dcmi and struct
> dcmi_graph_entity.
As discussed on IRC, fixed in v3,

> 
> In general you don't need to know the sensor as you can always find it
> using media_entity_remote_pad(). This driver is a little different though
> as it could presumably continue to work without MC. Was that the intent?
> 
> On a side note: struct dcmi_graph_entity does NOT have struct
> v4l2_async_subdev as its first member. Please fix that and prepend the fix
> to this set.
> 
As discussed on IRC, fixed in v3,

BR,
Hugues.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
