Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2244D5CBB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgpymLt+32w5cN/Wa/3Rznl44PELX2Y1rHx5ChmufqE=; b=RV/7oPLyGbUJj/
	iUo2YL66+WRbOI4cixNI64wB7IcvwomIycTvNe1ZkAAXyyr9bWm01JW9sfa2N3DabFqckF22kXDqL
	POv62riBi/vP+FQdWo4RgwDgN6ZZaWo0haWH4P29mCg5xnBbIViO/L/hY+sop4onrxi+GpCEbV/Oy
	tkWFOz485u7KgwBjSi3cSH+PgNcqovzvXM49GZ2QFD9YgWAD9VCUhfFQhHYs4bGAIaLQrNBZXWK3g
	ZIgw7cv6OUo/1T9rLDgxg8oiHj57uGrsYuV3OS1msvZLoatpabUrv4f+Nmb7dHoPNmKtyYseK3aX2
	6uOY0XFLGjFrUpliqrcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJvAB-0006fW-Mz; Mon, 14 Oct 2019 07:53:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJv9r-0006bJ-ET
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:52:48 +0000
Received: from localhost (unknown [122.167.124.160])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB69B20854;
 Mon, 14 Oct 2019 07:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571039566;
 bh=JSWw0MG1zhOv2LF9Y5gVdGsg3ajvM/sUAFV4xu8ey5E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZjBy7oQwSrI6iB5Skbc/NvXxuVOSZHnCRV6aLMxsAkT7rduYJne12wOP5ljb5FgNA
 XFXyjnBIQtvE2iv5wTr1iQiVu9cDWEC3KgtEnhyu0ISHKyKZ6Jrz3aTqAwW4D+XhJg
 f6FlPvtKxR+5TbBHf9y6ODcqzcWsYSNVycKj90P8=
Date: Mon, 14 Oct 2019 13:22:42 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] dmaengine: owl: Use devm_platform_ioremap_resource() in
 owl_dma_probe()
Message-ID: <20191014075242.GH2654@vkoul-mobl>
References: <d36b6a6c-2e3d-8d68-6ddc-969a377ca3b2@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d36b6a6c-2e3d-8d68-6ddc-969a377ca3b2@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005247_530112_41FF8476 
X-CRM114-Status: UNSURE (   7.86  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-09-19, 13:30, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sun, 22 Sep 2019 13:23:54 +0200
> 
> Simplify this function implementation by using a known wrapper function.
> 
> This issue was detected by using the Coccinelle software.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
