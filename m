Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172521ECFDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 14:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nyEcKxy/NMRGHqflzvxsJgcFSBZlEWv+mqMFAchpBDU=; b=sRYVHSMsPvMMQLUjIMyPl4hop
	WuELHtKnb5uw4sU7Lpl+GNsGM1I6G7ubG3yw/EmOqVRxzzZwlDAxK2hP4sAkBc4kvqzOSx49ppTRn
	wa/FbVDkMLfmLyO2ox81rPk9MVz/9lBi2shsfEQBrWv84yfGbal7Ua1sWVm3VpyovsKucUiAnbu/Q
	XdZsMYkis06b9jtRocXj01wPVa2g2HU5U6VFREiHcy9lh75XCRJ6LbodGVe7YZNFkliOY9fApT3vV
	4l2NAuQ8p3yVDKoMx+eVnPPQuzYzr3jyIBeQVwRP769H7ECMjuRamV69dDMjU+shujmZjmroQCWVX
	hWVq260Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgSb0-0006IF-DH; Wed, 03 Jun 2020 12:34:14 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgSam-0006HC-4i
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 12:34:03 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 053CXlW0106513;
 Wed, 3 Jun 2020 07:33:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591187627;
 bh=M1WLgsB/SXIxgPgMCUsfddSCaUg3DosSo3K0GUtPR8k=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XEMFGjwTtPlC2aXThydcOTlnENH3ZAIUrOvPwGB7xWpkvHHm3XMJqa0lvQwCbCJ/F
 LbFchZFF8h0TImyM/WdSZQHH+i0QBJVPRh/5KVDKbr/bVA/5n5rZvdCuLyTuxwDUck
 0KcquY5GMJNVdi46O9eFCoRth4rLgt9XqlKW2/N4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 053CXlqF115353
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 3 Jun 2020 07:33:47 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 3 Jun
 2020 07:33:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 3 Jun 2020 07:33:47 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 053CXhNO005965;
 Wed, 3 Jun 2020 07:33:44 -0500
Subject: Re: [PATCH 1/5] drm/omap: Fix suspend resume regression after
 platform data removal
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20200531193941.13179-1-tony@atomide.com>
 <20200531193941.13179-2-tony@atomide.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <16ba1808-5c7f-573d-8dd0-c80cac2f476e@ti.com>
Date: Wed, 3 Jun 2020 15:33:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200531193941.13179-2-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_053400_337673_62500214 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

On 31/05/2020 22:39, Tony Lindgren wrote:
> When booting without legacy platform data, we no longer have omap_device
> calling PM runtime suspend for us on suspend. This causes the driver
> context not be saved as we have no suspend and resume functions defined.
> 
> Let's fix the issue by switching over to use UNIVERSAL_DEV_PM_OPS as it
> will call the existing PM runtime suspend functions on suspend.

I don't think we can use UNIVERSAL_DEV_PM_OPS, as we can't disable DSS modules in any order, but 
things have to be shut down in orderly manner.

omapdrm hasn't relied on omap_device calling runtime suspend for us (I didn't know it does that). We 
have system suspend hooks in omap_drv.c:

SIMPLE_DEV_PM_OPS(omapdrm_pm_ops, omap_drm_suspend, omap_drm_resume)

omap_drm_suspend() is supposed to turn off the displays, which then cause dispc_runtime_put (and 
other runtime_puts) to be called, which result in dispc_runtime_suspend (and other runtime PM suspends).

So... For some reason that's no longer happening? I need to try to find a board with which 
suspend/resume works (without DSS)...

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
