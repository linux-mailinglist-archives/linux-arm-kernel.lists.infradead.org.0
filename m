Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 934091C10F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aSh8MQ4Mi4IsJJDTve91ee7fGi6Eixa3rtI7DrdJ4TI=; b=pmQifVf2gYv8H8
	6wTDMyukrbS7DsObMkZyeE66ppFm4YpUjQiLBoNEl0F2IIoq5yFyS40hd40mVca2SpFtZjOt9TkT9
	Z1MfqEvK0DNEpw6GD4t8U6ANwB/K7JUJgdL5VdacBe7916yWjTbMnd2dIPsGOIL8M3l2uQBib0USM
	Gr1ug7PtIVy/bFKBbORN70Hd7ZM2OJc++0nUruigC5AvtMZZCsEy8WK961+cXIc22Qmr3EQHFyjdc
	Yd+W3mFH2wTm+Cmz0dJsJ1phXvqietqNMsC/bluIq/hvTAi7Q/zoqdccL5v1ubxPi9iOFgejS0ZeG
	u0PZ2yedCJVKml6r/WSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUT2x-0004zI-VJ; Fri, 01 May 2020 10:37:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUT2s-0004xo-5F
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:37:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BA4F30E;
 Fri,  1 May 2020 03:37:22 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8266F3F73D;
 Fri,  1 May 2020 03:37:20 -0700 (PDT)
Date: Fri, 1 May 2020 11:37:12 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
Message-ID: <20200501103712.GA51954@C02TD0UTHF1T.local>
References: <20200430211922.929165-1-jeremy.linton@arm.com>
 <20200501070500.GA887524@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501070500.GA887524@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_033726_239780_93307D92 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: git@thegavinli.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 jarkko.sakkinen@linux.intel.com, stern@rowland.harvard.edu,
 Jeremy Linton <jeremy.linton@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 09:05:00AM +0200, Greg KH wrote:
> On Thu, Apr 30, 2020 at 04:19:22PM -0500, Jeremy Linton wrote:
> > On arm64, and possibly other architectures, requesting
> > IO coherent memory may return Normal-NC if the underlying
> > hardware isn't coherent. If these pages are then
> > remapped into userspace as Normal, that defeats the
> > purpose of getting Normal-NC, as well as resulting in
> > mappings with differing cache attributes.
> 
> What is "Normal-NC"?

Arm terminology for "Normal Non-Cacheable"; it might be better to say
something like:

On some architectures (e.g. arm64) an IO coherent mapping may use
non-cachable attributes if the relevant device is cache coherent.
If userspace mappings are cacheable, these may not be coherent with
non-cacheable mappings. On arm64 this is the case for Normal-NC and
Normal (cacheable) mappings.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
