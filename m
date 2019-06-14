Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 389D246B9D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 23:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TcMQ1tiO9ycjxdsXRczabdkC6LSp0J8PwqMqfe3Ygg=; b=lHhROMTB5OxsWM
	O1eHdMlxsi9oYqLzCr78T+TYVrfp+lmkUmjWXJe47frBtlOo8v7usWNobmxdcu4IFgIW9i1wqTqWx
	U24BVzpl/dbSvJ7wvd2mkarW4Dl9x+Uh99nqrgvA/bnfSS+kwH05RUfGT9Nl5tTAx+YEcSGRsixJr
	EktHT8YPi7wi17UQVigZBDxNewBcxKsyvs5tg3l78Fo7GSeDJOZnppFxKfGDAzbaDH9G/4qQDtyrs
	UIlYcREVPXJgKl60B5SK3saTtuKiHHVlO7MsA96VrGMCAlvi93W9xZK5r6Qo1vx9lV0+5JrQ1+qac
	JFYErzvJUvoL+4Yn9BZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbtXH-0007WR-SS; Fri, 14 Jun 2019 21:14:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbtX7-0007H8-LX
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 21:14:50 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D0D921473;
 Fri, 14 Jun 2019 21:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560546889;
 bh=wQlzv9GXi+d6YxFDj5qp88AVZygc6aohbfVT4AQR70Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ks0AHcQ3CMMcp8lXmC5Q1q+mNRhg76nx20zz7WGQfrHmET+emzaWoOodcXQ82HPjk
 /Q0wzICC14gHKtUH/c0hiVkAbFD6SklBQgeWeDifIfILXybbVlrUgOA2LE9404heew
 9zZ4/WlS27thwm4E7UDC674PGe7hBqVr8gYg2J1U=
Date: Fri, 14 Jun 2019 16:14:47 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jonathan Corbet <corbet@lwn.net>
Subject: Re: [PATCH v5] docs: power: convert docs to ReST and rename to *.rst
Message-ID: <20190614211447.GU13533@google.com>
References: <7dc94cb4-ebf1-22ab-29c9-fcb2b875a9ac@csail.mit.edu>
 <72d1f8f360d395958dd0b49165fc51b58801f57e.1560420621.git.mchehab+samsung@kernel.org>
 <20190614143631.7c99719f@lwn.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614143631.7c99719f@lwn.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_141449_734939_E8340248 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nishanth Menon <nm@ti.com>, linux-wireless@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Harry Wei <harryxiyou@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Alex Shi <alex.shi@linux.alibaba.com>,
 "Srivatsa S . Bhat" <srivatsa@csail.mit.edu>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-pci@vger.kernel.org,
 Len Brown <len.brown@intel.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sebastian Reichel <sre@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 02:36:31PM -0600, Jonathan Corbet wrote:
> On Thu, 13 Jun 2019 07:10:36 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> 
> > Convert the PM documents to ReST, in order to allow them to
> > build with Sphinx.
> > 
> > The conversion is actually:
> >   - add blank lines and identation in order to identify paragraphs;
> >   - fix tables markups;
> >   - add some lists markups;
> >   - mark literal blocks;
> >   - adjust title markups.
> > 
> > At its new index.rst, let's add a :orphan: while this is not linked to
> > the main index.rst file, in order to avoid build warnings.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> > Acked-by: Mark Brown <broonie@kernel.org>
> > Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> > Acked-by: Srivatsa S. Bhat (VMware) <srivatsa@csail.mit.edu>
> 
> So I can't apply this one due to conflicts in include/linux/pci.h.  Bjorn,
> perhaps the easiest thing is for you to take this one through your tree?

OK, I applied this to pci/docs for v5.3.  I applied this entire patch,
but if you would prefer that I only apply the PCI-related parts, let
me know and I'll split those out.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
