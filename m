Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BB9196FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 05:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2grOlYsIDYJgNYShJz6UWI14aEBk8jysfnkDB4dulgg=; b=AYBedDJs1CidVp
	cOYu42IGBAiQ9FirItgUf2+nWfjS6aSmXKS/wNyaGMPn0gRPdK9R1vBdq00KNoGYWdH8ktcYGcSOl
	655Y9iGyWdCI3huuJwPtr6UFhDV+8kSf6+i/bZWmVCfRULxKCJHG5ypF2shAY9je+eum8R4ItAu5r
	cFFr/C5LuR5b2Uu9H4sj5iHj1dmJ9IvjDWxEm7Be15G0u3BmzlDO7XkubVD1jyC1Z1gjfA0hD93jr
	wnt0WATPKxwaXhvAxs7/5c09DJuPqODsqiicBhdf8t7tz/bYjFyDUxL183JLkNNa5PsI1Y3c9v3QH
	jz9a9gjFihm6Zm7ZE6PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOvz9-0005wJ-6D; Fri, 10 May 2019 03:14:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOvz2-0005vq-0f
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 03:14:05 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76C59217F5;
 Fri, 10 May 2019 03:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557458043;
 bh=Me/LxFKe1rQvXPzpBV6nH7nKus0qycnHR7nb6hzQVSU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dfDKU6DLzbaj7nJsJ9YzxT/mogyhpy25UZrsVMgewkxqTKelApcrY/2w8iYkQlMi6
 cRMqg0MvtxcYqw4herffvnM4QUPG7KOGGUh3KP/7KGSD+8eKa4KD5hutdkO9LkL77c
 oifiMBGiknn5vEL571uoP0XctApqFVfe5wDKQCII=
Date: Fri, 10 May 2019 11:13:36 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yuantian Tang <andy.tang@nxp.com>
Subject: Re: [PATCH v6] arm64: dts: ls1088a: add one more thermal zone node
Message-ID: <20190510031335.GD15856@dragon>
References: <20190423022507.34969-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190423022507.34969-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_201404_078313_06431EF8 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 edubezval@gmail.com, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 10:25:07AM +0800, Yuantian Tang wrote:
> Ls1088a has 2 thermal sensors, core cluster and SoC platform. Core cluster
> sensor is used to monitor the temperature of core and SoC platform is for
> platform. The current dts only support the first sensor.
> This patch adds the second sensor node to dts to enable it.
> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>
> ---
> v6:
>         - add cooling device map to cpu0-7 in platform node.

@Daniel, are you fine with this version?

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
