Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3615161C5D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 21:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oxIw8QifK6FK71b+v3SV9SXgaXVb8PFEbRO8n3IKEd0=; b=VVIdTEXGK9u2pA
	4FM6iwpuF8Zpo9dmXQ/mGHXaTbG2HgtFVe+4l7zvluAdgdBQzwuVLVMBZEHeGohQpcjv1kRpTJwr7
	1Qanh+csvuaaMH3pI4GHM+5sAKIP5OcLe9LnW5gKMjxqwzNHWvypv+NVURAEk4VQaH9mCQU8AVhxA
	PuUXaJKVG26rQIwOwcnfY5LqCNATZVacMQtASR8p3JgyS0RzsKVVn+Ztp/Zt2lTEoVez+0BQZzTvK
	th9OEGT78UTlXxCY8yGnER5sB00FSFusBIQ4uRx5fXpMzHm3aSFGf/UBUlPs2V0oWXmN9OAK41Jyb
	wo3ysKbnazYJvHSszArQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3n9U-0006S4-Rx; Mon, 17 Feb 2020 20:38:00 +0000
Received: from mail-eopbgr70053.outbound.protection.outlook.com ([40.107.7.53]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3n9I-0006Rf-SL
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 20:37:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LVYW4mPjzWjCLoMYWpP28Dr0qo2ekPr2c107WuXZSqPsnw6bOCyyi4QQkyafWz2F144dq81a0O8kK/QXNS1M6E/R6HF/2T+q7kRe+Ll1JCwpcgDHJTZENYmQ8FYdz3yUtK95B/AstuqS46k2M78m89gQzo2eE4H//SrCmiThJWKzcH06/xK42KeD9cCA3jvg3p+NpApF3EQq/NMU8BD5WLi2foDas+5yLfU1T8vfDAiszy3/7NSOgwGQ8N46DiuXonJeKuWT0MYNI/VDaTtclLWR/CFzdJiJm16mgRbuYbzE+F2jJ7w7RgbMWZ22+pi3TaD2F2J7TUfDPhFsQ/z6PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GwAojTp8lAfdbFH9+FXdw+woAXmQP9yyzUO3eEb/1o=;
 b=dVgP2T7AmT4p9x9sP/K/uiQ5u/HJLeKC9SExtVucrxAIFsQDeoBVhxvfXx99sjcjNIIoufFA9NVus7PMLo45mQl0yk7oE8mUJz4aaTrabgUTudwmS2J5Pzqd+kL4u8pgj+gLfbYjxMZpuKQd9KbcmpxI1vsol219qik00nf3Gbl7vWtj4g34Vn39AIx1hYaylH7MufRl0CBGA/0ArC2X0c33NOpqdpF+rg1e64dCOGiayeAHgT623+7mce6pbaitxQoEF11845AXKAms9bxx7I0UNEtOOPknWP0ZMAiGu6AP+L9jeLla7d775scwlkDVuX6DK7dquC0nIDpvVrOa+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5GwAojTp8lAfdbFH9+FXdw+woAXmQP9yyzUO3eEb/1o=;
 b=b2Fb87QzYfx7zZE+fLPzh7fZTNx08xnoC0Ya65RzmAYF7MT889A+a38pZNBVu4OwzMLr3syRFA2QouVDSgv5EimIL3t/VfURC1XHOCMh7RCIjflb3FLjbE5A5WlL/0Phjg0Dyf5iBpEMUcfKjYyvzYlAKB4SHkAouPBHI/QO0Do=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6046.eurprd04.prod.outlook.com (20.179.25.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.22; Mon, 17 Feb 2020 20:37:45 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2729.032; Mon, 17 Feb 2020
 20:37:45 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH] firmware: imx: Align imx SC msg structs to 4
Thread-Topic: [PATCH] firmware: imx: Align imx SC msg structs to 4
Thread-Index: AQHV4SGqSL+k7/w06UOL1nyEN5GYug==
Date: Mon, 17 Feb 2020 20:37:45 +0000
Message-ID: <VI1PR04MB7023CDE9E4AD086F2E926495EE160@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <3a8b6772a1edffdd7cdb54d6d50030b03ba0bebb.1581455751.git.leonard.crestez@nxp.com>
 <20200217062129.GB6790@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f2ee3e91-a013-4352-9b6a-08d7b3e93e7d
x-ms-traffictypediagnostic: VI1PR04MB6046:|VI1PR04MB6046:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB604669F1048B551AAEEBB598EE160@VI1PR04MB6046.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(366004)(346002)(376002)(39860400002)(189003)(199004)(66946007)(478600001)(4326008)(186003)(91956017)(76116006)(7696005)(53546011)(6506007)(66446008)(64756008)(66476007)(86362001)(33656002)(316002)(66556008)(52536014)(5660300002)(81156014)(81166006)(44832011)(8676002)(8936002)(110136005)(54906003)(55016002)(26005)(6636002)(7416002)(2906002)(71200400001)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6046;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3Dw9Eqdi3rT+71H3V4avbne4d5tUISuJcRnsXwk749MK6F/SE19wiMUu70tddUsoA5pf6IHfZ/wEahyIN/6P92IQnFFwFT5UisIrvFHU1KC2JY6CODyHIPTWGrkhPFlHxqD9UhDGtz+cau+E92kqke4uw0e0b/uZXJgBi4O6QY6brHDbaHGxu5VgmtIZe6iCRuA+3+dMwj8Pp8O8MPW8Ortz0+/2anGs3sqWF482opkWEbQbTTAVdYgykjIK+nMWMsF4RsSs/M6AtAubVIMn+tnsa55s5jBqDCyB+fMZdim3wz9eHd268l97cTohKpJNn/j73O49WMuQh1ymkozR0h5oZnfYEhE73u95AgSXNUiQYkcYlDTzOQpBX6Jnk8lQIIQ8qjIPftwecwHhe8fM2CUzmG0cDGj/Aa59sVLy/Slq6DyCsmNp42nLVvrvFjHz
x-ms-exchange-antispam-messagedata: 0Tr2uIyGUSLQqGROu0w62HO46pKMGJa9jCrqjMSDvpR96adyuKIHPmvs3saPkDk0YAXfuWdRmjuEwVfjmxP6uaOIR7JCl/uY1WUVgTizCAJgAwXkuBU3ZPMONEdM6Uui6JT7Hu8cZr8rG/vsN8VlmQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ee3e91-a013-4352-9b6a-08d7b3e93e7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 20:37:45.2001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: szm/5dRgZ1Acim1YMIgSFEF0u7FSi/9ClEIAXA12EKqqKPKX0bvRnAvfVKG/lgrVZqVmi0L/6HDBH2SmacJv3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6046
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_123748_922347_13BE56FF 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>,
 "open list:PIN CONTROLLER - FREESCALE" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.02.2020 08:21, Shawn Guo wrote:
> On Tue, Feb 11, 2020 at 11:24:33PM +0200, Leonard Crestez wrote:
>> The imx SC api strongly assumes that messages are composed out of
>> 4-bytes words but some of our message structs have sizeof "6" and "7".
>>
>> This produces many oopses with CONFIG_KASAN=y:
>>
>> 	BUG: KASAN: stack-out-of-bounds in imx_mu_send_data+0x108/0x1f0
>>
>> It shouldn't cause an issues in normal use because these structs are
>> always allocated on the stack.
>>
>> Cc: stable@vger.kernel.org
> 
> Should we have a fixes tag and send it for -rc?

I haven't check but this would probably have to be split into multiple 
patches because the structs were not added all at once.

> Shawn
> 
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Reported-by: Iuliana Prodan <iuliana.prodan@nxp.com>
>> ---
>>   drivers/clk/imx/clk-scu.c               | 8 ++++----
>>   drivers/firmware/imx/misc.c             | 8 ++++----
>>   drivers/firmware/imx/scu-pd.c           | 2 +-
>>   drivers/pinctrl/freescale/pinctrl-scu.c | 4 ++--
>>   drivers/rtc/rtc-imx-sc.c                | 2 +-
>>   drivers/soc/imx/soc-imx-scu.c           | 2 +-
>>   6 files changed, 13 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
>> index fbef740704d0..b8b2072742a5 100644
>> --- a/drivers/clk/imx/clk-scu.c
>> +++ b/drivers/clk/imx/clk-scu.c
>> @@ -41,16 +41,16 @@ struct clk_scu {
>>   struct imx_sc_msg_req_set_clock_rate {
>>   	struct imx_sc_rpc_msg hdr;
>>   	__le32 rate;
>>   	__le16 resource;
>>   	u8 clk;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct req_get_clock_rate {
>>   	__le16 resource;
>>   	u8 clk;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct resp_get_clock_rate {
>>   	__le32 rate;
>>   };
>>   
>> @@ -82,11 +82,11 @@ struct imx_sc_msg_get_clock_parent {
>>   	struct imx_sc_rpc_msg hdr;
>>   	union {
>>   		struct req_get_clock_parent {
>>   			__le16 resource;
>>   			u8 clk;
>> -		} __packed req;
>> +		} __packed __aligned(4) req;
>>   		struct resp_get_clock_parent {
>>   			u8 parent;
>>   		} resp;
>>   	} data;
>>   };
>> @@ -119,11 +119,11 @@ struct imx_sc_msg_req_clock_enable {
>>   	struct imx_sc_rpc_msg hdr;
>>   	__le16 resource;
>>   	u8 clk;
>>   	u8 enable;
>>   	u8 autog;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
>>   {
>>   	return container_of(hw, struct clk_scu, hw);
>>   }
>> diff --git a/drivers/firmware/imx/misc.c b/drivers/firmware/imx/misc.c
>> index 4b56a587dacd..d073cb3ce699 100644
>> --- a/drivers/firmware/imx/misc.c
>> +++ b/drivers/firmware/imx/misc.c
>> @@ -14,30 +14,30 @@
>>   struct imx_sc_msg_req_misc_set_ctrl {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 ctrl;
>>   	u32 val;
>>   	u16 resource;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct imx_sc_msg_req_cpu_start {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 address_hi;
>>   	u32 address_lo;
>>   	u16 resource;
>>   	u8 enable;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct imx_sc_msg_req_misc_get_ctrl {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 ctrl;
>>   	u16 resource;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct imx_sc_msg_resp_misc_get_ctrl {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 val;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   /*
>>    * This function sets a miscellaneous control value.
>>    *
>>    * @param[in]     ipc         IPC handle
>> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
>> index b556612207e5..af3ae0087de4 100644
>> --- a/drivers/firmware/imx/scu-pd.c
>> +++ b/drivers/firmware/imx/scu-pd.c
>> @@ -59,11 +59,11 @@
>>   /* SCU Power Mode Protocol definition */
>>   struct imx_sc_msg_req_set_resource_power_mode {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u16 resource;
>>   	u8 mode;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   #define IMX_SCU_PD_NAME_SIZE 20
>>   struct imx_sc_pm_domain {
>>   	struct generic_pm_domain pd;
>>   	char name[IMX_SCU_PD_NAME_SIZE];
>> diff --git a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
>> index 73bf1d9f9cc6..23cf04bdfc55 100644
>> --- a/drivers/pinctrl/freescale/pinctrl-scu.c
>> +++ b/drivers/pinctrl/freescale/pinctrl-scu.c
>> @@ -21,16 +21,16 @@ enum pad_func_e {
>>   
>>   struct imx_sc_msg_req_pad_set {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 val;
>>   	u16 pad;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct imx_sc_msg_req_pad_get {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u16 pad;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct imx_sc_msg_resp_pad_get {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 val;
>>   } __packed;
>> diff --git a/drivers/rtc/rtc-imx-sc.c b/drivers/rtc/rtc-imx-sc.c
>> index cf2c12107f2b..a5f59e6f862e 100644
>> --- a/drivers/rtc/rtc-imx-sc.c
>> +++ b/drivers/rtc/rtc-imx-sc.c
>> @@ -35,11 +35,11 @@ struct imx_sc_msg_timer_rtc_set_alarm {
>>   	u8 mon;
>>   	u8 day;
>>   	u8 hour;
>>   	u8 min;
>>   	u8 sec;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   static int imx_sc_rtc_read_time(struct device *dev, struct rtc_time *tm)
>>   {
>>   	struct imx_sc_msg_timer_get_rtc_time msg;
>>   	struct imx_sc_rpc_msg *hdr = &msg.hdr;
>> diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
>> index fb70b8a3f7c5..20d37eaeb5f2 100644
>> --- a/drivers/soc/imx/soc-imx-scu.c
>> +++ b/drivers/soc/imx/soc-imx-scu.c
>> @@ -23,11 +23,11 @@ struct imx_sc_msg_misc_get_soc_id {
>>   		} __packed req;
>>   		struct {
>>   			u32 id;
>>   		} resp;
>>   	} data;
>> -} __packed;
>> +} __packed __aligned(4);
>>   
>>   struct imx_sc_msg_misc_get_soc_uid {
>>   	struct imx_sc_rpc_msg hdr;
>>   	u32 uid_low;
>>   	u32 uid_high;
>> -- 
>> 2.17.1
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
