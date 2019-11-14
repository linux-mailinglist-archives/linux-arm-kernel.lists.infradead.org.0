Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F03F7FC028
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 07:27:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOIS6VACXDoIxJmOWtfsc6uU7kY9vjV/DKmgpXnaWfU=; b=r4ZZBYJsAiF5GS
	UqUfKj75MiNpOY3/rd4SSqcMl/FxsFvj9LdrS3vyyBwXv1a+jnpqHdsjB86BVV6zfu4rEO317Qxgg
	NfXXZs3dYPwnhra0nR7v8afIR6lqW36hKusZk2/W97pZ3gNW6nHgqabA3/2Y1xxW3zxB9747Hucvm
	03ZqseoukO7KLapAHkG8n0LeSXID4YxWddT3TYgkkNZ6KAMbtCnW6MIrqw0o4EugYhUIeGVIPnF+n
	Xdb385XGMB9ZHnOC2pmDUuFhqb55Yt2g5HJcvy3V4uCAfyOh1swEtW/KergCzg73/gJdJQdcHuuEJ
	+/LcqCUW2KGleGheaoOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV8bS-0002rA-0I; Thu, 14 Nov 2019 06:27:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV8bK-0002ql-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 06:27:31 +0000
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6ACE720715
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 06:27:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573712848;
 bh=8hzwCt1v1NdUbhpvZ5TqJJzC/rhyT2NofD4G90JdjLM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cYO1tXkg7eFtMudQwH2gz+1sxd41wi5O+dYXb27KzReNitNkK2hGYvpBKBbfIlfka
 W5oCDUvwBSb71gGh8s4FySNrNUuXK0JtfMmwt5TdA05AYDuOrMnPs8h6Y881txMUW3
 pqU0OaVbwouBVxzBLz6eyCpHuwp1lS7W5xOsENkw=
Received: by mail-lj1-f169.google.com with SMTP id d5so5342148ljl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 22:27:28 -0800 (PST)
X-Gm-Message-State: APjAAAU994wX798u8pFJWbkTBZVEw+3H4Dafdzdf9EGrN0Ejlf23ViHL
 gl+2+bMJiZJuIVAnFSs+J7sNJPKTMdkozxB+i+E=
X-Google-Smtp-Source: APXvYqxLS447eYAoTkwwrZ8NQanUwXVmQzqjcphyQAiiCVNGGA//5Ap3b/PqZTjA8RvqQCvN6M1AOyz+5i1QDL1Kr1E=
X-Received: by 2002:a2e:9842:: with SMTP id e2mr5294560ljj.93.1573712846541;
 Wed, 13 Nov 2019 22:27:26 -0800 (PST)
MIME-Version: 1.0
References: <20191113094256.1108-1-peter.ujfalusi@ti.com>
 <20191113094256.1108-8-peter.ujfalusi@ti.com>
In-Reply-To: <20191113094256.1108-8-peter.ujfalusi@ti.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 14 Nov 2019 14:27:15 +0800
X-Gmail-Original-Message-ID: <CAJKOXPe_vfDjJSbVOxFFDFO3OWPLFr_UffCqVZb4ahGF57aVYA@mail.gmail.com>
Message-ID: <CAJKOXPe_vfDjJSbVOxFFDFO3OWPLFr_UffCqVZb4ahGF57aVYA@mail.gmail.com>
Subject: Re: [PATCH 7/9] spi: s3c64xx: Use dma_request_chan() directly for
 channel request
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_222730_222206_9AB8AE29 
X-CRM114-Status: UNSURE (   9.95  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linus.walleij@linaro.org, kgene@kernel.org, alexandre.belloni@bootlin.com,
 linux-arm-msm@vger.kernel.org, radu_nicolae.pirea@upb.ro,
 linux-spi@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bjorn.andersson@linaro.org, vkoul@kernel.org, agross@kernel.org,
 ldewangan@nvidia.com, broonie@kernel.org, Andi Shyti <andi@etezian.org>,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com, jonathanh@nvidia.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Nov 2019 at 17:42, Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
>
> dma_request_slave_channel_reason() is:
> #define dma_request_slave_channel_reason(dev, name) \
>         dma_request_chan(dev, name)
>
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>  drivers/spi/spi-s3c64xx.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
