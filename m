Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0FF7F6B87
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 22:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjRPj5XDbAv5yqmmmrtqz16IZNf3cSVfdGtfxcEExhU=; b=b1XeTYdqQcURLB
	M5/BjufxCD/2Um6jh1Fp4UDhsCWnKMxOf2H4ngnxsk/Cha7rVvAFVBKxKpNdcNjbtZ5kbQQKIxmwu
	316F/14K70PgoLsdx8ENebyLKWxPSqGvhH2ecs8u+B17lEcR55WIBT4hJA8J47fIk3mEkxFNgzpnk
	HTSrtN0VobVypKIPx5vkyg9R/pa4rIPbkrA3wWjMPv0SsX7x3g90YfYuqx84kY+zyb/QA6Bu3VpGt
	3cz2f3qAdUbrVFzxZYrFK3KXY92Fl1VASnlgtBdIlM4JrWfr5yKlN9ki/hml1E2vpn2w9q0so2iaA
	Z7X72ckKRFOlWP2xyQZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTuP6-00072u-OZ; Sun, 10 Nov 2019 21:05:48 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTuOy-00072E-EF
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 21:05:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573419932;
 bh=uqfXg4G5FeBdW/I4b1p35uBMbYLm6L+MUVhJfx47T4I=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=iPo3M8oVOxblQLPmKt3K7OUFnkBQlgwFhj2lS8ziucOF0+KmdJFq8d5jcVijV3m8e
 vNQnIhsUPRD+sB+7ghUpQPylEJdyTKKC/iqtYvzO1ql4SdYjjUubgcQu+MzuM97bgW
 /9eHiN4aGBBjz7/sGRhRDGIapg5MzO1BE0r7niB8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.167] ([37.4.249.112]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M8ygY-1iZwga0bpe-006A91; Sun, 10
 Nov 2019 21:57:58 +0100
Subject: Re: [PATCH V3 net-next 1/7] net: bcmgenet: Avoid touching
 non-existent interrupt
To: Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, "David S . Miller"
 <davem@davemloft.net>
References: <1573326009-2275-1-git-send-email-wahrenst@gmx.net>
 <1573326009-2275-2-git-send-email-wahrenst@gmx.net>
 <fa75d3ae-147b-8537-9cc5-522a7dc5a5d2@gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <3aaf1b3d-7425-5073-f5cf-5ae672f4b008@gmx.net>
Date: Sun, 10 Nov 2019 21:57:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <fa75d3ae-147b-8537-9cc5-522a7dc5a5d2@gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Hb7sSQGgJHcHDVUW40jJAJD/4sSf+ZYDEfZYP2AY71xiQeQhnAI
 DkzBnZvjDMZIBYj+JpH/ur74EoAw4iDmZS0g3vZ7SbtWOj3I4AIRcJWejEifgQfVjaBvWLb
 xS9nBC10Xfs4lgny6PT3MQI8F6NmXm2AEhjhLn9Xr7nvBzkzjpDSh901ZsrVHWNzNJpDuPM
 C3lG1EgZwyu+XlLlIBdzw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0FYtjLq3ark=:QJUod9u8KsruGVqTgD+xdq
 7O70/Gn6sVpB0LKLDNFO594OYG513ExpftLhy4CzmvKHvfbPoCF5N+Dn12EkBGbocclb9LXhD
 372EOFAuQcyF3N+VBQcuX7ctXlci1Cd2ISaJ/EVVSosOO/8CSjckluZ9GsBl2ks9xLJEZekCP
 x6Hq7vdkZXwihdVpeB2B8nfwgTZpwgeXAa0fUffMe16LDsnb85ed9MaXD1GnECofMMA45SoDj
 VeJF++UVCow99ZSGAvTUYnWVkiB0qWm1QiLe9joTkltH6omtG/hNXyAEgjg+4Ufd9t7zvNkD9
 2jlwMFc4tFx+vF6R2X2MqMY9jTr49llA7NkMPGRyX59pAy34ya3Nfy3WjARBN2wDqhOHYkz3t
 iYxAVdYFdusOv5RcLgAovx5whkZluFlcHBX3QW068z3OmhY6G7wMXgzFhINAbLO8W8etqGWZn
 Lq3/H7LPUbsT4d+h+t/itd+RWkhwgNU18IYeZmEFC/t/yUnjgcAisdN0fu8lNIDOXIQl6nh6L
 WWIEkluIgP5kj6hcKTTsCGr+1dPvXdY6RoxLtnzDr44q8lFVPmK06IDEEoiNWQHX8vMoaf+Z0
 MtnGXNTDdUMLu8oiJuOaiCLvu1tz2Tg/hHYTaeVlXMYAA22Z/3rdlv0BfRQgwBYjKCCKweWO9
 j9TT8hW07ZOzpmyjshO2li4d3WiZmbRlwvehct20Z62PH9re9i/ObF1sRP8amcLrTQGDbZNkw
 /0DO6CduOfPtlNgS5zkcrYorilsHraWRjfAdqGQ9OVXo9R7vSD3E+fT9TpzWHFuxXAR41aMhZ
 jogtsrSdQ7S+dzv2rWm/hbBcOGI4yGr3Gzlpi953wkFepFLAy49iEhdQDO0HPUSvFCL7AlSrD
 wF3l0bzQHhg0C6oacll6o+5YRuDNJDQdT9+dZolgLLN7/rQbvKHdhfFeDzBIBF9pTQJcS1kq7
 ET1LM38dL2YtsQ9v+bydFmBNd0/gieGtQUF3P2O+J231E3j4Y847kpF+ZM57n3W1n+ZLV/4sc
 4HZ0IvfibxXHY3PCG2LlBDDh0Nz+fYthwl6dduP6dhy2uVvLgtuC6himDxFr3Q5gkZ9W5uB32
 U++gnTN0xg5wXw58lBVUPSeC8og2hqboAfGn40a8UnVAlO4Fzv9GrQb9SszGv3Wt8jhjpeiF4
 2avXSo2j1CKYldns7ihWwbqg5sCCsoTgzyftS8riYh1rO0pkygnsr4JM2VLqoAc/YLmXwGhMa
 ZJwMlt5fppBSYA+EfZwEk7GgxW2fTLNPeeyMP2SsZvdAXB+2DFBC5qDDrTmM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_130540_772493_36C51A77 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

Am 10.11.19 um 21:23 schrieb Florian Fainelli:
>
> On 11/9/2019 11:00 AM, Stefan Wahren wrote:
>> As platform_get_irq() now prints an error when the interrupt does not
>> exist, we are getting a confusing error message in case the optional
>> WOL IRQ is not defined:
>>
>>   bcmgenet fd58000.ethernet: IRQ index 2 not found
>>
>> Fix this by using the platform_get_irq_optional().
>>
>> Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
>> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> I still don't think this warrant a Fixes tag, as this is not a bug
> per-se, just a minor annoyance:

this confuses me. In V2 you said this about patch "net: bcmgenet: Fix
error handling on IRQ retrieval".

Is it possible you commented the wrong patch last time?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
