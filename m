Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B703B5E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kyif4HWOvvDkwUWAMzOMI3xRrfW55b99uFKW+9KKGs=; b=MOSzbF2oHjBtEA
	nHZLzAKBB7S0RqhCtan8V7BVkVhi/sSW0pnZaNRIXJ4aIaUmWIBhLPzTrAPiJR3mWyQw5WsAMzyjg
	vkoFc40UU9kpGVKIplvxow+07q4zkmZByGLC3SCoGP7Fo/cAGijg04Zlzf6T6pVusRFjuFMLpV01/
	NDMrhXUwf2NCelDu+W/yAETBUVivflVBJiShPceoTmhovRWtb2t4YZgRWqPMHaKKgSZXMaGca6fEr
	lbEEiBivJbbutYSMAeXfbOm0Uj8HklZSCkYuy5b8PhB1mlZxCto7jSTFTZY2rs3vCnQ9kDthXi5TO
	v5aSe9oK7KVfqRs/Y84Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKEi-0001xP-BH; Mon, 10 Jun 2019 13:21:20 +0000
Received: from mail-eopbgr30066.outbound.protection.outlook.com ([40.107.3.66]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKEX-0001wk-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:21:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MlChyOj8AGVtpdpDtftdmDGs7c3p7rhkT4lbQmL9NjY=;
 b=bE3a4N4xinPn6CUgtkIBtKbFpCChRn+oejMmspexnEVVSpvn5lWiSg7juLGQ0XI+Pcwkam9tNFX9DNoWiEkjnm8S5tcYSyavoX2C6YkIztSxYT1dP+yDCULdBHxeGnoakjCVZvf+tbYhpW0oMZ2c7aFOdq30FtY7VYb26UYv8gU=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6610.eurprd04.prod.outlook.com (20.179.255.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Mon, 10 Jun 2019 13:21:05 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::5c91:9215:bcd9:49cc%5]) with mapi id 15.20.1943.023; Mon, 10 Jun 2019
 13:21:04 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: John Tsichritzis <John.Tsichritzis@arm.com>
Subject: Re: [TF-A] [RFC 0/2] psci: Add core wakeup operation
Thread-Topic: [TF-A] [RFC 0/2] psci: Add core wakeup operation
Thread-Index: AQHU5JbMBBho34oP4E+pd1XAMuYKTKYfdoWwgAAlzICAdbd2AIAAAb+A
Date: Mon, 10 Jun 2019 13:21:04 +0000
Message-ID: <20190610132103.u3qecirpwtaq4vom@fsr-ub1664-175>
References: <01000169bf13f0b8-808c5c36-2676-4b2d-8baa-4d24f1f521c6-000000@email.amazonses.com>
 <AM0PR08MB2980AE3A2992F6DA19C27187E0580@AM0PR08MB2980.eurprd08.prod.outlook.com>
 <01000169bfcb2a80-f33d0b17-da4d-46e2-943b-d237e07d1d07-000000@email.amazonses.com>
 <1b0938ba-3d10-1d56-e056-7546730dc7e4@arm.com>
In-Reply-To: <1b0938ba-3d10-1d56-e056-7546730dc7e4@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57ed7917-8d6b-4c61-cef6-08d6eda67dbf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6610; 
x-ms-traffictypediagnostic: AM0PR04MB6610:
x-ms-exchange-purlcount: 6
x-microsoft-antispam-prvs: <AM0PR04MB66108E728165F2BE671B3095F6130@AM0PR04MB6610.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0064B3273C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(136003)(366004)(39860400002)(396003)(376002)(346002)(199004)(189003)(51914003)(13464003)(76116006)(66556008)(66946007)(11346002)(66476007)(66446008)(64756008)(73956011)(91956017)(45080400002)(71200400001)(71190400001)(478600001)(446003)(6916009)(26005)(186003)(966005)(476003)(44832011)(486006)(86362001)(3846002)(6116002)(14444005)(256004)(2906002)(14454004)(316002)(305945005)(102836004)(7736002)(99286004)(53546011)(1076003)(6506007)(68736007)(9686003)(53936002)(8676002)(66066001)(6306002)(5660300002)(81156014)(76176011)(33716001)(81166006)(6246003)(6486002)(25786009)(4326008)(6436002)(229853002)(54906003)(8936002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6610;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: xHLOzaV+wINIxU3n7Y6tH4/8OKcqNlPI5AG/rdPz6Gs04v5F75FZk3njOfNrpa6V3fQYe9GjW3BQYeZm/sGQUmnN77wlmeJXUrlmoJkOlBpFeba2de1sK7VBtFpsnTDKvN169HMaY9q9V0GPRcRUaTQAxfCU2Xd2NCAnygpQkU+Ppif5BBwoGRbqcjuqFFki6kRpvlWeWr1L2rBDko6hD4Um8WzIFkKc7Saqs151VzJTaYtd6puhQ9Q1fVcXNQoPonUeP17QlX1ELGK3+wJ7bFa2GvmaUFOsPbd7DayBW3Be4JEjEvFH7E6sLVwyvFlQujREjssXusbK5hSOu00gLaDGMlYrjQvk4Mj79+9LjU29WqAxMoejpmM8FhF8Nwwv3btWPeCymoG3NyQ6kv5dp480/E5QhK/5zHWBEaPmmTU=
Content-ID: <7A957ABCE911FE408B7C4428C57A56A1@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57ed7917-8d6b-4c61-cef6-08d6eda67dbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 13:21:04.8910 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abel.vesa@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6610
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_062109_869206_F13EB04B 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.66 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "tf-a@lists.trustedfirmware.org" <tf-a@lists.trustedfirmware.org>,
 nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Soby Mathew <Soby.Mathew@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-06-10 13:14:49, John Tsichritzis wrote:
>    Hello Abel,

Hi John,

> 
>    What is the status of this workaround? I saw that you had a similar
>    discussion at the kernel mailing list
>    ([1]https://lkml.org/lkml/2019/3/27/542) which, however, has been inactive
>    for some time.
>    Do you still intend to pursue that solution? If you do so, please submit
>    your patches to review.trustedfirmware.org under the
>    "TF-A/trusted-firmware-a" project. To login you just need your GitHub
>    account. You can find further information about contributions in
>    [2]https://git.trustedfirmware.org/TF-A/trusted-firmware-a.git/about/docs/process/contributing.rst,
>    especially the "Submitting Changes" section, or contact us here.

I just sent today another (different) approach for the kernel part.

The TF-A part will be sent after I get a feedback about the 
possibility of getting it in from the kernel irqchip maintainers.

BTW, this new approach does not use the PSCI. Instead, it uses a newly added
vendor SIP.

>    Kind regards,
>    John
>    --
>    John Tsichritzis | Graduate Software Engineer
>    Email: [3]john.tsichritzis@arm.com
>    110 Fulbourn Road, Cambridge, CB1 9NJ, United Kingdom
>    [4]https://www.arm.com/
> 
>  On 2019-03-27 15:35, Abel Vesa via TF-A wrote:
> 
>  On 19-03-27 13:45:21, Soby Mathew wrote:
> 
>  Hi Abel,
>  Thanks for the RFC. On the face of it, this is a new PSCI command that would need further discussion involving Architecture and Kernel teams.
> 
>  I know this might be a pain. That's why I'm just asking for as many opinions on this as possible.
> 
>  Just to summarize my understanding:
>  Currently any interrupt targeted to a suspended core can wake it up, but it seems that this mechanism is broken on i.MX8MQ and hence you need an explicit command to wake it.  This assumes that one CPU is always ON within the system ready to poke the suspended CPU back to life. This assumption is not true always as it is legal for all the CPUs to be in suspend state at the same time.
> 
>  That errata is specifically for IPIs. If all the cores are in suspend, any interrupt will be able to wake one of the cores. That's why the workaround suggested in that document works. But that workaround is waking up all the cores, that's why I added this poking mechanism which is per-core.
> 
>  Adding the kernel team for their input.
> 
>  JFYI, We do not intend to review patches via the mailing list and patches should be pushed as mentioned here:
>  [5]https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2FARM-software%2Farm-trusted-firmware%2Fblob%2Fmaster%2Fcontributing.rst&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C6515a2213ce94d2514c708d6b2ba75be%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636892911247109626&amp;sdata=5Qs1JULJhxUPmUWaAFPV1cPS2B8VbB2vv9pNO%2BjwYdY%3D&amp;reserved=0
> 
>  Currently the project is in github but we expect to migrate to trustedfirmware.org in April.
> 
> 
>  Hmm, ok. Good to know.
> 
>  Best Regards
>  Soby Mathew
> 
> 
>  -----Original Message-----
>  From: TF-A [6]<tf-a-bounces@lists.trustedfirmware.org> On Behalf Of Abel Vesa
>  via TF-A
>  Sent: 27 March 2019 12:16
>  To: [7]tf-a@lists.trustedfirmware.org
>  Subject: [TF-A] [RFC 0/2] psci: Add core wakeup operation
> 
>  This is more like a workaround for platforms like i.MX8MQ that have an issue
>  related to the wake_request GIC signal integration.
> 
>  See E11171 here:
>  [8]https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX8MDQLQ_0N14W.pdf&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C6515a2213ce94d2514c708d6b2ba75be%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636892911247109626&amp;sdata=oJmk5MvjRVE%2B652YXhzcYnupJ9LXBZ5Lriah8nFTmOo%3D&amp;reserved=0
> 
>  The workaround mentioned in the document has the dissadvantage of waking
>  up all the sleeping cores instead of just one.
> 
>  This patchset adds another psci op for core 'poking' (waking up).
>  On i.MX8MQ, the plat specific implementation writes the corresponding bits in
>  GPC to wake up independently each core.
> 
>  Abel Vesa (2):
>    psci: Add cpu wake operation
>    plat: imx8mq: Trigger SW power up per core
> 
>   include/lib/psci/psci.h             |  3 +++
>   lib/psci/psci_main.c                | 17 +++++++++++++++++
>   lib/psci/psci_setup.c               |  2 ++
>   plat/imx/imx8m/imx8mq/gpc.c         |  7 +++++++
>   plat/imx/imx8m/imx8mq/imx8mq_psci.c |  8 ++++++++
>   plat/imx/imx8m/include/gpc.h        |  2 ++
>   6 files changed, 39 insertions(+)
> 
>  --
>  2.7.4
> 
>  --
>  TF-A mailing list
>  [9]TF-A@lists.trustedfirmware.org
>  [10]https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.trustedfirmware.org%2Fmailman%2Flistinfo%2Ftf-a&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C6515a2213ce94d2514c708d6b2ba75be%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636892911247109626&amp;sdata=ZIXnZCsZb4TG9lTuPzxScXfnXOt6bqYeNORGcvSIb7A%3D&amp;reserved=0
> 
> References
> 
>    Visible links
>    1. https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flkml.org%2Flkml%2F2019%2F3%2F27%2F542&data=02%7C01%7Cabel.vesa%40nxp.com%7C61162cf4f51d47dd31d508d6eda59f84%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957692978635405&sdata=7vHn9on5HyAZnY2DoUlh8B5HLIyulv%2BM%2FNYB07HEqiA%3D&reserved=0
>    2. https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit.trustedfirmware.org%2FTF-A%2Ftrusted-firmware-a.git%2Fabout%2Fdocs%2Fprocess%2Fcontributing.rst&data=02%7C01%7Cabel.vesa%40nxp.com%7C61162cf4f51d47dd31d508d6eda59f84%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957692978645399&sdata=ZPZniSrVY90h1zA8JtO0TwMjzt%2BD1%2BlAwqBtlttDBCw%3D&reserved=0
>    3. mailto:john.tsichritzis@arm.com
>    4. https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.arm.com%2F&data=02%7C01%7Cabel.vesa%40nxp.com%7C61162cf4f51d47dd31d508d6eda59f84%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C1%7C636957692978645399&sdata=pDWMnJerxkY1yWi0W%2F4GQHuNt%2FZSWNAA7JgO%2BnVcgRQ%3D&reserved=0
>    5. https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2FARM-software%2Farm-trusted-firmware%2Fblob%2Fmaster%2Fcontributing.rst&data=02%7C01%7Cabel.vesa%40nxp.com%7C61162cf4f51d47dd31d508d6eda59f84%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636957692978655396&sdata=g09P6cxRYuKHf7DMkUPYwQvVeSIdnNIb2guHenzKk48%3D&reserved=0
>    6. mailto:tf-a-bounces@lists.trustedfirmware.org
>    7. mailto:tf-a@lists.trustedfirmware.org
>    8. https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.nxp.com%2Fdocs%2Fen%2Ferrata%2FIMX8MDQLQ_0N14W.pdf&data=02%7C01%7Cabel.vesa%40nxp.com%7C61162cf4f51d47dd31d508d6eda59f84%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636957692978665390&sdata=38VroSwx6cQHHwS%2Fymp1lizRgKeOnvvM3w69WpaFO2Q%3D&reserved=0
>    9. mailto:TF-A@lists.trustedfirmware.org
>   10. https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.trustedfirmware.org%2Fmailman%2Flistinfo%2Ftf-a&data=02%7C01%7Cabel.vesa%40nxp.com%7C61162cf4f51d47dd31d508d6eda59f84%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C636957692978665390&sdata=YqqCy%2FeZhDEYZlFbrcqEKQ5IGtgOIym7fNM7ZeF3lGU%3D&reserved=0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
