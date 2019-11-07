Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F24F3930
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUAPnvRYUdlDCbko8c0DeRAkXBScH4NYh9xmXKyl0Ng=; b=OA6RpXutgd7rD4
	ZYqMZEz/ifne5XJ1xoQzMmMZktMy2mRKAm+E0T/SN2K4beScpTEotZ3IsZv/hL+oOd2bpqwQfynyl
	iZgkpLbGLIvAi+TbXsIsOZYK1hZ3cV+Uj72G7B5DOICu43nVAQGdy3QxV9HTVwVKr4H2M2GdGfcVx
	7pSXez5XKTsZlYGL1gEGOcsRBC0C06YAHZNbduyIvtVhhrUcXLKgbnt0e8doEL4Je99v4dWUZJ6Ks
	BOEKoqKiSWYHgPOUGZr/HF8VCms2/FxypyZNBIbRoJnR/RDrz6o1ntbmbtebFAgBsc9zmnkMJQK/0
	9/cKyUAXoJPk0xeLJPEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSo59-0001Kb-Qd; Thu, 07 Nov 2019 20:08:39 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSo54-0001Ju-AH
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:08:35 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id 9E68E2C1;
 Thu,  7 Nov 2019 20:08:28 +0000 (UTC)
Date: Thu, 7 Nov 2019 13:08:27 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 0/4] coresight: Documentation: next v5.4-rc5
Message-ID: <20191107130827.58058a5b@lwn.net>
In-Reply-To: <20191031175834.17548-1-mathieu.poirier@linaro.org>
References: <20191031175834.17548-1-mathieu.poirier@linaro.org>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_120834_356634_13D6256B 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 31 Oct 2019 11:58:30 -0600
Mathieu Poirier <mathieu.poirier@linaro.org> wrote:

> Good day Jonathan,
> 
> Please consider the following patches for inclusion in the next merge window.
> 
> Thanks,
> Mathieu
> 
> Mike Leach (4):
>   coresight: etm4x: docs: Update ABI doc for new sysfs name scheme.
>   coresight: etm4x: docs: Update ABI doc for new sysfs etm4 attributes
>   coresight: docs: Create common sub-directory for coresight trace.
>   coresight: etm4x: docs: Adds detailed document for programming etm4x.
> 
>  .../testing/sysfs-bus-coresight-devices-etm4x | 183 ++--
>  .../{ => coresight}/coresight-cpu-debug.rst   |   0
>  .../coresight/coresight-etm4x-reference.rst   | 798 ++++++++++++++++++
>  .../trace/{ => coresight}/coresight.rst       |   2 +-
>  Documentation/trace/coresight/index.rst       |   9 +
>  Documentation/trace/index.rst                 |   3 +-
>  MAINTAINERS                                   |   3 +-
>  7 files changed, 925 insertions(+), 73 deletions(-)

I've applied the set, thanks.

jon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
