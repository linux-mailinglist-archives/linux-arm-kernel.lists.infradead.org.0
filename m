Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35ED74D1DD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:18:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4sQn/0CNkUmftIlox+ocLJyVjl66RZ8SkbAli//dOg=; b=OjG0a6g14FjCPY
	TohtY7NC2k9u/HJaQXUihd8hso2dOvHC6fi7xfnhzhRROCznNaj7I8cunfkdNx2tHVXEOTkvzqIle
	dxcOvtTXO/OxM0AsfGKHY78XLRphQfx6Z8sH/aJt61G/u9y6FF/gOaL54d6AL93JEMObhUY82/Vze
	b3kjHYj9H/W+MYAVCnvgkOxnVqjJSoUzL/oQuK+j7I3+x+dkxBtbfd00jOs0Ly2p3fcEi3cj0VFsm
	USVpsS1xNTW9rmZ7B+bRAGmxlzpOgYMh/FAaYj0qfDh53m8Q9OilY27RfoPirq67L8xT42ttPNTCI
	iLksoiCy6WmkfqZ0k6ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdypZ-0006gQ-5J; Thu, 20 Jun 2019 15:18:29 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdypM-0006fv-SE
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:18:18 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5KFHhOE011982; Thu, 20 Jun 2019 17:18:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=3awahpLzjIg/zQ8bAq/yq4u/Eajukl1uJeabfahZE1k=;
 b=QE4URSfxjpHaljx4dsJHe7OiqHVN6fRUApZ7Yc2CHBNzWUJ0sELxztHUhoNWPWJA9H+p
 7bAVnFzPrpkMJ3zKoP/vmqvYoJ4dvQ5bE4U89jwhIRfnJy0I9BTc5ljcBwXAxVp35OOo
 etfmfe+F7NIo7hFUzjXFv7uPJfEX03p44gkNNV77syS3TtMiB5Q7hP6BEzSII79JKmfW
 WrkyoyNiAjxyV8RxFpUuCChqDuS3ZJjIL6C3PNr2uosibu4XfNu9UMTZJo7+S7utW3W5
 RegGBa6tbYoq9e3OhzSxlmX92P8iXb18fHvUVSYGxZCyFtNmyGYvv9XKNGyLWikcjlPp lA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2t78132f08-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 20 Jun 2019 17:18:05 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EC41831;
 Thu, 20 Jun 2019 15:18:03 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C8FE02C8C;
 Thu, 20 Jun 2019 15:18:03 +0000 (GMT)
Received: from SFHDAG3NODE2.st.com (10.75.127.8) by SFHDAG3NODE3.st.com
 (10.75.127.9) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 20 Jun
 2019 17:18:03 +0200
Received: from SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96]) by
 SFHDAG3NODE2.st.com ([fe80::b82f:1ce:8854:5b96%20]) with mapi id
 15.00.1347.000; Thu, 20 Jun 2019 17:18:03 +0200
From: Amelie DELAUNAY <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Linus Torvalds
 <torvalds@linux-foundation.org>
Subject: Re: [PATCH] mfd: stmfx: Fix an endian bug in stmfx_irq_handler()
Thread-Topic: [PATCH] mfd: stmfx: Fix an endian bug in stmfx_irq_handler()
Thread-Index: AQHVJT/EzC9etQZAeEm7fd3OYhvByKag8E+AgADT/ICAAJenAIACLrsA
Date: Thu, 20 Jun 2019 15:18:03 +0000
Message-ID: <f0ff1e54-c1b9-4a08-c7ff-2ff545e398c3@st.com>
References: <CAHk-=wgTL5sYCGxX8+xQqyBRWRUE05GAdL58+UTG8bYwjFxMkw@mail.gmail.com>
 <20190617190605.GA21332@mwanda> <20190618081645.GM16364@dell>
 <CAHk-=wghW+AKvRGevUiVWwTqWObygSZSdq6Dz2ad81H73VeuRQ@mail.gmail.com>
 <20190619055816.GF18371@dell>
In-Reply-To: <20190619055816.GF18371@dell>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
Content-ID: <18B2C5B8D6D879419D1A363687D100BA@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-20_11:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_081817_366024_BF0C931D 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre TORGUE <alexandre.torgue@st.com>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/19/19 7:58 AM, Lee Jones wrote:
> On Tue, 18 Jun 2019, Linus Torvalds wrote:
> 
>> On Tue, Jun 18, 2019 at 1:16 AM Lee Jones <lee.jones@linaro.org> wrote:
>>>
>>>> Reported-by: Linus Torvalds <torvalds@linux-foundation.org>
>>>
>>> Ideally we can get a review too.
>>
>> Looks fine to me, but obviously somebody should actually _test_ it too.
> 
> Amelie, would you be so kind?
> 

Tested on stm32mp157c-ev1.

Tested-by: Amelie Delaunay <amelie.delaunay@st.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
