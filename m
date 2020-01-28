Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A3B14C15F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 21:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wy1o5cmjGmPhRPXooam+2Z05QMZ+VyjEgAzDKEW9vc=; b=n8B+ekuBI3wegd
	CvTE7rR9CpZ0IgLz32RFxljoL1XxTkOwT6fL2vzSR/sftTWUXHMDAzRy2MkcDTFwisAVXa2wYwGZY
	QMwzKBRCkswsLDx5UY9HrXMGxQGI0b56Qs6k1CaDro9wcufdM15qCpaKni3Xt5PifP804r4yRSM9t
	QSrrcOR06ww0VNw5Ik7Sbu00M1HtQzO/uhxFyUeBfZXttbOrWcA10kEpVj9PY9xGDW2aZHD4Qx5PA
	yw65jd5CV8zRNctjJ1NhDkf/3zf+wy4W8sOGwxXL7km/Lk+KuQdOhebiYh8zZl1gBr7Ck0OXOp0nJ
	i1wuj6NJy1uW3NIC+1Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwX7w-00068Q-2B; Tue, 28 Jan 2020 20:06:24 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwX7o-000684-4l
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 20:06:18 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SK3OAv001771; Tue, 28 Jan 2020 21:06:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type : content-id
 : content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=QtK10QkzspDmDSuwJ4qZX17Wym1ujmLQHvWb3VQQQCw=;
 b=j/zSANJkMXggcHeczRzJ1ZsbFtjRAAAPdv3PLOceITUwQQ7/4fC/tbhyWm0XLR7prqeW
 fe0ewA0J27Sx9vcGM/bJUnwcDE6BzhIbzsvcFmRzX0Y6Zk6plLjzn9Ew12Dzi84yNfqc
 W7F45BU/4Eb27E6XP2CyKm3cS8Aeaz2R4EQVNdoETAFMm2I/b+hftRQ9+mByseY8pjEE
 i3A9BzJqdR+X4rZEauvpcwnJJ3uX+mvDN//hefVYyjH2mfAkVLJHga6gt6xU/8a1JKO4
 4RP9reRD30Fgfx4PbNtMf93ghtcBYs8UCpSjgB2JlAWJOTXqqj9BN1VoM9c8BdH67eIc JA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpayx6r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 21:06:10 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E5B710002A;
 Tue, 28 Jan 2020 21:06:09 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag7node1.st.com [10.75.127.19])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4D0632B5E6A;
 Tue, 28 Jan 2020 21:06:09 +0100 (CET)
Received: from SFHDAG3NODE3.st.com (10.75.127.9) by SFHDAG7NODE1.st.com
 (10.75.127.19) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 28 Jan
 2020 21:06:08 +0100
Received: from SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476]) by
 SFHDAG3NODE3.st.com ([fe80::3507:b372:7648:476%20]) with mapi id
 15.00.1347.000; Tue, 28 Jan 2020 21:06:08 +0100
From: Benjamin GAIGNARD <benjamin.gaignard@st.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
Thread-Topic: [PATCH v2 0/7] Introduce bus firewall controller framework
Thread-Index: AQHV1fD3HkoxlN8gBkO/naZ6SuTotagANYcAgAAC24CAAAijAIAALxcA
Date: Tue, 28 Jan 2020 20:06:08 +0000
Message-ID: <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus> <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus>
In-Reply-To: <20200128171639.GA36496@bogus>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <66B307CE2705F7409AD5AB7A8A9F7E04@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_07:2020-01-28,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_120616_476061_DE5B7E0A 
X-CRM114-Status: GOOD (  24.30  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Robin.Murphy@arm.com" <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 1/28/20 6:17 PM, Sudeep Holla wrote:
> On Tue, Jan 28, 2020 at 04:46:41PM +0000, Benjamin GAIGNARD wrote:
>> On 1/28/20 5:36 PM, Sudeep Holla wrote:
>>> On Tue, Jan 28, 2020 at 04:37:59PM +0100, Benjamin Gaignard wrote:
>>>> Bus firewall framework aims to provide a kernel API to set the configuration
>>>> of the harware blocks in charge of busses access control.
>>>>
>>>> Framework architecture is inspirated by pinctrl framework:
>>>> - a default configuration could be applied before bind the driver.
>>>>     If a configuration could not be applied the driver is not bind
>>>>     to avoid doing accesses on prohibited regions.
>>>> - configurations could be apllied dynamically by drivers.
>>>> - device node provides the bus firewall configurations.
>>>>
>>>> An example of bus firewall controller is STM32 ETZPC hardware block
>>>> which got 3 possible configurations:
>>>> - trust: hardware blocks are only accessible by software running on trust
>>>>     zone (i.e op-tee firmware).
>>>> - non-secure: hardware blocks are accessible by non-secure software (i.e.
>>>>     linux kernel).
>>>> - coprocessor: hardware blocks are only accessible by the coprocessor.
>>>> Up to 94 hardware blocks of the soc could be managed by ETZPC.
>>>>
>>> /me confused. Is ETZPC accessible from the non-secure kernel space to
>>> begin with ? If so, is it allowed to configure hardware blocks as secure
>>> or trusted ? I am failing to understand the overall design of a system
>>> with ETZPC controller.
>> Non-secure kernel could read the values set in ETZPC, if it doesn't match
>> with what is required by the device node the driver won't be probed.
>>
> OK, but I was under the impression that it was made clear that Linux is
> not firmware validation suite. The firmware need to ensure all the devices
> that are not accessible in the Linux kernel are marked as disabled and
> this needs to happen before entering the kernel. So if this is what this
> patch series achieves, then there is no need for it. Please stop pursuing
> this any further or provide any other reasons(if any) to have it. Until
> you have other reasons, NACK for this series.

No it doesn't disable the nodes.

When the firmware disable a node before the kernel that means it change

the DTB and that is a problem when you want to sign it. With my proposal

the DTB remains the same.

>
> Note you haven't cc-ed 2 people who has comments earlier[1][2]
I will cc them, thanks
> --
> Regards,
> Sudeep
>
> [1] https://lkml.org/lkml/2018/2/27/512
> [2] https://lkml.org/lkml/2018/2/27/598
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
