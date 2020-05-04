Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477D31C3910
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 14:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3iHEW38j0Dr4tnEjcu/c1frTSWdx92oTMNQLLKUMrs=; b=IlD6dakRTeK/k9
	3eNPc17oumwJ5sl+TNq+jOLhmGGp+YUc73+frQQ27vyrZD3fg96Zvxb4Wywiw/XcWFGLt3dpGGtFf
	uSlSJjUoQCXR+sZvksebuS+4hDHNR5z7Fjs7lVBT2/XVNRuZvPoQrU78pKzGM/uHQB+oRm7jPVoWC
	wGqy1uPeoryCp2A98gc/ojlK2eH4Sm+fw/kdLrD9r2JoMn2z6iA6tJxGXeIDBQ7WhkOapTGChOvF9
	pODv1Gm+AlN2WT3qQQEqAFgCOluigBEmP+LWXwKpobMidpDlm64kMmYVPODmrBZC8a6uPcxTDyRdu
	f5IWcoxAWBvKzyGU7w5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVZzB-0007Ae-O6; Mon, 04 May 2020 12:14:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVZz3-0007AE-Pt
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 12:14:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 041CA206A5;
 Mon,  4 May 2020 12:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588594444;
 bh=Onxe38r05n5H/x5p44Vr8YmgLl3d/a0RoSX07JHaD6w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eIjG++mbiq6gnPEpb4kuzykG9nG7Fe0Wq4Cdi7T/5gOrp1rwzl5RhbHb72tNBY4IK
 QRlAPCfJHY6f5vhoFFdF/NV6TUZorJcCwb8BWMho8lEC5OnFZZ8gjA9/2FChwRVsAx
 Y4MN8ReuafLEdXCITKe05hlLpg/BPW/C86saQjPk=
Date: Mon, 4 May 2020 13:14:00 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200504121359.GA1439@willie-the-truck>
References: <20200501123709.6640-1-broonie@kernel.org>
 <20200501123709.6640-4-broonie@kernel.org>
 <20200501125734.GD53528@C02TD0UTHF1T.local>
 <20200501161210.GF5276@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501161210.GF5276@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_051405_863730_DBBFAE90 
X-CRM114-Status: GOOD (  14.12  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 05:12:10PM +0100, Mark Brown wrote:
> On Fri, May 01, 2020 at 01:57:34PM +0100, Mark Rutland wrote:
> 
> > I appreciate the desire to not change this code too much, but could we
> > please rename this to aarch64_insn_is_steppable_hint() to avoid the
> > misleading name?
> 
> That's definitely clearer.  I've got this change locally but looking at
> the new function name I can see that having done the rename people might
> want to go through and also make sure that the list of HINTs we mark as
> steppable is up to date which is probably a good idea but would hold
> things up further, some of the barriers look like they might need a bit
> of thought.
> 
> Will, what would you prefer - should I send out a version with the
> just rename, do that incrementally or some other thing?

Please send a version with the rename and then people can add extra
instructions to the whitelist as and when they are needed.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
