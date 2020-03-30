Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA2197AA0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFcFX3DA729vjTCRuhz1D6y6w1Fi2LAUR/eNdGlqUTw=; b=aCjJwXK41/cXBH
	WRonEbJfhFr5b16USGyfCUlfasdHSwH0pzV5CHVAaSOmwCyHtw5Qq4g4BBgaEh9jgYE2lmkmV//zi
	CEmdrvK3P/TQtTYgk+w5A3dKuaGp7si1ieP3IzgOPMJWVZtB+G8d/kxztUDI3CXctbkl9skG6ORT+
	nDbGUYcjyX4QxLusVcZspLqRM/1nXbQWaOLyNRXd+5vc6MkeE6mLOa2wQJvoYCPhemZ5r/k0nr92i
	/fodSenIfW/uaii4xYLYYaA8Vu8WuvcdVWdrqze7usHoJjMcfe5gzW04RrHY6PCzDoE/t/Kq21MBB
	3Suh3sRFeOGwoDNf/bSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsUy-0001NY-Fg; Mon, 30 Mar 2020 11:22:32 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsUi-0001J2-4B
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:22:18 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48rVRT66tdz1rx85;
 Mon, 30 Mar 2020 13:22:13 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48rVRT5d3Hz1qqkP;
 Mon, 30 Mar 2020 13:22:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id mS2VEcFxqWVX; Mon, 30 Mar 2020 13:22:11 +0200 (CEST)
X-Auth-Info: 6DQo6+2Jt/0Ys0iyC4ho2lD1FIRPcxTsElASb30D0Cg=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 30 Mar 2020 13:22:11 +0200 (CEST)
Subject: Re: [Linux-stm32] [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux
 for SDMMC2 pins 4-7
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200328171144.51888-1-marex@denx.de>
 <20200328171144.51888-8-marex@denx.de>
 <0fb89d25-feb0-2eb0-9e83-d7f8c76f8b9e@st.com>
 <82dcf412-119b-0de2-0c50-f6877a82a812@pengutronix.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <fcf49298-a36c-e80e-e62b-1fb9c07f0d6e@denx.de>
Date: Mon, 30 Mar 2020 13:22:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <82dcf412-119b-0de2-0c50-f6877a82a812@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_042216_322959_BE7F5229 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick DELAUNAY <patrick.delaunay@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/30/20 1:17 PM, Ahmad Fatoum wrote:
> Hello Patrice,

Hi,

> On 3/30/20 1:11 PM, Patrice CHOTARD wrote:
>> For your information, another submitted patch uses the same pinctrl sdmmc2_d47_pins_b node with different muxing (SDMMC2_D5)
>>
>> see https://lore.kernel.org/patchwork/patch/1216452/
>>
>> I haven't checked other muxing if there are other conflict.
> 
> (author of linked patch here)
> 
> I don't like the central stm32mp15-pinctrl.dtsi. I'd have preferred if each
> file defined the pinctrl groups it is using.

I'm not a big fan of that either, because this is gonna be a
combinatorial explosion of various pinmux options. But if you have each
board define it's pinmux, it's also gonna become a massive amount of
duplication (like iMX). So I cannot tell which one is better ...

So, just apply one patch or the other, let me know what got applied and
I'll rebase on top of that and resubmit if needed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
