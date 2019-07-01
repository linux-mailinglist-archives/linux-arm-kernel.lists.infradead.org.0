Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5716A5BE85
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 16:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzhCdVrMgHeGr/O8SZRDCEVeCrO20DwDr7ev6kZrgnA=; b=HbQlQGvt+AUh6G
	4fGYqztam+9v+TIK85erLNZwuFUVIsIP4apUVKNr2UPtG3i7J5/Ykst3WTnCfIaY6G9a3kJ/wawou
	vFhrm167ptYh0djLvB0hZygJSQuPP/7SQZwT+k0qEWSeYjG9C3oYHYdy6mH4XKyQVr96gaE3DPiFt
	Aoh1c6kT2UttSSTk7+y7TC/7wfwuQAOkSj6SpXXsg2UqwuSZSEv+i3K2ZdzghDBcOkt1jS6jPi/yL
	CVUtjCVJ2slheVCIbxPwYFnESrRT6q2mFkAcztS2ZIXWcW4SQPu+rD5ml1JJjcOw36mbo57Mu85Qy
	s9oKdV7JDuQ39R/uCsAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxV5-0004Ko-1P; Mon, 01 Jul 2019 14:41:47 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxUy-0004KN-3V
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 14:41:41 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x61Eel75075389;
 Mon, 1 Jul 2019 09:40:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561992047;
 bh=v09DKmxdyp0eEsvf+kyn4y4hnlTkeSpL6c6F1V4f4FA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=oLkEnK10lOzZSr8kWXvyIEzwRTGPy9yC0AqouKKQ5P0FswISZynDNwYfWMhmiESnO
 And5l8d/dgLdTP0j/yDzwkkEYIZZXxsL2/pm9cog/7jNYxFgiEpeHFw0/VSWgS6ceC
 gC3uk1kSLls9pkjZPE1FSx5VuIP5L7DrnYuD+2Ps=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x61EelNv091078
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 1 Jul 2019 09:40:47 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 1 Jul
 2019 09:40:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 1 Jul 2019 09:40:47 -0500
Received: from [172.24.190.172] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x61Eegav086236;
 Mon, 1 Jul 2019 09:40:44 -0500
Subject: Re: [PATCH 00/12] ARM: davinci: da850-evm: remove more legacy GPIO
 calls
To: Bartosz Golaszewski <brgl@bgdev.pl>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Daniel Thompson
 <daniel.thompson@linaro.org>, Jingoo Han <jingoohan1@gmail.com>, Bartlomiej
 Zolnierkiewicz <b.zolnierkie@samsung.com>, David Lechner
 <david@lechnology.com>, Linus Walleij <linus.walleij@linaro.org>
References: <20190625163434.13620-1-brgl@bgdev.pl>
From: Sekhar Nori <nsekhar@ti.com>
Message-ID: <fe42c0e1-2bfb-2b1c-2c38-0e176e88ec6e@ti.com>
Date: Mon, 1 Jul 2019 20:10:41 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_074140_235442_6124955F 
X-CRM114-Status: GOOD (  15.34  )
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Lee, Daniel, Jingoo,

On 25/06/19 10:04 PM, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> This is another small step on the path to liberating davinci from legacy
> GPIO API calls and shrinking the davinci GPIO driver by not having to
> support the base GPIO number anymore.
> 
> This time we're removing the legacy calls used indirectly by the LCDC
> fbdev driver.
> 
> The first three patches modify the GPIO backlight driver. The first
> of them adds the necessary functionality, the other two are just
> tweaks and cleanups.

Can you take the first three patches for v5.3 - if its not too late? I
think that will make it easy for rest of patches to make into subsequent
kernel releases.

> 
> Next two patches enable the GPIO backlight driver in
> davinci_all_defconfig.
> 
> Patch 6/12 models the backlight GPIO as an actual GPIO backlight device.
> 
> Patches 7-9 extend the fbdev driver with regulator support and convert
> the da850-evm board file to using it.
> 
> Last three patches are improvements to the da8xx fbdev driver since
> we're already touching it in this series.

Thanks,
Sekhar


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
