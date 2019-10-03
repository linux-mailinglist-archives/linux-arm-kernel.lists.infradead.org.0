Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310A2C98D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 09:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CIaumGQyGkEZkZzRP2+DtpfUw0mLiYIy0jtNP2BMAXo=; b=rrreN5PfvSukVK
	WLlrxLjzh/ua2yDI2TXrZtMwEeyvNBNJLf2uhlWEtPSvzKTvAJs2laImTg3uyfpl+WdOWiHWHpDM6
	UefONDPjyMyqLSQjDYGQjWqDqpXjuEj26FvkIBDNyxmLF46DNfUTpet10zg6iDZReHBf6IdjYVLNZ
	TVj5OX8Z0hAtma5l6DPc95npD2T+/y9qE9lzOlX7AxPPv0cX33CBI0MZhTmHhl7VBRRdI1OH6HuCO
	jNVFMkrt99KPt3vWCh5LN7WNCucffqyv/1YBQwuhvfHM3OHCAhA7cM1hOyKFrNLUR7okoeA1WCeMK
	BIoo+Srlgqcmi1TfNmOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFvEV-0006qg-9j; Thu, 03 Oct 2019 07:09:03 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFvEN-0006q2-Tp
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 07:08:57 +0000
Received: by mail-io1-xd41.google.com with SMTP id z19so3216850ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 00:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MJcg8zs78d3rXBpOETE+0j+ZuAl6FfPdDEzxoa0/CIM=;
 b=nACueev+gvO9mg6+kv1iNYsTn/JE4CpNo2ZDPqlFFMewbPYZuyhqh+JsqDzfu+L5Q0
 G+AcFl0zPkVgkkKTRCM+7KwBBBHh02sUORkOzzEY79ofQJI2HdySEGQOecxJIFanfVRk
 L6f6wnSuchiE7pN6azWsIbtOZgr+hYD6XZ1jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MJcg8zs78d3rXBpOETE+0j+ZuAl6FfPdDEzxoa0/CIM=;
 b=gKdsdpuhpkAFSoaOTKAnx4r/QttOSGLr3itiitOALqqhaPc3WQDGXz/ANZoFSLiNnq
 SDs2DrgcajIxjMXKgu26V9ONFMEe4BeUZKgxwtCEOyLNM5qFF1v2kplF0mUcfMDXS6vP
 mHvI/ahquJehlXpbZKroPLw+/DFK6AWyVhGN5b5Ea/DxKbpMI9jW9AbB7Q8XCJUTGRnw
 Ay51lVYUoYC+Nqs6peuIuDYNEV+LhuBWSv71EkGyjKAAO4Ing31ajVWHDlSwwRkUYWAV
 hgfwHPb1EIjs23vMF1xZ1d1TPHHMN7+TCgjWxAEJvElYyO+y06NvZ2JNF9XHLWbwfKcm
 nHSA==
X-Gm-Message-State: APjAAAXbHnmrQpqc3QLCKetBQzqpecYhIyTFrnlPPd8oYFPFRvSzW9RA
 eSqO2TvEFpXl2v4NE0C/3vf7owvKQqbNgyZbFAQqrA==
X-Google-Smtp-Source: APXvYqyiHoQKtNpYFtcrgyC7ulZRFo5mIyezyvwwYkMn+/z8HGvh/7OVxThakVCi9reOehN1EsA8FIXbO7De8LVxF2E=
X-Received: by 2002:a02:ce5c:: with SMTP id y28mr8189675jar.79.1570086534678; 
 Thu, 03 Oct 2019 00:08:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-2-icenowy@aosc.io>
In-Reply-To: <20191001080253.6135-2-icenowy@aosc.io>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 3 Oct 2019 12:38:43 +0530
Message-ID: <CAMty3ZCjrM4MajJLyLwt-31mNnfVWghwatogtwVOvCt4gY0LZA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 1/3] Revert "drm/sun4i: dsi: Change the
 start delay calculation"
To: Icenowy Zheng <icenowy@aosc.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_000855_962762_E610FD55 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 1, 2019 at 1:33 PM Icenowy Zheng <icenowy@aosc.io> wrote:
>
> This reverts commit da676c6aa6413d59ab0a80c97bbc273025e640b2.
>
> The original commit adds a start parameter to the calculation of the
> start delay according to some old BSP versions from Allwinner. However,
> there're two ways to add this delay -- add it in DSI controller or add
> it in the TCON. Add it in both controllers won't work.
>
> The code before this commit is picked from new versions of BSP kernel,
> which has a comment for the 1 that says "put start_delay to tcon". By
> checking the sun4i_tcon0_mode_set_cpu() in sun4i_tcon driver, it has
> already added this delay, so we shouldn't repeat to add the delay in DSI
> controller, otherwise the timing won't match.

Thanks for this change. look like this is proper reason for adding +
1. also adding bsp code links here might help for future reference.

Otherwise,

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
