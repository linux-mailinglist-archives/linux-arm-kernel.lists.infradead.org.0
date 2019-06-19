Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A51B4C0C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 20:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NsS8bpiiI6jjBlsgx1TQP+bPC21SCASpZpl8nfVNkg=; b=SLb0wDSkO5zENI
	Rw6AGLef0vVxr3BzUYw+EbMQX062e571GOOFl2vme4SGudHB8wzEFOD8xfJWGE4cR5q/EqsT3cP8I
	loXoFMqqlJI7Ikp21//nUozoLw9PQ3nMkwaF1ODHd+qzSVTzA1ILnmkzje9zkRPIdoWKZv2RpB64q
	bArMVMOebQJPrndQDQFkfdAco0e0bHYhcpGVIykKnykTOcqYShye3lmACwYLzFrgpM0CuR6dTQUF9
	AxAwZYBMafjSbhqWi23GL4IJFZZTKP3sdFmPozmgSawNk7FitGtPoF5SXELTo2Go3/frQz+IW2AZb
	IKSf0L+gCcYEYtrdh+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdfIp-0002GT-Th; Wed, 19 Jun 2019 18:27:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdfI8-0002G5-2T
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 18:26:41 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6CCE214AF;
 Wed, 19 Jun 2019 18:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560968799;
 bh=QmtW1iESnjSbQz1LwaebReti9dCNR/X/2WVO+NSHibM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DcHdpLvc866btBi+qRSC4UBD77Yz1pnR7GmCGqa/PcCcNZRmO/69r5OyKfQFkIu+m
 u3Cl0mPXAoU6WXY8Q9kPl/WHXPSXsIsFEzR951D/jGysJAiFSHOxEpEZrX8A4GO2DX
 5SPDwkJNPeyeBmCHUcHXqe/RqeHH8tmf+hBCnakQ=
Date: Wed, 19 Jun 2019 20:26:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 45/45] coresight: replicator: Add terminate entry for
 acpi_device_id tables
Message-ID: <20190619182636.GA18202@kroah.com>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
 <20190619172949.4522-46-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619172949.4522-46-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_112640_365698_9B3023F9 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 11:29:49AM -0600, Mathieu Poirier wrote:
> From: Wei Yongjun <weiyongjun1@huawei.com>
> 
> Make sure acpi_device_id tables have terminate entry.
> 
> Fixes: fe446287ec9f ("coresight: acpi: Support for platform devices")

Nit, this is not a valid git commit id when it gets applied :(

I'll edit it up by hand...

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
