Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D287F3838
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 20:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IOpxli3QtA4KLUa9j4YY5hA6f15qV2fArQr+p47xN38=; b=GFuIPhwAokNeku
	9PI1K5rVxKevlDIdhZLDMjE1s/EnEsH/GBIxZo/fSr4843PG9a5lX6+cY3JBU1mhdpn1qeQJRuAsH
	EEZPQNFqpMMFsyCGmIF7j99MdwKcKaWJcWFW8tjceDfY2dIPLSfA1BYbM+CB7End//obT7lwvWHQu
	ak/la9Wl4KXMjKB1zW2cU3V5tBNo5QHQNqofsCd4/JuylgFa/MGECiVj0Gz5tJOWyWXpPOZFfJZx/
	ISSFmJCyA1IafQKFMDH8koB4hXtrAevrAOcVhycVmSxBSXuRz8U67FULVAlr/hSPRNiv+0Tz4FbZC
	i8cxoH6Zk6IJrw/nDI1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSnAd-0003xE-Jj; Thu, 07 Nov 2019 19:10:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSnAL-0003wm-Pv; Thu, 07 Nov 2019 19:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573153788;
 bh=+jCINLffjUOyT+IY08Y5zx4Vxskk9OJZTse82HsxTz4=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=gThPoZTR1eidwzNRwz/Rpz8F9GxRZbr8OjLint+Fa57V8TMbCKrq3pr5YwOSBFmIB
 u4pqHGnosQL6RsGqMG2MM9FRiYx7qmMMECkcnuseUPXPHgvpdANoOHqHZcAuZE2PYk
 con9IEykthBhd6QArNo0lkZaKfFxtOJCVOZH3daI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.167] ([37.4.249.112]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N1fn0-1hn1Ge0GNM-011zQB; Thu, 07
 Nov 2019 20:09:48 +0100
Subject: Re: [PATCH v3 1/2] ARM: dts: bcm2711: force CMA into first GB of
 memory
To: Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20191107095611.18429-1-nsaenzjulienne@suse.de>
 <20191107095611.18429-2-nsaenzjulienne@suse.de>
 <20191107112020.GA16965@arrakis.emea.arm.com>
 <4f82d3b5-fe5e-03a5-220e-f1431cb3a50c@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <8c84654e-f91e-7865-0cf7-99b30820b7d0@gmx.net>
Date: Thu, 7 Nov 2019 20:09:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <4f82d3b5-fe5e-03a5-220e-f1431cb3a50c@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:ds3wIfCrqN8mXv4xV2yOkIAZhuvU/WXha9+QIZbz4jW5afq1ugo
 nxjvgEy4zXDiM3p6JevaZKdzdE1nVBUQS5rVNVX7LWE3+B06qt0Zdoi9xkuuhXBb+9hTNDK
 qIM8qmvGI0T3IGX9yQlLDgzn2yIGy1ft1bPIHFQ7zXqXayblhOKRNUs6yC+9sbQHFggoFyH
 EfjC1oBZCE8lPFuiBoHuQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:fnoUzY9B470=:Ck+piXC91e3UO6kAhBaICU
 7ygijkBy5cG7QMTWiwVxlGSUIZ41eFePjzKTNBmlqFU6iyAYaxLvn5Yq9Z0oPwmQAzwRw47zX
 3oU3JDLceXv21bdCiFtvGtLi4/aC+gzHPr/wfv3SSZCJdprq4ncTsuZaa3SPabyiO7z6ZSMhW
 FocRvE3+PuegJUKVimw3Lo4Y9U64vBcy6Q/gINOyZG2lNL+TJZ51VabJsNO6R1HRqbQr8PCJL
 RnJnLnZIaB61JxLTqx/DWAJacDV1NW6WGDmkYwC8O9wCYOY568oQLIntI2MI/rIPfmBBdQRps
 DZjO2AEd1Apd8MCL6NjxWyY1iAm3q/NsvdpCHEstg3fBtY0VwxWEnwRLM4fMOjYlKXBr1L00r
 5IwCLZWa/VWV828GOSqIotecrZmZm6OOSjG3u0UHzPqKLdUz0OKFcm8725FoSTazqAeMDDwbU
 JTyyM/jB8vrTs5P07tkfHHVD3Z2GUJOwbqKGT7UCO/a96djW9iPasBBi1OzjN4t3BxLroMlh0
 OYr8baQYeLQdSH7wWqZjMzM1tKewa5yV2WKUY2O1MNDimmseaO+Gw335DZg5RmnRKrtlvEb8K
 uEjaI+iJCGK6OnX5Qb+Khm5dTHlGVNx1yRJ+08zlG29IEq+EqGsfhs7+wiksGu2qjusvALi7I
 8NaaLrjRoa7ATT16j2xuNbLpgjIp3lcKhzqsw+vIHZsPx91oVeNWuEAZCPnlZWihvtPkbQUor
 2u4pD7FlpOxAHOGMXRcpQoYhTlF7MPowy1cfUsBEvXBy9C83rvggrj2A2XqSvjkXLKoBM40eT
 YIUG7RqiS/+2zS4bInx5b1OFicvrzYdemOuPoc/6p5g+WktzQZhZ+Wc9vzkbS038L46VopI+q
 0Fx3I91zjQ0gtnUytX8TKy7evYlxjAp13OTH11SIGXl7x0JFcWL5kOPrkiLlZ+s2qk+RL0V5m
 qTDhxhgLQLjnjogcyW+G0gn9S82KIr1Oy8xa8dtVYrQw+3qsET16ky4cpsisAuxB4hixxVcxl
 RI7BzRBqC2H7hwssXmBYs9yD9OGhXD/+CBeViiV4ORu4TsEfL+rzM+BIPyvbf5GDBPs+nxyUJ
 Sf+RjIOfVKNH76+Xzd+Ctk1bfcxpzSF5DKWoPacS+u7CtKiO56DwwgdiE3w/icuO7fyKziVAM
 Se46vmhmq61yCYmrTKjr7LxZZSk2XgxMDu+HlEiVa3oFJ9N+83ZcqKhHxrM9ZCPm+9g4rn0lV
 54Nf6g/sANuMDnSQ1LOmHGrG0UcVkaVaUbRdHbdrlGXj6xa4OIQGmuoxgCLk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_110958_171389_D4C3749B 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Am 07.11.19 um 18:59 schrieb Florian Fainelli:
> On 11/7/19 3:20 AM, Catalin Marinas wrote:
>> Hi Nicolas,
...
>> Sorry, I just realised I can't merge this as it depends on a patch
>> that's only in -next: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi
>> 4 support").
>>
>> I'll queue the second patch in the series to fix the regression
>> introduces by the ZONE_DMA patches and, AFAICT, the dts update can be
>> queued independently.
> I will take it directly, unless you have more stuff coming Stefan?
Please take. Thanks

Stefan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
