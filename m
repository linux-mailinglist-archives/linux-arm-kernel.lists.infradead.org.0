Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43276188E6C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 20:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2XFUbvpEnpu/cX5YVD1UtvZWnyRR+ZhT2sqchzhQrA=; b=iiACjk6s/SC9Sm
	xMfsV+2gOWHmJmqsOPi7Y5qBqXQg+w4Vkn2x6k5OMTBKIrOscu52BXU7tazLLp9T5DIvau0C5m7bh
	pMz9wwWCZTMbbODU1HrwQepBmtTkuDT4pmN36XBCekt3MAmqUuYcH8Ra1uB2Uq5TzaUO7VaCKWzMO
	Bw1gglmKSca3C0BfkzQNvOl1AaFkM+JZo95iYOW6bT1FkN3EXJJhLqkuMvKsNcTX8XjbnwMHGnySp
	r+R37ZbxJNcySBmuLV7jaF8AiNowQ9K5zwqc2K/8y3s8q7vr1vSYpbm+gL3qw8tiMvqGc8g85gJzQ
	emt++v5tIaTsCIxyp60Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEIIs-0003mg-CD; Tue, 17 Mar 2020 19:55:06 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEIIZ-0003lX-PW
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 19:54:49 +0000
Received: by mail-qt1-x841.google.com with SMTP id e20so18656941qto.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 12:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=17f/5HAzacgo37aOQY2l5ZAXL11rooxUDN7MpTirpco=;
 b=m7MfNqI7gMKPghfs2UVKwM/5LopUKuTeY8MSGSoBj1VPrMcBmyBdq/onMG2S1zdZIw
 ro5llebBR7YgSBhsmf1qY753t++yy3CMmEcMqswp9IADP0PvSxzDwMYljHKp4KU0VjJp
 f9RPlWUS3p1R2Ec24MfOiTy8n91vsVPf0BfQ5xqWjgsGs2X1H2TBREhEarwyNN4Hz51T
 +XqQVH7DMP0oKCO9AxTVY+P5iks+vzOhpOsGUxc17xAABInayuIJxVoLVaJ2AnwaNTmp
 y9DalNbFJl814KpaIewrmUU1nWYlYxvZN35MSJwy/7a3XX3ByAzzUXK58//QvYpVTrgv
 ccuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=17f/5HAzacgo37aOQY2l5ZAXL11rooxUDN7MpTirpco=;
 b=KDrlF3lkBT306JE7eJHY1T8k5jrElqCv4ev41nI/nzOanT5UDkB6QDTrVCnJ0bD7eV
 175bw+wEJQDPi0S3gbncu7owm8fQzy2ZAC9aWhjbm8DsPqMO8uDzzAAROduIjjwojpaY
 QnkKwigf6QR8jCdozW7MglFt9w04o3PhidTL+OKm8Hz9znWfBEARCM7vH6bQlBwSL9sa
 6jdL6CB+ZMH24qdNNa8MO/SZvp6M6nyLa9Df9lUHKFn0yguQSaZdRmvGLAehnqm+IpCv
 qDaA4/AWs3UNoZe2v9yGsm/LrN9qTEOBm3aScqNBxjdIFzM10Bwu1uqk6Gfs5JB4qOog
 OAGg==
X-Gm-Message-State: ANhLgQ0+fYQIS+H5IUnZjQTwQ2nVwWHqLKUCjjm8dXNs3kceWxeypMp8
 +ooX13AH0d8CwR06bzTIJ6jOSWKD73rm3BI8aQmehA==
X-Google-Smtp-Source: ADFU+vu6wS9JeHtmW3epgzOV1MST2nNVB0ceK2w3js281Cy199cEhhv8WPpeAy8Syv2R39HVJ9suMHNI23wVqxhnpzk=
X-Received: by 2002:aed:38c8:: with SMTP id k66mr928098qte.50.1584474883559;
 Tue, 17 Mar 2020 12:54:43 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1582216144.git.leonard.crestez@nxp.com>
 <10e97a04980d933b2cfecb6b124bf9046b6e4f16.1582216144.git.leonard.crestez@nxp.com>
 <158264951569.54955.16797064769391310232@swboyd.mtv.corp.google.com>
 <VI1PR04MB70233A098DC4A2A82B114E93EEED0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <158276809953.177367.6095692240077023796@swboyd.mtv.corp.google.com>
 <VI1PR04MB6941383E77EC501E96D2CBB0EEF60@VI1PR04MB6941.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB6941383E77EC501E96D2CBB0EEF60@VI1PR04MB6941.eurprd04.prod.outlook.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 17 Mar 2020 20:54:31 +0100
Message-ID: <CACT4Y+Yqrx+GXF9+_oPY+4HXhufN=eoghUcimSzhWsQbLz75wg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] clk: imx: Align imx sc clock msg structs to 4
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_125447_855876_243370D9 
X-CRM114-Status: GOOD (  35.32  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stefan Agner <stefan@agner.ch>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Franck Lenormand <franck.lenormand@nxp.com>,
 Alexander Potapenko <glider@google.com>, dl-linux-imx <linux-imx@nxp.com>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 "kasan-dev@googlegroups.com" <kasan-dev@googlegroups.com>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 8:25 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 2020-02-27 3:48 AM, Stephen Boyd wrote:
> > Quoting Leonard Crestez (2020-02-25 11:52:11)
> >> On 25.02.2020 18:52, Stephen Boyd wrote:
> >>> Quoting Leonard Crestez (2020-02-20 08:29:32)
> >>>> The imx SC api strongly assumes that messages are composed out of
> >>>> 4-bytes words but some of our message structs have odd sizeofs.
> >>>>
> >>>> This produces many oopses with CONFIG_KASAN=y.
> >>>>
> >>>> Fix by marking with __aligned(4).
> >>>>
> >>>> Fixes: fe37b4820417 ("clk: imx: add scu clock common part")
> >>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >>>> ---
> >>>>    drivers/clk/imx/clk-scu.c | 6 +++---
> >>>>    1 file changed, 3 insertions(+), 3 deletions(-)
> >>>>
> >>>> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> >>>> index fbef740704d0..3c5c42d8833e 100644
> >>>> --- a/drivers/clk/imx/clk-scu.c
> >>>> +++ b/drivers/clk/imx/clk-scu.c
> >>>> @@ -41,16 +41,16 @@ struct clk_scu {
> >>>>    struct imx_sc_msg_req_set_clock_rate {
> >>>>           struct imx_sc_rpc_msg hdr;
> >>>>           __le32 rate;
> >>>>           __le16 resource;
> >>>>           u8 clk;
> >>>> -} __packed;
> >>>> +} __packed __aligned(4);
> >>>
> >>> Sorry, this still doesn't make sense to me. Having __aligned(4) means
> >>> that the struct is placed on the stack at some alignment, great, but it
> >>> still has __packed so the sizeof this struct is some odd number like 11.
> >>> If this struct is the last element on the stack it will end at some
> >>> unaligned address and the mailbox code will read a few bytes beyond the
> >>> end of the stack.
> >>
> >> I checked again and marking the struct with __aligned(4) makes it have
> >> sizeof == 12 as intended. It was 11 before.
> >>
> >>       static_assert(sizeof(struct imx_sc_msg_req_set_clock_rate) == 12);
> >>
> >> After reading through your email and gcc docs again I'm not sure if this
> >> portable/reliable this is but as far as I understand "sizeof" needs to
> >> account for alignment. Or is this just an accident with my compiler?
> >>
> >> Marking a structure both __packed and __aligned(4) means that __packed
> >> only affects internal struct member layout but sizeof is still rounded
> >> up to a multiple of 4:
> >>
> >> struct test {
> >>          u8      a;
> >>          u16     b;
> >> } __packed __aligned(4);
> >>
> >> static_assert(sizeof(struct test) == 4);
> >> static_assert(offsetof(struct test, a) == 0);
> >> static_assert(offsetof(struct test, b) == 1);
> >>
> >> This test is not realistic because I don't think SCU messages have any
> >> such oddly-aligned members.
> >>
> >
> > I'm not really sure as I'm not a linker expert. I'm just especially wary
> > of using __packed or __aligned attributes because they silently generate
> > code that is usually inefficient. This is why we typically do lots of
> > shifting and masking in the kernel, so that we can easily see how
> > complicated it is to pack bits into place. Maybe it makes sense to get
> > rid of the structs entirely and pack the bits into __le32 arrays of
> > varying length. Then we don't have to worry about packed or aligned or
> > what the compiler will do and we can easily be confident that we've put
> > the bits in the right place in each u32 that is eventually written to
> > the mailbox register space.
>
> These message structs are not as complicated as hardware register, for
> example everything is always on a byte border.
>
> In older versions of the imx internal tree SC messaging is done by
> packing into arrays through a layer of generated code which looks like this:
>
>           RPC_VER(&msg) = SC_RPC_VERSION;
>           RPC_SVC(&msg) = U8(SC_RPC_SVC_MISC);
>           RPC_FUNC(&msg) = U8(MISC_FUNC_SET_CONTROL);
>           RPC_U32(&msg, 0U) = U32(ctrl);
>           RPC_U32(&msg, 4U) = U32(val);
>           RPC_U16(&msg, 8U) = U16(resource);
>           RPC_SIZE(&msg) = 4U;
>
> The RPC_U32/U16 macros look like this:
>
> #define RPC_I32(MESG, IDX)      ((MESG)->DATA.i32[(IDX) / 4U])
> #define RPC_I16(MESG, IDX)      ((MESG)->DATA.i16[(IDX) / 2U])
> #define RPC_I8(MESG, IDX)       ((MESG)->DATA.i8[(IDX)])
> #define RPC_U32(MESG, IDX)      ((MESG)->DATA.u32[(IDX) / 4U])
> #define RPC_U16(MESG, IDX)      ((MESG)->DATA.u16[(IDX) / 2U])
> #define RPC_U8(MESG, IDX)       ((MESG)->DATA.u8[(IDX)])
>
> and the message struct itself has a big union for the data:
>
> typedef struct {
>           uint8_t version;
>           uint8_t size;
>           uint8_t svc;
>           uint8_t func;
>           union {
>                   int32_t i32[(SC_RPC_MAX_MSG - 1U)];
>                   int16_t i16[(SC_RPC_MAX_MSG - 1U) * 2U];
>                   int8_t i8[(SC_RPC_MAX_MSG - 1U) * 4U];
>                   uint32_t u32[(SC_RPC_MAX_MSG - 1U)];
>                   uint16_t u16[(SC_RPC_MAX_MSG - 1U) * 2U];
>                   uint8_t u8[(SC_RPC_MAX_MSG - 1U) * 4U];
>           } DATA;
> } sc_rpc_msg_t;
>
> This approach is very verbose to the point of being unreadable I think
> it's much to message structs instead. Compiler struct layout rules are
> not really all that complicated and casting binary data as structs is
> very common in areas such as networking. This approach is also used by
> other firmware interfaces like TI sci and nvidia bpmp.
>
> imx8 currently has manually written message structs, it's unfortunate
> that a bug was found and fixing required a scattering patches in
> multiple subsystems. Perhaps a better solution would be to centralize
> all structs in a single header similar to drivers/firmware/ti_sci.h?
>
> In order to ensrue that there are no issues specific to the compile
> version perhaps a bunch of static_assert statements could be added to
> check that sizeof and offset are as expected?
>
> ---------------------------------
>
> As far as I can tell the issue KASAN warns about can be simplified to this:
>
> struct __packed badpack {
>      u32     a;
>      u16     b;
>      u8      c;
> };
>
> static_assert(sizeof(struct badpack) == 7);
>
> static void func(void *x)
> {
>      u32* arr = (u32*)x;
>      arr[0] = 0x11111111;
>      arr[1] = 0x22222222;
> }
>
> static int hello(void)
> {
>      struct badpack s;
>      u8 x = 0x33;
>
>      printk("&s=%px &x=%px\n", &s, &x);
>      func(&s);
>      // x could be overwritten here, depending on stack layout.
>      BUG_ON(x != 0x33);
>
>      return 0;
> }
>
> Adding __aligned(4) bumps struct size to 8 and avoids the issue
>
> Added KASAN maintainers to check if this is a valid fix.

Hi Leonard,

I think it should fix the bug.
It's not so much about KASAN, more about the validity of the C program.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
