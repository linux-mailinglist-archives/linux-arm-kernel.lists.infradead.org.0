Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836C8F7AEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7pJBL34zOPy74j4NW+wbl8MaIbit08+s5e4/k4IKzE=; b=HGNTkMOMyuj5Ag
	pBSv6jym5s83TaJ+p3vTFqLoSZift8lUdqjzpX/4wBVuytOP3Vd4S3nOIEIaLE1dfRFJa4VLzwn5z
	Ga0bMe+RTmc5pIDZS6Jv0w6Kpc3ABcXATs+LmEiQJeBIpubisSD3s63TqDrwFe/V9eU07XF4J9t34
	rxdCEJ2x0OQP8RIIcMV54s3nmlAPTsr3w9SPyKzUoXYWirfXyvoem4LyDDSUFeqK+B2AdofCFglFE
	9mcsQbaW59N75zMsthXwQ5ARXWVNVojhBRoOU7LDztP3350XTfdLpXVux9pFAjuryEx8MkPsG4aMh
	gUhslZ7yiAOQRF420dqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUETr-00008E-99; Mon, 11 Nov 2019 18:32:03 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUETj-000078-KP
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:31:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 14E12B2E3;
 Mon, 11 Nov 2019 18:31:54 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
 id 48398DA7AF; Mon, 11 Nov 2019 19:31:58 +0100 (CET)
Date: Mon, 11 Nov 2019 19:31:58 +0100
From: David Sterba <dsterba@suse.cz>
To: Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Subject: Re: [PATCH next 1/2] btrfs: tree-checker: Fix error format string
Message-ID: <20191111183158.GT3001@twin.jikos.cz>
Mail-Followup-To: dsterba@suse.cz,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 Qu Wenruo <wqu@suse.com>, David Sterba <dsterba@suse.com>,
 Johannes Thumshirn <jthumshirn@suse.de>, Chris Mason <clm@fb.com>,
 Josef Bacik <josef@toxicpanda.com>, linux-btrfs@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191108213853.16635-1-afaerber@suse.de>
 <20191108213853.16635-2-afaerber@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108213853.16635-2-afaerber@suse.de>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_103155_813815_FAD24F43 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: linux-arm-kernel@lists.infradead.org, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, Chris Mason <clm@fb.com>,
 Qu Wenruo <wqu@suse.com>, Johannes Thumshirn <jthumshirn@suse.de>,
 David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 10:38:52PM +0100, Andreas F=E4rber wrote:
> From: Andreas F=E4rber <afaerber@suse.com>
> =

> Argument BTRFS_FILE_EXTENT_INLINE_DATA_START is defined as offsetof(),
> which returns type size_t, so we need %zu instead of %lu.
> =

> This fixes a build warning on 32-bit arm:
> =

>   ../fs/btrfs/tree-checker.c: In function 'check_extent_data_item':
>   ../fs/btrfs/tree-checker.c:230:43: warning: format '%lu' expects argume=
nt of type 'long unsigned int', but argument 5 has type 'unsigned int' [-Wf=
ormat=3D]
>     230 |     "invalid item size, have %u expect [%lu, %u)",
>         |                                         ~~^
>         |                                           |
>         |                                           long unsigned int
>         |                                         %u

Is there a gcc warning option that can catch that on 64bit too?
-Wformat=3D2 does not and I don't see any other of the option family to do
that. We've had fixups of the size_t printk formats and I'd like to
catch that when the patches are added to the devel branches. I can't run
32bit build check each time but this seems to be the only way so far.

> Fixes: a31ccb4b7ba2 ("btrfs: tree-checker: Check item size before reading=
 file extent type")

As the patch is still in the devel branch, the commit id is not stable
and I'll fold the change to to the patch. Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
