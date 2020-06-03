Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9710E1ECD8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 12:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8qwsEMK9ovk7WT0Mrs8rk3Zkvi4pLMlzzALUmnagYjw=; b=IjWm4bZTUx+W4fqzfqg+ODDON
	jktS9bZZgQ4FPpPyVFlURLnKju/qWIPKf+uQ5qd9eGeinCL8LP9T2eCdo7+ZD/tM8YKLp9eysiF7Q
	Yq/YBU0eu35YM5xXh34Doja4ODuCzylmcqgEDlz704GwvdLtJlZZHuhXhLgqeIMIvet43O8e0l/6d
	FiM17+KzNGkLlIXs/2VUtlVY0IpdiPBKgKvKKW5gAePamjBJDhIcSKAe/hs+QWdAkW98rszIh/z5N
	6MbB3aAB7Mw53uZu/jOKGRBu5idtrMYlJaRMNXGMF/bIIvrd6O7Xr95MA6g76u9m1ywx7HuOpOSFX
	p1bo1r/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgQcw-0005ga-TF; Wed, 03 Jun 2020 10:28:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgQcn-0005ff-9O; Wed, 03 Jun 2020 10:27:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 53CE52A3AC2
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Emil Velikov <emil.l.velikov@gmail.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Subject: Re: [Linux-stm32] [PATCH v8 08/10] drm: stm: dw-mipi-dsi: let the
 bridge handle the HW version check
In-Reply-To: <CACvgo51QyzEa8LFpGq5zjYV-0TifQRtNh4WhMYy8jNtaswxd7Q@mail.gmail.com>
References: <20200427081952.3536741-1-adrian.ratiu@collabora.com>
 <20200427081952.3536741-9-adrian.ratiu@collabora.com>
 <4acc09e8-0610-01f6-b18d-3ffc390c45a3@st.com>
 <87blm387vt.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CACvgo51QyzEa8LFpGq5zjYV-0TifQRtNh4WhMYy8jNtaswxd7Q@mail.gmail.com>
Date: Wed, 03 Jun 2020 13:28:54 +0300
Message-ID: <878sh48mu1.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_032757_492605_39FF8B17 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Philippe CORNU <philippe.cornu@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick FERTRE <yannick.fertre@st.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 "kernel@collabora.com" <kernel@collabora.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 02 Jun 2020, Emil Velikov <emil.l.velikov@gmail.com> 
wrote:
> Hi Adrian, 

Hi Email,

> 
> On Mon, 1 Jun 2020 at 10:14, Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> On Fri, 29 May 2020, Philippe CORNU <philippe.cornu@st.com> 
>> wrote: 
>> > Hi Adrian, and thank you very much for the patchset.  Thank 
>> > you also for having tested it on STM32F769 and STM32MP1. 
>> > Sorry for the late response, Yannick and I will review it as 
>> > soon as possible and we will keep you posted.  Note: Do not 
>> > hesitate to put us in copy for the next version 
>> > (philippe.cornu@st.com, yannick.fertre@st.com) Regards, 
>> > Philippe :-) 
>> 
>> Hi Philippe, 
>> 
>> Thank you very much for your previous and future STM testing, 
>> really appreciate it! I've CC'd Yannick until now but I'll also 
>> CC you sure :) 
>> 
>> It's been over a month since I posted v8 and I was just gearing 
>> up to address all feedback, rebase & retest to prepare v9 but 
>> I'll wait a little longer, no problem, it's no rush. 
>> 
> Small idea, pardon for joining so late: 
> 
> Might be a good idea to add inline comment, why the clocks are 
> disabled so late.  Effectively a 2 line version of the commit 
> summary. 
> 
> Feel free to make that a separate/follow-up patch.

Thanks, I'll add the comment to this patch in v9.

>
> -Emil
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
