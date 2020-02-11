Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6359158A84
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhQw4a8CRNcr79FXWcMp8mZth5OaDQtzU22gNA1Ipw0=; b=FHW8AuhMBJWKFI
	U8YlnRZrdAzrXHolAG3aDfhRMUvKmpuCz1f/biCK1UJB0OWAhBErVcFrlFU4U8bVSo9pY9p/Q4Xhc
	bK6jYrRYCD5qTf8YVMHKTXOhTdhnfiE6H2+T1V39gfViPVS+6DhoKQEvbDKEh6wDv4mYezsImINwv
	kgcBn9fTSz7EmRoglgvCiXz6i+C9G1/xjGKC+Yb8dsYrAa/feQZzIvkwUc5kH8im54M4XTjitAfm3
	fyfI58KXElqkbDrPvmsVr6YXnxl+PEX6QVaMBb7uN3mlH0SCdDTIb9jyUXw/yBQHLbV8pW/uloUnx
	tAtk+aZCrl1MiB+I1thw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Q6D-0005qb-HB; Tue, 11 Feb 2020 07:36:49 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Q64-0005q6-Sw
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:36:42 +0000
Received: by mail-ed1-f66.google.com with SMTP id e10so3505540edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 23:36:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G4Z7VXCKOunamakdgxhm4cpbyrTmI1hya2jzoz0wGsM=;
 b=bwHI/lDF4nzGSvLY8RYklcIRt/t6DOp5KIL9+kmk2SNw/pHbL6r+E1IVz9Yv5psz7z
 8m4Y3+tUxSkS+HRZgDRxsEiIovfsLCAG1HM0xv/xyRRK3J8T72r16oVTsmi3q+Jw+c6f
 ds8ZpVHNX1lNxOjf//xM3vHiyIx3zQcE8LBJ2TXyACHv3UEQmth1llk89WeswVY9yjzI
 t1+TjxCW44mEIn8vVQxoKRWSMCsf9h6pIY08e2qGSqgDNVubG96y9kBZL+bGiv5ZdP7q
 gMkhNGV6dRW8SwT54PVqTFkRkmUpVqnekv9sPzcOVYpX0utvAx41rjuecrEi5Si6Q7lM
 qQYQ==
X-Gm-Message-State: APjAAAU1UXO5VUDdItVWYLSTj4hspkIytmkXAuH/jArHllZAY3Frv5j8
 Vbz1DRptR3iaH0kMPgbBycITMcw9RdE=
X-Google-Smtp-Source: APXvYqxffYHrmi+J/Ugp5+XSb9szG76ul2zHarhu5wdM1bRiiCpvfD3u/JOQuUpWqXBWMGTuTc+2wQ==
X-Received: by 2002:a17:906:5586:: with SMTP id
 y6mr4897688ejp.336.1581406598629; 
 Mon, 10 Feb 2020 23:36:38 -0800 (PST)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id f25sm292221ejx.33.2020.02.10.23.36.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 Feb 2020 23:36:38 -0800 (PST)
Received: by mail-wr1-f47.google.com with SMTP id m16so10876847wrx.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 23:36:38 -0800 (PST)
X-Received: by 2002:a5d:534b:: with SMTP id t11mr6826794wrv.120.1581406597700; 
 Mon, 10 Feb 2020 23:36:37 -0800 (PST)
MIME-Version: 1.0
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
 <20200210222807.206426-3-jernej.skrabec@siol.net>
In-Reply-To: <20200210222807.206426-3-jernej.skrabec@siol.net>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 11 Feb 2020 15:36:26 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Y_8r+uxqL_rCC6-_yjYjoviqW9xL68-DpcyR3Nkh+OQ@mail.gmail.com>
Message-ID: <CAGb2v65Y_8r+uxqL_rCC6-_yjYjoviqW9xL68-DpcyR3Nkh+OQ@mail.gmail.com>
Subject: Re: [PATCH 2/7] clk: sunxi-ng: sun8i-de2: Split out H5 definitions
To: Jernej Skrabec <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_233640_986557_2EF9E29F 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 6:28 AM Jernej Skrabec <jernej.skrabec@siol.net> wrote:
>
> H5 has less clocks and resets than A64. Currently that's not obvious
> because A64 is missing rotation core related clocks and reset.
>
> Split out H5 definition. A64 structures will be fixed in subsequent
> commit.
>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

Fixes: 763c5bd045b1 ("clk: sunxi-ng: add support for DE2 CCU")

You should also note that this patch requires commit 19368d99746e
("clk: sunxi-ng: add support for Allwinner H3 DE2 CCU") for the
H3 clock list.

Code wise everything looks in order.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
