Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4BD179FF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 07:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trIpn+rB/JYdG7wmtVlSXqUkLhHH7W+sDJKDgnhUhPI=; b=hp09jADo2uNSbX
	oGfV6vqzHlMDWzpA2HluniMIhLVncD91OyvaWJHWnRpi1YoT+izyysRHH2q+ubYQtMkokZ0OzeyOW
	vXMCvq3ImtIsp+fk2yvt7mORUoN3OKMO+Ejoai2IyaGu/CDLGwCUw1KlWtGlfAjRsFwl6/8OZYUMC
	wicuU9oMjVUdAgshB6stSYeQWXzUoZBNjGq0kA6eAD5E7XY79jhCRrLrkY+9xZmz9eBHIQWoqdsOB
	IIUeguX2miK+Y+M1NyI8j6P1mdpGsWMdlaKGdhfhNvP9bXIv50zOHwn2OBg7BvgoX4onr4YZromE+
	1Bwc2VXDJzMp6o2E0Obw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jz0-0008L8-0x; Thu, 05 Mar 2020 06:27:46 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jyt-0008Kf-02
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 06:27:40 +0000
Received: by mail-lf1-x144.google.com with SMTP id c20so3615024lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 22:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xq//95yjsv7+XKegrjWDJjduvVLydzGY1CCr26JRJX0=;
 b=wwmtiwfo83gTY1AbBywyXtOMQY5QtCCHRB6odhbptbBjuGae73b5vi9c4en0jAZYKO
 wrJQMlNEa6IQN3lfTLussifMAoO93ANuCoHTGX3/hJPXJrL3bjZ76cu7KkaRzdkvDEqw
 wF2FYemsGmx4SGTr0kkRWUW9ti449qT4p4IS+bT8riHGzRf0YINKAdw+/xZQJNmmA1rs
 tufmreK9UlDHd1TOH4sACWXKC1EoIHp99fjaJ/h1msCabj0tDE+4Jb2YKLLpR10Z7BcH
 1DJRWbSx+BXAMhOt0bw+XtAbLQh9I3I3w7hbGtKfH/xg+q4DAsui2M+rHP+iW4Y3HfBP
 M6Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xq//95yjsv7+XKegrjWDJjduvVLydzGY1CCr26JRJX0=;
 b=VDZmOuMniJlqor4ubxB90gnFdE1y1AFu6iMQmxap39kiT9fn0rpUECO/q05xu3jbfi
 TmUrpNCarG33e6tD1HCNPumVdKH40QZsNmB9PnTdgV0kOGB2v3Mq60OmNMHKuCiaMX5u
 pAqa/EbHPsBa+py3a9IK/VMbVaWUhnqQ40Fpzkca4gsOg6154NC6+pGTyb7LHgjivp1M
 2UmJW0c6rL5khXJxpqS/9LGxFHywCRpu4lmuG75k/8ST2lxpsIcY4oMEY0aSiJLI6NlI
 S//zbY0CvruJJCPaPLQXJi1KeuInac9ekRyBB9iJFgaivpd0QCVDXSWqgr8++cUmWiIr
 UbCA==
X-Gm-Message-State: ANhLgQ3vVByw47SVI0HdXdnKcM77jEWv6RDTRr3u8r1FFNFw1R2FVxZ9
 RlnvC4GahcCPFFKP8u6PDPzO4g0R7FCFfoMW32gVKw==
X-Google-Smtp-Source: ADFU+vuIH9zBxxLqZtdH9/DZxQEUyDZ0MnJdYsWJ87Je00SAS3Xu9AyzQ3h8Y5lWSmWB1RxyaDx2gvx0kniZuk88wh8=
X-Received: by 2002:a05:6512:322d:: with SMTP id
 f13mr4459613lfe.24.1583389656693; 
 Wed, 04 Mar 2020 22:27:36 -0800 (PST)
MIME-Version: 1.0
References: <20191218084320.312561-1-pbrobinson@gmail.com>
 <78a1badd7c08ca39e7f62c6b66addeb2bf485a1e.camel@suse.de>
In-Reply-To: <78a1badd7c08ca39e7f62c6b66addeb2bf485a1e.camel@suse.de>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 4 Mar 2020 22:27:25 -0800
Message-ID: <CADaigPW9HyH4GtjY2Y4dSDe8EoevtS5HY1=Vk4GSOHWKduH6_w@mail.gmail.com>
Subject: Re: [PATCH] gpu/drm/v3d: Add ARCH_BCM2835 to DRM_V3D Kconfig
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_222739_040352_D0DE64DD 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Peter Robinson <pbrobinson@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 6:39 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Peter,
>
> On Wed, 2019-12-18 at 08:43 +0000, Peter Robinson wrote:
> > On arm64 the config ARCH_BCM doesn't exist so to be able to
> > build for platforms such as the Raspberry Pi 4 we need to add
> > ARCH_BCM2835 similar to what has been done on vc4.
> >
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
>
> v3d's upstream implementation doesn't support RPi4 for now. So I don't see how
> we could benefit from this.

All you need is a compatible string for making this driver work on
pi4's v3d, so this seems like a good change to be making, to me.

Peter, feel like defining the compatible string too?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
