Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137E7D3F48
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27oRdkCnpe5M4c7GcVGXvYRQTXqeUUMwcYxq34PhwL8=; b=m+mI4c6njaAUqd
	vbxPsmnCArm+fiaF15Kt/jLShdr+jh1MJ8iOWBjfh49Jz5b2ZWnkLweF/WG966Auu8WxP//dshkjt
	WrWwG0rznSYkX2G6zCNgATcAUVV8f/RMX6oXtv01jZiIJL3wT2Q2BQR5ZTCJsGPzpGqVAj0Q2Gkzl
	UtY5bxSwsfERQ0cPd4mh5U+yV7PkYtslpvGK4TRzAfQQI7dIs76UeGBFNR54k2syfz3VUlVSTfdti
	mdXyiiH3zKTdVcYQFJOdl9eWeGPBxmHE3QI/VicQsfR1cl8LcrrmmCo4dL+jsRHm751Koi9GLEdpS
	MuObZHoSIyWw2viMDvnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iItnE-0003Xr-MT; Fri, 11 Oct 2019 12:13:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iItn6-0003XO-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:13:05 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BF4221D56;
 Fri, 11 Oct 2019 12:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570795983;
 bh=Bzg5lD50FCPnI9bRVeMc/8EtzNUsMRaJrmt7cWmJkMo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fjdvWE0AWcAP9CkgUYnlIqP9aNLs3d/PMBO140eICkj2BDXlnev7AIJDOeO8Y0lQC
 HmokVddV4qtiLA2/VvJQTlD6gf1heffYxmSCMAqoJBYeCybsWgQdxHEddEwl8HY3k0
 f+luKDCfEnc0ERddpORhecsaxVHirAlw4gXnlT40=
Date: Fri, 11 Oct 2019 14:13:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] arm64: cpufeature: Fix truncating a feature value
Message-ID: <20191011121300.GA1144378@kroah.com>
References: <20191010122922.GA720144@kroah.com>
 <20191010131943.26822-1-suzuki.poulose@arm.com>
 <20191011045538.GA977916@kroah.com>
 <433563f1-1aad-f43b-a294-08cb39ba4818@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <433563f1-1aad-f43b-a294-08cb39ba4818@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_051304_097973_B4470AE4 
X-CRM114-Status: GOOD (  17.99  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 11, 2019 at 11:31:30AM +0100, Suzuki K Poulose wrote:
> Hi Greg,
> 
> On 11/10/2019 05:55, Greg KH wrote:
> > On Thu, Oct 10, 2019 at 02:19:43PM +0100, Suzuki K Poulose wrote:
> > > A signed feature value is truncated to turn to an unsigned value
> > > causing bad state in the system wide infrastructure. This affects
> > > the discovery of FP/ASIMD support on arm64. Fix this by making sure
> > > we cast it properly.
> > > 
> > > This was inadvertently fixed upstream in v4.6 onwards with the following :
> > > commit 28c5dcb22f90113dea ("arm64: Rename cpuid_feature field extract routines")
> > 
> > What prevents us from just taking that commit instead?  You did not
> > document that here at all, which I thought I asked for.
> 
> Sorry, I missed that part. So, that change introduces helpers to
> extract feature fields based on the sign. And it also depends on
> 
> commit ff96f7bc7bf6 ("arm64: capabilities: Handle sign of the feature bit")
> 
> which introduces "sign" bit for the "capability" list and modifies
> the generic capability->matches() helpers to use the hint to switch to the
> appropriate helpers.

That's ok, does that cause any problems?  We always want the original
patch instead of a one-off patch as that way we do not diverge.

> I could backport parts of the commit 28c5dcb22f90 dropping the bits
> that affect the changes mentioned above.

Please do, that is always prefered as well, but do the first thing above
if at all possible.

> > 
> > Also, you only need 12 digits for a sha1, 28c5dcb22f90 ("arm64: Rename
> > cpuid_feature field extract routines") would be just fine :)
> 
> Yea, I understand. Its simply a pain to count the numbers, so I make sure
> to pickup something that looks larger than the 12 ;-). I will try to stick
> to that :-)

	git show -s --abbrev-commit --abbrev=12 --pretty=format:"%h (\"%s\")%n"
will give you the correct format.  I suggest making it a git alias :)

Or, use:
	[core]
	        abbrev = 12
in your .gitconfig file.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
