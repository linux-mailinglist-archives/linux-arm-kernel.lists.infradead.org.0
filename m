Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2936EEDA6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DcDB5FujpCkyayRDCTnOKR9ygmw7V0Gz+6uQ/onsjk=; b=n2+XmHTbnm6CgY
	waZb2z80J3+1ubQZ9ZO7gzWK5ykv7BJ7SikSt1c6aixPtMtlG1tQVh935CX+OtxtQtElns7TsR1FZ
	MRAdYVmsDiZwtrfkgtAVPQsOpriOEivgaHRPjyxvS31AY9x1yQR1L30GsKegC+JgWObOty83aE+ok
	eQ0Yzp5+4KZF6wu45EA6oezNa8X2zUPmwNSKIAnTmmdQiYIraymhOc9RrZBXwjPw8aWfO0FsUYYi0
	1ZFXlzHdz1ANS+6reqwhDEXtL8SFLhEFdmkGwXHtYUAtNTV7wS7aW+nAtF1CNg5btQZATrWFQ/wpj
	bTFXHFnYzIm4EGauACQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXXP-0005gn-SQ; Mon, 04 Nov 2019 08:16:35 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXXG-0005g2-He
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:16:28 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id 3561D600391;
 Mon,  4 Nov 2019 09:16:24 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Mon, 4 Nov 2019
 09:16:23 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Mon, 4 Nov 2019 09:16:23 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 11/11] MAINTAINERS: Add an entry for Kontron
 Electronics ARM board support
Thread-Topic: [PATCH v3 11/11] MAINTAINERS: Add an entry for Kontron
 Electronics ARM board support
Thread-Index: AQHVj/bq00l6FB82qEKQsJ90JRSWJad6lucAgAAIsYA=
Date: Mon, 4 Nov 2019 08:16:23 +0000
Message-ID: <78b7f1e9-5c21-9829-07b9-9746991e56db@kontron.de>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
 <20191031142112.12431-12-frieder.schrempf@kontron.de>
 <20191104074514.GU24620@dragon>
In-Reply-To: <20191104074514.GU24620@dragon>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <923E8A050600B14F89B6675F9074D87F@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 3561D600391.ABEC6
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_001626_914118_83B69A67 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04.11.19 08:45, Shawn Guo wrote:
> On Thu, Oct 31, 2019 at 02:24:34PM +0000, Schrempf Frieder wrote:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> Kontron Electronics GmbH produces several ARM boards, that are
>> planned to be upstreamed eventually. For now we have some
>> i.MX6UL/ULL based SoMs and boards, that are already available
>> in the kernel.
>>
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> We usually do not need MAINTAINERS entry for individual DTS files.

Ok, I just thought it would be nice for things like get_maintainer.pl, 
to make sure I receive notifications, when someone sends patches for 
theses DTS files. But if this is against the usual conventions, I will 
drop this.

> 
> Shawn
> 
>> ---
>>   MAINTAINERS | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 296de2b51c83..a461d31ee98d 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -9103,6 +9103,12 @@ F:	include/linux/kmod.h
>>   F:	lib/test_kmod.c
>>   F:	tools/testing/selftests/kmod/
>>   
>> +KONTRON ELECTRONICS ARM BOARDS SUPPORT
>> +M:	Frieder Schrempf <frieder.schrempf@kontron.de>
>> +S:	Maintained
>> +F:	arch/arm/boot/dts/imx6ul-kontron-*
>> +F:	arch/arm/boot/dts/imx6ull-kontron-*
>> +
>>   KPROBES
>>   M:	Naveen N. Rao <naveen.n.rao@linux.ibm.com>
>>   M:	Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>
>> -- 
>> 2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
