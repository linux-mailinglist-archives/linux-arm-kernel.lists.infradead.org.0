Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03749B54E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 19:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWwF1r4/ocIyJMwOJtJKavufCKNxH44Yy8X6yJIAGx0=; b=sWOtGJm9FVW9R6
	IjokuYzFcLI99VNgJHfMr5dpxZg3Ta9Z7eoR0VBJ/bjA22H96pE7owZQbOmwm4kzU7YZBJs4A4KO0
	RNzuFsFCRWEcflN0A0FdnxGdTwrggzeLmUKfF7b1H3ozSjYe8xQqKCpaLLixDtqDbosiT7HWsXrcY
	qXpwqz5ryapU3Ae1urPZ70Arnvz/M0Y0Da8YZtmtunubb2a3DiE2ZJeKOIRojxWZL7rMcOYFI+Kq0
	jS2mKMmsfzRV3LswY8eW90sGJuhz2zbMFWwD3RJJBPHxLCE/1TWHYGwhw2PxUGC4NBZ1djQPHT9IC
	Pwg54d7FrXCFmhDnXq/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1DBf-0002H6-EB; Fri, 23 Aug 2019 17:17:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1DBZ-0002GP-16
 for linux-arm-kernel@bombadil.infradead.org; Fri, 23 Aug 2019 17:17:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:References:
 In-Reply-To:Date:Content-Type:Subject:Cc:To:From:Message-ID:MIME-Version:
 Sender:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8I3GMOfSYnw73wcdR/lryCh3ZfCDl457JnZTWO3fL+M=; b=g10/qmVPZ8equmczk+3YCRHlye
 uZaX22515/zweTTnrHX8o7VA8jQjJ6hVQB09tzHzNGKBw/jm7fbauBxihLKC6Gq2g5Vg4hfgVnkoE
 jkm8JdeWzAop/iYPbvcpeReDR0m6DW24DlUoZm5V4kAkDgMtCRg32gNFpjcJyg+rA421fEWLbuLTh
 HuDeJ9oYMAQMQIwSMGiIvXeJgPMRMgvluMSUYm13wWUHDz3p08vk3feqJZaiIE03DnGcyOGuounnq
 qd97DdolWbajl6vMrs/PhhFTwbVEgIIUfzqfr6jTXp53a4WJdT0zohfk3v2OeslWsX3YYdDRIZoiC
 QNj1PsgQ==;
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1DBW-0003Rj-0l
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 17:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566580580;
 bh=KAOdaynKbihaITcaFt4WqiyRLZbtSP/RJI/uMxSYwAA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Xusb0Xj64yL0T6lEq8KfvIbQDlrHe2gC7RLsib5J7rTaqGSAMg6/Ur+73Ny2qekSq
 8r9+RAb9gtoR7XFFc6mC31NlMvYo3q3cgFMEtFchyGoO/+De2yJYzL5qDkxhAlZ746
 XuwMFuSlD//ORk1PvvrRpTE0thLPtaGwE/GSjqz4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.154.8] ([217.61.154.8]) by web-mail.gmx.net
 (3c-app-gmx-bs75.server.lan [172.19.170.219]) (via HTTP); Fri, 23 Aug 2019
 19:16:20 +0200
MIME-Version: 1.0
Message-ID: <trinity-a57f08bb-e30e-4e74-911c-c40e335d00da-1566580580817@3c-app-gmx-bs75>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: Aw: Re: [BUG] [PATCH v5 02/10] mfd: mt6397: extract irq related
 code from core driver
Date: Fri, 23 Aug 2019 19:16:20 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-3-git-send-email-hsin-hsiung.wang@mediatek.com>
 <trinity-1f82bff1-535e-47cd-9a2f-8faccb56e356-1566562433314@3c-app-gmx-bs11>
 <e8a918ab-3e7a-b487-db77-df28d56518ce@gmail.com>
 <0A87F427-2D81-412A-9549-09A51A021799@public-files.de>
 <b5a21908-faee-17d1-ce26-99b941c0fa70@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:M6tggHu2jkIqLMSHLX83dNUDyHrefgQf8IujR0hyiRKzkuklyndiHW9nYGEkuLXCbOFMO
 SU+tldv0OOjj7fhdIotEInIhprMyKcHFTkDmg3Efi+cKsHLNCA4guu9ErTmP0DGbBBpZpN41036a
 tuKt30R+dNFMZUaZY7u53km3KLRC2mt9/svU71MSZNnuo+/30tBC7dIXkuBB4vRLB+OQsdK4O50+
 XX6VyQNrBSgCyXPZ1HhTjjLmG/rbSC9Y4CbSc2JU2HAPRc62AwxY1qZsv6BFDYP7/gsYLXNh4pyc
 20=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:TOoEHewdCY8=:S/v5Ky3YBDWNjot/2PylTF
 kK4NljRpELNyO9TgpRHOWLeukFdMAosLfLxz3bWRabDlr3Sfb/rlMknadYnt7/PvLo2b3piM1
 smjOdh6YxQQuRfqIMtvhk5i6BbszdW3monJEzwT+6Kky7MJIES1cblfZ11cvocxi2NZInCaCT
 rTdZFThb/PDsgySQMgfbLL3ETPBcAQS+YtdZRS/7hDoiNYkYpCyxw0xZ+LbUOd02TY9KFuoNh
 +Eb/5DGmKIn7gvJKawUveefsQvtzoYPVBUrPR/IgdXMpyce7AHlatkvq0lxNp098Yy+tO995P
 1zQq4mgbIHnkw3zZkhw0IBAYfpBGkTqhmrzJQ7+ePW2AEZ2zwzZY08fuv/O0X6DEXqO2dELtd
 /zDW//zdP5Ns35UQN/VOEl6zp+/NzWh6kfYCtQ/eW3Ns2eFrdreUSaJBzmH18vpsMZ86rpmXS
 ib8TdXaLtUf981KqYi0y3TWbY8KkzmW0VtFuAc7arSxVf/ZSdRhFM07FyiD4uwDASn+EVYLU8
 JOkoLAghKWioW2JbWYU3cAdvK47ZHFdRFzdXFMSJePxEGvew4Y+hNXk1icKwNpUZjMtHzDvBF
 0b6mmpA96LbZ7PR6g8lsDIU2M+8snOHHumaDSNyt+N2sZFA4EMTfFaMec5EZR45lxuMBlvd3w
 sipzH8uF4e4HsVt40jHmE4miAlyyc1ED5nuwyGLE0/9eNzw==
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Sean Wang <sean.wang@mediatek.com>, Liam
 Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>, Thomas
 Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Gesendet: Freitag, 23. August 2019 um 17:42 Uhr
> Von: "Matthias Brugger" <matthias.bgg@gmail.com>

> I suppose that's because 3/10 has code that should be in 2/10 and for some
> reason 3/10 was not pushed for linux-next inclusion. Although it has the same
> Acked-for-mfd-by tag.
>
> @Frank, can you test if adding 3/10 to your code base fixes the issue?

adding part 3 [1] seems to fix the issue too

[    4.960051] mt6323-regulator mt6323-regulator: Chip ID = 0x2023

thanks

[1] https://patchwork.kernel.org/patch/11110509/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
