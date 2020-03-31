Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2429F199B28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Rtj9/qV7fgOUbyKsCRkUWBXSQUM/1XlUnq9UhEBWUQ=; b=CSll24nuurtWHq
	BOKQTc4MeGf0WgsfSHifpvmg0j28/bh+tJKGfD4REu5xnZnCT7SMS9KsyqrIGMmAXVh1VHo2ZpdhB
	0QuG1jYpxcyefdtcgRfTqM7Iuafkx8XFNuu+ADVDv6nHmMj4qeemQHGxBzInjSYx7P4DA19ZFUHri
	Zgr/yltCkh0S+P4UdnH/+4itfpa2C2YMZi3NVNyl8kkTfNjJ071wBBc3XyBDiqlfIO2zjP9Cs60jN
	+77KIN2/yQgL//TUm3DglnSIIHm86lCUJEhmejDIcXT1pIVMNV2GlHi6D69oATmnBVGtvXoTAdYZI
	aMwEPmS8RaYHiCFOEICg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJYr-00033B-CA; Tue, 31 Mar 2020 16:16:21 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJYD-0002iI-SK
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:15:44 +0000
Received: by mail-lf1-x12d.google.com with SMTP id j188so17819942lfj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 09:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g+oOx8oe1EcOiEsQwOx41lZlMI2tyT5SQXJ7reK/MjM=;
 b=oDM3v2vUvoB+zQ1qxrk49Rs6ZBg+nafBMNk2MMzG+O8CPZW0Hudl4k6TwLZW4EMtJQ
 fLBL0OIBYoNagGt804nTK8OZRHQcGD9TkcD/23CfxQu/IVD+Z8JAEon21F8t1lvztDi9
 Tz5F28Tp5Nb3drKK+NDJO4zfpF1LnPGT54tgPPtUquRxFbqVF3sityDiMimZ94LN5H4m
 9E30zffqveXsn+CfPYHHzZVgdTvf71weNFZ1d3R85/ri4X85LHdLh1JeCSY+++udvlls
 sKV1dgy8Tmy1IXx/3uurUncdjaJy+dkQBEYwfdDl7J2IpK1ctInx9/6BCAFJfyhgcD0E
 i0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g+oOx8oe1EcOiEsQwOx41lZlMI2tyT5SQXJ7reK/MjM=;
 b=gY/0pgdp1P3tmXIIxGxRSqOw1rB6BrMurMAx6pC5UMZ0HFUOJ35XjcKSzhSaWUxxUS
 3494zwv9UzvLEOR9B48NE6U9WxFGUQBisjPb6/QgYNg2m201mbfiHtYaEPcLjv4hKqk6
 imvjKhCJ8TPY2GqLf7E3cgYaFRLB4QnV0UqTgBAjXVPp8uGAlwYrUqPT10nCLBCYNEJ5
 ndTYYxsf1mdTn4P9zKm7q9CQzuaI7/4lN9Vnu4jjGos7HFt50abs3bBylz7BUFXy9sVj
 MHk0fWKzd8KqoMw1pSx1McIJET+o/KIZBdyU1/+PMC+JBtJqSx35IIwObuxygIIvtVvB
 JWcg==
X-Gm-Message-State: AGi0PubwWKlZkdjHKLNz0ERrQP9P8g+EciLSYWdIB+uCB//lwPMd9O0B
 +GR9hXtigyvqir9biesf7076UiIrPXmPhiXQBf4U076y6Cs=
X-Google-Smtp-Source: APiQypL+H+6Kyrx6/X3/WVdrnJz8eQS2wW8bf4HVX9M6MsjMu5LPvIiOLF5pjFJDq/yzciCsM+hUGrhPSZOPEEObj1A=
X-Received: by 2002:ac2:4c3b:: with SMTP id u27mr11614521lfq.7.1585662163062; 
 Tue, 31 Mar 2020 06:42:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <CAOMZO5D9bmXt9_qGTXw+qUG6JDHfuNtx++fJPJtn+mj1Dzsbag@mail.gmail.com>
 <CAG3jFystdBKnosNQ0LeWQfHEtMgU4iGSr_XuS2XU3-902c31nQ@mail.gmail.com>
In-Reply-To: <CAG3jFystdBKnosNQ0LeWQfHEtMgU4iGSr_XuS2XU3-902c31nQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 31 Mar 2020 10:42:33 -0300
Message-ID: <CAOMZO5DHBCJbfS2Lt7R-3J_TUJi1is2Xn6n5iZkRwvmn5i6Dmg@mail.gmail.com>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
To: Robert Foss <robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_091541_920416_71EB39B5 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Tue, Mar 31, 2020 at 10:37 AM Robert Foss <robert.foss@linaro.org> wrote:

> After testing this change, it breaks the driver during probing.

Why exactly does it break probing? Maybe the GPIO polarity defined in
the device tree is wrong?

> I had a quick look into GPIOD_OUT_HIGH & LOW definitions, and they
> seem to never be 0 or 1.

If you do a grep in all gpiod_set_value_cansleep() usages in the
kernel tree, there is not a single case where  GPIOD_OUT_HIGH or
GPIOD_OUT_LOW is passed as argument of gpiod_set_value_cansleep().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
