Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813D8D5C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 16:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTwxfCFekWdF4VuRrXvfO0BEhgoWWe3XR81Zt+kEIBI=; b=jGJQ2lTq1OqMIB
	D2Uh1ZxXa9RNA77IWJMUDr23hsueih8gTnxWK/HduHPCj6awm6oDjus1DdK3j2rxfPzNxDfdTIAKm
	7TQDDilyvChrrhVbEreRO/x1mJeFXoBViY5SoNmHE2aA0u3bjeBSGUzdBCJRud+C6KzZLDSevNBAg
	2Uamc7o6FuWpeEWHx+baciWGrSJ8xM1n5SZcVpkXAqB4QIMShbeQNaOM67Rev0IDt8Jxgl5+uRLFe
	2KxrRCiiOf8+ruCawWCPdzP7zdi4De0TnfPfplygugX+H9PVo95840uyaXgPjGgsFmjL5hFz1+U/g
	Dm28qSxDbCyaZi5KiQAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxu5p-00060a-5v; Wed, 14 Aug 2019 14:17:37 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxu5Z-000603-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 14:17:22 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7EEBQT5021331; Wed, 14 Aug 2019 16:17:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=864BMKlRVFujYQCq26+1g0K4hmq2aALb8dEnOteiolo=;
 b=J174bcZrkmVeJ7AJOl9VCKXBznmKRNGKuDznEEXShutR8zIKsYb3zZoJjmj7dK6hhK86
 pa2BHJKexcG++kpNZuT8ZtR3NgdSxFyIVq9wwvVFLbzz3smt+NVNYNSMNPz4yFx+41DE
 ARk9qY87/HMVJkZkFzWdH4htlaFv8ubQe8cLNPkXvh0nO4z1+2A/pa7zefqWKmafwPFx
 jyZvovgQIZXEd3rDaFel6SwqEZvhDThUrlZcBFE7yTwlDRUCQvKmyFumyleQApn39Dj2
 cEq8L+o0Xnx9k1l32qgFnjOWTRQ3vsPwt48I7z3O+7TwRnV2noQXt0wn56rdHAzUyzh3 TA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u9kpuwtjn-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 14 Aug 2019 16:17:14 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D312534;
 Wed, 14 Aug 2019 14:17:13 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id C0FDC2B910C;
 Wed, 14 Aug 2019 16:17:13 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 14 Aug
 2019 16:17:13 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Wed, 14 Aug 2019 16:17:13 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Hans Verkuil
 <hverkuil@xs4all.nl>
Subject: Re: [PATCH v4 1/3] media: stm32-dcmi: improve sensor subdev naming
Thread-Topic: [PATCH v4 1/3] media: stm32-dcmi: improve sensor subdev naming
Thread-Index: AQHVTsvbNiH8ciXV5ESmNTxaXVzk1ab6ls8A
Date: Wed, 14 Aug 2019 14:17:13 +0000
Message-ID: <ca92a856-98fc-f82b-fa0a-62b9f44e266c@st.com>
References: <1564577783-18627-1-git-send-email-hugues.fruchet@st.com>
 <1564577783-18627-2-git-send-email-hugues.fruchet@st.com>
 <20190809160121.GA6194@paasikivi.fi.intel.com>
In-Reply-To: <20190809160121.GA6194@paasikivi.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.51]
Content-ID: <EDF4C1A0C930AF4EB3EB2E6088AF5865@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_071721_531028_69954B65 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 Mickael GUENE <mickael.guene@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe CORNU <philippe.cornu@st.com>, Yannick FERTRE <yannick.fertre@st.com>,
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

Hi Sakari, Hans,

I've just pushed a v6 with the FIXME we discussed on IRC about
"parallel" mbus code versus "serial" mbus code. I have also added
some traces to help in debugging if such case occurs.

version 6:
   - As per Sakari remark: add a FIXME explaining that this
     version only supports subdevices which expose RGB & YUV
     "parallel form" mbus code (_2X8)
   - Add some trace around subdev_call(s_fmt) error & format
     changes to debug subdev which only expose serial mbus code
   - Conform to "<name>":<pad index> when tracing subdev infos


Best regards,
Hugues.

On 8/9/19 6:01 PM, Sakari Ailus wrote:
> Hi Hugues,
> 
> Thanks for teh update.
> 
> On Wed, Jul 31, 2019 at 02:56:21PM +0200, Hugues Fruchet wrote:
>> Rename "subdev" entity struct field to "source"
>> to prepare for several subdev support.
>> Move asd field on top of entity struct.
>>
>> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
>> Change-Id: I1545a1a29a8061ee67cc6e4b799e9a69071911e7
> 
> No Change-Id tags in the kernel, please. Check the other two as well.
> 
> With that fixed,
> 
> Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
