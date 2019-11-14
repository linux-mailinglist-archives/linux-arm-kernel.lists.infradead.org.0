Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAC2FC168
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 09:19:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DzNbaIgyPdRWJ6dCI/nsecOO9RP0/P9G1p4R0a5Te4=; b=tk5AhsLiCQVtKS
	Fc/rvH/pNxX7DZNFgBmffRbKXxxtiSJb7Ba4TpmQR4IN817325w+4O65WrJYORaArmBl119+AdmNO
	ngXUd406Cvmxedh4rhdIP89qHk0T9hdhhaUyHTQvIih0/XVI911U969YT4Cm5htEsqnXX3ue8x5hg
	Rc77aEjm/gYzJIE3eRFSvECayO3YfI5aGCk6m1yfoS0ZTFDtKoY3BWm3S3Ic5M6JyKayeLBV25f1n
	hgpH9ai4VaFKng3M1algKEDkYUIGiT3RSEse3AqhntnZumydoMMD1zz2Snf5ivDZMDiFhV56Ri3As
	JexstEuk6DEFcFYiL0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVAM6-0001Io-EK; Thu, 14 Nov 2019 08:19:54 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVALi-00017b-JH; Thu, 14 Nov 2019 08:19:31 +0000
Received: by mail-oi1-x241.google.com with SMTP id 22so4498717oip.7;
 Thu, 14 Nov 2019 00:19:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JaJ/24ug8EOdA634pqQxtCQHNaGQDoT5QO/cUZAPyN8=;
 b=ru/B8kdyEF+8X/F+RYI6XxfAscZ4dA2WpcMuSnAZQ7WAJSxwzRdMQvN0jzwHqC9gN9
 MNdMczMdLpc/WgDZiKA0LV/xvQbjtogEuJPVtriyZpBxNVtMzJlI+oRt+niwdo/rLmJq
 SQkLAyb+/Oxth0R0eRylxl43ZOHalSyElhvjecGxdIgxSnmH1HD73n0n3ItBzlLN4kzP
 8xwpxzUDXL1C1A9HfYAWkdt+JGwVSfciyg18trUIu7EJzLAzcpqQDEvqrLrwU2hKN7Zm
 0i71MX8xdta7xrSfgL1OLgWdJxIfsJyLI53J1jF2ZetcJHtkcJFN8uC5GF5LIY8Ixv2D
 NC1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JaJ/24ug8EOdA634pqQxtCQHNaGQDoT5QO/cUZAPyN8=;
 b=DxYWUUh5g4Dr7432UZ5UhFJKvmaW/AkKE+q5hm8r0efOaVhLEbNK1ImqS6a9f9c57g
 iC7Qv/ITJpWDOWTMfqaCdx0d30JK+TByLrvjdnWLG4pto7Zi/yNKthMvsOdGJg2LT84p
 iRI9Aj8UiEE1D0AKDxg3jPQmmMQ6BKo7MyY67IlfNClJrgSuVWC6EFJiJCkTWm7YflR/
 fBezONzC3brabMA6hqbvrTJKJXgI2PmLLZIhhx8wqj09oXc/KWeKydoZjRgC0XtVBK+5
 qq/b2K2ZO0k1eMk8KnpMp3beO+q+PJFCqjJA5AozZ3sOHMiRGkhBIDN4RxdpVE9Uww7+
 snNQ==
X-Gm-Message-State: APjAAAX+ft37cJcH/8/Q1QMli+buLy4SR/MqftkRFUdIvH9uui7j6QD5
 8XYnPelPHnoPvjKKmOZArVAT/NV0ExciDYlTy6A=
X-Google-Smtp-Source: APXvYqx8D9GlJ385oYygjCaMSvLMvmBz7OT2vUysUTVFxuEaxfasZyDjLfPaArprQ3D6hB+O99WzCUmlXvxlMWh3J2U=
X-Received: by 2002:aca:3f87:: with SMTP id m129mr2587853oia.30.1573719569553; 
 Thu, 14 Nov 2019 00:19:29 -0800 (PST)
MIME-Version: 1.0
References: <20191110052104.5502-1-gch981213@gmail.com>
 <201911121507.ANXNexIL%lkp@intel.com>
In-Reply-To: <201911121507.ANXNexIL%lkp@intel.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Thu, 14 Nov 2019 16:19:18 +0800
Message-ID: <CAJsYDV+nGHtvmnfY8jN+fR8E8m2vh7OTe7Y0zQvSX8HKBidszA@mail.gmail.com>
Subject: Re: [PATCH 1/2] mtd: mtk-quadspi: add support for DMA reading
To: kbuild test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_001930_635539_65CC7C68 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild-all@lists.01.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all!

On Tue, Nov 12, 2019 at 3:29 PM kbuild test robot <lkp@intel.com> wrote:
> [...]
> All warnings (new ones prefixed by >>):
>
>    drivers/mtd/spi-nor/mtk-quadspi.c: In function 'mtk_nor_read_dma_bounce':
> >> drivers/mtd/spi-nor/mtk-quadspi.c:349:22: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
>      mem_unaligned_len = (u32)buf % MTK_NOR_DMA_ALIGN;
>                          ^
>    drivers/mtd/spi-nor/mtk-quadspi.c: In function 'mtk_nor_read':
>    drivers/mtd/spi-nor/mtk-quadspi.c:369:6: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
>          (u32)buffer % MTK_NOR_DMA_ALIGN || from % MTK_NOR_DMA_ALIGN)
>          ^
>

DMA mode on this controller requires that source address, destination
address and reading
length should all be 16-byte aligned. And because of this, I didn't
use the bounce buffer
provided by spi-nor framework and allocate its own one.
Should I just cast all these pointers to ulong or are there better
ways to check for address
alignments and/or obtain an aligned buffer?

Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
