Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3500C78487
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/tGY+QKr/5UspZFYgLoUnKkKrHv7FUutyJXEKoGmpo=; b=kMUJBUWmFfiJen
	esu0Ok8zkZnIobSQDyPM54QUn1p7fLqJbabPVEDXaHmuhocdVdpPtRnTVQHmhnP9YBJFiPZl1xTMe
	qOa9q2q9xE+lYhteMeb7xpFXlRJm+54azDTc5sPHAdgUWu/1GZxvPHmdHTZ2BWxKDdUtZ8SZRBbdD
	5oKCa2RD1JVJR2eOkKklQQkv7Fv2sBursY8Kx02b04jTnzVGpT8ivaVRLl2eQ5H9yZHGYgMkZEXDL
	gSYUPk5Aypf5MAjAeSh9hrpn12QfgXDBY5zzk2AxUvNE6WrUJqYTQnzUShl+umDmUGONVz6DhjYai
	kXFMZ9vnLE2jeXIIX+OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrySj-00009r-Em; Mon, 29 Jul 2019 05:44:45 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrySJ-00009J-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:44:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564379045;
 bh=CFTAnV+JKG1Y4wZfBtZhC5MNxxIlU1OdRc/wca9swZI=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
 b=Q2TWJP129E9FI/uW74sw1N9Rdr9V+ia/aUCXERiUHfO+1Aay4fGh78qCWpDjvkoFR
 cSNsjucIDRInZc8OdQ+eQYThjiOJnNbp+gGuKHrkV6z33YVvo7AVLDQYHpkuKQfCF4
 2zuF/rFfK/PwSOIt7Mm3W1nQMLmQwUl03FLZ0/PE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.117]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M7H2Y-1icf9n2BBG-00x4Rs; Mon, 29
 Jul 2019 07:44:05 +0200
Subject: Re: brcmfmac: Probing regression in Linux 5.3-rc1
From: Stefan Wahren <wahrenst@gmx.net>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Chen-Yu Tsai <wens@kernel.org>
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
 <20190723093442.GA27239@lst.de>
 <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
 <b15509d6-bc2e-3d06-0eea-943e6e456d62@gmx.net>
 <5f9b11f54c66fd0487837f7e58af3adf7f86635f.camel@suse.de>
 <CAGb2v66-o23CW5iH9Bn1aELymPSiKrA43eJd2q6EZ7iubcogaw@mail.gmail.com>
 <ab7af8537ebcbc7a7bdf04d2c06152ba6821b333.camel@suse.de>
 <3daef629-8baf-3c5c-16a4-73d67604d1e5@gmx.net>
Message-ID: <b28f81b7-f812-220f-dcf0-61dbfdce50b4@gmx.net>
Date: Mon, 29 Jul 2019 07:44:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3daef629-8baf-3c5c-16a4-73d67604d1e5@gmx.net>
Content-Language: en-US
X-Provags-ID: V03:K1:bhg3HeZuoRPTYEoKMN6P+ztFVo4zA66p1dLMelZKYN2RzT/yKNL
 7su6G+fId0SNYqszVj5J21ijlkL4cJuRQh0Z+Ya906DdMGtZ9sqKKlTe0dGOWp4Iq8OXJK3
 jj2b3ldOxJbNFj2xCpS4sh3ZHOCAxGfLPwDnyq6K4daMO+zHALut0hiKJn7NOXlN5Wx/nfp
 CyzYoI/R5eWuOuUMmSG8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xO7C9DBpyRU=:Rd/HvVSqBH2dDX9pXNd3Yj
 SBbeY5w5cznqeK+jaud9e5M1sCMSkKppoIT5czdGaNFJ2jn6OKtlXthnf7RGyqkvfBTo5ZFsN
 Vtd9eIztODAoR9qhAesXsS7p5OTl+/+Gp/PuIsC4WEAGXreTY4jNF0xUtP1oKfPrkvEv97mJH
 3fdNGIxQhAD8dgGxU3O4uMuNKdsXLmb2xlJvET9Q/G32PaT60dx2FUNjP/49L3X+50zt9QFvE
 4MQxWmR2u2FFvEJZ845/hdN5PTEb49JzU3yjbNsQyTS+BXzeKfrDl0y9BuD3usonRTMSt3Us3
 ngmu4YsPPGPT/UBtmbAHReg+Y1pV+Mm+C+ZRoNLBJ22mn3kRxgob0XYyj6gg29q5DOMGgxbyx
 8tQ1KGwK8DiPLpqpDIC4PML/lVCSVGGYhYuhqo510EZVzFlRn1qsIQYB1Em5EB9mmj1QJ6jZ1
 Y/QvbPqJQ2tPBRPtBgxXINVcPHUnuUaLD9vJVW7/XoPrE63TtKGNydQmg+KJjBJKJnw+84UhW
 tT3zwNwt0p+296FxhvJj3VsujUt1kUyGrbZZO4/DyOVBA1YEEBL5wt+c55w0ZxCT977Npv+E8
 FCqxBkqHkGDAkLunbT16iR05ECLtm3S89OAh8rqMELk4fYTQWHBMHa69j2ytDaCoXYy5ju1L+
 JV2ngB7BZ63oIlCjSYGhtVPmzB3fNFG4+namYeq4e4HXYQj33t95KlzmOstwTS4WIcot4O+JJ
 lA/E6lX0MqNrUBTpiqj4bEEYStCYTJpMTXoikgXxe4DLiBHkV9DaIkjI9/GZyAkinDynGaA/U
 aP1jzvJGI1YTgvwCP7av6TsBfM0SjRHro4ufla9lgPrVee3xnVTNVAHCQ6IW4oAGDCbJNmY2A
 SujzDSAEn3HSW606JGq4qko6JZDefChG5K1Falnqd/aVUfGRARakivSlmuYYWo3qHCC+0X5kP
 J848s8xsB8BRf4eQBa4z92ccTa108AcveIhPVQGNN6vw4NC2iNkeodxNS94OzePe2Jh+pZrU9
 ElhOi6XCRtaTJnSF/wVnMlzhfwMnv/eMix2krILF0dPHQB1jJ8Y2Zxp00MOdMY+umDVJSxK4b
 8xRNWh8z1XQscw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_224419_951033_90684550 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arend van Spriel <arend.vanspriel@broadcom.com>,
 Johannes Berg <johannes.berg@intel.com>,
 Chi-Hsien Lin <chi-hsien.lin@cypress.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 Wright Feng <wright.feng@cypress.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 27.07.19 um 17:17 schrieb Stefan Wahren:
> Hi,
>
> Am 24.07.19 um 10:37 schrieb Nicolas Saenz Julienne:
>>>>> Does it fix the wifi issue too?
>>>> Well it works as long as I revert this: 901bb98918 ("nl80211: require and
>>>> validate vendor command policy"). Which has nothing to do with DMA anyways.
>>>>
>>>> Was this the issue you where seeing?
>>>>
>>>> [    4.969679] WARNING: CPU: 2 PID: 21 at net/wireless/core.c:868
>>>> wiphy_register+0x8e8/0xbdc [cfg80211]
>>>> [...]
>>>> [    4.969974] ieee80211 phy0: brcmf_cfg80211_attach: Could not register
>>>> wiphy device (-22)
>>> We're seeing this on different platforms (allwinner / rockchip / amlogic)
>>> with Broadcom WiFi chips. So it's unlikely to be related with anything in
>>> this series.
>>>
>>> I believe a fix for this has already been queued up:
>>>
>>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211.git/commit/?id=91046d6364afde646734c7ead1f649d253c386e9
>>
>> Thanks for pointing it out, it fixes the issue alright.
>>
> i cannot confirm. I still need to revert Johannes' commit "nl80211:
> require and validate vendor command policy" to get brcmfmac probing on
> Raspberry Pi 3B+ and 4B.
>
> The commit "nl80211: fix VENDOR_CMD_RAW_DATA" didn't fix the probing
> issue (see warning above).
i rebased my series on top of Linux 5.3-rc2 and issue disappeared. I
assume the commit "wireless: fix nl80211 vendor commands" is also required.

Sorry, for the noise.
>
> Regards
> Stefan
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
