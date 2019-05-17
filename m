Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33231214CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 09:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N7CmqdKxvvl+Ot1FeC3aCYXn8smADf4eRH9I10cmwuI=; b=uD3pIZuwUn6bivcqcTGAn84DX
	vgI39C4xbFFN5FOXScF3GKcfLWZXvf9FuEQCgoJLH7Cx1saY8plvzTZR/8WoOIt6hDAB/iiy4gEkx
	n47VRwcSTzoo0plQsPC/3rlVZDFWxe8bMoiLxRj4/kg+A0CMYqKd13UTQ2FbPbNjP2hpRU9uPLRXB
	WASX1TQzQ4X1XWk7TJkUJh90Ki0cTLQL5Gnwp1e6uEG/+FHKL7SOgoS3rU8/bQrqJSJnz3sLoQpE4
	DNKrTuHnp8ZxkUzZHDCX1EFtnafDwcagPBuESMVhbd21qqU3df1xR5As3n9UPrmzKaTqHLAU0Su5i
	RwM6Ro0fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXd7-00048d-Vm; Fri, 17 May 2019 07:50:13 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXcz-0002w6-Op; Fri, 17 May 2019 07:50:07 +0000
Received: from [192.168.178.167] ([109.104.37.130]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MAwTn-1hYOAy3Hzt-00BN1q; Fri, 17 May 2019 09:49:53 +0200
Subject: Re: [PATCH v2] Staging: bcm2835-camera: Prefer kernel types
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>, eric@anholt.net,
 gregkh@linuxfoundation.org, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <20190516213340.9311-1-madhumithabiw@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <bf9d2354-4ba6-bc18-841f-79ad75e6d911@i2se.com>
Date: Fri, 17 May 2019 09:50:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516213340.9311-1-madhumithabiw@gmail.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:5vRoIj7Qja7sHTo/eTuJyaMrKZswD7CC0dePgB/jan/opZcO5fi
 2AxCxBwblWgaxK4pmLJuaq4/kOigN4/CdB8CzWAgCS3XhA9bKcS8xrcdIvoZwV9y1zRRAJa
 yLDsIdmHDEPG8tJ2TvxwuRuZ92NGjM1s2CI7qwJg9QTJXu2eWKVIPFl2OTzP1aQTCRlQ3Wl
 I1/nrPVaflIUqTWFtGvxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:poAiXjetLp8=:Yr5UiP7twLxtvNUfdfsjWz
 kGhcNLpNAjigYCRlaYnIUZ2fCPSyKH6pRx8yIgziJG/JaYrBHwKjxpWnYyBj0Le5ewTz4kQhO
 NEodSeLH90X+Tf7yiHZkWZO8H0ezxBKIl25Khko4DWbiEKw6yichg8cJ60ELBRrxTRsy4BPWW
 3LtLPzYA+iyTII0B4FkJZBqp4+VCRp8xqa3dQoMRlRSLFMs/V+U7xvqlacCSf/9K7QMmzYpRt
 Uw5HEV2pxlCV6VFlDWaTkcJQV9m500bMeUrNlFUuLtTFTa12UDxhjEIdsTeF+pNxG6LiEJfyC
 iBekcSsX5WBbj3G0MW9htNrgs/J8P+gQWFlxv5p+se/D0a0AejU4thkHDoj9K8XjGziXRglQl
 CYeT1VkRyr0Yx22/7VNZm75RBSuTiy4RatpBdRvMtjbst4i5ZY8VXedmrMd8/0zlloo+Ye/T0
 vsjSkBPpTR5L5JU0K6y9psUyyNlu3H31m2sZB2rVA7SDhcJ5zekdREITGC917RNgLobf3RT0j
 ZmRgNE2lJixrYwX2FeI1iiXf9ZtVd3z8NUduqwV5B08JLIYffnt+Co6glitm2bWpzudZSIpx1
 hnYEQSTUbb6tFbtWFXIDlRHlOabq65ZuiYjmtdmnePGT798me6MpBeo+raVCQjgicwaAbBcs0
 qPBUlZvD2fi3P7hs0xx/5UY23EsYkG7V8YwlJFGyGwesPN2WLUOy8w0EB0c44pmRtLtFYcoD1
 r0oJKSqcbcZZo/aTH3KGQG4Q6rea+3t56Y8uBfm40w2hV0SAbC5OtjCHkAM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_005006_117000_366434E7 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 16.05.2019 um 23:33 schrieb Madhumitha Prabakaran:
> Fix the warning issued by checkpatch
> Prefer kernel type 'u32' over 'uint32_t'.
> Along with that include a blank line after a declaration
> to maintain Linux kernel coding style.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

Acked-by: Stefan Wahren <stefan.wahren@i2se.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
