Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F802104087
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fkS7GXcVrHuiRv//vmbv9EipTWZKWPTO0/F5zeCT0A=; b=CF4/31WPoA0fDn
	66w8kldpwHGQzQDJ10B6lBEB9TvFm9rZEnOvAKnDh2FKXma9+z5Z9Fom1pnjqWVDZt5tQCRT7xeuu
	86yyAcxT1t5DTH9gmjyDr0xg81clmXMBrJ6hVnbQozfPK/e42abWKcLKzPjqBIFCP7/8hHCTvzc/G
	bc7gfVqwPGQKY+LBzVOM6kwQkHnygiPo9yFMWohXvjp2igv8q6wFRWOgGoVGExDOtLo3MgipYoFFd
	BlUaKXlss+GPSByYskhmCPjBs57NQGutB3MEFh9yPammO0XTHU93aniMgKp7Gv+UAjoqicw7kmm72
	mOaccNPIVFqR5FF/938Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSfP-0000BK-2d; Wed, 20 Nov 2019 16:17:19 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSfF-0000Aq-Fv; Wed, 20 Nov 2019 16:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574266609;
 bh=RI4Q4Ucrk+rlZ3lrnsF6lENBGO63UxXhYlY8pNz55u0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=JZhc2sETppPeNxuagIr8jg0GNhX5QOvzodBK8qzSBAqsY3hSGqGHqp5zfmSfhQYfM
 QOtSuRtkxMtXYQeWvs6d6GUxAiBWh3A+khv2Pj0fLVvByrtiBGZNg9/L2FrkbepjGB
 /HR8jwsH1mJCnhFPJKHxm+axfWGnIPS2rVhrIOcU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MDhlV-1ifObe2TmZ-00Anrf; Wed, 20
 Nov 2019 17:16:49 +0100
Subject: Re: [PATCH v3 0/4] Raspberry Pi 4 HWRNG Support
To: Stephen Brennan <stephen@brennan.io>
References: <20191120031622.88949-1-stephen@brennan.io>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <99554159-6abb-6ea5-aebb-57a148a59b78@gmx.net>
Date: Wed, 20 Nov 2019 17:16:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120031622.88949-1-stephen@brennan.io>
Content-Language: en-US
X-Provags-ID: V03:K1:Z9dBjSZwZ2+O3WL2mwvh7agX4F2+npux6rP0HzJz7C0nP+tDAMC
 KQzPq0eTXEAk9jVgOlqT8vP2wmxww6+SUCR9j1HBLAIgFW3b28LVkdn2TThDIbufs4MFABI
 PMatIzczHcXblJkesfLPKedLAo8DOnWNpg9EkujbzNGC3T5LEsVijcyJMCB6r7amPqxqaRG
 uLGpUk3EeLHzdfwOP9now==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5jm9EYJO6bY=:myZF3slHJKl7WcF+aZXrdv
 MgzqvkteRURkYoUDmr+zhXM8Cfd8ghxg9jmh9hyLzE9+8Q9KavSc1UG0QJ8hxjle5WGnUKVHK
 fKWCm6Ka4PZUDypiw3/YmkJUWhwRsbigBECPDSQuzqJMXNoGMRU62rju/vmAlfCg6Y1KiGzH4
 es3vDusm6E59LFb05pmgjzDxRujv2M7xhtluZL4YX0DlslM95u8ZYRE7OsiGrM2UCL0RqNzlT
 M8ifb2Ol9A8emo7KVEsOUUc8b9Uqm0+JsveriLwGxachpE8h9nNB7UgMFwKiUmcrwhDFscfXs
 GmmC/VpQwr3a5pTX96NLWmuMXs94/vv19fcYsYSoy6BnWTf4ltERN7trSWpv27SlICn5jdVXJ
 k2bBlP8AJ3VITdGXEU2avbDAo23Cj7Gq4OUI3nsoN8XyIrdMSd08eQq/SnknmfI70QaPeKvLH
 rb2bA/tyy/SEy5UFTtkdXwcn8Rpw5kHbiiKiHPSbGvvedGZNomEVvUX/huJva/BdjY/tHSp0H
 EYERBhEXtg7rJIwpho2iba2QK6/+yjQJtm9oeMs2pBYBoYxME8weJrkeluI6LEYzRXdnG+qAM
 Zs2i+kBP3soYllo1WO3rnAywiD4+rLV8f+Oee5tAGOVprH7VURS4EluS6RBXPRzY2mmEcUUDH
 6vYBbBPu+ImtteiqKFs8rnvDnLVCba4X3PWLw7yjPc4RYEPkekKrvNuPinzW7vZFTlP0TSTZ1
 2urMBcgpk3RMiMAfXCIv1xVZYqiNF+cXCxEeUDR+LHCBsxBJRej0sYGt38L3ag3h1CSfPiuku
 gFzNGnoRfmOF8ktdn9KttnqLOqdDWUEYic/zmq3KGBVbgSm4AQgbDIky94lLUHuOIb3yo62Di
 lQnZievyT6r8Ku917SF3uaIL+70xnPlDNHV3if6OU8pFGDRqDWO5idKbvk280eEzuSDt+suQC
 g8i52ah/wHqPLXN6PDOFzI3ibwPDNPw7Oi/OLEWQ30KzmOpLzCIIQ5qPm0RojztSaYL2tePij
 GpF2lpg/RoNv+Ye83qNHQ557QuhEdCSsQ0XoQ5gTcrQXVtIhscclS989HwsnPkIiTxri0kxGs
 aXSc/f8jrfXCSkO5yq0iRJuOuLMIJSinfmQwjBZ7+LL+QcSx8VK8TH2pK34W9jBeIOou/q912
 UqALb5FoZBqGP6VAUMg6Hj+hPa8vXI3cs9XDTc5aOO5/ZKpfEganNQjC3hYdE/XkpGgWBsKOK
 VyKzPak831kNwWM8s/4oVjFofoAopFNktmQv9KHR4qWWwFAJBNPC+6Yltf6g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_081709_824156_FCB8E8D8 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matt Mackall <mpm@selenic.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-crypto@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Am 20.11.19 um 04:16 schrieb Stephen Brennan:
> This patch series enables support for the HWRNG included on the Raspberry
> Pi 4.  It is simply a rebase of Stefan's branch [1]. I went ahead and
> tested this out on a Pi 4.  Prior to this patch series, attempting to use
> the hwrng gives:
>
>     $ head -c 2 /dev/hwrng
>     head: /dev/hwrng: Input/output error
>
> After this series, the same command gives two random bytes.

just a note: a more expressive test would be running rngtest (package
rng-tools) on this device.

Regards
Stefan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
