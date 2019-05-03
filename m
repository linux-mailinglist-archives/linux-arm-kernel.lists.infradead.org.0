Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7381295D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UFzx1u5v/vf8Ly4poHZztgzdffoWwdsUqVsn5HExxBE=; b=FicbJyVUKdoxZM1ZDAbbbKCPI
	uVrksU0p8mBUZbF2JeczRfd9RKpqXxCEHbx5igEJRcWnxLyrLNYFFtv+iQLnBE+4aW1PahJ8LIQSS
	QjYdFjRXkb1EKO02SWcZgmtTn1dMOidlXqQ+/h67stzdVtm4AHt6V+iMKdUSqOE41UZOxoFJ62DKw
	NnJK7uJREK+rVucn5aMUJCRl21D5kvdqIB1uPyPLJikx8VCRNhqY4XXmF46oByQVhtL9figuibOKL
	YuTixjoEQdUYWbtBwkAn7xlOIlceyhSitIgfeVRy9egAKFnhrPGKW12Z3wOXxMEc6L1fJlTEcH8gf
	b4ZrDUfzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMT5j-0001pX-A7; Fri, 03 May 2019 07:58:47 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMT5b-0001p2-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:58:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x437wN7I012786; Fri, 3 May 2019 09:58:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=t609rofuUjW2NaRBXFT3b4myx0XAd7PIRxpvzFY38QQ=;
 b=DVHzpus37rY9JnLDJSXa/PljnopKkvOOCeWw6Quita8INxNmef1CzUgFEqXWnlT3uiis
 CB93ldPnYWNUARNN5GQnw8QEwTHKUcpR7HEqpx2jbC9W8VR7WddSEVW8ogweLzgqxu5F
 KKM7sAlBEvByGX0cJz2fRssR7ydbq+iPz1hvCzbRrsk4Bj7fv7gpk6FOJjMdZS5CxW4c
 dLxVQOxaSCo+5kbKP0J0g9NUXDN4IZCT3oqiAU4RDATlsSinClsIravJHEi6kNShKnHt
 Q8rZ9p7FrN95/uEdTSbnyu+DjIv/x6e7dufFvkRupdP4TumB5nNXoEoairloIAV6OhXi Ng== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xhbn0v7-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 03 May 2019 09:58:34 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3810231;
 Fri,  3 May 2019 07:58:33 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0BD3D142E;
 Fri,  3 May 2019 07:58:33 +0000 (GMT)
Received: from [10.48.0.237] (10.75.127.47) by SFHDAG6NODE1.st.com
 (10.75.127.16) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 3 May
 2019 09:58:32 +0200
Subject: Re: [PATCH V2 1/3] watchdog: stm32: update to
 devm_watchdog_register_device
To: Guenter Roeck <linux@roeck-us.net>
References: <1556806126-15890-1-git-send-email-ludovic.Barre@st.com>
 <1556806126-15890-2-git-send-email-ludovic.Barre@st.com>
 <20190502202122.GA27894@roeck-us.net>
From: Ludovic BARRE <ludovic.barre@st.com>
Message-ID: <f649441e-b3fe-134d-9dea-ac7140fb2d9d@st.com>
Date: Fri, 3 May 2019 09:58:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502202122.GA27894@roeck-us.net>
Content-Language: en-US
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG2NODE2.st.com (10.75.127.5) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-03_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_005840_379260_2C79F191 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hi Guenter

On 5/2/19 10:21 PM, Guenter Roeck wrote:
> On Thu, May 02, 2019 at 04:08:44PM +0200, Ludovic Barre wrote:
>> From: Ludovic Barre <ludovic.barre@st.com>
>>
>> This patch updates to devm_watchdog_register_device interface
>>
> Not that easy. See below.
> 
> A more complete solution is at
> https://patchwork.kernel.org/patch/10894355
> 
> I have a total of three patches for this driver pending for
> the next kernel release. Maybe it would make sense to (re-)
> start this series from there after the next commit window
> closes.
> 

I used the repository defined in MAINTAINERS file
git://www.linux-watchdog.org/linux-watchdog.git
but there is no next branch.

Today, I see your kernel.org repository
https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/

And I see your next branch, so I will use it.

Regards,
Ludo

> Guenter
> 
>> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
>> ---
>>   drivers/watchdog/stm32_iwdg.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
>> index e00e3b3..e191bd8 100644
>> --- a/drivers/watchdog/stm32_iwdg.c
>> +++ b/drivers/watchdog/stm32_iwdg.c
>> @@ -243,7 +243,7 @@ static int stm32_iwdg_probe(struct platform_device *pdev)
>>   		dev_warn(&pdev->dev,
>>   			 "unable to set timeout value, using default\n");
>>   
>> -	ret = watchdog_register_device(wdd);
>> +	ret = devm_watchdog_register_device(&pdev->dev, wdd);
>>   	if (ret) {
>>   		dev_err(&pdev->dev, "failed to register watchdog device\n");
>>   		goto err;
>> @@ -263,7 +263,6 @@ static int stm32_iwdg_remove(struct platform_device *pdev)
>>   {
>>   	struct stm32_iwdg *wdt = platform_get_drvdata(pdev);
>>   
>> -	watchdog_unregister_device(&wdt->wdd);
>>   	clk_disable_unprepare(wdt->clk_lsi);
>>   	clk_disable_unprepare(wdt->clk_pclk);
> 
> This disables the clock while the watchdog is still registered
> and running. That is not a good idea.
> 
>>   
>> -- 
>> 2.7.4
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
