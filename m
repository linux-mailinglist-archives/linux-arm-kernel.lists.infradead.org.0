Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA87EE4792
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:42:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VJscRmuIDGCR+O5pjhu6vdLeDppMmDXFfO/x2PZlKxU=; b=sIL3EiavX3YOYIMsJ5DIL1049
	mW/gb8R0myspylnqzA0x0uMDIVBmfjn9NO3oyyZEHf90XlG1swGEFwm/AFpK1gmbW5NrGtCqsGfx0
	oyt1UbTlSag3+Ppc+Fy71JVUNDnURPzo9c3sxdJiPCKxUCa1o3ZokTv8Famqx0Bea2nvJxDJesx2/
	8sxLytlSGfPi7Cbgoh38F2L3NiaQBOxF76LvEoUMOZvSLzlyISYNLDZAK0P/tZOA+dg5fu/LKOFtH
	YR4jiBaAFoHUkfRgNUg3wPLE+BpgGisdTuSxYkcRh3c8khKCgJ7YNWFYcvJOmQDVZcMC/gKFajZyi
	pyeMoUdoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNw75-0008O0-18; Fri, 25 Oct 2019 09:42:31 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNw6o-0008NE-0y
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:42:15 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9P9fFW7024039; Fri, 25 Oct 2019 11:42:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=RPoKrF7AEx817/OL2i41RS5qsNRlWR+xIJ3AH01ejFY=;
 b=pfsPbadakRJV5PyG6pRbA2K2NermqenA9qN6oXX6bptKViweoSp/VjN+QV081EWnRw6w
 Jte0Y9xn3Dknfl062yqM7DvVN4bDr2/XsNVvrsOxG8d2isoCPNjp9A4uVJiKPgNqoz8h
 ZgRqSBFeqZevTD8M/Ps0UldPO52xFlhSsYjaZfVTMmzjjOi4yjgab8kXUXy02iZpM2Bw
 26LKNZt8C7sRrnBTowaJB61uX5yWWShLTGFHHJ0QS/pgK/s9RXwuzRURzbb0M6I59WCL
 UKMgI4cHN/7ccJupJ4qTOEvgPrikqw4dD4V25yabvrZ9kKXPIxARYgdmYgIAHwfwoa0Q tQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vt9s4exhj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 11:42:08 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 74850100039;
 Fri, 25 Oct 2019 11:42:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 65A392BF6A3;
 Fri, 25 Oct 2019 11:42:06 +0200 (CEST)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct
 2019 11:42:05 +0200
Subject: Re: [PATCH] Documentation: add link to stm32mp157 docs
To: Jonathan Corbet <corbet@lwn.net>, Gerald BAEZA <gerald.baeza@st.com>
References: <1566908347-92201-1-git-send-email-gerald.baeza@st.com>
 <20190827074825.64a28e88@lwn.net>
 <5257eff7-418b-8e94-1ced-30718dd3f5dc@st.com>
 <8d097a0486e94257952600bf6d20975d@SFHDAG5NODE1.st.com>
 <20191007093208.757554b0@lwn.net>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <433bfc27-14cd-cf19-8460-7fd5230aaa55@st.com>
Date: Fri, 25 Oct 2019 11:42:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191007093208.757554b0@lwn.net>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_05:2019-10-23,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_024214_545552_13EC67E2 
X-CRM114-Status: GOOD (  19.44  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Jonathan

On 10/7/19 5:32 PM, Jonathan Corbet wrote:
> On Thu, 3 Oct 2019 10:05:46 +0000
> Gerald BAEZA <gerald.baeza@st.com> wrote:
> 
>>>> Adding the URL is a fine idea.  But you don't need the extra syntax to
>>>> create a link if you're not going to actually make a link out of it.
>>>> So I'd take the ".. _STM32MP157:" part out and life will be good.
>>>>   
>>>
>>> We also did it for older stm32 product. Idea was to not have the "full"
>>> address but just a shortcut of the link when html file is read. It maybe makes
>>> no sens ? (if yes we will have to update older stm32 overview :))
>>
>> Example in https://www.kernel.org/doc/html/latest/arm/stm32/stm32h743-overview.html
>>
>> Do you agree to continue like this ?
> 
> If you actually use the reference then it's OK, I guess; in the posted
> document that wasn't happening.  I still think it might be a bit more
> straightforward to just put the URL; that will make the plain-text file a
> little more readable.  In the end, though, it's up to you, go with
> whichever you prefer.
> 

Do you take this patch or do I have to add it in my STM32 pull request ?

Thanks in advance
Alex


> Thanks,
> 
> jon
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
