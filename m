Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B5F1D5049
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 16:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8N9olIM57o9bLpQ6jcAO1JGxgeNVopbH5iMJOFUTl4=; b=f1cu0vDAADSIUL
	YWVgF+kNaLrFneSygZNlvr/43M53hz0lh7NmM3IEFocLNtaJIhMav5kmo8656cV0AlwGCEOUdkfYW
	4QGxUZfwXp7WHUl/0+2GjAJmWnNiudvDaNgWjS3htr1LWBQzUmqKIN6Ddxt/CCVTjhr5fyItXo5JU
	wuhhzCkksTTLGVRwzBYXzsXpeVrE2u0KNRSLobssrLudu765Y/AFdCGVQmXb7BDBIHY73ZaB+8VBj
	J1UZh5oTTxBuaQRFOPeYtVxJIGDNXwy55220lUoLjrN4wIrUotRKkMbM/v4qggtqGIdxbNIPFTMZ/
	I1IzkI3FT7uiRDu4uL5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZbEs-0001LJ-0Z; Fri, 15 May 2020 14:23:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbEk-0001Ks-RH
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 14:22:56 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 239922076A;
 Fri, 15 May 2020 14:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589552573;
 bh=P1wz18FD1v+ELmsuVnl//xXDeQTb7E8QMzUzntx7yCE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XgusqbOcZyTJyECfVxc4oUD/Yr2F4jSZmZjI0fFQbOjJGIE/XhU2iiZWRDucqXtXC
 MegvSrBPs2GxyTu+X+Ueb55ryH32xHHh326Cy/NwNTrLNguuw4V171WP9LWdPhpqJz
 6fLwPv6Gyzfg5pOmSPK2SdUPhl8tlPNL8u5YK9jM=
Date: Fri, 15 May 2020 16:22:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] coresight: cti: remove incorrect NULL return check
Message-ID: <20200515142251.GA2407979@kroah.com>
References: <20200507053547.13707-1-calvin.johnson@oss.nxp.com>
 <CANLsYkzeHpZygbQtz8Ed7dEaVMz362ftHQJ50DrBYR=+72NpJQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkzeHpZygbQtz8Ed7dEaVMz362ftHQJ50DrBYR=+72NpJQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_072254_921572_750281B0 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Calvin Johnson <calvin.johnson@oss.nxp.com>, linux.cj@gmail.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 12:00:21PM -0600, Mathieu Poirier wrote:
> Hi Greg,
> 
> On Wed, 6 May 2020 at 23:36, Calvin Johnson <calvin.johnson@oss.nxp.com> wrote:
> >
> > fwnode_find_reference() doesn't return NULL and hence that check
> > should be avoided.
> >
> > Signed-off-by: Calvin Johnson <calvin.johnson@oss.nxp.com>
> > Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
> I just noticed you were not CC'ed on the original conversation Calvin
> and I had and as such you probably don't know what to do with this
> patch.  Please see if you can pick it up as a fix for 5.7.  If that is
> not possible I will queue it up for inclusion in the 5.8 cycle.

I can take this for 5.7-final, thanks.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
