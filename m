Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EF3163A84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0O/hnv+rMt3PW9RV67hbv8xAvZEsZbJD6NslAq8EQgQ=; b=MzQ36HAlFhzrKK
	vfdXKP5ZZapd3be/Qdo8LmR9nZn6XKNKSNE/aZFcUsSSSg2RuVxtbGVNOUapkliytz/T3jcn7PviM
	Dv+i4VNZxFV9bBlV9U2VhML1W4fF2FThp8vt5yll9Xm9C03TJPsTiVswK8plcpq0QC0qeGxdiUdVE
	wWNnEFDzhkx+KCPi1THhJvDashXOX5tmNO6QgU18gkCAC0zOL5sbfZOnVeudZFk7G9F5ZV4u4pbFE
	T5itxk0L3bhQQL6Af3tBB4W4JTje5E6fSOzLUxBIPunJdWXjkO84BXNP88ZxZ4PXWoQMliB7SbDx+
	WaROIFrouLwdxxfhGE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4FQk-0004Yx-LY; Wed, 19 Feb 2020 02:49:42 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4FQc-0004YP-Fl
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:49:36 +0000
Received: by mail-ed1-f65.google.com with SMTP id r18so27341770edl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:49:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3YO1Y1VDHcP44ZD0tS0W7OVzzWFpRpsczECwzMV+qhw=;
 b=JFd0wEc4G+ZwccRtoClfvYBT5LC/KhWCeZi0ATy6vAVlInNT/BdSZyFKTX+TlOhJDI
 u6sFgcOYt+lAj+dHZPaQXg07Ty6lpnouGskU8K2sHVQlIIaZa9nlmpF8jYBEiL1IYI54
 E8eCmNaX3o54GMrefHpGZtBlbwBJ5LXGrDHLVLfI7s4H0oqdbJ4i7om5UkGz+OgLvepl
 vHdY9mC0nTuiJPn6dVLlM0AVFQI0IX+zkJFtCoWxfLuzgogcmGh7TzgFntYIEg6nhZeG
 uavah3E8tXdFgL7u/2tRmYZ24Y4C8RSr3I3F12JLFiTnnXPVbmVj+V/3KMIpRM75+vnf
 8omA==
X-Gm-Message-State: APjAAAWWQu+nEh7PrUnlr9KEZKAWTDfRbiTaXWZ15Rii9DuPSLv/3Ji0
 tvzCUAqvaSdEZEakfNNEhpYEC4hajVI=
X-Google-Smtp-Source: APXvYqzX8iukXE+pjzT8McqTTJALh5jp0V/g7aViQrCWF9c+sL4kcWBuhvPzgKSS0UMTTUJPAEyWPg==
X-Received: by 2002:a17:906:cf8f:: with SMTP id
 um15mr21930199ejb.289.1582080571051; 
 Tue, 18 Feb 2020 18:49:31 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id k11sm26027edr.38.2020.02.18.18.49.30
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 18:49:30 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id w12so26386968wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 18:49:30 -0800 (PST)
X-Received: by 2002:a5d:640d:: with SMTP id z13mr31363099wru.181.1582080570098; 
 Tue, 18 Feb 2020 18:49:30 -0800 (PST)
MIME-Version: 1.0
References: <20200219010951.395599-1-megous@megous.com>
In-Reply-To: <20200219010951.395599-1-megous@megous.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 19 Feb 2020 10:49:18 +0800
X-Gmail-Original-Message-ID: <CAGb2v67BLODmDmQOJH-m-KWVtXS2EGrnPxi9czj6oipHPDTfjw@mail.gmail.com>
Message-ID: <CAGb2v67BLODmDmQOJH-m-KWVtXS2EGrnPxi9czj6oipHPDTfjw@mail.gmail.com>
Subject: Re: [PATCH] bus: sunxi-rsb: Return correct data when mixing 16-bit
 and 8-bit reads
To: Ondrej Jirman <megous@megous.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_184934_527496_61DCD866 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
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
Cc: Samuel Holland <samuel@sholland.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 9:10 AM Ondrej Jirman <megous@megous.com> wrote:
>
> When doing a 16-bit read that returns data in the MSB byte, the
> RSB_DATA register will keep the MSB byte unchanged when doing
> the following 8-bit read. sunxi_rsb_read() will then return
> a result that contains high byte from 16-bit read mixed with
> the 8-bit result.
>
> The consequence is that after this happens the PMIC's regmap will
> look like this: (0x33 is the high byte from the 16-bit read)
>
> % cat /sys/kernel/debug/regmap/sunxi-rsb-3a3/registers
> 00: 33
> 01: 33
> 02: 33
> 03: 33
> 04: 33
> 05: 33
> 06: 33
> 07: 33
> 08: 33
> 09: 33
> 0a: 33
> 0b: 33
> 0c: 33
> 0d: 33
> 0e: 33
> [snip]
>
> Fix this by masking the result of the read with the correct mask
> based on the size of the read. There are no 16-bit users in the
> mainline kernel, so this doesn't need to get into the stable tree.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

for the fix, however it's not entirely clear to me how the MSB 0x33
value got into the regmap. Looks like I expected the regmap core to
handle any overflows, or didn't expect the lingering MSB from 16-bit
reads, as I didn't have any 16-bit register devices back when I wrote
this.

ChenYu


> ---
>  drivers/bus/sunxi-rsb.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
> index b8043b58568ac..8ab6a3865f569 100644
> --- a/drivers/bus/sunxi-rsb.c
> +++ b/drivers/bus/sunxi-rsb.c
> @@ -316,6 +316,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
>  {
>         u32 cmd;
>         int ret;
> +       u32 mask;
>
>         if (!buf)
>                 return -EINVAL;
> @@ -323,12 +324,15 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
>         switch (len) {
>         case 1:
>                 cmd = RSB_CMD_RD8;
> +               mask = 0xffu;
>                 break;
>         case 2:
>                 cmd = RSB_CMD_RD16;
> +               mask = 0xffffu;
>                 break;
>         case 4:
>                 cmd = RSB_CMD_RD32;
> +               mask = 0xffffffffu;
>                 break;
>         default:
>                 dev_err(rsb->dev, "Invalid access width: %zd\n", len);
> @@ -345,7 +349,7 @@ static int sunxi_rsb_read(struct sunxi_rsb *rsb, u8 rtaddr, u8 addr,
>         if (ret)
>                 goto unlock;
>
> -       *buf = readl(rsb->regs + RSB_DATA);
> +       *buf = readl(rsb->regs + RSB_DATA) & mask;
>
>  unlock:
>         mutex_unlock(&rsb->lock);
> --
> 2.25.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
