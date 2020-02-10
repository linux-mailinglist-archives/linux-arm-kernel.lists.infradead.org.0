Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E591570AB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 09:15:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWNYDziDun4e6WpvxqZWZDS823pY/bz9NdgKtvQmFgo=; b=Ychr8XVLFBkE+2
	cnWB+rjuZRBSdYXj0F0Xh5eDdsgU7nbpVykUQaoNuxeK98VfB6SFo+1ekQPc2XMcbDKqaSGhZDp46
	G42LjTPOOfZLLVB9dblc18rBW5yAYPF4sz2rBYp/cfbinHSPuV5EGphNKMdiQbY+fsCA4uFj1vEnb
	mZ6NJbpgdKwIOs6AzQZYvIpdpWpZ0O4Z/sjhmbD3otM6wdcqpk7WLhZPkI02ipmRin8dNIJjxde+y
	tXr9/6coHa1aFJqwiu2j/TRq3W9R9fuwwtsRlSJattcSiJvEBKdabdPc5KCsoxmQX468uh11CtLxz
	QlkCUEmGWgjpJyEMqYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j14ED-0001qN-Vd; Mon, 10 Feb 2020 08:15:38 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j14E5-0001oc-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 08:15:32 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01A8DgMV025251; Mon, 10 Feb 2020 09:15:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=csTbRj70vU7WI1+2GoXNCPXKkNYa2CfNAeRYI6le68Q=;
 b=nRu7l5/r2Xip6i6hUmzISgCodZG16ZDos3vxZm/MuS1ldJA1um9RYLaiwvJ9QXfZS1nY
 xb+0ON1PKOU7XsINAr/n/6Yo2QFUP1VDso8jN+CYngLUxSxM2hxouo8roYlybB1uHyC9
 ObFInUEHviY0ocTIArGCppG8XBVqfsoNvfySXoZHtM3GyC8/LxZsP1+S5yjJ0X1BEsmb
 KtvcK7O9kXSn20Z6pnnRr5jY1NPyLOH3aJCyRgAKVX5XNp1tlLlqdcbIn2ZxdM6+GWiW
 GbAOJGgOErLNS0h6L7pOaHIO7m7kshaASxqgpXIujMExq9vaPuE808wL/ZQtJcmvGNsQ 9A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1ufgr0b6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 09:15:19 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AAA13100038;
 Mon, 10 Feb 2020 09:15:17 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 624C92B1863;
 Mon, 10 Feb 2020 09:15:17 +0100 (CET)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG6NODE3.st.com
 (10.75.127.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 10 Feb
 2020 09:15:16 +0100
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Mon, 10 Feb 2020 09:15:16 +0100
From: Patrice CHOTARD <patrice.chotard@st.com>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] STi DT update for v5.6 round 1
Thread-Topic: [GIT PULL] STi DT update for v5.6 round 1
Thread-Index: AQHV21fUlvmf1pIO+EOSI+9it4GhsqgStwaAgAFV+gA=
Date: Mon, 10 Feb 2020 08:15:16 +0000
Message-ID: <8a845623-0f30-b1b2-1a8a-8dfbcb67ddf4@st.com>
References: <c6f76adc-b32f-a64f-c7b1-417a26de1667@st.com>
 <CAOesGMhxN3MW69EcJ_DigrvfruHzACNP8J-JOR9GmCnk4Tjodw@mail.gmail.com>
In-Reply-To: <CAOesGMhxN3MW69EcJ_DigrvfruHzACNP8J-JOR9GmCnk4Tjodw@mail.gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <B894766D3142BD41868C6E39FFE5CB85@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_02:2020-02-07,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_001530_511618_CC579888 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "khilman@baylibre.com" <khilman@baylibre.com>,
 "arm@kernel.org" <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof

On 2/9/20 12:51 PM, Olof Johansson wrote:

> Hi Patrice,
>
> [Please also cc soc@kernel.org on pull requests, since they then end
> up in our patchwork and we're less likely to miss them]

Ok


>
> On Tue, Feb 4, 2020 at 1:37 PM Patrice CHOTARD <patrice.chotard@st.com> wrote:
>> Hi Arnd, Olof, Kevin
>>
>> Please find STi dt update for v5.6 round 1:
> The timing for this is bad. Material should arrive to our tree around
> -rc6 timeframe for the previous release, for us to have time to merge
> it and expose it in linux-next for a while before the merge window
> opens.

Ok understand, this pull request is not urgent at all, i will resubmit it later ;-)

>
>> The following changes since commit d5226fa6dbae0569ee43ecfc08bdcd6770fc4755:
>>
>>
>>   Linux 5.5 (2020-01-26 16:23:03 -0800)
> ... we also ask that the incoming branches are based on rc1 or rc2 of
> the previous release, not the latest possible release (unless there's
> a good reason for it).
>
>> are available in the Git repository at:
>>
>>   git@gitolite.kernel.org:pub/scm/linux/kernel/git/pchotard/sti.git tags/sti-dt-for-5.6-round1
> Please use the public git:// or https:// versions in pull requests.
Ok
>
>> for you to fetch changes up to 21eebae9a11ff18fe6d6b43adccadd533abdf0d6:
>>
>>   ARM: stihxxx-b2120.dtsi: fixup sound frame-inversion (2020-02-04 11:21:37 +0100)
>>
>> ----------------------------------------------------------------
>> STi dt fixes:
>> -------------
>>   - remove deprecated Synopsys PHY dt properties
>>   - fix sound frame-inversion property
>>
>> ----------------------------------------------------------------
>> Kuninori Morimoto (1):
>>       ARM: stihxxx-b2120.dtsi: fixup sound frame-inversion
>>
>> Patrice Chotard (1):
>>       ARM: dts: stih410-b2260: Remove deprecated snps PHY properties
> It's a good idea to keep a reasonably consistent prefix usage. "ARM:
> dts: <platform>:" is what we prefer, so feel free to touch that up for
> patches that you apply.

ok noted

Thanks

Patrice

>
>
> -Olof
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
