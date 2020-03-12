Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4570018287E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 06:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVlLGLRB2sQJ320x96sNRNs1k2U3+pjDX9LSKygGXeI=; b=WU7AhWLUewrc1N
	c+UyN+EZ8Xd5S8n0IbBRtQIktF3mvwG0ypBGT427auupTBk4SCWT7i/CqKA8/YQFFT7V5ANfd/U+u
	R+LViYbKxgvFdbNTV/VDZwx83v7l0xmXJ90wHgCqaYldOM8my3e4+SDgcxpaFYVbouRoabi39WIRO
	WllH5rmQ/5ZJ5V39lWKV9hZQZN8i3vAfCPrZm7lLBnTfV6KAVsQFtJnfZ2yGv9I6dOJvVvMrNYaw/
	5ferLvyWc4oF7sqqTQFzsEHq9jSkKGwT9N8kfzjd1i1vLfEvYgu4iHzIUM0vBO/BYPJGGi1lB6ghG
	O4jZOU/LcZkS+6xp50rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCGWy-0002Xu-T4; Thu, 12 Mar 2020 05:37:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCGWq-0002XG-JV
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 05:37:10 +0000
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CA57520735
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 05:37:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583991428;
 bh=5Q38LdAf1p3YQXNjyyJQkIv6CfDiI7C7xbmfCU7hfY8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PReOXJ+ZHmrWz4IbwksiW/OG0lbJWJy1sN0EqSgQDiO9uVY2WINfHJlMsPaqty0Qo
 ILiTPAgHc0GWcW7IlWU6pb4nMqotIc/Tybv2SET/fMYQba9t0qkov0FbhNOCuBCx+M
 29obK1XyA8M2q1u/vbF+jtY//M8i9RmGPjpCbox8=
Received: by mail-wm1-f41.google.com with SMTP id a132so4695482wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 22:37:07 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3LNyDMPpkGwyxbTdFYhz6S8qXwrhPXZWdL7+Rakjm3pi2JqQZM
 c50ZK3RSXg8xRY+qCRn+kQEJ3vqJggVnKNkHDwA=
X-Google-Smtp-Source: ADFU+vsZ1y4HC+7tZe1c2sRkkarw+06JoFyGMhDVnlrN2G68WyZu7GDqpl2qpg5ARTIgqnIM8w01GHQVsJGn7g8A9F4=
X-Received: by 2002:a1c:9816:: with SMTP id a22mr2916415wme.16.1583991426185; 
 Wed, 11 Mar 2020 22:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200106084240.1076-1-wens@kernel.org>
 <20200106084240.1076-4-wens@kernel.org>
 <20200106085159.oirhyvxov6c4lzs6@gilmour.lan>
In-Reply-To: <20200106085159.oirhyvxov6c4lzs6@gilmour.lan>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 12 Mar 2020 13:36:54 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ig=OjBbdZx3wRX_coV=BenZU34=f7CHEjuRYi6HpgnA@mail.gmail.com>
Message-ID: <CAGb2v65ig=OjBbdZx3wRX_coV=BenZU34=f7CHEjuRYi6HpgnA@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] dt-bindings: bus: sunxi: Add R40 MBUS compatible
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_223709_249073_3181889E 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Mon, Jan 6, 2020 at 4:52 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Mon, Jan 06, 2020 at 04:42:36PM +0800, Chen-Yu Tsai wrote:
> > From: Chen-Yu Tsai <wens@csie.org>
> >
> > Allwinner R40 SoC also contains MBUS controller.
> >
> > Add compatible for it.
> >
> > Signed-off-by: Chen-Yu Tsai <wens@csie.org>
>
> Acked-by: Maxime Ripard <mripard@kernel.org>

Looks like this didn't get picked up. But the device tree change using
the new compatible did make it into v5.6-rc1.

Could you pick this up as a fix for v5.6 so they make the same release?
Or I could pick it through our tree.

Regards
ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
