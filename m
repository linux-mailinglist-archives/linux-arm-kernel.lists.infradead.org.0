Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C2B91E17
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etl4UCU2g2RKgOXIrQTv43iSKGjAoWR3a6+HkQ3dZQE=; b=kKap2kuwLxP20N
	OGJ+3Poj9A788k1ykzvjjYvZYEOiAS7kZyCpsXdZ1CyPuQDSt7Xe9diQ7dB1jn6LQOhpRbXr2ZsLT
	fzdFNs3NTHosoMULQKrhcFVDny5meD0nRmyJhxMEMQLhKvk8dDHymlx9o1D1EkUA0EwtFWkFvaig0
	473Lx8pZU/ZROqomTCMXzgoZa9YW+C/FwbBL1jIPMDsSJi+CZ77aagNjggesHPpzaUS4UnrP/NmBH
	dcnPqQv4k3YDtFL0c6bmEw531gfOIyHWLsp7Xxk5L8LI2ROsCqk5uyRZFRcCAzkj5OSYnW5h/F/u1
	fyLiplKB9zGrjjkZ2OTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcI4-0004ce-0g; Mon, 19 Aug 2019 07:41:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcHm-0004c7-J2
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:41:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7J7aQWn026361; Mon, 19 Aug 2019 09:40:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=7aSw9X3s9+ekMFjoSt5O6z5zbNruogj2ZJ47vk/drdI=;
 b=EKPcW4iBPC8PYxzEQdYvVFfEciolJUKqkhXZqUAPuf+EQN/YIb46Gp5r9kotBPe+B/el
 dZVLEq80GTQ1lTrdXPW8pMmiRNJ9VI3aTxbZLU3WbH1eXAoJaDpdutbmye4wgRZp7mDX
 40Yp0j8MWkvqx3G++CBD252jtDrei4x75/Yqs27BdPyaeKrOSFzQkcjnjR1Xe1oqSDba
 mPYaS/j31o4U4RmkyJsNSUKDpOf/TO8x2pQXYWiCEnqMoDPWxgELrMwpYtUVgwyWfm+Y
 VoS8ICQDf8uCRXFfY4VPOUcsr5sdMpFl6GRMbGEJE+NLBOMVU0gZNvcGzZ4RKyRoGWtR eg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2ue720t0ev-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 19 Aug 2019 09:40:55 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 70A003F;
 Mon, 19 Aug 2019 07:40:54 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5AB022C06DC;
 Mon, 19 Aug 2019 09:40:54 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE2.st.com
 (10.75.127.17) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 19 Aug
 2019 09:40:53 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Mon, 19 Aug 2019 09:40:53 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v6 2/4] media: stm32-dcmi: trace the supported
 fourcc/mbus_code
Thread-Topic: [PATCH v6 2/4] media: stm32-dcmi: trace the supported
 fourcc/mbus_code
Thread-Index: AQHVVAq68UiFQiNcNkmXdD8YMRgfcacB9FUAgAAA2oCAAAQPgA==
Date: Mon, 19 Aug 2019 07:40:53 +0000
Message-ID: <ceec05d1-5791-4ba6-e2a8-3a5fd8b89955@st.com>
References: <1565790533-10043-1-git-send-email-hugues.fruchet@st.com>
 <1565790533-10043-3-git-send-email-hugues.fruchet@st.com>
 <20190816081514.GU6133@paasikivi.fi.intel.com>
 <fb02573f-991a-18c5-b780-b5fc100da6a8@st.com>
 <20190819072621.GZ6133@paasikivi.fi.intel.com>
In-Reply-To: <20190819072621.GZ6133@paasikivi.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.49]
Content-ID: <3124090F81DAD34B8BD1CF42EC06E4A3@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-19_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_004102_997965_F86AC509 
X-CRM114-Status: GOOD (  22.18  )
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

OK, I will change.

Have you some other remarks on this serie in order that I group changes 
in the next version ?

On 8/19/19 9:26 AM, Sakari Ailus wrote:
> Hi Hugues,
> 
> On Mon, Aug 19, 2019 at 07:23:17AM +0000, Hugues FRUCHET wrote:
>> Hi Sakari,
>>
>> On 8/16/19 10:15 AM, Sakari Ailus wrote:
>>> Hi Hugues,
>>>
>>> On Wed, Aug 14, 2019 at 03:48:51PM +0200, Hugues Fruchet wrote:
>>>> Add a trace of the set of supported fourcc/mbus_code which
>>>> intersect between DCMI and source sub-device.
>>>>
>>>> Signed-off-by: Hugues Fruchet <hugues.fruchet@st.com>
>>>> ---
>>>>    drivers/media/platform/stm32/stm32-dcmi.c | 12 ++++++++++--
>>>>    1 file changed, 10 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/media/platform/stm32/stm32-dcmi.c b/drivers/media/platform/stm32/stm32-dcmi.c
>>>> index b462f71..18acecf 100644
>>>> --- a/drivers/media/platform/stm32/stm32-dcmi.c
>>>> +++ b/drivers/media/platform/stm32/stm32-dcmi.c
>>>> @@ -1447,12 +1447,20 @@ static int dcmi_formats_init(struct stm32_dcmi *dcmi)
>>>>    			/* Code supported, have we got this fourcc yet? */
>>>>    			for (j = 0; j < num_fmts; j++)
>>>>    				if (sd_fmts[j]->fourcc ==
>>>> -						dcmi_formats[i].fourcc)
>>>> +						dcmi_formats[i].fourcc) {
>>>>    					/* Already available */
>>>> +					dev_dbg(dcmi->dev, "Skipping fourcc/code: %4.4s/0x%x\n",
>>>> +						(char *)&sd_fmts[j]->fourcc,
>>>> +						mbus_code.code);
>>>>    					break;
>>>> -			if (j == num_fmts)
>>>> +				}
>>>> +			if (j == num_fmts) {
>>>>    				/* New */
>>>>    				sd_fmts[num_fmts++] = dcmi_formats + i;
>>>> +				dev_dbg(dcmi->dev, "Supported fourcc/code: %4.4s/0x%x\n",
>>>
>>> Over 80 characters per line.
>>>
>>
>> This an exception of the "80 chars" in order to be able to grep in
>> kernel messages:
>> https://www.kernel.org/doc/html/v4.10/process/coding-style.html
>> "However, never break user-visible strings such as printk messages,
>> because that breaks the ability to grep for them."
>>
>> This exception is managed in checkpatch.pl (--strict).
> 
> This exception is for cases where wrapping the line in the usual way, e.g.
> at argument boundaries, does not prevent it exceeding 80 characters. But it is
> not the case here.
> 

BR,
Hugues.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
