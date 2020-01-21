Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06CE143B0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:31:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCVc7wyJVYCgAjOuL9FRbNoHEkuV1+3cceigI5TRd7g=; b=Y2+pYlZJBIdHT9
	Yi5LXPYomRGP8xMSY1qSpIuKZ0nU95GdR9Hfeixw/KIaOvM9fyVw9WYR+h4ib10rK6IViFkqYrllZ
	+DGwsLTMHSQxMfpNDHY/Nisd8tOLa8UFfdT/KKdKnGq/q/iCgxITTH62TYiusRVH5ER6ZDNXShOAl
	sfi5wkBgcW4eO+6xPYBhjUL7xJRwzmJ4ztleDbsrJ8yx136VXPpmQ/sSdFK49gHG0dZDYyfkAtjOf
	43zt3OCltZBF1fX5TKbQxkdhaNrAccJyy26T8c3ta0fOztjqwjU1Lu9AXSF4JA+v7i0cNl4u9PpHM
	T/+EjvziqfUOn3r3y74g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqoo-0007v2-2t; Tue, 21 Jan 2020 10:31:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqoC-0007eU-7N
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:31:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE2B620700;
 Tue, 21 Jan 2020 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579602655;
 bh=m2TZeehd4HPkhbBqRD/zh5m873xVDQ+5aGttOrBjQ0w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2mzmvBEeEvcT2iFNTRAAwzrpYy2fdyk5chBvqELCWZS8je3dYlGeSAZ/OfSPK73AK
 vDq+zdLQnvz/YX2YLCc86dj69AtrApmhJ9U4O2DGmISlqGdQ1JnqXtNx3VP3Rg+Sq1
 igQoiuY9sF8TuGun7lIb5bLRlBpyuT5Ib6ux3YiQ=
Date: Tue, 21 Jan 2020 10:30:50 +0000
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [RFC v5 56/57] arm64: entry: Avoid empty alternatives entries
Message-ID: <20200121103050.GD11154@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-57-jthierry@redhat.com>
 <20200109165145.GI3112@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109165145.GI3112@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023056_395046_238B9A13 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, raphael.gault@arm.com,
 jpoimboe@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:51:46PM +0000, Mark Rutland wrote:
> On Thu, Jan 09, 2020 at 04:02:59PM +0000, Julien Thierry wrote:
> > kernel_ventry will create alternative entries to potentially replace
> > 0 instructions with 0 instructions for EL1 vectors. While this does not
> > cause an issue, it pointlessly takes up some bytes in the alternatives
> > section.
> > 
> > Do not generate such entries.
> > 
> > Signed-off-by: Julien Thierry <jthierry@redhat.com>
> 
> This looks like a sensible cleanup on its own. FWIW:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>

I'll pick this one up, thanks.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
