Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D841C113D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6X6PV7a+e5LacEp5k5UjTn9hmF7F3yeCxCMxAoO+4q8=; b=pAza4lh2/TFTr22a3vs0PaxFQ
	+3oSx8yVJzFh9Uwyjm67xNEoSPAW9FOX0mfh523VwSh1c/ZAzssjOtom/vgfQ6FudknbzTYpvrn/k
	ARrup3zN967vnYHir9GplPJP4yKTe89kXlYb1rfp2xzdYCY+pxAufuf0SNLiHjH2Hy8y+PN5TS0NX
	/Yby/WoEfuv5nBohhN/mqd7mI21ZTUHotdeNmp29gZ3ilIkOSVvgmbefBjV2d094zlhxOkzKUp7Y1
	hqVqT8hXK9VefV8hOHE0+l2xo3JpCB9oG0e5XwBVUp565jbJ+XGFh3WI5eZbCJ0SmFLPvGYzU9y9O
	LJcrRTKkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUTJB-0007hh-C2; Fri, 01 May 2020 10:54:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUTJ4-0007hA-Qs
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:54:12 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52CBA2076D;
 Fri,  1 May 2020 10:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588330450;
 bh=0Cqvl5wkP/ieiQF2HFA2QygVgW3pCvJ1D9AWpPCWsIQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=n0bXcwbUgL6TBLTqvsA2xwqNT8DodUpTxzgLWrhXiNgpenfU0AQgCG/72wsVtCmdi
 Ztk7WzpabT+Gs9SVTrNpDudBKnhy2iHda/QwX5Vm7YVG7vGY7jte5hFaT2LIGSoogi
 VPoECoDn//owdx1Ia58bFtHwfknjMsoNlDYPebok=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUTJ2-008Jem-JB; Fri, 01 May 2020 11:54:08 +0100
MIME-Version: 1.0
Date: Fri, 01 May 2020 11:54:08 +0100
From: Marc Zyngier <maz@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] usb: usbfs: correct kernel->user page attribute mismatch
In-Reply-To: <20200501103712.GA51954@C02TD0UTHF1T.local>
References: <20200430211922.929165-1-jeremy.linton@arm.com>
 <20200501070500.GA887524@kroah.com>
 <20200501103712.GA51954@C02TD0UTHF1T.local>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <0aa2a8a9a5b6c00b2e1a1fcf71c121ce@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mark.rutland@arm.com, gregkh@linuxfoundation.org,
 jeremy.linton@arm.com, linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
 git@thegavinli.com, jarkko.sakkinen@linux.intel.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_035410_889123_49DC4E76 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: git@thegavinli.com, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 jarkko.sakkinen@linux.intel.com, stern@rowland.harvard.edu,
 Jeremy Linton <jeremy.linton@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-01 11:37, Mark Rutland wrote:
> On Fri, May 01, 2020 at 09:05:00AM +0200, Greg KH wrote:
>> On Thu, Apr 30, 2020 at 04:19:22PM -0500, Jeremy Linton wrote:
>> > On arm64, and possibly other architectures, requesting
>> > IO coherent memory may return Normal-NC if the underlying
>> > hardware isn't coherent. If these pages are then
>> > remapped into userspace as Normal, that defeats the
>> > purpose of getting Normal-NC, as well as resulting in
>> > mappings with differing cache attributes.
>> 
>> What is "Normal-NC"?
> 
> Arm terminology for "Normal Non-Cacheable"; it might be better to say
> something like:
> 
> On some architectures (e.g. arm64) an IO coherent mapping may use
> non-cachable attributes if the relevant device is cache coherent.

is *not* cache coherent.

> If userspace mappings are cacheable, these may not be coherent with
> non-cacheable mappings. On arm64 this is the case for Normal-NC and
> Normal (cacheable) mappings.

And to answer some of Greg's questions:

- This can show up on current HW that doesn't offer full IO coherency,
   which is likely on low-end arm/arm64 systems.

- I guess nobody noticed this before as x86 is perfectly happy with
   conflicting attributes for the same physical page, and there is
   (wild guess) probably not that much userspace making use of shared
   mappings between kernel and userspace using this interface.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
