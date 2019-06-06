Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739413751D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 15:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+slPU226dOcL0NSu4nak2+zZBqwHPoT7F0biTjOdDQ=; b=bQ/T7CCEYI8t1/
	+kFVBtQRZ5M3rpA/jM+8/cVsDk8AzcWSYDtYiuRSnzGyvf03KBoHx9cfYRbBgwWELbzr4zEmURpUi
	3vzz52V9f4y1Xre6KOMHUpebNtgK74W/YalZWt3NMLKBnxXaE3b3bt0cBOkjJX9dsZcy0k3qx56Ng
	6BDSoosjxu5R9Bo7/COQj7dDS7c/Z/JVzOncpp56LBoj01z3lmmA8TrlOyJfvKGid8WFPvWO9FtCh
	a7m7E3dSnKEonwTr7MctyJhJb96BzuWkxtPU6jC/lJ8jcONyVVR+ztTjYsusbFjw1//xNM8P8wr3P
	KpetLfza00I46DX98xog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYsNb-0005SD-TZ; Thu, 06 Jun 2019 13:24:31 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYsNS-0005Qt-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 13:24:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id s3so2441711wms.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 06:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QoGog8a3Wrsj5HuFdAVlHcSa7d9sUGcrDi4SC/3qBKY=;
 b=khY7Hzsl2mrL6XdXHgajw/IBA9cQipqEFv5h6jaAjYz/mPADIrsyBZAwk9MD2Zn0vB
 A6Tj3bVkdGPNk12lhKNwEYMDYFBUgDkNMOEqgnXpubbQg5OHgFE8Zvq8vkdKU/e/3az4
 0M3o5ceFu7NZxuZAGuO65bv1Q/XaxqZNsN4WwlCclCVWWCIzvZmFf3MJcLBW/vzlxEoU
 8tRlUsRzCu9eIj5PEBcIaDt9NEIXyHGJRjDdMhwl0T7ydGec7lnUQwmBJUf4EXCx6ujj
 X4lWk+dBys6IcpmxdtXXx3eO9h+S75BsDnZWgeZvYyPRF6CvL5RlvZpInusxsfYIkV27
 J+ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QoGog8a3Wrsj5HuFdAVlHcSa7d9sUGcrDi4SC/3qBKY=;
 b=KJEzC1I3XNAUUWEp7UckXUS6zJLY+1IScoivmuus3jAYNOcT3pxbnU8fyoOg4qfHbW
 Mpws6qk2aJoDTGBS76Y3XS+JcUFuXnz7nLkqUT99f+oWU9kQ3gk9nQNNDAGIebUTWvBj
 ppTOmbjK9z8Zb8vTcYc1nm2r/83Thrl+rkeQd8VrOBrGbatH4s2HX8tyS1CpD8TUpH7s
 qb+UYVk3s9NIXVsS3jGkrNXWzQGvuWfiFRtxHcR9C/o7cszwY0Ogmg77k1inbURAbSre
 pAr9+8qkEx7+i1cB/7mIyr0leTTT/giU6JajL0VcCAAHk0IZnXNeSTNJNWh6Ggyks1Cb
 aKfQ==
X-Gm-Message-State: APjAAAV3udiqjKzDa/K9xJFUvAJ0va8wCKU2gUP9b1hFE5vtTFqfPCC1
 f2//+swSQm6hJNizrQjTl9IZSa67X5b3+8fSLRRKmA==
X-Google-Smtp-Source: APXvYqx8KrJ+cP3MBQAozA03nDeKj75Rodf/KMjmNziao/G2SxLWllc4LLaFap1HssB7UjMSiD61t4uXPaACXGxsSWw=
X-Received: by 2002:a1c:c706:: with SMTP id x6mr24472351wmf.162.1559827460800; 
 Thu, 06 Jun 2019 06:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190605161858.29372-1-mjourdan@baylibre.com>
 <20190605161858.29372-3-mjourdan@baylibre.com>
 <a5676c4e-9c79-5ee4-fb3d-924602ef912e@xs4all.nl>
In-Reply-To: <a5676c4e-9c79-5ee4-fb3d-924602ef912e@xs4all.nl>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Thu, 6 Jun 2019 15:24:09 +0200
Message-ID: <CAMO6naxtUA82inWZKhJ99zmcDiBZZXeDpgMYeOaqLH_cqso40Q@mail.gmail.com>
Subject: Re: [PATCH v8 2/3] media: meson: add v4l2 m2m video decoder driver
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_062422_695321_49AB0D92 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hans.verkuil@cisco.com>,
 linux-amlogic@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans,
On Thu, Jun 6, 2019 at 2:32 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> While preparing this series for merging I came across the following checkpatch
> and sparse warnings:
>
> checkpatch:
>
> CHECK: Alignment should match open parenthesis
> #159: FILE: drivers/staging/media/meson/vdec/codec_mpeg12.c:83:
> +       ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> +                                       (u32[]){ 8, 0 });
>
> HV: I think this doesn't need changing, this is easier to read.
>
> CHECK: Alignment should match open parenthesis
> #968: FILE: drivers/staging/media/meson/vdec/vdec.c:185:
> +static int vdec_queue_setup(struct vb2_queue *q,
> +               unsigned int *num_buffers, unsigned int *num_planes,
>
> CHECK: Alignment should match open parenthesis
> #1755: FILE: drivers/staging/media/meson/vdec/vdec.c:972:
> +       core->regmap_ao = syscon_regmap_lookup_by_phandle(dev->of_node,
> +                                                        "amlogic,ao-sysctrl");
>
> CHECK: struct mutex definition without comment
> #1949: FILE: drivers/staging/media/meson/vdec/vdec.h:85:
> +       struct mutex lock;
>
> CHECK: struct mutex definition without comment
> #2085: FILE: drivers/staging/media/meson/vdec/vdec.h:221:
> +       struct mutex lock;
>
> CHECK: struct mutex definition without comment
> #2116: FILE: drivers/staging/media/meson/vdec/vdec.h:252:
> +       struct mutex bufs_recycle_lock;
>
> CHECK: spinlock_t definition without comment
> #2120: FILE: drivers/staging/media/meson/vdec/vdec.h:256:
> +       spinlock_t ts_spinlock;
>
> CHECK: Alignment should match open parenthesis
> #2247: FILE: drivers/staging/media/meson/vdec/vdec_1.c:108:
> +       amvdec_write_dos_bits(core, VLD_MEM_VIFIFO_CONTROL,
> +               (0x11 << MEM_FIFO_CNT_BIT) | MEM_FILL_ON_LEVEL |
>
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> #2313: FILE: drivers/staging/media/meson/vdec/vdec_1.c:174:
> +       udelay(10);
>
> CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.txt
> #2354: FILE: drivers/staging/media/meson/vdec/vdec_1.c:215:
> +       udelay(10);
>
> CHECK: Alignment should match open parenthesis
> #2413: FILE: drivers/staging/media/meson/vdec/vdec_ctrls.c:19:
> +       sess->ctrl_min_buf_capture = v4l2_ctrl_new_std(ctrl_handler, NULL,
> +                               V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1, 1);
>
>
> sparse:
>
> SPARSE:/home/hans/work/build/media-git/drivers/staging/media/meson/vdec/codec_mpeg12.c
> /home/hans/work/build/media-git/drivers/staging/media/meson/vdec/codec_mpeg12.c:201:25:  warning: symbol 'codec_mpeg12_ops' was not
> declared. Should it be static?
> SPARSE:/home/hans/work/build/media-git/drivers/staging/media/meson/vdec/vdec.c
> /home/hans/work/build/media-git/drivers/staging/media/meson/vdec/vdec.c:417:5:  warning: symbol 'vdec_vb2_buf_prepare' was not declared.
> Should it be static?
> SPARSE:/home/hans/work/build/media-git/drivers/staging/media/meson/vdec/vdec_1.c
> /home/hans/work/build/media-git/drivers/staging/media/meson/vdec/vdec_1.c:85:5:  warning: symbol 'vdec_1_stbuf_power_up' was not declared.
> Should it be static?
> /home/hans/work/build/media-git/drivers/staging/media/meson/vdec/vdec_1.c:85:5: warning: no previous prototype for 'vdec_1_stbuf_power_up'
> [-Wmissing-prototypes]
> /home/hans/work/build/media-git/drivers/staging/media/meson/vdec/vdec.c:417:5: warning: no previous prototype for 'vdec_vb2_buf_prepare'
> [-Wmissing-prototypes]
>
> Can you fix these issues?
>

Sure, preparing a V9. I'll add sparse to my list of tools to use
before sending a patch.

Maxime

>
> Regards,
>
>         Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
