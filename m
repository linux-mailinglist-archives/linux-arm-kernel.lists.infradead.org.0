Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F08B14BE00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 17:47:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWajDSZUOlrQ4Lb2F2nOcwl41ZJOUxk6im4I0Bp1Nvo=; b=G4Fvx6vFVrZ4lj
	tqX7EFaxR/GFQCG3b+Xy8lXRWdR0pLlmX8qlU97mMcpvQFKPItA56Hz2Eh7SH+LidYW4KyF11KWgt
	SCgoE/F1DIIL4coqbPybKpHC6CjKO9Q/Ij+hfaKDEn5Stwd3oOI+dzrJ9PrKqcJG8g3aOIhj2kubc
	hD3dkJr/TE3OjoPC9Wk7L52FQYp9K+SmxJJdnGGb5J+r2RJf/c0EL74Scs++e/jD2pwfqtxesqE61
	v+tz77cLVTXEErYsFsKtK9vm+ydF3uAOXxwfrubIc1ueqw2ReMyzfyaNc3KM2vwMK6bVluS/7ed9K
	FcGbinxeq+1iAJVcgyBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwU10-0007oc-K6; Tue, 28 Jan 2020 16:47:02 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwU0q-0007oE-LF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 16:46:54 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SGXKvH005871; Tue, 28 Jan 2020 17:46:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=3Rk+qm0XuAAR8ujuxjYe/W1dSCkCwAqvtaZc+Mo2CT4=;
 b=Dh2pdnDmJgslSmBqlDE+BVm/reheKkhuwDG4tmBMRtnkzKrQUiT6HfpC9zTm8JVyaaAT
 dGtiEr8UFSBa7T/gfJsVQl0OZwWC57/P6MixI7v1Ldlipk7SR0l5H0o8kvtzYtk3FaKs
 PGs1q3Ms12xb0pPlrfIc8rIWkxu9nJp5qZ4yuLXB3KKtbuJ/dVZMNGMcDNv2MhDmg5rN
 RJFbYl7oB0cTl1EISFW5FRT/nTgSNaJfKAM2PhJgJj7FqcbGBZqPxxEkL6XdVt4fYskc
 Xovg/KSujdfftBNaZ8Bs8l7cO8mRiUoAuVCpf/WstW/NKrVvKbsCi5Awf+YKpKJGBS/K /Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpay5ry-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 17:46:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 94BA010002A;
 Tue, 28 Jan 2020 17:46:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node2.st.com [10.75.127.20])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 57DDB21D6C0;
 Tue, 28 Jan 2020 17:46:42 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE2.st.com
 (10.75.127.20) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 28 Jan
 2020 17:46:42 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 28 Jan 2020 17:46:41 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
Thread-Topic: [PATCH v2 0/7] Introduce bus firewall controller framework
Thread-Index: AQHV1fD3HkoxlN8gBkO/naZ6SuTotagANYcAgAAC24A=
Date: Tue, 28 Jan 2020 16:46:41 +0000
Message-ID: <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus>
In-Reply-To: <20200128163628.GB30489@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.46]
Content-ID: <833F454B2A621647B173517B482702ED@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_05:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_084652_983591_18127A45 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "robh@kernel.org" <robh@kernel.org>, Loic PALLARDY <loic.pallardy@st.com>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/28/20 5:36 PM, Sudeep Holla wrote:
> On Tue, Jan 28, 2020 at 04:37:59PM +0100, Benjamin Gaignard wrote:
>> Bus firewall framework aims to provide a kernel API to set the configuration
>> of the harware blocks in charge of busses access control.
>>
>> Framework architecture is inspirated by pinctrl framework:
>> - a default configuration could be applied before bind the driver.
>>    If a configuration could not be applied the driver is not bind
>>    to avoid doing accesses on prohibited regions.
>> - configurations could be apllied dynamically by drivers.
>> - device node provides the bus firewall configurations.
>>
>> An example of bus firewall controller is STM32 ETZPC hardware block
>> which got 3 possible configurations:
>> - trust: hardware blocks are only accessible by software running on trust
>>    zone (i.e op-tee firmware).
>> - non-secure: hardware blocks are accessible by non-secure software (i.e.
>>    linux kernel).
>> - coprocessor: hardware blocks are only accessible by the coprocessor.
>> Up to 94 hardware blocks of the soc could be managed by ETZPC.
>>
> /me confused. Is ETZPC accessible from the non-secure kernel space to
> begin with ? If so, is it allowed to configure hardware blocks as secure
> or trusted ? I am failing to understand the overall design of a system
> with ETZPC controller.

Non-secure kernel could read the values set in ETZPC, if it doesn't match

with what is required by the device node the driver won't be probed.

Benjamin

>
>> At least two other hardware blocks can take benefits of this:
>> - ARM TZC-400: http://infocenter.arm.com/help/topic/com.arm.doc.100325_0001_02_en/arm_corelink_tzc400_trustzone_address_space_controller_trm_100325_0001_02_en.pdf
>>    which is able to manage up to 8 regions in address space.
> I strongly have to disagree with the above and NACK any patch trying
> to do so. AFAIK, no system designed has TZC with non-secure access.
> So we simply can't access this in the kernel and hence need no driver
> for the same. Please avoid adding above misleading information in future.
>
> --
> Regards,
> Sudeep
>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
