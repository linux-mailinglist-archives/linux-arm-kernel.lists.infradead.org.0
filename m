Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 060E7199BFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hDuOfeU2sSvlEwONm2v1xc5yaeGXGIe7ZHy+dJOTnp4=; b=Nu1YaqGHD3x5qf
	wEZZzbgNRGvqZDFaZF9tgSQ+Dq7oEpcnfev6LWAJjZk+k+gBe4/VLedb/Sc3mfaWMVpEjImQksYo9
	4045wJkEaA5jpeCYUeYMWJUL47mZi7NyUS9OkhdP1ol9pF14OcUtVTu5QNkY/LMCNQJh2H9YlB+yU
	YQ/jGkgdRtyx/Lk35bGER9XAoQVSxOqhRcYtiw5eRSsckRv57TdZFLnoP3CP4lhFZ648ZctA1INtX
	oPbda6fPsDTI4hZb4mKeflOVwK/jo4seJz3tuGfVkPbVRZtV/s346Cx+lDw/C1Nih+wTeoEEMQTqL
	VvF5tAuoBlgxDEAW05hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJK0v-0007qd-83; Tue, 31 Mar 2020 16:45:21 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJK0d-0006uQ-Av
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:45:05 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sFYS5J9Nz1rqRR;
 Tue, 31 Mar 2020 18:45:00 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sFYS4R8qz1qqkQ;
 Tue, 31 Mar 2020 18:45:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 6hgpObiLdNkB; Tue, 31 Mar 2020 18:44:59 +0200 (CEST)
X-Auth-Info: psRQkpEs988+okZlJyNRpw83Kb11sIX32mkOCebJUTA=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 31 Mar 2020 18:44:59 +0200 (CEST)
Subject: Re: [Linux-stm32] [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux
 for SDMMC2 pins 4-7
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Patrice CHOTARD <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200328171144.51888-1-marex@denx.de>
 <20200328171144.51888-8-marex@denx.de>
 <0fb89d25-feb0-2eb0-9e83-d7f8c76f8b9e@st.com>
 <82dcf412-119b-0de2-0c50-f6877a82a812@pengutronix.de>
 <fcf49298-a36c-e80e-e62b-1fb9c07f0d6e@denx.de>
 <310aa3a3-09ce-42ef-d1ea-b653163d1d72@pengutronix.de>
 <97d13a84-8220-aa7f-3ee6-df474cca3882@denx.de>
 <43e88a1b-f3e4-df1d-38a6-0bb281a2f786@st.com>
 <871a5cc2-615d-b9e5-0eed-9a5a38be4f6c@denx.de>
 <69bce6d4-129e-b9ea-8fa6-f33d9047e3c3@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <9fb131ad-552e-61ad-75c2-5ebec501f356@denx.de>
Date: Tue, 31 Mar 2020 18:44:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <69bce6d4-129e-b9ea-8fa6-f33d9047e3c3@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_094503_528964_801BC539 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/31/20 6:39 PM, Alexandre Torgue wrote:

Hi,

[...]

>>> I agree, and I prefer to keep pins groups definition in
>>> stm32mp15-pinctrl.dtsi file. IMO, it is easier for users to find them in
>>> only one file. Actually, I already had this discussions with some guys
>>> "where pins groups have to be defined ?". For me (and maybe only for
>>> me), muxing is SOC dependent, I mean SoC provides a bunch a possible
>>> pinmux for each IPs. If we got enough memory spaces (and time to waste
>>> also) we could define all possible pinmux (AFx....) for each devices and
>>> let board users chose the good one (using stm32mp15-pictrl.dtsi as a
>>> database). In board file, you select one possible pin configuration
>>> (provided by the SoC) for your device according to your schematic.
>>> However you could append pin groups in board file to update bias,
>>> slewrate ...
>>> If your concern it to embed a bunch of not used pin configuration for a
>>> board, we could use /omit-if-no-ref/ tag on pin groups.
>>
>> Can we instead define pinmux the way e.g. iMX6 does , as separate pins ,
>> instead of pinmux groups ?
>>
> 
> Sorry but what would the advantage to do so ?

You'd have per-board pinmux which would be perfect fit for that board,
without potentially affecting other boards with changes, without hacking
various things like drive-strengths in board files, and without having
the combinatorial explosion of the current single pinmux file.

-- 
Best regards,
Marek Vasut

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
