Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7129DE9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWu05nQCEfZwNRZYAWemMSNOf2in8MblspWVBy2eLP4=; b=DWlkIRnMdyp8e1
	DyAbibp+OmjAJL+KqkTEFl5bgWROBsX9axGGognHy7AKbhMG33b51CyUtEggoIXo8gV7mFvY414qp
	PyaWNT26UteiqDCMRQQ6NU+ikA1icbXGw0iR4+pIN/KXnuOEW/XxxWrYnXnubAByP6wLcZjqQdstj
	cdK322DXYorx01lOe5G2DjwM1P/L2AR+7aUQej02O71k54nKw9GozRTZFCLSTFeGBjUP2Be1i/AoV
	jT5e8SlCgIc/1Aa3w+J+cESOJYyRduUcVR/cSwHAjPapraIa1i/CiMLQ9irYknV1WBEZ5gfu3s9eE
	Nj5oENN0ZTsNJtByL4xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Vmo-0006MZ-NQ; Tue, 27 Aug 2019 07:21:02 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Vmb-0006Lq-Vs
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:20:51 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 00:20:48 -0700
X-IronPort-AV: E=Sophos;i="5.64,436,1559545200"; d="scan'208";a="197245079"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 00:20:46 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 8BAA92095B; Tue, 27 Aug 2019 10:20:43 +0300 (EEST)
Date: Tue, 27 Aug 2019 10:20:43 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next] media: sun6i: Make sun4i_csi_formats static
Message-ID: <20190827072043.GA7657@paasikivi.fi.intel.com>
References: <20190827070623.15776-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827070623.15776-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_002050_062760_8435F115 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: maxime.ripard@bootlin.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yue,

On Tue, Aug 27, 2019 at 03:06:23PM +0800, YueHaibing wrote:
> Fix sparse warning:
> 
> drivers/media/platform/sunxi/sun4i-csi/sun4i_v4l2.c:21:31:
>  warning: symbol 'sun4i_csi_formats' was not declared. Should it be static?
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Thanks for the patch.

This has been already addressed by another patch:

<URL:https://patchwork.linuxtv.org/patch/58395/>

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
