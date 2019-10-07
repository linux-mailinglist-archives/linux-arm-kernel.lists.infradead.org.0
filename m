Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D38CE4AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:07:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HeBpj8ukptfD4owtb7nWNf48IFwRt5CfjfUHZuNvjPM=; b=tJ1cLExySM43cZL/8ry7ec9fr
	i6j+SzOF43szKsU2S85Ep3K6qEYUGeVfEVc2y1HoQftFUcrGrMAJa5PNKuvHUa8hA3d/GG9rQ0cCs
	/Ff9Vf5pj8go41qZi1GTwBqiov9te7st7hHePauzFJE2Puax8cvSHD6yRRRVluJhr6vaXqZEyWd18
	KDFzsSVB457D82oi08U/3d1DNnjg4qZI4RQrUFyLWtbf8LN3kDGWWcaxb7Vz+XN0qHcN0H/DIweD9
	78Sm+/1ISMPnqNWagdrOw+gppz8z8OekPx9kHjel/2Ygg1RwjhS9mklvNJrj6OImT1GR7pYnWysBM
	hASJn6O5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHTfp-0002NA-4s; Mon, 07 Oct 2019 14:07:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHTfi-0002MS-En
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:07:36 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x97E65HN008406; Mon, 7 Oct 2019 16:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=dUDvGL9/tLfF861YG+N5fHoN3xp+ryFxh/p5hYpUGqw=;
 b=PpeUf25nys3+H52f/E1VXJDb7CXWsqs/XWjVWCryNs3MzJpmU6KdMvvhVDJxI4ZOfuuN
 UNcHlEUCG2mpktU9oHYswT4KSlxCtXaXLXj+I18GqfHeW8KY5gf6F6k+XCnMCm7/cUUe
 48kZPPa8C1fWRJoCFPBg85WzDR8Xd6FlCQxm10efBDbSU1cI+xRUXKur1tBV1nLuuL/l
 Y9N03z2bYQI0etZMy7dvMJLQDD6DGQ53ISavA0xaLNxmujbSbSE62uYDRSU7Yzr4qX5r
 XkW6TmBapXm787Jf0zfrqW8djEl/MN8rEeJioSUhUPkH57G8Eh+tTgjqAThapFjOYWXb KQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vegxvjpep-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 07 Oct 2019 16:07:19 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 92009100038;
 Mon,  7 Oct 2019 16:07:18 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 72D1B2C9064;
 Mon,  7 Oct 2019 16:07:18 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 7 Oct
 2019 16:07:17 +0200
Subject: Re: [PATCH 2/3] dt-bindings: net: adi: Fix yaml verification issue
To: Rob Herring <robh+dt@kernel.org>
References: <20191007102552.19808-1-alexandre.torgue@st.com>
 <20191007102552.19808-3-alexandre.torgue@st.com>
 <CAL_JsqKFUTwjJefQvQE5aFmeJButYSLKm0RSpCHjSL=7pQHtxQ@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <01041a6b-7c70-bebd-d04b-9e47ce238e5e@st.com>
Date: Mon, 7 Oct 2019 16:07:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKFUTwjJefQvQE5aFmeJButYSLKm0RSpCHjSL=7pQHtxQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-07_02:2019-10-07,2019-10-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_070734_973588_0237BE9B 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
 Alexandru Ardelean <alexaundru.ardelean@analog.com>,
 netdev <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob

On 10/7/19 3:56 PM, Rob Herring wrote:
> On Mon, Oct 7, 2019 at 5:26 AM Alexandre Torgue <alexandre.torgue@st.com> wrote:
>>
>> This commit fixes an issue seen during yaml check ("make dt_binding_check").
>> Each enum were not declared as uint32.
>>
>> "Documentation/devicetree/bindings/net/adi,adin.yaml:
>> properties:adi,rx-internal-delay-ps:
>> ..., 'enum': [1600, 1800, 2000, 2200, 2400], 'default': 2000}
>> is not valid under any of the given schemas"
> 
> You need to update dtschema. I fixed this in the meta-schema last
> week. Any property with a standard property unit suffix has a defined
> type already, so we don't need to define it again here.
> 
> I also added '-bits' to standard units.

Nice, I'm going to update my tools.

thanks
Alex

> 
> Rob
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
