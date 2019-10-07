Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDCDCE53B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 16:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQRQOlPKSLzSAnk67qJeqBCnet1kirp8CmX6ivOer44=; b=kkd3QXsMdeZsvzYWu85/XZJ25
	Rjgy2XTsYPwCRILYRuKbn3L67pHcTLMZ1Lxc8spVxTcpihiN45z3D9WVoAlAZ8jKFDlrxEnaF0aYs
	I9HoNYvW04wKrULwrs/4MyB6vF06O/oLaTUsjIfAFKYm3h8+FZei3Psx5ZxL4ZVs0kdcbQh95lhyT
	XKQxQGPN3+1P4kl5AM94g/QcB5RH9nVEYWejvHwlJHw9fI6nSsd/K5P0ikNau3gtbHy/aZ/2htt+3
	7ml4jJXASzFWn1B9T9aQR0XG+tLVcAYFODg5g74q0Wz5mLsyg1PKvfaKW7pOcHbFplixmbfdQGUc/
	Z7dZNDNsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHU1I-0004Zs-0d; Mon, 07 Oct 2019 14:29:52 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHU17-0004ZJ-UK
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 14:29:43 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x97ETOAJ036075;
 Mon, 7 Oct 2019 09:29:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1570458564;
 bh=PG51P+fRN0Li8qnqF66zYDUyUyJJyL6KBk3a4211uss=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vBWXUXEMjVMQLU4OXY6lPd0Ftvui3MRu4YzPSrpaSNlutfAxLrv9f5g1oqlY8aiYE
 ZXx44HY6sivNhZltYBOD7LBKlNHg+311ZRPweOt5UoGjdKUBupbpdKOIrY5zetWi2s
 zNd3mbToshhDlirrnJOVU8keoHrg+OyeGt41/WG0=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97ETOI4009904;
 Mon, 7 Oct 2019 09:29:24 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 7 Oct
 2019 09:29:23 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 7 Oct 2019 09:29:23 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x97ETLtD017644;
 Mon, 7 Oct 2019 09:29:22 -0500
Subject: Re: [Letux-kernel] [PATCH] ARM: omap2plus_defconfig: Fix selected
 panels after generic panel changes
To: Andreas Kemnade <andreas@kemnade.info>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
 <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
 <20191006145348.GD4740@pendragon.ideasonboard.com>
 <20191006223958.67725fdf@aktux> <20191007064035.72016c78@aktux>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <654d00a7-d802-d116-84c4-7c614d0fe272@ti.com>
Date: Mon, 7 Oct 2019 17:29:20 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191007064035.72016c78@aktux>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_072942_104084_5F19448D 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tony Lindgren <tony@atomide.com>, Linux-OMAP <linux-omap@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jyri Sarha <jsarha@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/10/2019 07:40, Andreas Kemnade wrote:

>>> That's really weird, the driver name, the SPI device table and the OF
>>> device table are the same (except for the "omapdss," prefix that we
>>> don't add anymore in omapdss-boot-init.c). Would you be able to
>>> investigate what broke ?
>>>    
>> in earlier times:
>>
>> root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias
>> spi:tpo,td028ttec1
>>
>> now in 5.4-rc1:
>> root@gta04:/sys/bus/spi/devices/spi4.0# cat modalias
>> spi:td028ttec1
>>
>> root@gta04:~# modinfo /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
>> filename:       /lib/modules/5.4.0-rc1-letux+/kernel/drivers/gpu/drm/panel/panel-tpo-td028ttec1.ko
>> license:        GPL
>> description:    Toppoly TD028TTEC1 panel driver
>> author:         H. Nikolaus Schaller <hns@goldelico.com>
>> srcversion:     6B3E224BCD3D76253CF361C
>> alias:          of:N*T*Ctoppoly,td028ttec1C*
>> alias:          of:N*T*Ctoppoly,td028ttec1
>> alias:          of:N*T*Ctpo,td028ttec1C*
>> alias:          of:N*T*Ctpo,td028ttec1
>> alias:          spi:toppoly,td028ttec1
>> alias:          spi:tpo,td028ttec1
>> depends:        drm
>> intree:         Y
>> name:           panel_tpo_td028ttec1
>> vermagic:       5.4.0-rc1-letux+ SMP preempt mod_unload ARMv7 p2v8
>>
>> That alias is not in the list.
>>
> some more research:
> in former times
> of_modalias_node() has stripped the omapdss prefix, result: modalias=spi:tpo,td028ttec1
> now it strips the tpo prefix because there is no omapdss prefix anymore.

I haven't studied this more yet, but yes, I can see of_modalias_node 
stripping the vendor prefix on purpose. I do wonder how this is supposed 
to work, it would make more sense to me to keep the vendor prefix.

Is the spi_device_id supposed to be without vendor prefix? With a quick 
grep, this seems to be the case.

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
