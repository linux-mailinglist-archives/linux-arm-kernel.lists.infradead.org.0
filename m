Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787BB1651DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 22:47:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STgeGBm+Xvnx22VYsCrOyJJaKOO74RzdEgdAVpEFjQA=; b=q6mA5szw+RJVfq
	i+xcSIXj5JP91XjIN/eLhACDQCJgu4FBxbtmy+GVsaslscrxy/eyCIMZ4vuBeQ+a3+d8YPl6ZYv0Z
	hfHew7zUfHIfpYMPqbLz2f364iY5DkWHH0AQx2r8sPlSWcAIbK5ayTgXqfawnzHxq0dzvwKhwsix4
	5lckNdbAVB97r7leYTNKwmZGXvYW0Efok1Ki7X70zdITfl4MOrWlO8jBAgBrxRdolHKk6mU70EqyU
	xFId3O7DrR/nMryakss9RMJ5w7m3vTehfMnYnQ71e24IE61pcHdHQpijONQJazoYk/hPG2twKw45B
	Hcldsadaya8/hSOgnhMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4XBK-0001Qs-1z; Wed, 19 Feb 2020 21:46:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4XB9-0001QG-L0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 21:46:49 +0000
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7624424654;
 Wed, 19 Feb 2020 21:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582148806;
 bh=HxfYRjJj58z+qAAsFwPuZfJ0KZbNY+dKSV+60i8qVIs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Muu7wuj9ri3Wvcl3mc3d8sk4smKoASDoa02eUn9plYSjI6agD+f8aGFYssTJjKK05
 dExvMbtjpSDHMgolAcpGJveYtVAWzY4uSeZlmuieDqqfaCRrfzk1yP2uHek5RCXGkW
 HgHG5zDMhlIzFXL1XRhWZW9L3976VnXD5qU+VTjk=
Date: Wed, 19 Feb 2020 13:46:45 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [RFC PATCH] memory_hotplug: disable the functionality for 32b
 (was: Re: [Bug 206401] kernel panic on Hyper-V after 5 minutes due to)
 memory hot-add
Message-Id: <20200219134645.7430db57e0e59f69e7386f46@linux-foundation.org>
In-Reply-To: <20200218100532.GA4151@dhcp22.suse.cz>
References: <20200218084700.GD21113@dhcp22.suse.cz>
 <200218181900.M0115079@vega.pgw.jp>
 <20200218100532.GA4151@dhcp22.suse.cz>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_134647_780328_D01DA797 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, bhe@redhat.com, david@redhat.com,
 bugzilla-daemon@bugzilla.kernel.org, linux-mm@kvack.org,
 richardw.yang@linux.intel.com, n-horiguchi@ah.jp.nec.com, kkabe@vega.pgw.jp,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 11:05:32 +0100 Michal Hocko <mhocko@kernel.org> wrote:

> Subject: [PATCH] memory_hotplug: disable the functionality for 32b
> 
> Memory hotlug is broken for 32b systems at least since c6f03e2903c9
> ("mm, memory_hotplug: remove zone restrictions") which has considerably
> reworked how can be memory associated with movable/kernel zones. The
> same is not really trivial to achieve in 32b where only lowmem is the
> kernel zone. While we can tweak this immediate problem around there are
> likely other land mines hidden at other places.
> 
> It is also quite dubious that there is a real usecase for the memory
> hotplug on 32b in the first place. Low memory is just too small to be
> hotplugable (for hot add) and generally unusable for hotremove. Adding
> more memory to highmem is also dubious because it would increase the
> low mem or vmalloc space pressure for memmaps.
> 
> Restrict the functionality to 64b systems. This will help future
> development to focus on usecases that have real life application.  We
> can remove this restriction in future in presence of a real life usecase
> of course but until then make it explicit that hotplug on 32b is broken
> and requires a non trivial amount of work to fix.

(cc linux-arch)

(and linux-arm-kernel, as ARM is a major 32-bit user)

Does anyone see a problem with disabling memory hotplug on 32-bit builds?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
