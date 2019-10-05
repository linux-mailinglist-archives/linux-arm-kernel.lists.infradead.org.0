Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158EECC973
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 12:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nx6BbeKeFVA5FmcXwLWYhP7+fhkey0lufjSlQHtGg54=; b=sjGd6RdWY+OdJc
	LofTLzrsqcdFsUhEmDRZ7CQnHqDzeTyu+lShMSNKYwwLPSmb1h3eH9wKHiXzSsZSBB6jboew8n2Cu
	fFPX42WCMUUX3NA/IdiubPUpHIDy6rBdfQP8PqS1ERe1U/hhiwNgxAVeUgb+2C4A+a2VPciramLkn
	EbfWvIv671P5xW/vi1cu46Pe/dp3r+iFZdPKn2MalhgW/P4yra+kkFbtzcd/s1nY7y4yAaJ1a3CKk
	8D9pzLS9cAjJZ3Cmoqm8YHw3UPyCwXeuhm6/ALOdGDmSMVjK2h1KMIfdR1lw3zMf1IqH28ateGIB5
	6pQgZbyT8h6GNlkbmOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGheU-00018m-Vk; Sat, 05 Oct 2019 10:51:06 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::9])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGheM-00017V-14
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 10:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570272644;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=KEG+jqNQygCDaE4Yi2bJFMrWBErgNOEsINx5knzy92M=;
 b=D8HgCK/ptLnLvQ1abdv9jnBf0JLZBNxY2zGDTHPznDsLCbvHRzZNyNC8uvMg4jFBJK
 cC6bFVsb7NxxB86RYMYxDoBRyB+LYG6ffEAQRP9hXsid5WlIjuLz9cYFWn5ldZ/LN46s
 6nIA7TdgEAUnDH/WfzZQdOr0j8P4l9T8+3J3sIHXxvYWfKg+AduRm/YlhiovrHwQqIuQ
 1Am0B8lQ0B5GDLxVydZxE+FhIz9MhLUtVLTLx2aM+g0rQq9rrn0VnC2lvzHz6rZcVB7O
 ISyz910wcrwaZy1N+CeUBqcIY0goidQqWHpophvTCDUrxQXRisWaVSwOJE23mnrZGw9o
 MOIw==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBj4Qpw9iZeHmAlw47tvfA="
X-RZG-CLASS-ID: mo00
Received: from imac.fritz.box by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
 with ESMTPSA id v00409v95AocjVF
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Sat, 5 Oct 2019 12:50:38 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH] ARM: omap2plus_defconfig: Fix selected panels after
 generic panel changes
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
Date: Sat, 5 Oct 2019 12:50:37 +0200
Message-Id: <39E48EC6-65FE-419B-BBE8-E72CB44B517D@goldelico.com>
References: <20191003165539.50318-1-tony@atomide.com>
 <03ca02c1-2816-17cd-03fd-5b72e5d0ec96@ti.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_035058_663478_996D5FCC 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:9 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-OMAP <linux-omap@vger.kernel.org>, Tony Lindgren <tony@atomide.com>,
 Jyri Sarha <jsarha@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomi,

> Am 04.10.2019 um 10:41 schrieb Tomi Valkeinen <tomi.valkeinen@ti.com>:
> 
> On 03/10/2019 19:55, Tony Lindgren wrote:
>> The old omapdrm panels got removed for v5.4 in favor of generic panels,
>> and the Kconfig options changed. Let's update omap2plus_defconfig
>> accordingly so the same panels are still enabled.
>> Cc: Jyri Sarha <jsarha@ti.com>
>> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
>> Signed-off-by: Tony Lindgren <tony@atomide.com>
>> ---
>>  arch/arm/configs/omap2plus_defconfig | 12 ++++++------
>>  1 file changed, 6 insertions(+), 6 deletions(-)
>> diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
>> --- a/arch/arm/configs/omap2plus_defconfig
>> +++ b/arch/arm/configs/omap2plus_defconfig
>> @@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
>>  CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
>>  CONFIG_DRM_OMAP_PANEL_DPI=m
>>  CONFIG_DRM_OMAP_PANEL_DSI_CM=m
>> -CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
>> -CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
>> -CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
>> -CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
>> -CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
>> -CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
>>  CONFIG_DRM_TILCDC=m
>>  CONFIG_DRM_PANEL_SIMPLE=m
>> +CONFIG_DRM_PANEL_LG_LB035Q02=m
>> +CONFIG_DRM_PANEL_NEC_NL8048HL11=m
>> +CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
>> +CONFIG_DRM_PANEL_SONY_ACX565AKM=m
>> +CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
>> +CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
>>  CONFIG_FB=y
>>  CONFIG_FIRMWARE_EDID=y
>>  CONFIG_FB_MODE_HELPERS=y
> 
> Sorry, I didn't remember to update these. Some additions:
> 
> These can be dropped, they no longer exist:
> 
> CONFIG_DRM_OMAP_ENCODER_TFP410=m
> CONFIG_DRM_OMAP_CONNECTOR_DVI=m
> CONFIG_DRM_OMAP_PANEL_DPI=m

After being hit by the __always_inline issue [1] I am now
back with being able to test v5.4-rc1.

Now this patch fixes the build problem, but we still have
one: panel drivers are no longer automatically loaded at
boot. We now need to manually modprobe them.

This has been observed with GTA04 (TD028TTEC1) and OpenPandora
(TD043MTEA1). So moving the drivers seems to have changed/broken
something with DT based driver matching.

BR and thanks,
Nikolaus


[1]: https://lkml.org/lkml/2019/10/2/201
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
