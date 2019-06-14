Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A6845D95
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 15:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAb8/87MfFut4XTxwPHmuLIPn1qkZ73vB/EBeF8hSlI=; b=pMSz59pBT7v2a4
	J07DfqqicyfY4Yd9pPuho1dVSvd6vHVVLKBuMV5NWkQcTRH3FTt5uBjCLCh5JZQXvw/2LBbkzeiN2
	yKCE7DUrQoBsJSB8l++FSFqmkt6cptcDzF1EsKZtzDm8ftVoCVYGLNw552/R8m0rfzd4wbFCD5R5F
	0+xCA1ZM3xYrMDOt2MaswGEcdV3UjqPpqr6q15nOJSKp4wUH2HqDXcBELXClzGwNF3GxRmi8xvMHJ
	NQKtzOutq3qgZ2acyLbtzuAuf/ghOXoaOp14hJgOujf85JWwXf3dNgu/zMG1FrfhwxkmE9Yo8UMqJ
	l84y9SfMBmzvBdIkoQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbm0t-0003o3-IU; Fri, 14 Jun 2019 13:13:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbm0l-0003nY-IT
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 13:12:56 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB86720850;
 Fri, 14 Jun 2019 13:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560517975;
 bh=s7zyuYWu+DaWGbyiuI6YfpVgY4YZ3vd5LpUoa4GAm24=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r9h4sOJw4TWqwZ6Htg6I96ppoZEAiCpUG+mrI/LkdOC+aeRusUOZ91ISOH7nOaxks
 v84qfGmWQ3spRQq4sQZkPS4zIH+6rZ0Hk3zwxlLwcwsq9tDqzOkq2TxyU5I/yWY0ca
 D194xOv9xtvOVOfuHGBKAABDHW4XhR1kSTEvX90I=
Date: Fri, 14 Jun 2019 08:12:53 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [RFC PATCH v2] arm64: acpi/pci: invoke _DSM whether to preserve
 firmware PCI setup
Message-ID: <20190614131253.GR13533@google.com>
References: <5783e36561bb77a1deb6ba67e5a9824488cc69c6.camel@kernel.crashing.org>
 <20190613190248.GH13533@google.com>
 <e6c7854ae360be513f6f43729ed6d4052e289376.camel@kernel.crashing.org>
 <CAKv+Gu95pQ7_OfLbEXHZ_bhYnqOgTBKCmTgqUY27un-Y708BgQ@mail.gmail.com>
 <d5d3e7b9553438482854c97e09543afb7de23eaa.camel@kernel.crashing.org>
 <20190614095742.GA27188@e121166-lin.cambridge.arm.com>
 <906b2576756e82a54b584c3de2d8362602de07ce.camel@kernel.crashing.org>
 <84320a45ef9395d82bf1c5d4d2d7e6db189cbfda.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84320a45ef9395d82bf1c5d4d2d7e6db189cbfda.camel@kernel.crashing.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_061255_627650_7EBB7EA9 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-pci <linux-pci@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Sinan Kaya <okaya@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 08:43:19PM +1000, Benjamin Herrenschmidt wrote:

> This least to another conversation we hinted at earlier.. we should
> probably have a way to do the same at least for BARs on ACPI systems so
> we don't have to temporarily disable access to a device to size them.

The PCI Enhanced Allocation capability provides a way to do this.  I
don't know how widely used it is, but it's theoretically possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
