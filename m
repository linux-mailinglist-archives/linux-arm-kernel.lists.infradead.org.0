Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D657A8C0C4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 20:38:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oFkXKLrAFsp2g1wKIYlIpc1+8wxaO+OP2s+o9Q8zLk=; b=DZ0AVuXKCVN20m
	JtEIYzW3AWBvDYg4qu4e6T/bQPumOLNEFy/zcjBjDbratoqyQ6GwO3ymMSkVrDe49ekjCRfbx8U4r
	QM3LfHaR+VryHLFOIEXy8xbRICTJpvyZoDQouJ7pyw/WUw1r5dQLDDJKRlGDOCvxQorZttEd/4KV8
	7N4mAUlXQGdCwouC7l1W3yMEITpdHTul5ZxJ2g9PX6keucOp0R1U/cqpRug7sLtVJbjXFsoDaV++8
	iehBEbWs3WLPBeJpW3YYaE6JTnyubxrRhhNZVqeM8uXOfXVQg+TYNNvwb+LQp8ZNxnJrJerj/Laqq
	+4p15om7XQBOWk3Womgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxbgP-0006bK-4S; Tue, 13 Aug 2019 18:38:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxbgF-0006b3-0u
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 18:38:00 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3CB22064A;
 Tue, 13 Aug 2019 18:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565721478;
 bh=O6RKQJ/j6cRpcnAVTNHmol+XRXnvK/WIJ5ApLiBdhes=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lTBZlZSsGCNJBJUkb2isnHVaAbBp10OnDoqk4uBpWJmJiKLNWLX1ombgiOB8wNdMb
 NstjyPikTjPb85Xd2IEVP+J5I/4LGez7y4Q7HlGe1UeahHF8DkbAvUwluxJ3/1Rtt/
 sljN82Nm4TXysFKCK5Bt7BJWvLfhqB/m34geUKFs=
Date: Tue, 13 Aug 2019 20:37:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: Fix DEBUG_LOCKS_WARN_ON for uninitialized
 attribute
Message-ID: <20190813183755.GD6582@kroah.com>
References: <20190812135328.30952-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812135328.30952-1-suzuki.poulose@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_113759_088208_4D91E44D 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 02:53:28PM +0100, Suzuki K Poulose wrote:
> commit 5511c0c309db4c526a6e9f8b2b8a1483771574bc upstream
> 
> While running the linux-next with CONFIG_DEBUG_LOCKS_ALLOC enabled,
> I get the following splat.
> 

Thanks for the backport, now queued up.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
