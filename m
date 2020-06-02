Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC561EBFE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 18:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d9/yt3rQCYJNzWTM5aJ8dGndlOaT3f0FKZuRdhM59yE=; b=s1XNVEkAnKVDqh
	9gDMxD38pAfOBZHJ/F8Ade4GrfFxvVWQB+dZhbxyGxW82LWmJsfUWeyJz26FJ+ae+CH0h1eTGuK5W
	1A3UVbAkJYfFGhSen4E4UlvfwlNxAWQyVX7xi9Aiinov0YlygQsv7A5Zl2eEu93pUNMlVXuOj7SK7
	gqGDkORTVP/bpbLIXXiBY8hCe8wUv1Bs6k4j/KYppU/CI+ztjhtp9XPkpwZvfIrSAkiYOoJ8bYsjR
	6UMnWucnIZGt0AVC9k9mKc1q95PdfeqsfHKb6IOK7qTuoiVE/Z4ScRr2yku1C5Ue2gP3PpY88lfkQ
	76vVUlEI6Vt7pJhlQKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg9g4-00068E-0Z; Tue, 02 Jun 2020 16:22:12 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg9fv-00067i-3s; Tue, 02 Jun 2020 16:22:04 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3DA262A338E;
 Tue,  2 Jun 2020 17:22:01 +0100 (BST)
Date: Tue, 2 Jun 2020 18:21:57 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v9 9/9] mtd: rawnand: Move the user input parsing bits
 to the ECC framework
Message-ID: <20200602182157.26716f89@collabora.com>
In-Reply-To: <20200602143124.29553-10-miquel.raynal@bootlin.com>
References: <20200602143124.29553-1-miquel.raynal@bootlin.com>
 <20200602143124.29553-10-miquel.raynal@bootlin.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_092203_305778_C8023007 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Tue,  2 Jun 2020 16:31:24 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> +void nand_ecc_read_user_conf(struct nand_device *nand)

This function is not introduced in this patch, but I'm commenting here.
Looks like it only operates on an OF node, so how about naming it
of_get_nand_ecc_config().

> +{
> +	struct device_node *dn = nanddev_get_of_node(nand);
> +	int strength, size;
> +
> +	nand->ecc.user_conf.engine_type = of_get_nand_ecc_engine_type(dn);
> +	nand->ecc.user_conf.algo = of_get_nand_ecc_algo(dn);
> +	nand->ecc.user_conf.placement = of_get_nand_ecc_placement(dn);
> +
> +	strength = of_get_nand_ecc_strength(dn);
> +	if (strength >= 0)
> +		nand->ecc.user_conf.strength = strength;
> +
> +	size = of_get_nand_ecc_step_size(dn);
> +	if (size >= 0)
> +		nand->ecc.user_conf.step_size = size;
> +
> +	if (of_get_nand_ecc_maximize(dn))
> +		nand->ecc.user_conf.flags |= NAND_ECC_MAXIMIZE;
> +}
> +EXPORT_SYMBOL(nand_ecc_read_user_conf);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
