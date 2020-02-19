Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834A116438B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:40:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rY5duN6PlNPDDpUdfCBEZvqvvIYrmYha1emHAghQm68=; b=R64lZK4mKLbGObwfWFKC1y0UY
	6GslLc/rn0u1JO6bHZlmvnz6uVLOXMVbizpyjFORLjzBxxsI/GDrjJc0z/bJS+ip+YqAOtEj+cWNw
	pqP2YprYYwKIUQqFjVgJ0CuO5G8JSzAiDMu2RalCvL9c33MEWUGknCThOAylrx7Izp9/hFaAq7LCq
	y450vlhe2Edf5zAkRGgUdI+WmRhbkxWYADUjXxM+bpAUFqfWU8XN62vawTB2cnvhQLY4lu5ozZ0uf
	NuSBN8SjWWUSzPXM126L1yTA4xo4byFaq94VmzlpD9B2zTUz/YW1FraXTM9Nj1xv7+Nz/d6DxkNEX
	aLSi/95FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NiB-0007FY-QX; Wed, 19 Feb 2020 11:40:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Nht-0007F9-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:39:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 661E924656;
 Wed, 19 Feb 2020 11:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582112397;
 bh=EXUl1JWfrXXyfkkwcZ/lzdzh6zboF8wVLeMeniqDP6E=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VGOS0hqoJRknWZEPNcUbm2I8slj+Bapv4lc9hrVPyMzzUHLpJMPopzbtVxwLyXfpD
 UQTHi9nJ83mfzsYLpnc+ZsOrWyj/S6A+oSI4L5D1Hy87OY5pFQkrksLTqnN35dkGPX
 3bOiO86jd9n1Yystpvmvif5zVABSVwlfodB+N8N4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j4Nhr-006Ufj-O6; Wed, 19 Feb 2020 11:39:55 +0000
MIME-Version: 1.0
Date: Wed, 19 Feb 2020 11:39:55 +0000
From: Marc Zyngier <maz@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH 2/2] pinctrl: stm32: Add level interrupt support to gpio
 irq chip
In-Reply-To: <24e7fe14-f4a2-503a-b1a2-777b813917b8@st.com>
References: <20200210134901.1939-1-alexandre.torgue@st.com>
 <20200210134901.1939-3-alexandre.torgue@st.com>
 <377b0895-aaeb-b12e-cad7-469332787b4e@denx.de>
 <dd6434a7-aff1-94ec-2fdf-51374c695ada@st.com>
 <b7965be80f0e5fe32599f188ae8b231d@kernel.org>
 <24e7fe14-f4a2-503a-b1a2-777b813917b8@st.com>
Message-ID: <3d6e666de8e65f913d9f90c67d5d8e46@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: alexandre.torgue@st.com, marex@denx.de, tglx@linutronix.de,
 jason@lakedaemon.net, marc.zyngier@arm.com, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-kernel-owner@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_033958_045984_FBFA75B6 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Marek Vasut <marex@denx.de>, linux-kernel-owner@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-19 11:30, Alexandre Torgue wrote:
> On 2/19/20 12:19 PM, Marc Zyngier wrote:
>> On 2020-02-11 10:08, Alexandre Torgue wrote:
>> 
>> [...]
>> 
>>> Yes. It'll be fixed in v2.
>> 
>> And when you do that, please use my official email address (my 
>> @arm.com
>> address goes to my ex manager, and I don't think he cares much about 
>> this).
> 
> Ok I update my script.

Surely your script is a wrapper around scripts/get_maintainer.pl, right?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
