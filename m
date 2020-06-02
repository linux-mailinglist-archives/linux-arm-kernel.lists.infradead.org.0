Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651711EBF63
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 17:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWchdh0PSehvVB7Ngf5OnB/45H8ETV9WLB+G2BrMQgk=; b=HAD0tMhfzN2QqX
	+gIdLyQuW2OVr2Zs+rZDRo8n5otrXmV3OmrPqhy+DY5l8n94t2dH8S6eGIClLov4psWDatOhb5/PA
	DnYCEML5mUU92Ob0vYqYwMj2tLdEjyvFtE9ga3OtyG+aG7bwc287Rz9P+7Q+4s45cmZ7OCkcbFsAu
	x+hrUvgi7TQIKYzkca4Kc7hJggmA8Ir2nxJgZsR3I6dy3sQkaEhYPkWUn6YGm9dz3d+vbZlER9k59
	EJaw3M7E+ShzDSQUeZuK/J6l7mmj2Obo/U5K6lPquvTvHXXPcCvnWsBYEdUXoL4DYEhOwVIZrDxEh
	WQP/evTaeCkdj0Abhz0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9D0-0007Ov-Me; Tue, 02 Jun 2020 15:52:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9Ct-0007O2-FD; Tue, 02 Jun 2020 15:52:05 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 4B5BF2A2E68;
 Tue,  2 Jun 2020 16:52:01 +0100 (BST)
Date: Tue, 2 Jun 2020 17:51:57 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v9 1/9] mtd: nand: Create a helper to extract the ECC
 configuration
Message-ID: <20200602175157.438e30bc@collabora.com>
In-Reply-To: <20200602143124.29553-2-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
 <20200602143124.29553-2-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_085203_637130_F0F94FA0 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>, Julien Su <juliensu@mxic.com.tw>,
 Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  2 Jun 2020 16:31:16 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Despite its current name "eccreq", this object first stores data that
> is meant to be the requirements, and then this data gets eventually
> updated and becomes the actual configuration.

Despite its current name, the eccreq field actually encodes both the
NAND requirements and the final ECC configuration. That works fine when
using on-die ECC since those 2 concepts match perfectly, but it starts
being a problem as soon as we use on-host ECC engines, where we're not
guaranteed to have a perfect match.

> Abstracting this
> indirection will help us clarify the structures in a future change.

Let's hide the ECC configuration access behind a helper so we can later
split those 2 concepts.

> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  include/linux/mtd/nand.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
> index 2f838394b5f7..7fd0d492073b 100644
> --- a/include/linux/mtd/nand.h
> +++ b/include/linux/mtd/nand.h
> @@ -512,6 +512,16 @@ nanddev_get_memorg(struct nand_device *nand)
>  	return &nand->memorg;
>  }
>  
> +/**
> + * nanddev_get_ecc_conf() - Extract the ECC configuration from a NAND device
> + * @nand: NAND device
> + */
> +static inline const struct nand_ecc_props *
> +nanddev_get_ecc_conf(struct nand_device *nand)
> +{
> +	return &nand->eccreq;
> +}
> +
>  int nanddev_init(struct nand_device *nand, const struct nand_ops *ops,
>  		 struct module *owner);
>  void nanddev_cleanup(struct nand_device *nand);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
