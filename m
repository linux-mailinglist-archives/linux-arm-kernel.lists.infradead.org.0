Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EE85BE8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 16:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVYvlvNMtw60NdEMH4VvqSEn/Ati2K62Zies5RwW0bc=; b=ihvkmev7HnikSZ
	i/EhpQF6r3ydl2Gb6ORMB/FWxNQDjBn0+9TlJYGQjgFMc4+Pp9G17w9imr1nf46cyR292nScxRNUk
	cA/ps9rnMiqcSNXZApaaABzAAzJ9pasa0ZyO+16A7ww22hZrRUMYfNAcc7dVtaxvLCm1G7y4PWi13
	chAo5ovAiOaHlUpqoveJ5GSlb2GUOgHlpblYxibIEVCG2pKQlN/YgIozfF/SWRM4zYK870lhjW0A2
	11jEfOmsR4OURiy+zSbfLh3VZ2OkcIlRJWMXn0N7MZAUnRO2qRp1upp6xjzWfCx4YEIM8B85p5aOu
	qjjp0Nw5PoFhhD1y0Vig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxW5-0004cQ-SK; Mon, 01 Jul 2019 14:42:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxVz-0004c5-3U
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 14:42:44 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x61Egdo5075891;
 Mon, 1 Jul 2019 09:42:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561992159;
 bh=iKP2cTrvR9F598GvjFKv22KHtphyP4LBMvglTZrh3Es=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=WHmxUeptNNo7/HwGsjNCRicJQrjMxGahYS0tABecy+MuQGQCGGvYZkAe79Ykjc/S1
 eaop8zvd35FRbk/tML0OyDTTQBtJBU1XMUrxvmlgtz9BFF4SFWRcZnpz7qSJGAZel2
 pqyBSoXIa93iJQcNfxxkvZIE3HGh3y/bluAUg/5E=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x61Egdb6093187
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jul 2019 09:42:39 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 1 Jul
 2019 09:42:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 1 Jul 2019 09:42:39 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x61Ega7c017651;
 Mon, 1 Jul 2019 09:42:37 -0500
Subject: Re: [PATCH] mfd: davinci_voicecodec: remove pointless #include
To: Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>
References: <20190628104132.2791616-1-arnd@arndb.de>
 <CAK8P3a1CV-JUpBJ0pjixwXxxOzjQOX=+E3s-mKGAz_bMBc_Vuw@mail.gmail.com>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <07dae8b9-dfec-a58f-48b8-702f9d1d9f9a@ti.com>
Date: Mon, 1 Jul 2019 20:12:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1CV-JUpBJ0pjixwXxxOzjQOX=+E3s-mKGAz_bMBc_Vuw@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_074243_185872_851F92F3 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Fontana <rfontana@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/06/19 4:17 PM, Arnd Bergmann wrote:
> [I missed the davinci maintainers on cc here, sorry]
> 
> On Fri, Jun 28, 2019 at 12:41 PM Arnd Bergmann <arnd@arndb.de> wrote:
>>
>> When building davinci as multiplatform, we get a build error
>> in this file:
>>
>> drivers/mfd/davinci_voicecodec.c:22:10: fatal error: 'mach/hardware.h' file not found
>>
>> The header is only used to access the io_v2p() macro, but the
>> result is already known because that comes from the resource
>> a little bit earlier.
>>
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Sekhar Nori <nsekhar@ti.com>

Thanks,
Sekhar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
