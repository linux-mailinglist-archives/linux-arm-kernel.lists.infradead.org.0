Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C72D7188DF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 20:25:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=q8zncVvd50V6/jBtIR9xr3gZprN7IMYWx7obTJWzYCM=; b=mmucMbiXPiEct4
	ERmqA6RBD3ZXz3t23/nRS3piZ0XrjclCK5FzZM+JlMGECalX0kh8JiFeJ2Ebf+Dw4M6Bu814aoY5O
	99r5qhpZ+lpHJOrKUYrz/mJbgQJjvzyiH/WpV8tnRhyPikMZ2WXtnsrrPlZUHxcX9r71KIAp3LKQx
	QYOO44AWF3N3oKUv4yYjY5dRe8/B46i9LjK3sWaHnfNzwroaPsrAVFp+3xhLuSWY6IJBaCOkRCz2r
	d4fxbEQV1VVl0b58M5+eA4Om/WYqlfgeAm1Ia9CpBmQdIliKTRY3nM7nczMK4tv3/KmGtl6fQ+lB1
	dgwOvTpFpGb+jbdEpqwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHqR-0002aY-Uq; Tue, 17 Mar 2020 19:25:43 +0000
Received: from mail-eopbgr10076.outbound.protection.outlook.com ([40.107.1.76]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHqI-0002Zw-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 19:25:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwUUf+xos9Fu38Il5Ft1rLlvrmPC6fjcRreRxdTqCE2keVf+j+tRV9vnEsU5nnFwr/WtdZshMValEqJYk7xXs1kGWlVfShJEILdlpM72OiThybODsaPSlZ7omAF11VRcI6B4iMDh98+h9NNN79cwsAswnOs5U/NwCChsintWAhzI2Fg/0w2WM3Xw+39kmwvn6t+tur6Im4sA34FWUnqRGv7/F0fApDr42yOm5ZH2h00P1lvhjH/H7VPyrf2inzG4K2b8tzdxI/cgg7CwV+50+qNaBJkx5Cu3cVEUa4uc/DX6wzPbntCN+4EfUT+SuHT3ESVktgIugT9D+cWOUBfW5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zRr6IIQSfIOzAZex5zW8dYAPAp+aahvugMA72oRtshk=;
 b=ZU1KuehTWsi0WjIWcmQAAIXuCiw8UZTqeaaFaWa5GhghoQ+J25iOPOV5Bkp0rp6AwKd0l40kRFFtXLyJ1YANfteM0NvM3zQxxq6xXFlWp/hHztt24E4N5Mbgnuvzyjpod3jfR/99BNa/ztUk756cJz8zpjPHrdQ9IW3LLdcWGSYYfOdkFfnvvkGlYVbs1sZqg2kUuLLUbmi13OxQkK5Q0yx7YLS2FECr2Dx8Fi9pFt+qm7GON+/scQAXdBJDc59q5Hy2oW+1m/mxUzGMeOdgSKQJsvEcS7V6ch6ilgLr4aktJQX/60R2nyGghLNWG1jfWaMqTEYP6F/bNrHSOfP/Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zRr6IIQSfIOzAZex5zW8dYAPAp+aahvugMA72oRtshk=;
 b=aP8lAyE5RNz16DfZZIPlHoMxpO3vOsvfsbyVo4oC3c5KgiaF5pexNmEHPI0OijEHtNkWN045O9pZphWoAKXumebVsY3sRnCJt1Zg6zrViZdwEjp6pvjdG/AvTOdeDgOGEsOq/Pp+btzKuA5kh7sqhrRUpAxDqb6bsQT+CRAjJXM=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.244.87) by
 VI1PR04MB4430.eurprd04.prod.outlook.com (20.177.53.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Tue, 17 Mar 2020 19:25:27 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 19:25:27 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
Thread-Topic: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
Thread-Index: AQHV6Ar29fUTh/h0xEeUNN9RFuY7RA==
Date: Tue, 17 Mar 2020 19:25:27 +0000
Message-ID: <VI1PR04MB6941383E77EC501E96D2CBB0EEF60@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <10e97a04980d933b2cfecb6b124bf9046b6e4f16.1582216144.git.leonard.crestez@nxp.com>
 <158264951569.54955.16797064769391310232@swboyd.mtv.corp.google.com>
 <VI1PR04MB70233A098DC4A2A82B114E93EEED0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <158276809953.177367.6095692240077023796@swboyd.mtv.corp.google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 782aa1a2-dee5-4b89-fb80-08d7caa8f2c9
x-ms-traffictypediagnostic: VI1PR04MB4430:|VI1PR04MB4430:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB44307A11C734F634C6F033BEEEF60@VI1PR04MB4430.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 0345CFD558
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(199004)(186003)(44832011)(316002)(26005)(8936002)(8676002)(81156014)(54906003)(81166006)(5660300002)(7416002)(110136005)(71200400001)(2906002)(66556008)(7696005)(6506007)(66446008)(53546011)(76116006)(64756008)(478600001)(66946007)(55016002)(52536014)(91956017)(86362001)(66476007)(33656002)(4326008)(9686003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4430;
 H:VI1PR04MB6941.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lho5ObqdQ9QumK0hbpy8nzcTQp5OPuBIJTujmOjVNxDEWd6lzs41w1RGDbkUutxi9cyjGkQmvbqavLrG0ZFKEf1OJtzbqAyC+Tm51GbMRDSCmskHtf4816W6E84NDzgpYGoFI0WqzhnyAGRKG40QO+3rlUlFsc2u9oLV3R/E1fjDQrefk/yJuHuQiST6Xcbe1taFMmHojvg6lJBHSnQqporNf/cPzvzCafuLvqco+N1Q7PVfGe9LxXoqZ6Tx/0u6mn9KPenRUSEkoA8op5RiIRxnLekC+ZGkJvRAAv+w7TopQbp3Y3HdjiaXJJ0Mv8etDyO7XEIQIsNl2ZYu5ze2YSWFyEcvhSWGUKNWQTruQ6JPtrH+t9tg9ATOveU0xXx/Ci2AJUqWr++fxML81B64BXUNKm175C6ej/xpgj4ceoMpL98Dw6xxUJDjgto3OgL2
x-ms-exchange-antispam-messagedata: YMkPkaOe5AdkRaTySb+dJSfCThH+oCTZREqNFaoXUeqjzIqFMQqz0hs/Ekdef8LXzFG4NldAGPnTh7HHcDoadaFxtRX4i43hdF9TpYv2etfpUkjwJvVzSTKFJvn/Jil3boiVhrCUjpSgIOqdalepGQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 782aa1a2-dee5-4b89-fb80-08d7caa8f2c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2020 19:25:27.1351 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kjL3YHcLIkDqxJxcwD9HHp5SJiGzq0xdz9KuNyGvNhoQU2FzRstowWWjUFlSCfsnM+bmO5UPPvWIXDKYpXqWHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4430
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_122534_480351_2D569DF4 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stefan Agner <stefan@agner.ch>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>,
 Alexander Potapenko <glider@google.com>, dl-linux-imx <linux-imx@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Dmitry Vyukov <dvyukov@google.com>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-27 3:48 AM, Stephen Boyd wrote:
> Quoting Leonard Crestez (2020-02-25 11:52:11)
>> On 25.02.2020 18:52, Stephen Boyd wrote:
>>> Quoting Leonard Crestez (2020-02-20 08:29:32)
>>>> The imx SC api strongly assumes that messages are composed out of
>>>> 4-bytes words but some of our message structs have odd sizeofs.
>>>>
>>>> This produces many oopses with CONFIG_KASAN=y.
>>>>
>>>> Fix by marking with __aligned(4).
>>>>
>>>> Fixes: fe37b4820417 ("clk: imx: add scu clock common part")
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>    drivers/clk/imx/clk-scu.c | 6 +++---
>>>>    1 file changed, 3 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
>>>> index fbef740704d0..3c5c42d8833e 100644
>>>> --- a/drivers/clk/imx/clk-scu.c
>>>> +++ b/drivers/clk/imx/clk-scu.c
>>>> @@ -41,16 +41,16 @@ struct clk_scu {
>>>>    struct imx_sc_msg_req_set_clock_rate {
>>>>           struct imx_sc_rpc_msg hdr;
>>>>           __le32 rate;
>>>>           __le16 resource;
>>>>           u8 clk;
>>>> -} __packed;
>>>> +} __packed __aligned(4);
>>>
>>> Sorry, this still doesn't make sense to me. Having __aligned(4) means
>>> that the struct is placed on the stack at some alignment, great, but it
>>> still has __packed so the sizeof this struct is some odd number like 11.
>>> If this struct is the last element on the stack it will end at some
>>> unaligned address and the mailbox code will read a few bytes beyond the
>>> end of the stack.
>>
>> I checked again and marking the struct with __aligned(4) makes it have
>> sizeof == 12 as intended. It was 11 before.
>>
>>       static_assert(sizeof(struct imx_sc_msg_req_set_clock_rate) == 12);
>>
>> After reading through your email and gcc docs again I'm not sure if this
>> portable/reliable this is but as far as I understand "sizeof" needs to
>> account for alignment. Or is this just an accident with my compiler?
>>
>> Marking a structure both __packed and __aligned(4) means that __packed
>> only affects internal struct member layout but sizeof is still rounded
>> up to a multiple of 4:
>>
>> struct test {
>>          u8      a;
>>          u16     b;
>> } __packed __aligned(4);
>>
>> static_assert(sizeof(struct test) == 4);
>> static_assert(offsetof(struct test, a) == 0);
>> static_assert(offsetof(struct test, b) == 1);
>>
>> This test is not realistic because I don't think SCU messages have any
>> such oddly-aligned members.
>>
> 
> I'm not really sure as I'm not a linker expert. I'm just especially wary
> of using __packed or __aligned attributes because they silently generate
> code that is usually inefficient. This is why we typically do lots of
> shifting and masking in the kernel, so that we can easily see how
> complicated it is to pack bits into place. Maybe it makes sense to get
> rid of the structs entirely and pack the bits into __le32 arrays of
> varying length. Then we don't have to worry about packed or aligned or
> what the compiler will do and we can easily be confident that we've put
> the bits in the right place in each u32 that is eventually written to
> the mailbox register space.

These message structs are not as complicated as hardware register, for 
example everything is always on a byte border.

In older versions of the imx internal tree SC messaging is done by 
packing into arrays through a layer of generated code which looks like this:

          RPC_VER(&msg) = SC_RPC_VERSION;
          RPC_SVC(&msg) = U8(SC_RPC_SVC_MISC);
          RPC_FUNC(&msg) = U8(MISC_FUNC_SET_CONTROL);
          RPC_U32(&msg, 0U) = U32(ctrl);
          RPC_U32(&msg, 4U) = U32(val);
          RPC_U16(&msg, 8U) = U16(resource);
          RPC_SIZE(&msg) = 4U;

The RPC_U32/U16 macros look like this:

#define RPC_I32(MESG, IDX)      ((MESG)->DATA.i32[(IDX) / 4U])
#define RPC_I16(MESG, IDX)      ((MESG)->DATA.i16[(IDX) / 2U])
#define RPC_I8(MESG, IDX)       ((MESG)->DATA.i8[(IDX)])
#define RPC_U32(MESG, IDX)      ((MESG)->DATA.u32[(IDX) / 4U])
#define RPC_U16(MESG, IDX)      ((MESG)->DATA.u16[(IDX) / 2U])
#define RPC_U8(MESG, IDX)       ((MESG)->DATA.u8[(IDX)])

and the message struct itself has a big union for the data:

typedef struct {
          uint8_t version;
          uint8_t size;
          uint8_t svc;
          uint8_t func;
          union {
                  int32_t i32[(SC_RPC_MAX_MSG - 1U)];
                  int16_t i16[(SC_RPC_MAX_MSG - 1U) * 2U];
                  int8_t i8[(SC_RPC_MAX_MSG - 1U) * 4U];
                  uint32_t u32[(SC_RPC_MAX_MSG - 1U)];
                  uint16_t u16[(SC_RPC_MAX_MSG - 1U) * 2U];
                  uint8_t u8[(SC_RPC_MAX_MSG - 1U) * 4U];
          } DATA;
} sc_rpc_msg_t;

This approach is very verbose to the point of being unreadable I think 
it's much to message structs instead. Compiler struct layout rules are 
not really all that complicated and casting binary data as structs is 
very common in areas such as networking. This approach is also used by 
other firmware interfaces like TI sci and nvidia bpmp.

imx8 currently has manually written message structs, it's unfortunate 
that a bug was found and fixing required a scattering patches in 
multiple subsystems. Perhaps a better solution would be to centralize 
all structs in a single header similar to drivers/firmware/ti_sci.h?

In order to ensrue that there are no issues specific to the compile 
version perhaps a bunch of static_assert statements could be added to 
check that sizeof and offset are as expected?

---------------------------------

As far as I can tell the issue KASAN warns about can be simplified to this:

struct __packed badpack {
     u32     a;
     u16     b;
     u8      c;
};

static_assert(sizeof(struct badpack) == 7);

static void func(void *x)
{
     u32* arr = (u32*)x;
     arr[0] = 0x11111111;
     arr[1] = 0x22222222;
}

static int hello(void)
{
     struct badpack s;
     u8 x = 0x33;

     printk("&s=%px &x=%px\n", &s, &x);
     func(&s);
     // x could be overwritten here, depending on stack layout.
     BUG_ON(x != 0x33);

     return 0;
}

Adding __aligned(4) bumps struct size to 8 and avoids the issue

Added KASAN maintainers to check if this is a valid fix.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
