Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7A81A1B95
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 07:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wScEFc5Hb4wdK/L0xr4DD79jHdb+yAHXlsByj5zHAb4=; b=ixFnwQqTiGC+Df
	PIgJhNdQPWhmatp6Q7lGgY7lm/ZS+9Uz4HgukXxNeJNGwCXOgqrEWlO5Q/JWHOLEcM6tV12mETBc/
	v0DlFYV76Iwm9fyKz8dfGeyJ8bu26ckTAbcsWTBiYrha9zAp0YKBz67GEsfH1VolKI7XLIa/Lh2bR
	QMMTNe2V7Vv8eLwjpPgZXQGtsqpS3WgLRfNqHaHoRJJR8JoKWRAyAQrXddjnWD4g3dEFrWAq9TUaG
	zQtNNpIWqZVTEpxw1KPQ1v3xc8qRDRBa4EdyyxCkn9bCLWff7ACej/bRa3i7DQjHVZqih1o8ly250
	c/wzXcBKi1o84n7lM90Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM3S1-0007jP-IM; Wed, 08 Apr 2020 05:40:37 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM3Rv-0007ix-Fa
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 05:40:32 +0000
Received: by mail-pj1-x1041.google.com with SMTP id kx8so718200pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 22:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=g1prhrjKxEZds2TfTdybytV1XN9ZFJTSPhvDxSwKWbE=;
 b=lLoEa84OH4TcHPRT1UimZUdQLc7+R6JFgPXWoCIIRTR2AyiT/OPSoK3ieDWDqzM8qx
 lyCsqh2n5Zq2XflpC4bOHZ8iVDQrslNa1+/DzvMLAIWXtGMWlgcDE9ziykfEik9ddmBi
 tyxXTYOkvFRPwBCL9z5pyp0iPfR1I3wurB47f21uuqJtHxLVwahEtgitfWWN7flMDjOZ
 Safx8k04FtvoZcMhRSmyzx7z3Cwfou//CwYoXYZ07Wi8fW04reFQgw8Y0kGd+M/oglj0
 CPxccDmDXnLlKNcHfvjbisMg0rXq9cG1uOMWcwhtmdlAZqu3MIuoskOTHuqaUL6yiZXb
 664Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g1prhrjKxEZds2TfTdybytV1XN9ZFJTSPhvDxSwKWbE=;
 b=QzwnXocxwMCTez3avn4BZqDLUs+ItC1IGaTsj4Qm46bBrNpQJ6vbSeyvmzKsZIv86x
 2YkWbJEpdGqFsHSFx+uu01vWYks5raVZ0F34KeqQ2mUXtAamebOsQDGe9KHkOzqLJb2x
 7aWbmp480EqMTUhNeciLtMheTM+F8VkPCVQ8a8JdgaJgIeA2UshcQiQpft3cgh4SZGGQ
 Lfn9TFTOZc8X5bFixGQE15YGZOCzqv/KBL8hMaiu9hqZnHSwqBiqxaR4VHhHH3shaf6H
 3A6v/043LxZm4MI0f/zGKGv0DW6EgDWmtqDQakMTo8bbd4jr1zNgSONiyr522Uq9Xmvo
 exjw==
X-Gm-Message-State: AGi0PuYfx2KDmo2PvrNM9FWQwaiZ8VFUIJtum42funfKFXsauZuyeo8q
 FM/2O09EkE3bh1n3sEsfm6w=
X-Google-Smtp-Source: APiQypJp2wIHnlyEMM+6phi0GLCRMB+cJZqLMeiHhoqYBQwNHDoMx8FFoIJI/HdUYAVagNG142s6pA==
X-Received: by 2002:a17:902:a5c6:: with SMTP id
 t6mr5265576plq.319.1586324430524; 
 Tue, 07 Apr 2020 22:40:30 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 (c-73-252-146-110.hsd1.ca.comcast.net.
 [73.252.146.110])
 by smtp.gmail.com with ESMTPSA id d3sm15544077pfq.126.2020.04.07.22.40.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Apr 2020 22:40:30 -0700 (PDT)
Date: Tue, 7 Apr 2020 22:40:23 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v3] usb: gadget: aspeed: improve vhub port irq handling
Message-ID: <20200408054022.GA12469@taoren-ubuntu-R90MNF91>
References: <20200315191430.12379-1-rentao.bupt@gmail.com>
 <20200401215826.GA8248@taoren-ubuntu-R90MNF91>
 <512d625e45ea953d722bb7ea73c3619730312284.camel@kernel.crashing.org>
 <20200403064826.GA10866@taoren-ubuntu-R90MNF91>
 <20200407060242.GA15050@taoren-ubuntu-R90MNF91>
 <93ae433317a82de86ff5e9c8485563b78656b615.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93ae433317a82de86ff5e9c8485563b78656b615.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_224031_520670_CA70F788 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 taoren@fb.com, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 09:36:16AM +1000, Benjamin Herrenschmidt wrote:
> On Mon, 2020-04-06 at 23:02 -0700, Tao Ren wrote:
> > I ran some testing on my ast2400 and ast2500 BMC and looks like the
> > for() loop runs faster than for_each_set_bit_from() loop in my
> > environment. I'm not sure if something needs to be revised in my test
> > code, but please kindly share your suggestions:
> > 
> > I use get_cycles() to calculate execution time of 2 different loops, and
> > ast_vhub_dev_irq() is replaced with barrier() to avoid "noise"; below
> > are the results:
> > 
> >   - when downstream port number is 5 and only 1 irq bit is set, it takes
> >     ~30 cycles to finish for_each_set_bit() loop, and 20-25 cycles to
> >     finish the for() loop.
> > 
> >   - if downstream port number is 5 and all 5 bits are set, then
> >     for_each_set_bit() loop takes ~50 cycles and for() loop takes ~25
> >     cycles.
> > 
> >   - when I increase downsteam port number to 16 and set 1 irq bit, the
> >     for_each_set_bit() loop takes ~30 cycles and for() loop takes 25
> >     cycles. It's a little surprise to me because I thought for() loop
> >     would cost 60+ cycles (3 times of the value when port number is 5).
> > 
> >   - if downstream port number is 16 and all irq status bits are set,
> >     then for_each_set_bit() loop takes 60-70 cycles and for() loop takes
> >     30+ cycles.
> 
> I suspect the CPU doesn't have an efficient find-zero-bit primitive,
> check the generated asm. In that case I would go back to the simple for
> loop.
> 
> Cheers,
> Ben.

_find_next_bit_le() function is defined in arch/arm/lib/findbit.S. I'm
looking at the code: will run more tests and send out patch v4 with
simple for loop later.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
