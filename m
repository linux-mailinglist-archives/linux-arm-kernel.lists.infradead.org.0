Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC07BCF8C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 13:46:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz107btZBGK0lPFXD9H1SkYgUYZTuJ0nDP2WN4SFtb4=; b=afVuBw/+Xy+jen
	A+RIcQF1zHWiVnKALZsuWyqbiGLDspq1rTSwsf0o34ct2WPZBzBgBRv7tMed0XPGYCZMk2bENRrve
	6uqnUa5Uj9WicpWN8Pvpv26AEX2g8FUUHJSKuFZzYoFl1dIa1Gvw10gwsIPU3G969rudoFz6tLIGZ
	UfdovZld/9903ogGI8XoQ549HMJZgBZrM0YPRuvS6pCghKku603nb5V0hqkjffHNVllGIWzyV6Amo
	pCyYsFUXtX0gmj5hza5MHbW3vVTzqzTk98sHEskSSlyWGFJfyHg8AUgPYBXVr2NNoMIv+U3ajfgJn
	wRpy2BVVEphiezMSycrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHnwD-0005XJ-TO; Tue, 08 Oct 2019 11:45:57 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHnw5-0005WD-Pg
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 11:45:51 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C7E77790C5E923CB0200;
 Tue,  8 Oct 2019 19:45:41 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 19:45:37 +0800
Date: Tue, 8 Oct 2019 12:45:20 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH] thermal-generic-adc: Silent error message for EPROBE_DEFER
Message-ID: <20191008124520.000009c7@huawei.com>
In-Reply-To: <CAJMQK-jawP2+Ba0AkquqU16vVnq_yGJN=Bepk7kLRusp_zdq2A@mail.gmail.com>
References: <20190910075907.132200-1-hsinyi@chromium.org>
 <CAJMQK-jawP2+Ba0AkquqU16vVnq_yGJN=Bepk7kLRusp_zdq2A@mail.gmail.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_044549_988585_94275169 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Laxman Dewangan <ldewangan@nvidia.com>, Jonathan Cameron <jic23@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 10:07:22 -0700
Hsin-Yi Wang <hsinyi@chromium.org> wrote:

> On Tue, Sep 10, 2019 at 12:59 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > If devm_iio_channel_get() or devm_thermal_zone_of_sensor_register()
> > fail with EPROBE_DEFER, we shouldn't print an error message, as the
> > device will be probed again later.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---  
> 
> Ping on the thread. Any suggestion for this patch?
> Thanks

Looks sensible to me.

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
