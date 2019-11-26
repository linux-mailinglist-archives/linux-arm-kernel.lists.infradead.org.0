Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D4A10A160
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 16:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ijLPtUsKro4PBlo+KRVMnKG0DhwAws9qliBYKyJYHoc=; b=V9zSo/eZYjduqr
	zUGh1fnjkN2bv9EPhp1HCF/YorhEFSGH4SN/XrgOnv1CE02xwYtjtX8ZfxBlivyWjIUxLJrwkxyfq
	ArXtNVA5IR15KJq4Ys7wgprfTQOPXiZqCVpbJnLs62QOSj6yCjmbQpmTvTdsPBlMaA5CMFYVVqdj4
	NUwsvPWsoGB/K+D3RiJiMcK1XSDwcn3qUOokPkdy0myHRI50Tu7KbviE8JUsELpq60CF25oyFnI4+
	VM5U67rbFV8Z3ZpFicBVgIIP2HkfRi00YnKQZMsyitzWfRQ0q/HyUexs032PNV2HAPaQ1CGV9eFu/
	sTRkOF4HAiTma5+czkFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZd1f-0002r3-PR; Tue, 26 Nov 2019 15:45:15 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZd1O-0002q9-Lg
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 15:45:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EFD85699BB;
 Tue, 26 Nov 2019 15:44:54 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 2BE99DA898; Tue, 26 Nov 2019 16:44:53 +0100 (CET)
Date: Tue, 26 Nov 2019 16:44:53 +0100
From: David Sterba <dsterba@suse.cz>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH next 1/2] btrfs: tree-checker: Fix error format string
Message-ID: <20191126154452.GG2734@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz, Geert Uytterhoeven <geert@linux-m68k.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Qu Wenruo <wqu@suse.com>, David Sterba <dsterba@suse.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>,
 linux-btrfs <linux-btrfs@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20191108213853.16635-1-afaerber@suse.de>
 <20191108213853.16635-2-afaerber@suse.de>
 <20191111183158.GT3001@twin.jikos.cz>
 <CAMuHMdVbcfB0FFS=gLDathXFM3x0WYXJEq99S_g7mjAPS94rAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdVbcfB0FFS=gLDathXFM3x0WYXJEq99S_g7mjAPS94rAQ@mail.gmail.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_074458_854861_878044C7 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: dsterba@suse.cz
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Sterba <dsterba@suse.cz>, Josef Bacik <josef@toxicpanda.com>,
 Chris Mason <clm@fb.com>, linux-btrfs <linux-btrfs@vger.kernel.org>,
 Johannes Thumshirn <jthumshirn@suse.de>, David Sterba <dsterba@suse.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>, Qu Wenruo <wqu@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 26, 2019 at 11:36:58AM +0100, Geert Uytterhoeven wrote:
> > > Fixes: a31ccb4b7ba2 ("btrfs: tree-checker: Check item size before reading file extent type")
> >
> > As the patch is still in the devel branch, the commit id is not stable
> 
> It indeed is not:
> Fixes: 153a6d299956983d ("btrfs: tree-checker: Check item size before
> reading file extent type")
> 
> > and I'll fold the change to to the patch. Thanks.
> 
> Apparently that was forgotten, and now the issue is part of Linus' tree.

Mistake on my side so I'll apply the full fixup patch, thanks for
noticing.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
