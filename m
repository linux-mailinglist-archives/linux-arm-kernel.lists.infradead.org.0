Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B691123F8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 07:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Rzd8vTJKeBYpv+DaUbII/cXJDwRi1RM12vOXo8z0yk=; b=VWU7K87ZV9wdSp
	6c7PlD11l9UWqWgGd21HDYWUfyg9M9qFEzAdxBnbh2fiVLCig7TInaJPPBB+8GlNI7fCzteGOMD59
	Vmvv8pBomK+SiB9198KsO3skoogtlFZrLczG58rH5M54rZ1Kiz/deGbX/LRbgJFInEO7ZGx2I2eCW
	GsRicqk76qwyTHEiwAcGdGhaPMo5cjOCtRaYRNSlLn3fDeczcM9DC6CzYtZLlBHvvsumUNOxio8es
	gPoiPn0E3s4tzr/fZvs55rXpTqZMKdTeaBcblEVSPbJNewGZvlo7JGmh1YmIei33nLe1sdRVfSSaM
	2jir4gLbQ69fxuVU7FGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihSnO-0002NS-0y; Wed, 18 Dec 2019 06:26:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihSnF-0002MU-9F
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 06:26:46 +0000
Received: from localhost (unknown [27.59.34.83])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9C8C218AC;
 Wed, 18 Dec 2019 06:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576650403;
 bh=IK/FjFg1xZHL7wLM+UX88DTotTKCGLqYwJTRt2V3I/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fBJC8A0O9tpiMjJzF/kNuFLIDRrX1CHmVZRMXGE9BBl7ck42YkXH8ihlYKNHSZIvg
 dWHG0FUpOSTTL5LWbxBPbKETj8vJkRFCcgJLnBO31hFyg/nbq4BX5Uih+mZD6qMz8b
 vzB1WOfeenXz1zt2e7sjkyoV3XrCk4Yg0lt2OtmQ=
Date: Wed, 18 Dec 2019 11:56:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peng Ma <peng.ma@nxp.com>
Subject: Re: [v5 1/3] dmaengine: fsl-edma: Add eDMA support for QorIQ LS1028A
 platform
Message-ID: <20191218062636.GS2536@vkoul-mobl>
References: <20191212033714.4090-1-peng.ma@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212033714.4090-1-peng.ma@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_222645_348093_68500FEB 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 Robin Gong <yibin.gong@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12-12-19, 03:38, Peng Ma wrote:
> Our platforms(such as LS1021A, LS1012A, LS1043A, LS1046A, LS1028A) with
> below registers(CHCFG0 - CHCFG15) of eDMA as follows:
> *-----------------------------------------------------------*
> |     Offset   |	OTHERS			|		LS1028A			|
> |--------------|--------------------|-----------------------|
> |     0x0      |        CHCFG0      |           CHCFG3      |
> |--------------|--------------------|-----------------------|
> |     0x1      |        CHCFG1      |           CHCFG2      |
> |--------------|--------------------|-----------------------|
> |     0x2      |        CHCFG2      |           CHCFG1      |
> |--------------|--------------------|-----------------------|
> |     0x3      |        CHCFG3      |           CHCFG0      |
> |--------------|--------------------|-----------------------|
> |     ...      |        ......      |           ......      |
> |--------------|--------------------|-----------------------|
> |     0xC      |        CHCFG12     |           CHCFG15     |
> |--------------|--------------------|-----------------------|
> |     0xD      |        CHCFG13     |           CHCFG14     |
> |--------------|--------------------|-----------------------|
> |     0xE      |        CHCFG14     |           CHCFG13     |
> |--------------|--------------------|-----------------------|
> |     0xF      |        CHCFG15     |           CHCFG12     |
> *-----------------------------------------------------------*
> 
> This patch is to improve edma driver to fit LS1028A platform.

Applied this and patch 3, thanks

Btw pls send bindings as patch1 and driver changes as patch2.
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
