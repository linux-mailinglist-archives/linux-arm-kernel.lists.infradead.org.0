Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C83A9EC66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:23:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0li3nCtiQ/85M2rH6mMXZrBnk33nayTSZQ8zwWNEeJ4=; b=b91Xj7F6vtXn/ViEp9wXhGxJh
	om95Rs7l+AswfsxFKsYJaFVBIecHWaeoANfjtVb1kqQCUooASKNWwv5YWBb/mIJGstPCLKjGD1pa5
	mD5TUZRx5Xo+HpnDD98EGG5Q50hPq9KEsJjpk/+/8DrlpvhOc5MgOwqDNTytbApGIOpSB9qSEquMa
	KcIhxl9mdcFyfNNb794MUpLblM+0RvdjxeU4V4WHagVpaOdz+fbpsJNAFTGnVP9lPDbVFNHlGXX3y
	ytn9zIuZspgmN/CI4/bDMfWrfplXzBz3+zWuQHQ4T+UbL7kRuYzodcMPS96bJ22MxqaU0Qmc0OM4a
	2XauS2qAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dK2-00005W-Fy; Tue, 27 Aug 2019 15:23:50 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dJu-0008W5-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:23:43 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7RFLUt5007886; Tue, 27 Aug 2019 17:23:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=SMKi/mX7zvq/yrjJa5DU8JTV4hHp8R0QThyzkk9s3nA=;
 b=VbqIUTEVJwBhsOXMzWDDM0WvEpGE8M1Fpzxc2dYPMy6ExSX4mLoDAaBLGp0xoV3psUrN
 mrc3zFMXTWIe16z1EzNMiMSfbFZy7ftoqLjmFYBILsTiBut8g6JZQd5nEI98DH322Wln
 ASDN4IZp3FXfucqYou5miezHC83yJBffg2S5FNlcIPC+HGTat3x7bXkz7KJgtCJ+aBGI
 VmJ/Iloca7rnS74AbeTEj9+CiJosfGB28SXarYrcEHbXI/W8pmIhK9hTQd83Y8HhjuMO
 grAuIuqZ2Mwmgsu4JYZvPXmKNXB4OZtpVs2GtNYceuB59H8KhZJ8NoMxsvftLAo9WGkC 6w== 
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
 by mx08-00178001.pphosted.com with ESMTP id 2ujtcbjk3r-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 27 Aug 2019 17:23:36 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 768AE24;
 Tue, 27 Aug 2019 15:23:32 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A90C72AC1B6;
 Tue, 27 Aug 2019 17:23:31 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 27 Aug
 2019 17:23:31 +0200
Subject: Re: [PATCH] Documentation: add link to stm32mp157 docs
To: Jonathan Corbet <corbet@lwn.net>, Gerald BAEZA <gerald.baeza@st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
 <20190827074825.64a28e88@lwn.net>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
Date: Tue, 27 Aug 2019 17:23:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827074825.64a28e88@lwn.net>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-27_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_082342_378482_D0463207 
X-CRM114-Status: GOOD (  16.84  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

On 8/27/19 3:48 PM, Jonathan Corbet wrote:
> On Tue, 27 Aug 2019 12:19:32 +0000
> Gerald BAEZA <gerald.baeza@st.com> wrote:
> 
>> Link to the online stm32mp157 documentation added
>> in the overview.
>>
>> Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
>> ---
>>   Documentation/arm/stm32/stm32mp157-overview.rst | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/Documentation/arm/stm32/stm32mp157-overview.rst b/Documentation/arm/stm32/stm32mp157-overview.rst
>> index f62fdc8..8d5a476 100644
>> --- a/Documentation/arm/stm32/stm32mp157-overview.rst
>> +++ b/Documentation/arm/stm32/stm32mp157-overview.rst
>> @@ -14,6 +14,12 @@ It features:
>>   - Standard connectivity, widely inherited from the STM32 MCU family
>>   - Comprehensive security support
>>   
>> +Resources
>> +---------
>> +
>> +Datasheet and reference manual are publicly available on ST website:
>> +.. _STM32MP157: https://www.st.com/en/microcontrollers-microprocessors/stm32mp157.html
>> +
> 
> Adding the URL is a fine idea.  But you don't need the extra syntax to
> create a link if you're not going to actually make a link out of it.  So
> I'd take the ".. _STM32MP157:" part out and life will be good.
> 

We also did it for older stm32 product. Idea was to not have the "full" 
address but just a shortcut of the link when html file is read. It maybe 
makes no sens ? (if yes we will have to update older stm32 overview :))

thanks
Alex


> Thanks,
> 
> jon
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
