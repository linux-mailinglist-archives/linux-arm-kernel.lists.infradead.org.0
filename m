Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B717317584E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:28:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2uA5bRcniwdqDvDmeOo/r27hZyXYPaM1JnGDha7iHmg=; b=G4pUhAFv4VTHMtVow7Rf/ZJfI
	N99n3BFulC/VtIopoQ8w9O3RUCeJtzyHRA+l/mbKlpw7qAeEmUkljz2MdNsDtHwQErqk/pb376kBB
	drgn5W/e2024oVx/KFNtjkbHwIq8rp4x//r5fwGXkE8DTsZKhLZxdvp3hAoj/9ueioSjSZK88WNZ+
	MSyAUV1u+fg5FDOdHuLxCMvfW7ViMrsi9QlYZ3RYA31TKPp6afjHXS+8eeA5tVmeKA1zGus2cXK5L
	bS4BjyYsta23TN7TBq5HcTJ59K1rUvJvcLm65IIu+LJVOLcDVQm9yTxzHlEyPr3SUUrgXvOjltBaG
	6Hdqj4jug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iJP-0000XV-G3; Mon, 02 Mar 2020 10:28:35 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iJI-0000Wz-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:28:29 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 022ASDTE034215;
 Mon, 2 Mar 2020 04:28:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583144893;
 bh=VFRes0B1ofup81Cw5XQMgE+LuL4nvbH4EAU0rV/EHjI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Q2nUTJdGxCzYjFxb0BztPB8QKChlwHOaibAQ4VcRNI70XrxDXYN/RS22b3ZIdg/h3
 Vr364J0KRVb7onpFkoA686X6h/GD3cnByoftlkS+dSD03mpW+NrBzgkcUSdvj18x7V
 X4FXEovTJ9i5mJGWC37Q+MVlVsgijNGBZfzLGMc4=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 022ASD76091500
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 2 Mar 2020 04:28:13 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 2 Mar
 2020 04:28:13 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 2 Mar 2020 04:28:13 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 022AS8TE113432;
 Mon, 2 Mar 2020 04:28:09 -0600
Subject: Re: [PATCH 1/3] drm/omap: Prepare DSS for probing without legacy
 platform data
To: Tony Lindgren <tony@atomide.com>
References: <20200224191230.30972-1-tony@atomide.com>
 <20200224191230.30972-2-tony@atomide.com>
 <20200224233111.gkctx27usfxj2wgz@earth.universe>
 <20200224234333.GD37466@atomide.com> <20200227174424.GI37466@atomide.com>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <8b27dba3-2e2b-84ce-0927-685f4bfe3ab2@ti.com>
Date: Mon, 2 Mar 2020 12:28:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227174424.GI37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_022828_554072_A17B669C 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Suman Anna <s-anna@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Dave Gerlach <d-gerlach@ti.com>, Keerthy <j-keerthy@ti.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, "Andrew F . Davis" <afd@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Jyri Sarha <jsarha@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/02/2020 19:44, Tony Lindgren wrote:

>>> FWIW, I dropped omapdss-boot-init.c in my patch series updating DSI
>>> code to use common panel infrastructure, so this will conflict.
>>
>> Hey that's great :) Sounds like we can set up an immutable branch
>> for just this $subject patch against v5.6-rc1 to resolve the
>> conflict. I can set it up for Tomi or Tomi can set it up for me,
>> whichever Tomi prefers.
> 
> Do you want me to send you a pull request for just this one patch
> against v5.6-rc1?

It's probably easier if Sebastian drops the removal patch, and instead creates a patch that removes 
the panel-dsi-cm from omapdss_of_fixups_whitelist. That change should not conflict, and effectively 
makes the omapdss-boot-init.c a no-op.

We can then remove the file later.

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
