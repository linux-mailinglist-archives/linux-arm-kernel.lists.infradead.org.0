Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C25E29804
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+3Xs1LdiNdeedOU2Dj+1J1MKGa5SwprKp467a+abfiw=; b=UzPq5wU7yHkiuP1GWYIYFjP7V
	nKuCItWJgplqwBgoijZ9kL6vhcAFbQCQdLQsyzgn9DZRXaZd337l5zodJ/WjgoNjDaW8YYZfi2adG
	ZJiZtLszS6KkQxevQraQrjDm0vjrUVxVIUEiFm+tNF1NhzlrO8XCUw/gA6XUJuq6GaJBtMPvblGa5
	aZ4kIMG0yGZmHYEAnvMqiDyGjYbngAprShsqA6L1kAiOk3Vc3OGyZCUY3HNGMO9vthhwFTsCF9ACF
	xR/Tutjf54NMztlTzRO9vtZ8zHAWWzrv57zcWVc/RQYELlFaxFe4MrxpSZpRqM23fSqVsQRgWGaN5
	z+7WiXZHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9Ia-0000jg-99; Fri, 24 May 2019 12:27:48 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9IR-0000j5-V4
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:27:41 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4OCJ95L021182; Fri, 24 May 2019 14:27:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=MdpIdUdNGJR6m4iESQ3gTxnReITFgYYhJ/kDykj9tog=;
 b=I9t2r1VA8l2a7kr7zIZnBibwo+QjBbH1wDc+jwQ5/0t0RfGUSDAkjkMiQ8p1JNJQ5X42
 peFlxwVSZ00L4hJmPpGv45mLkjtXnMEGnHq4Pojwux83AKCe5AWsOjLLXKq+Vcn+8jD9
 3FkCwXGEsI8GQEfqyslfRbUEhBtuvVoYEhz0wvDEcT1nvjDN8kHvHqdqNkjkGLawOQnG
 p9WNLO7Tb+5UezMvRsI1ttZhyrFa7vHzHgVL5DzJHgeBXAcekRr/cC5QRwNqQWVDANDk
 q3UWWniN8o3t1SpLuQmgu24AVcILsESj0IecZphlm2Gva2+Ly5vC72Wkq/7m4lHP43qH 7A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sj774nn1r-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 24 May 2019 14:27:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E567038;
 Fri, 24 May 2019 12:27:36 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CD1912BCE;
 Fri, 24 May 2019 12:27:36 +0000 (GMT)
Received: from [10.48.0.204] (10.75.127.50) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 May
 2019 14:27:36 +0200
Subject: Re: [PATCH] pinctrl: stm32: add lock mechanism for irqmux selection
To: Linus Walleij <linus.walleij@linaro.org>
References: <1557474183-19719-1-git-send-email-alexandre.torgue@st.com>
 <CACRpkdZ4P=PSCu86p48nBPeVk-h5T0Ytc1CYV3XZGd4fLuJLGw@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <ae00fd9c-d25e-c401-4d21-d526a63538f2@st.com>
Date: Fri, 24 May 2019 14:27:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACRpkdZ4P=PSCu86p48nBPeVk-h5T0Ytc1CYV3XZGd4fLuJLGw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-24_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_052740_281779_F0228A8B 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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



On 5/24/19 1:26 PM, Linus Walleij wrote:
> On Fri, May 10, 2019 at 9:43 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
> 
>> GPIOs are split between several banks (A, B, ...) and each bank can have
>> up to 16 lines. Those GPIOs could be used as interrupt lines thanks to
>> exti lines. As there are only 16 exti lines, a mux is used to select which
>> gpio line is connected to which exti line. Mapping is done as follow:
>>
>> -A0, B0, C0.. -->exti_line_0 (X0 selected by mux_0)
>> -A1, B1, C1.. -->exti_line_1 (X1 selected by mux_1)
>> ...
>>
>> This patch adds a protection to avoid overriding on mux_n for exti_line_n.
>>
>> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 
> Patch applied, can't say I fully understand it but you know what
> you're doing!

Thanks :). Do you need a better explanation ?

> 
> Yours,
> Linus Walleij
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
