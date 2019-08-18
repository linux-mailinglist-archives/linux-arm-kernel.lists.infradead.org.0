Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE789173F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 16:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siFtc0qxDJU/KGA2Y1UKMSylM0KsHJ2iuDe1vz60vAY=; b=Jo3BP5UrA2Qp4d
	ALCexrpAhLfIPe6k26fMy22ocKSZb4zYPm++gw22/qUungF/1TRIxi9VB9wqj0PrLFkAXbiOizes7
	oXfPwOSXjzztCLAewrnryXQOVulmNdpAA2/htbqrvxAhKUxcD/siV+8qu98/NQf1JHE9bl8yu4Ban
	n2QE8ARuYj3DMWPnAAtz6aRvuLiyiwVDsAcm/1vhrHFESal0FmdrqaIsaDfU40HLdnveoLdQ5lgXv
	WrgVaBdgWw5GNVMd115M+cd8Txkfj31//x+1hl5Dqv8ab0NI0jcK+scGUjx7rAz5Kh91QrA/PUB9h
	gtJ7NI5Sm8Tdj4QIldZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzLpC-0004AV-PF; Sun, 18 Aug 2019 14:06:26 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzLoz-0004A9-7o
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 14:06:14 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D714D62477; Sun, 18 Aug 2019 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566137171;
 bh=3iB5FJ0CuJIPFWd2++bXxfiZj0JORK12CVvbIvi1z0w=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=IeHqfvxuDWNwsP40NJpXgVVDLMQVa2J3MKLGBNTZ1/q05IulKbBzxWFDRHpuugXsp
 7xcj1rcnQJJVE0zHPjuPvbKljbboMOkOtlJo4c5aiDfBT06pQ1m4Qp39MjPj9fvBxc
 scKCel/SkB1s9dEtYpIQ1jCV8pd3zs8+812UTL5M=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id A987E623A9;
 Sun, 18 Aug 2019 14:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566137169;
 bh=3iB5FJ0CuJIPFWd2++bXxfiZj0JORK12CVvbIvi1z0w=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=f0HFCpmWjQVFgQWQzRJZHqurlPOEq1tZkqXJp1LDBNOD7pKuf9GxiSw+T9eWSQycz
 3+GkOCmlL+MMXng/5OUvT8BP/qEOjTY+aHOD6D3cxONDNIXN0Qio5Uw7DdjjU6IG/w
 0S2C0f7CK9s4Va8Bi2VpcWM87C1S37FNnsD1N8to=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A987E623A9
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: wifi on Motorola Droid 4 in 5.3-rc2
References: <20190818104629.GA27360@amd>
 <CAOf5uwnUx3mtGGHFGqKB30qcb_AMhMEhHLp2pf-4pUdhi7KP7w@mail.gmail.com>
 <20190818114332.GA32205@amd>
Date: Sun, 18 Aug 2019 17:06:05 +0300
In-Reply-To: <20190818114332.GA32205@amd> (Pavel Machek's message of "Sun, 18
 Aug 2019 13:43:32 +0200")
Message-ID: <87h86elgaa.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_070613_305165_920A747A 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>, mpartap@gmx.net,
 Tony Lindgren <tony@atomide.com>, Merlijn Wajer <merlijn@wizzup.org>,
 "open list:TI WILINK WIRELES..." <linux-wireless@vger.kernel.org>,
 kernel list <linux-kernel@vger.kernel.org>, Sebastian Reichel <sre@kernel.org>,
 nekit1000@gmail.com, Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pavel Machek <pavel@ucw.cz> writes:

> On Sun 2019-08-18 12:53:01, Michael Nazzareno Trimarchi wrote:
>> Hi
>> 
>> On Sun, Aug 18, 2019 at 12:46 PM Pavel Machek <pavel@ucw.cz> wrote:
>> >
>> > Hi!
>> >
>> > First, I guess I should mention that this is first time I'm attempting
>> > to get wifi going on D4.
>> >
>> > I'm getting this:
>> >
>> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 down
>> > user@devuan:~/g/ofono$ sudo ifconfig wlan0 up
>> > user@devuan:~/g/ofono$ sudo iwlist wlan0 scan
>> > wlan0     Interface doesn't support scanning.
>> >
>> 
>> Try to use iw command. iwlist use an obsolete interface that you need
>> to activate in kernel for back compatibility with old command. Can be
>> your problem?
>
> Let me see ... CONFIG_CFG80211_WEXT was not set.
>
> Tried enabling it, and now I got. I remember getting it before,
> too... let me try few more boots, perhaps it is random.

From developers' point of view WEXT is ancient and untested, everybody
should switch to nl80211. So I strongly using iw (which uses nl80211).
Of course this nothing to do with the wlcore warning you saw, just
wanted to make you aware the state of wireless extensions.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
