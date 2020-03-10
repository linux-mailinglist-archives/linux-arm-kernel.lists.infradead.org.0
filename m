Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C87A717F348
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qPj3uhyHybEaqA2YyYnVFux653ULEcUlYSE9qwNKfdw=; b=J5ZJQyNY9WRo7z
	miYct/wi/zIQxDL/tSdDKzPsUvxx1xcNrHJnQmu86KDX9tv/S96a1uoRU6oSfRA1U7pLJt1XQPymr
	OR/hKbL4agjYLFwpnwUlL/H/EAycmutCuuHrLAw20qiTEyFOF34OkE0bWieVqu1A2CTrW+O1/zOUE
	SCJWJ5guU99FVLcs1Zi7gBIDNFOdA+lvNxBBi8vURDI8+5x5rDxYF6GyrxjtVgv9c62awdGp+Ik99
	coQjuXnHpUCORq+uYsxaEECulgbpKthi5HgTZYextcqU81g3N4fRIIevRZKEwNi0u8iNEE04IXJ02
	ptQzV5chQtwhR61G+vKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBb0M-0000tC-HS; Tue, 10 Mar 2020 09:16:50 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBb0D-0000sS-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 09:16:42 +0000
Received: by mail-wr1-f66.google.com with SMTP id v11so14768986wrm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 02:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fz3n4QEA4mMM+MBbJX+cMGlCMEaVSqf4LwkZvYcSZEw=;
 b=A8gkYaLF922fjKSpCKik5Fk+JAgwMKvzRKglUO/ZeoUMAKxjBMERQznKTkTzoiXe2R
 qKarPA/Wv1Qzv7kQDPLxSG2+JZIKavX2spB7UDLnQ36wiXCqo4nb6zQFtvym8yJY7zWR
 Qh+sbE5kMpPtFTqwziB3giJ8xZKrltDLgPWlLZF+ZQj7L9LPOgRJTD73s/kuf4BsdOwb
 3Z0EpKOvPIqBtmO72JVElN+Vxpyhs3S8aZAEWBlvBb0LVMGbHQGiOdS5cdibMrcOcL6o
 E61mS7rGz4iqHWxkiJywMB7lu6SYS/IeivdM4qZNDQXZWXvhiEj0tqUEbkR6z/0npuGg
 GF4A==
X-Gm-Message-State: ANhLgQ05o+K5boY+FkaxXL000G7sMDiI9KGXovm2ZWJDAtBeMoqhw4zW
 c2F77n7FCKgtRXxS+QBghyI=
X-Google-Smtp-Source: ADFU+vszMTJIkVmx1ZNqIN9KzQ8vaeAT6TaRYkPc1p0pHRH6nNgZB8aQkPvG80FiR8Kt9mo3LxxChg==
X-Received: by 2002:adf:92c2:: with SMTP id 60mr9876964wrn.177.1583831798497; 
 Tue, 10 Mar 2020 02:16:38 -0700 (PDT)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id j14sm65506521wrn.32.2020.03.10.02.16.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 02:16:37 -0700 (PDT)
Date: Tue, 10 Mar 2020 10:16:37 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] vfs: keep inodes with page cache off the inode shrinker
 LRU
Message-ID: <20200310091637.GC8447@dhcp22.suse.cz>
References: <CAK8P3a3pzgVvwyDhHPoiSOqyv+h_ixbsdWMqG3sELenRJqFuew@mail.gmail.com>
 <671b05bc-7237-7422-3ece-f1a4a3652c92@oracle.com>
 <CAK8P3a13jGdjVW1TzvCKjRBg-Yscs_WB2K1kw9AzRfn3G9a=-Q@mail.gmail.com>
 <7c4c1459-60d5-24c8-6eb9-da299ead99ea@oracle.com>
 <20200306203439.peytghdqragjfhdx@kahuna>
 <CAK8P3a0Gyqu7kzO1JF=j9=jJ0T5ut=hbKepvke-2bppuPNKTuQ@mail.gmail.com>
 <20200308141923.GI25745@shell.armlinux.org.uk>
 <CAK8P3a2Gz5H_fcNtW0yCCjO1cRNa0nyd568sDYR0nNphu49YqQ@mail.gmail.com>
 <20200309140439.GL25745@shell.armlinux.org.uk>
 <CAK8P3a1HEhwie1uUObQMJyGcs_WSwz4Gj81tAWXZX4d2ff77XA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1HEhwie1uUObQMJyGcs_WSwz4Gj81tAWXZX4d2ff77XA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_021641_411204_5B957925 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Nishanth Menon <nm@ti.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Rik van Riel <riel@surriel.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Roman Gushchin <guro@fb.com>, Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Dave Chinner <david@fromorbit.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Linux-MM <linux-mm@kvack.org>,
 Yafang Shao <laoar.shao@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, kernel-team@fb.com,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I am worried this went quite tangent to the original patch under
discussion here, but let me clarify at least one point.

On Mon 09-03-20 16:04:54, Arnd Bergmann wrote:
> On Mon, Mar 9, 2020 at 3:05 PM Russell King - ARM Linux admin
[...]
> > What happened to requests for memory from highmem being able to be
> > sourced from lowmem if highmem wasn't available?  That used to be
> > standard kernel behaviour.
> 
> AFAICT this is how it's supposed to work, but for some reason it
> doesn't always. I don't know the details, but have heard of recent
> complaints about it. I don't think it's the actual get_free_pages
> failing, but rather some heuristic looking at the number of free pages.

This is indeed the case. There are low memory reserves which are not
allowed for requests which can be satisfied from higher zones. This is
the case for many many years. Just have a look at lowmem_reserve and
their usage in __zone_watermark_ok. The layout of the reserves can be
configured by /proc/sys/vm/lowmem_reserve_ratio.

HTH
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
