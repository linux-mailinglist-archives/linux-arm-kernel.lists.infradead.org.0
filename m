Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B8719A8DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 11:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zFjj3kC4OQtAfrVHva/+dQutsqoHoP9Z5bjVgoClzAg=; b=D0ha+bFNiULqa9sjYwvuC1c+Q
	epvIYZPkvczd2G3cjj2sicRSoQpiQ4JxB1koPrwTAQz4DoyJKU7QZCVZK3t50sL6iF/9Owk2mhrwJ
	MFTrILMcyTRuDF6bFnjBnHJkiBf5kk2tVYTBzHtXSdm1CH0PjcE5nAS55ErWmKqUQ4spfqyzlWDuB
	6OL2U+8YHRNi+/aNrqtIrZjg+mjUE3MWtTkETPgYIQDMdPjZf3IKiDNu+0DUYwySp3uchdn19lvGu
	0jm1PjATwi18JvbVo77bCHXLZmg49gClxbQ4uD4Evkt/3KbHgcWAiwjnci1L0QP5gSb0eQJOXa18i
	3m2hci1MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJa05-00035k-2P; Wed, 01 Apr 2020 09:49:33 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJZzy-00035G-QX
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 09:49:28 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0319mro0030891; Wed, 1 Apr 2020 11:49:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=OxCsrs2Z8qSU8tHehwSe7HoIcLyBN+97Ma4z/koHBpE=;
 b=eZuZ711drjOuybzFjIgHBZxOpy1+oiZZWsV08Kw97SXpl5T1y59RSAP0rXaRynfTDo6C
 MCixDvNSB203SM5+C3lUR/DqYpop6a1B2C7yt1QZuk2TD9LA51YpLUIrH1+m8mQypUD0
 TzzKCJ3rrOdG6AUrFalKNwnxx1nV1ZRkIdJtF9eToz6JI7oGow8THwu8uX+K4I15L0zC
 vmpbdbdYIch0ctS1W+Slom3NME3ialPrLpoG0nVyOOkx9e8B6iT9uIO44VGctA+5Jb9U
 R6V/PfrNlz3SHTXQEIneeotGFHrrx/kJrWMODGOZdtXG/BuXJbJIxDXE/AuUMPPSsthV kA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 301xbmmapq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 11:49:20 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 142F9100034;
 Wed,  1 Apr 2020 11:49:20 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 05D5821F684;
 Wed,  1 Apr 2020 11:49:20 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 1 Apr
 2020 11:49:16 +0200
Subject: Re: [Linux-stm32] [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux
 for SDMMC2 pins 4-7
To: Marek Vasut <marex@denx.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200328171144.51888-1-marex@denx.de>
 <20200328171144.51888-8-marex@denx.de>
 <0fb89d25-feb0-2eb0-9e83-d7f8c76f8b9e@st.com>
 <82dcf412-119b-0de2-0c50-f6877a82a812@pengutronix.de>
 <fcf49298-a36c-e80e-e62b-1fb9c07f0d6e@denx.de>
 <310aa3a3-09ce-42ef-d1ea-b653163d1d72@pengutronix.de>
 <97d13a84-8220-aa7f-3ee6-df474cca3882@denx.de>
 <43e88a1b-f3e4-df1d-38a6-0bb281a2f786@st.com>
 <871a5cc2-615d-b9e5-0eed-9a5a38be4f6c@denx.de>
 <69bce6d4-129e-b9ea-8fa6-f33d9047e3c3@st.com>
 <9fb131ad-552e-61ad-75c2-5ebec501f356@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <9ec743e5-5141-017b-eb11-4986c0ab4af8@st.com>
Date: Wed, 1 Apr 2020 11:49:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9fb131ad-552e-61ad-75c2-5ebec501f356@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-03-31_07:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_024927_335048_A2E5611C 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/31/20 6:44 PM, Marek Vasut wrote:
> On 3/31/20 6:39 PM, Alexandre Torgue wrote:
> 
> Hi,
> 
> [...]
> 
>>>> I agree, and I prefer to keep pins groups definition in
>>>> stm32mp15-pinctrl.dtsi file. IMO, it is easier for users to find them in
>>>> only one file. Actually, I already had this discussions with some guys
>>>> "where pins groups have to be defined ?". For me (and maybe only for
>>>> me), muxing is SOC dependent, I mean SoC provides a bunch a possible
>>>> pinmux for each IPs. If we got enough memory spaces (and time to waste
>>>> also) we could define all possible pinmux (AFx....) for each devices and
>>>> let board users chose the good one (using stm32mp15-pictrl.dtsi as a
>>>> database). In board file, you select one possible pin configuration
>>>> (provided by the SoC) for your device according to your schematic.
>>>> However you could append pin groups in board file to update bias,
>>>> slewrate ...
>>>> If your concern it to embed a bunch of not used pin configuration for a
>>>> board, we could use /omit-if-no-ref/ tag on pin groups.
>>>
>>> Can we instead define pinmux the way e.g. iMX6 does , as separate pins ,
>>> instead of pinmux groups ?
>>>
>>
>> Sorry but what would the advantage to do so ?
> 
> You'd have per-board pinmux which would be perfect fit for that board,
> without potentially affecting other boards with changes, without hacking
> various things like drive-strengths in board files, and without having
> the combinatorial explosion of the current single pinmux file.
> 

It is something that we could analysis. Let's follow the way we 
currently use. I'll let u know, when I have a better view on your 
proposition.

thanks
alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
