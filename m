Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68624AA08E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:54:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/vscxioTDZ6nKPL1IwooBGQAfbQ5kRUJ0m6iu4PusU=; b=QFpog/YxHhiSHw
	iiGBJDaBfFrHRgEB0Abdg6x4MUUaIeCdLd4WwdKvQA6xMvCoQKhGSeNWPBirLJN78DKpMtAzNH3n0
	+w1+JH0uvLfzRuWjqEO4dSjxztQbuWelyXhubr4gcWy7M7ZHeNr7FghMZO65saTnd/cmaCD370d7N
	2zrRzqXht/KiTs1HotAxulZUY7SR0Ef6K9DOq3tEeGffs3o6EwNdY+7sIPCN5+vkEzOGtuhAYhTwv
	G5eubEJ8ElyeRDb91CySxH7lKfYvSlWQeXsYgaHtpKgWjfRLj5RA723xlOHbKH6CSYohzc8Pd1V4v
	mwJ/HYu0SX8xwT1BBGqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pOy-0007ud-25; Thu, 05 Sep 2019 10:54:08 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pOj-0007mv-Es
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 10:53:54 +0000
Received: by mail-ed1-x52d.google.com with SMTP id g24so2252249edu.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7rrx72VwVJ1LRFWXWIwjijZPZ1SY7L6VpX1CSdVM04=;
 b=IzAxFAEsOE35jSUHVhedgPdpBis1Rc9StzxezmqkJKZgg9gwMt6McpdeX3YjRYznon
 I+/Ym3VjoDJswSW+d2QTeRTM8WEIKyo8Vb5J/arqCodFn6rK5PagNvhUJCr5m6PKbiPc
 fl0aZd5IQYsPFY4oOFpPjuSZxOJhxJCL2sSG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7rrx72VwVJ1LRFWXWIwjijZPZ1SY7L6VpX1CSdVM04=;
 b=ia0hHLT9Alcm89coiPh3v7ij9Bnmvp2yB0QW9Uz92lkECl6sifGRi/RfsxyXm+whly
 DYxZqBGRs48TSxugj9RIatODQf0zC+OQS69QFmuellGQ7uaGVN2HQeWugK+4sMWzWQqx
 YK86x+1M1Malo+U3XrF2mc2jKQjD/QAETKFBEvLZnUzp4l8h/cJjvjMIjsaODi8I1ZXV
 k7k4YNl1Nw/Bq+gN4964oyf8g1+oqzT0py2+I//rJ9RyABndzoO7CEfRSCVKRSCA7lln
 YFkaO6yjuiSExe9XB07zX/RICBbMjARy7nhC3G49NhcVBypEp8GDNef+g/i3Galhlisu
 IvMg==
X-Gm-Message-State: APjAAAU/R7bmu5jO/Ta9kOJt6Hu32qlnE8ShNcWSWEWfa2KEfgThpdy5
 SX0YdCUgy/BvHMjmlX8fhCIYo1nu3GzjVw==
X-Google-Smtp-Source: APXvYqxIjkei/NKD3mKfd55a2epgzjpkdtetIuwFXMTYOh7ajjROGDHO0DalkgH9cw3YB1FASlyhTg==
X-Received: by 2002:a50:ed89:: with SMTP id h9mr2929491edr.217.1567680831684; 
 Thu, 05 Sep 2019 03:53:51 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id m1sm321373eda.49.2019.09.05.03.53.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Sep 2019 03:53:50 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id w13so2194849wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 03:53:49 -0700 (PDT)
X-Received: by 2002:a5d:4e89:: with SMTP id e9mr1922399wru.48.1567680829535;
 Thu, 05 Sep 2019 03:53:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190819034331.13098-1-dongchun.zhu@mediatek.com>
 <20190819034331.13098-3-dongchun.zhu@mediatek.com>
 <20190819083009.GC6133@paasikivi.fi.intel.com>
 <1567676465.21623.100.camel@mhfsdcap03>
 <20190905104546.GA5475@paasikivi.fi.intel.com>
In-Reply-To: <20190905104546.GA5475@paasikivi.fi.intel.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 5 Sep 2019 19:53:37 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Bh-11D9RR9WVH5A3DbXZoxWhbMhXSNKUV25mempMi+ag@mail.gmail.com>
Message-ID: <CAAFQd5Bh-11D9RR9WVH5A3DbXZoxWhbMhXSNKUV25mempMi+ag@mail.gmail.com>
Subject: Re: [V3, 2/2] media: i2c: Add Omnivision OV02A10 camera sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_035353_495741_A2DA0E27 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 7:45 PM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Dongchun,
>
> On Thu, Sep 05, 2019 at 05:41:05PM +0800, Dongchun Zhu wrote:
>
> ...
>
> > > > + ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > + if (ret < 0) {
> > > > +         dev_err(dev, "Failed to enable regulators\n");
> > > > +         goto disable_clk;
> > > > + }
> > > > + msleep_range(7);
> > >
> > > This has some potential of clashing with more generic functions in the
> > > future. Please use usleep_range directly, or msleep.
> > >
> >
> > Did you mean using usleep_range(7*1000, 8*1000), as used in patch v1?
> > https://patchwork.kernel.org/patch/10957225/
>
> Yes, please.

Why not just msleep()?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
