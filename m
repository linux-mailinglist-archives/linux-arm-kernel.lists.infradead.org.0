Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CD832E3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 13:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eDnIy6zM8UhENShm2x/coJUKOsXl7YIJ1Zv4TJv6g8=; b=KfQ3nkT8vIevsq
	r/ZmLQaQwL/NWdT2LnJwHiySdqxbYInB9bwE6TMkO6ltzWQdBQSx5no5/dZveUQTHJ7Btf5VhftN2
	0H7FQrDVAGgqujE/Dl8/45S98lqwUglNtqw5HPboaBxTaFZSpvUAEPwuMgFU0JwGCokwcvym7QDeH
	wEU9GPylnIQBhJIxBeELSdREGlXFizLLWsPHGZlIBu8dGlAOZFkWGdLdfwC/MPOcRbsxzk3TjMZzD
	6WSp+VMwHjM/JFB8ToQyEpK7Nq6jQ/LyQtDOxcNpXhetBNKbAXYpmmP+H6Dh4NHnk5ywQ9+aFC132
	lfbICkouPhIPNtHDQz2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkpx-0008Hi-AA; Mon, 03 Jun 2019 11:09:09 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkpr-0008H6-2w
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 11:09:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C0DB8A78;
 Mon,  3 Jun 2019 04:09:02 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EE1C3F5AF;
 Mon,  3 Jun 2019 04:09:00 -0700 (PDT)
Date: Mon, 3 Jun 2019 12:08:58 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH kvmtool v3 3/9] update_headers.sh: arm64: Copy
 sve_context.h if available
Message-ID: <20190603110858.GI28398@e103592.cambridge.arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
 <1559229194-3036-4-git-send-email-Dave.Martin@arm.com>
 <20190531180340.047189da@donnerap.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531180340.047189da@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_040903_129853_F877F9FD 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 31, 2019 at 06:03:40PM +0100, Andre Przywara wrote:
> On Thu, 30 May 2019 16:13:08 +0100
> Dave Martin <Dave.Martin@arm.com> wrote:
> 
> > The SVE KVM support for arm64 includes the additional backend
> > header <asm/sve_context.h> from <asm/kvm.h>.
> > 
> > So update this header if it is available.
> > 
> > To avoid creating a sudden dependency on a specific minimum kernel
> > version, ignore the header if the source kernel tree doesn't have
> > it.
> > 
> > Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> > ---
> >  util/update_headers.sh | 13 ++++++++++++-
> >  1 file changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/util/update_headers.sh b/util/update_headers.sh
> > index a7e21b8..90d3ead 100755
> > --- a/util/update_headers.sh
> > +++ b/util/update_headers.sh
> > @@ -25,11 +25,22 @@ fi
> >  
> >  cp -- "$LINUX_ROOT/include/uapi/linux/kvm.h" include/linux
> >  
> > +unset KVMTOOL_PATH
> > +
> > +copy_arm64 () {
> > +	local src=$LINUX_ROOT/arch/$arch/include/uapi/asm/sve_context.h
> 
> To go with your previous patches, aren't you missing the quotes here?

Hmmm, good question.  This is "obviously" a fancy variable assignment,
and so there would be no word splitting after expansion.  So quotes
wouldn't be needed here, just as with a simple assignment.  bash and
ash seem to work this way.

dash doesn't though, and a padantic reading of the bash man page
suggests that the dash behaviour may be more correct: i.e., local
is just a command, whose arguments are expanded in the usual way,
even if it happens to assign variables as part of its behaviour.

So, while I'm not sure whether or not quotes are officially needed here,
I guess we should have them to be on the safe side.

> > +
> > +	if [ -e "$src" ]
> > +	then
> > +		cp -- "$src" "$KVMTOOL_PATH/include/asm"
> > +	fi
> > +}
> > +
> 
> Maybe we can make this slightly more generic?
> copy_optional_arch() {
> 	local src="$LINUX_ROOT/arch/$arch/include/uapi/$1"
> 	[ -r "$src" ] && cp -- "$src" "$KVMTOOL_PATH/include/asm"
> }
> ...
> 	arm64) KVMTOOL_PATH=arm/aarch64
> 	       copy_optional_arch asm/sve_context.h
> 	       ;;

Happy to change it along those lines.  It's certainly possible this will
be needed again later for some future arch header.

Also, foo && bar exits the shell if foo yields false and set -e is in
effect, so I've reverted back to using an if.

(I'm still a little confused though, since I struggled to reproduce this
behaviour outside the script.)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
