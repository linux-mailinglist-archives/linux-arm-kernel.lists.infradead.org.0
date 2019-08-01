Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9BE7DC93
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 15:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OnpEw14Dt3raHW0NhLJ8F2YXfROpvJUnVdltI4BoiM=; b=TjLUJ7bnEMmfTq
	yaObaCBBKmLhvMs22yom/JFw2sWVzMQKXqFsWBNc9C0mx0OwExb/TS/x3lXefveyNEg9ugvgvHHa6
	rRIBb5f+6CKFijNgJzuUcoI6QJEbIIfiO08LxLHNdDK8TwoDxrhckFSgKQbQ51fliuVg51MsTixaG
	OrBfQk8tvDps4xR8eXK9jv93y6MdqE8KjwvxSYVeLUzlyZbFlrKd6MCCGVgWM/EkKKWJq5xkcdjDM
	aeTMVRDs7YePPvSKwGDrTM25kjMSs3nhsnZ6aVMNQHogvGcGGMupbL1IOa/EFCHSFOki5x/CUDin8
	iu7ogRKUT6DC54mdeodQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBBb-0000T8-74; Thu, 01 Aug 2019 13:32:03 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBBM-0000N2-Us
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 13:31:50 +0000
Received: by mail-wr1-f65.google.com with SMTP id x4so20458961wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 06:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gIuWAYX3PneeYTTjAbiFSBHYZS04N2KVJUpzKrkXrq0=;
 b=ld+1edDT1mXlAby0OmZJGStwopdTUUOqUVGek1Llzppdb1MShDZIaSiPFKeALAt3Vy
 6iyOHVy8cb8Q0SMdNcRrXE+SgH/dJZNpHUPYAwRKLPr75Fgh5mY3OhhzBJEJDUp/iVKq
 JGLfhDoSSlaU4oudJe/0/m9YWb+wxTZdknqdoS/GS8KTfvZve9bQtYUJta6GJAKSRytb
 GKbnS86kN73eA7fSIrFTitBdv+X6ZIXRvQggTFnZjg+Nj/xS9gyPdo0dX/KPla5zfsM3
 FpSf1OHS3OkVNfu854B4l1/O4yGkaPldwPJ7cDWFJUMTsps/B/xZShN1wiMRs7CudwGF
 nviw==
X-Gm-Message-State: APjAAAXDDYGQq/yh2JLZi3Bxe/iI/ra94reMle8fuXyo3Zg6enmJ66Ir
 iVmCfgIkOtoO+5zNrJbbpL11G1x/fmUJUnLhuoTj+Q==
X-Google-Smtp-Source: APXvYqznc50yn60/ExWwPM56mPnNwRQgsfmZ5HaVoIrpJVWLVeHAqVaVK49vMbZKhih4uq1MeedVmcYOGkFdngsUe4w=
X-Received: by 2002:adf:f08f:: with SMTP id n15mr55165670wro.213.1564666306748; 
 Thu, 01 Aug 2019 06:31:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190617143547.4721-1-geert+renesas@glider.be>
 <20190801131527.GA23424@e107155-lin>
In-Reply-To: <20190801131527.GA23424@e107155-lin>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 1 Aug 2019 15:31:34 +0200
Message-ID: <CAMuHMdX+Nd1XH0KDHXmdOa_=UYcBso_EKfugYbZ_Zyd=4e2nGw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vexpress: Add missing newline at end of file
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_063149_004644_3796E60C 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On Thu, Aug 1, 2019 at 3:15 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> On Mon, Jun 17, 2019 at 04:35:47PM +0200, Geert Uytterhoeven wrote:
> > "git diff" says:
> >
> >     \ No newline at end of file
> >
> > after modifying the file.
>
> Sorry for missing this earlier. Just found this unread and thought of
> applying it to v5.4
>
> However doing a quick check on the tree revealed more file and wonder
> why you are addressing only handful of them. Why not all in one go ?

I did address all of them, but sent separate patches per subsystem.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
