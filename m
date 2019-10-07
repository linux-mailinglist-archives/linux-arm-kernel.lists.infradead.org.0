Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EC1CE4B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b0txxZND7dsOub6HHRqis1IdRgPyeAF1/X1eQrI9PuQ=; b=F3nGWU9AbXP1ox34UeAMqfpGP
	NKrUR0DKZc/n2S+c4dXtfpglTNk+UgWwUktKDIBGLWvT2MmhV5ldqNF12ZGpl5r11hzH64fwqbEsa
	Ib8pvoyrXPpIzis0sQeEFl8eKVrjcK8hWN/oiC8uaLPGboI7cqbmliOyeCBBZLrtqlOdda/jN+vkg
	s9AVybvlee9EANDULvTBMoNXwGOvQFmErRnlymIme+dDI4aJjktgJgeExXFCRBAXpx9vjmUD1ZC8U
	5hlM2mIj4TmR9epyeG5x5HybS/sqgGL7tutVVT3u1QdhCX/YMw0NZ81Ok6JiBL9bHSEVhRCWXBaq2
	cdU/0/a+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTgv-0002jQ-A4; Mon, 07 Oct 2019 14:08:49 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTgn-0002iy-2Z
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:08:42 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97E5xiV002187; Mon, 7 Oct 2019 16:08:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=klXRWCSbmhcmHuPY/bDJHkMbLakbKnFtshdjqE+GnyY=;
 b=Mz/2iiOKhwLjeTp22Jq2dcTNxXiDYGyuJ6/IuMGfwVty8fF90AZtnozG5MQXzNppkdj3
 9j6lmhAu8osbLVGPajspUCDLwnY+GbA6oTywYf7dlwght0s7Gq6a3uGC7uqL64n/1Z9D
 6VnqBvVk3Y9l35C8Y72/pzIW1HrcZjwKFAVqEyYS9jKMZU/c5OJjZX3TEMl8FNgSTaYt
 83dCXJ2+6nFBDkmdBOVmTZ4EV778ldK5fVbEagbvaoYktgpONT3Q7CnBtsMRxSplaAOT
 /fAM6OCeS+TCh0FV+qKVOdiZNSpZ6iXWfc6WnvuT4099f0xURv255Q75BHcys5MFwJzV oQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vegagu49g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:08:29 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 040B1100034;
 Mon,  7 Oct 2019 16:08:29 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E9DD02B1E5F;
 Mon,  7 Oct 2019 16:08:28 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.48) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct
 2019 16:08:28 +0200
Subject: Re: [PATCH 1/3] dt-bindings: media: Fix id path for sun4i-a10-csi
To: Maxime Ripard <mripard@kernel.org>
References: <20191007102552.19808-1-alexandre.torgue@st.com>
 <20191007102552.19808-2-alexandre.torgue@st.com>
 <20191007110040.2mt5uxroos3hz6ic@gilmour>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <3d01e1b5-95ff-f4bd-f57a-a809054e0ba1@st.com>
Date: Mon, 7 Oct 2019 16:08:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191007110040.2mt5uxroos3hz6ic@gilmour>
Content-Language: en-US
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_070841_414447_CD23B034 
X-CRM114-Status: GOOD (  15.23  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandru Ardelean <alexaundru.ardelean@analog.com>, netdev@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/7/19 1:00 PM, Maxime Ripard wrote:
> Hi Alexandre,
> 
> On Mon, Oct 07, 2019 at 12:25:50PM +0200, Alexandre Torgue wrote:
>> This commit fixes id path of allwinner,sun4i-a10-csi.yaml location.
>>
>> Fixes: c5e8f4ccd775 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 
> I just merged a patch addressing the same issue earlier today.
> 

Ok. Thanks Maxime.

Regards
Alex

> Thanks!
> Maxime
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
