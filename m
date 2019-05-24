Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C68297FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m/Cs8Ov55+gPjN7YT+1DVqbxxTufUuRaI3ootpd+9ew=; b=nD1W0Za6HDpdrGw13uWQLjq4S
	3s3MK/l3iitCslYGLPtwd3/FZu6+bgE/UE2Iy+dGwh4l/RZ0gIicin+0YrqRmqwXQ9/I3HWyQbvZK
	+GBjUGBGpZeumaPoFE+WI4z+RbPyA1rkvStcBvXP+txTL5jBWZj4CX7SSl/bfvlRHIDLBl1m1Pvz+
	3coN1cT6xDuMpS9K+w0xs4+bbY3pbPArgmUvYZLxZg5umKzPtQPe4lgeB6ECobnwPhWXQ3FIPmc0A
	MjqSxxCtFLH6htCKgwzjySQmfK0Wad++K92ucn4zB1F72s1jvKYxj8MZKgbVkLoIprVuDnQiNgAkJ
	Ywe3+kGUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9HO-0000LN-76; Fri, 24 May 2019 12:26:34 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9HG-0000Kw-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:26:28 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4OCJ6Hq021165; Fri, 24 May 2019 14:26:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=MRkkLHdMQA+fa243SgLqmgSMuMqZksxq6zRTMMLwqTI=;
 b=UBkDOjp+86RcHTz7CrpA0k7LNC39DmwaTk3HVvoWoQGecrJtUjcvL29dWEKfb/b/sJgW
 qXPr18nlCniLI3rhEv4fCjUGz/9rNmlf6HeEwh3gEwxrNcSSJVcSSueBDcH1JVgmmFCT
 VWhdz34tvJpQLziQRDBJXlzWz3Q7g0D5ZMbAhL9v3MVnqAdC/IBzGyHRO/hoJmYsmO9b
 pgsVSILuEZvytnIPiBXjxUhdLNqkUxIxxkyLJLNcvbaPB7+U9nHiZKgwLf43Ialw9uJP
 QeOUiNJBLqyWdvOfSzReKN7Hsgd/oo9z9p4262dpW1KPVXLUSsAiRoaOHxGAJtJuCOlK BA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj774nmu5-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 24 May 2019 14:26:21 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23DA034;
 Fri, 24 May 2019 12:26:21 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EEDDD2BCC;
 Fri, 24 May 2019 12:26:20 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 May
 2019 14:26:20 +0200
Subject: Re: [PATCH 0/2] pinctrl: stm32: add suspend/resume management
To: Linus Walleij <linus.walleij@linaro.org>, Benjamin Gaignard
 <benjamin.gaignard@st.com>
References: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
 <CACRpkdYgTbTa6RmM3y-myk31ZxLGZ+8KvLof1XHkockrX4tofA@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <4a35e070-b18a-e0f5-76b6-72054eb98b43@st.com>
Date: Fri, 24 May 2019 14:26:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdYgTbTa6RmM3y-myk31ZxLGZ+8KvLof1XHkockrX4tofA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-24_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_052627_482103_82D44F07 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, "open
 list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/24/19 1:24 PM, Linus Walleij wrote:
> On Fri, May 10, 2019 at 9:42 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
> 
>> During power sequence, GPIO hardware registers could be lost if the power
>> supply is switched off. Each device using pinctrl API is in charge of
>> managing pins during suspend/resume sequences. But for pins used as gpio or
>> irq stm32 pinctrl driver has to save the hardware configuration.
>> Each register will be saved at runtime and restored during resume sequence.
> 
> Both patches applied.
> 
> On the same pinctrl devel branch is also Benjamin's patches to support
> the "link_consumers" property on the pin controller descriptor to
> enable links from pin control consumers back to their pin controller
> suppliers, especially important for STMFX.
> 
> Would you please check if it work fine if you turn on this feature
> for the SoC STM32 pin controller?
> 

Sure. Either today or next Monday.

I let you know.

regards
Alex

> I am working a bit on refining the patches, so I want to enable testing
> with some SoC pin controllers as well and possibly make the
> behavior default.
> 
> Yours,
> Linus Walleij
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
