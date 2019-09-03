Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55851A741F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 22:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3UZI5zvmVUbIm5WdUza8qm27UrBTXt3tgMQAswnVus=; b=PcFaxWHlV30CmW
	fXmtX2LcPcZhr5X8A4NBgoNj7a0BUTsm6wPKBZXFK+ixYooO0EWMrkrJ3yFGm8LyXcn3IKSvr0rl5
	Xn5Ul79fhBevK1/EFROas6gCbixHaIzXgYk9J5WaKXbuZfDs6gX2wx4Aw+4hhCX7GmfkyI3KdPk0K
	Y6yrTxZX32CY0s2JpTkYbq094pTin2znnZ6CRefb0z16Se/4KE0dKaAYiQNPJYS9yievzNBEdAmKt
	DHWkv3uzym+OQIcwIanE4MEp+Q81BSBtFHKdKlOrU2mXfsorrOM4w11NzK4QM6rfrwoRmNo41MnsG
	3JFrZIX1t6G51J6wR11w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5EyI-0003OW-Kb; Tue, 03 Sep 2019 20:00:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Ey3-0003Nx-Fe
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 19:59:56 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEC9721881;
 Tue,  3 Sep 2019 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567540794;
 bh=ycljeCAmClp03XbUOdy8sNXQZo4K4izNNKh1URmNfAA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y25ZpP4GCaWHXKWfHDLO6cS1oIcawgesUtTdE7qUqydUzmp00gP6jomZv6pToQABL
 u6ARa1osIOZ9IVShYHq7Vu/Rd4giIcU1At5T5Th42Gm2UgkkTSsNQrxpKNxQAUmOdQ
 oYsYAxhJq8liFcPyDZAsUjvP6bBUaFy+Swq+yL6s=
Date: Tue, 3 Sep 2019 21:59:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v2 09/11] coresight: etm4x: docs: Update ABI doc for
 sysfs features added.
Message-ID: <20190903195951.GA25008@kroah.com>
References: <20190829213321.4092-1-mike.leach@linaro.org>
 <20190829213321.4092-10-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829213321.4092-10-mike.leach@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_125955_544733_4AFB8491 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mathieu.poirier@linaro.org, corbet@lwn.net, coresight@lists.linaro.org,
 suzuki.poulose@arm.com, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 10:33:19PM +0100, Mike Leach wrote:
> Update document to include the new sysfs features added during this
> patchset.
> 
> Updated to reflect the new sysfs component nameing schema.
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> ---
>  .../testing/sysfs-bus-coresight-devices-etm4x | 183 +++++++++++-------
>  1 file changed, 115 insertions(+), 68 deletions(-)
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> index 36258bc1b473..112c50ae9986 100644
> --- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> +++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-etm4x
> @@ -1,4 +1,4 @@
> -What:		/sys/bus/coresight/devices/<memory_map>.etm/enable_source
> +What:		/sys/bus/coresight/devices/etm<N>/enable_source

You are renaming sysfs directories that have been around since:

>  Date:		April 2015

???

Really?

That's brave.

What tool did you just break?

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
