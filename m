Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB69C8985A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDLJh2ILU65owk4ZMlnzQO6V3SXrydDrkM1rzL90VA0=; b=VcTzVgbZwnRwf8
	qSz5o96svhW7oA5pehzhuL++yPbVA+/6Tu7yKFXevfU7/qMiepo4nMeXR20SCkOL/h18HFiRrwE4Z
	/0nppcXKFtk5Pa4F1LbvleGK6xKoETJrD09GxhFFCjhiJjw918ihC23dFXmszM/1k4JrU9tLlcbl3
	J2tgvqjRGTrWAprbv+XpJ5x8fxIoIeS3D6pMtHPTrNUGZRScKTsmm3UWzJk2DZXgexUJf+/8S3A0r
	LF1DZJtBBkA1SLNIQMVR/7bqwycReqxg6S2UQ6UmbZpKErtOLQRYr4b5KaVHLZ1sHNvFYSDMIeTQ+
	sN5DARHcAzEo3vyuqHww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx5BF-0007D3-Ez; Mon, 12 Aug 2019 07:55:49 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx5Ai-0007CI-IJ
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:55:18 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7C7pJws019345; Mon, 12 Aug 2019 09:55:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=K4f2t1Y5I/EziBGPEJ+ljv/yOyY+PHAdMeuhhuVCD0A=;
 b=ueE8QJvJ5XEt07B7hhwIm9PHXk8vr9MMQx57+IV19RtrYnKCgN2NH2NndaUKX9AhuEXf
 kdpIHS1q2gg7KQFcH5AlSnETBmFxMtNRZ1hYT6DBMPYQjsFLt5SHmtVW740XB8rlNuyi
 V1gsoTXk6RY+epahTtKdy3KZ09zx71p4tzYmpaWG7N5m1EK5lH2nKpWvKK1cbx7/Rjoo
 QCm1wsT5q+wFGgpmWpEuYAlbijeqf0s/xGFcBtsotZw4++HsQiPZ5A6xLXWfuj/ameX3
 ceADR+LDgFwhHiJOBFYkr5FX8e8lUdTAYBch3xSIo7VYGs6E3TyAL80orPKf4BMnmF0W lQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2u9kpuhmue-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 12 Aug 2019 09:55:05 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1D80031;
 Mon, 12 Aug 2019 07:55:05 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E99412C1097;
 Mon, 12 Aug 2019 09:55:04 +0200 (CEST)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 12 Aug
 2019 09:55:04 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1473.003; Mon, 12 Aug 2019 09:55:04 +0200
From: Hugues FRUCHET <hugues.fruchet@st.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v4 1/3] media: stm32-dcmi: improve sensor subdev naming
Thread-Topic: [PATCH v4 1/3] media: stm32-dcmi: improve sensor subdev naming
Thread-Index: AQHVTsvbNiH8ciXV5ESmNTxaXVzk1ab3B2CA
Date: Mon, 12 Aug 2019 07:55:04 +0000
Message-ID: <0deb258d-bb11-15ee-0beb-8355cfd3782b@st.com>
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
Content-ID: <C5F0FC3B1E518747BF9EB47BB034675C@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-12_04:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_005517_097525_F83BE2A0 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Sorry for inconvenience, I will push a V5 with that fixed.

May I put your "Acked-by" also on the 2 other commits ? Or just this one ?

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

Best regards,
Hugues.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
