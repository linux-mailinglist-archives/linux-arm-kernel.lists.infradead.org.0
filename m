Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BAD8D5CB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0tXmKcqLDPSJZPZ8HXjT4xXOfmy7C+/9ro/Fd4G2go=; b=Y/7HnBgULKs31f
	o7Ktp4mCFyT7K+0eVUo8Wtu942N9ILyG9/haBaIsX2fpUz8+gn3uR5bGWRVBK7B3mr9CE6RycxFjR
	8Njt6gg7OYMEZdjtH85Yf3FFHn/euNCxSkU7WYF2/JQc4WChfXPfjpDGZKmFJcwJBrrcckGGQjE5S
	y7+IjRatCKFe/xBIdph5qIeKvLfTGXMuj+QafSS5r95uTfcbuk41KASQMQfROdTKu4hlc84YvVicj
	yY2BHwK5d/yjBxYuM3uGjkLD7CrWnYRwPSaCGf4SPOGSlskiHgydesWd2uq6alfsmGEk1sDLvU0g7
	1Ip7iMBeDXh8LX2Rp2rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJv9p-0006Pw-8W; Mon, 14 Oct 2019 07:52:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJv9c-0006P0-HM; Mon, 14 Oct 2019 07:52:33 +0000
Received: from localhost (unknown [122.167.124.160])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EECE2083B;
 Mon, 14 Oct 2019 07:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571039552;
 bh=rweeonjsw8naho+gNJqiuevBJQ9nomUKksfa/8xkYEE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xRr5m15W9V2AyaaXcUOaS4y83v8iLxDYvC4KyhFR/JjOMNJZeNFud5/sHeO+GoEcD
 PISP2XOFszMT47lhxk5ES81Ah0uyFQVTSKtPSv7wAgJdCeUHF2NiM21NrfUSyKj873
 wDHFPEtFEmgSN4z4RNgJqz1LNAFqUOVDTt0KLplQ=
Date: Mon, 14 Oct 2019 13:22:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] dmaengine: mediatek: Use
 devm_platform_ioremap_resource() in mtk_uart_apdma_probe()
Message-ID: <20191014075228.GG2654@vkoul-mobl>
References: <366e776c-8760-eeb7-c248-7380c9f4fd34@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <366e776c-8760-eeb7-c248-7380c9f4fd34@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_005232_595401_5D375A55 
X-CRM114-Status: UNSURE (   7.23  )
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
Cc: Sean Wang <sean.wang@mediatek.com>, kernel-janitors@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Long Cheng <long.cheng@mediatek.com>, linux-mediatek@lists.infradead.org,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-09-19, 13:14, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Sun, 22 Sep 2019 13:07:41 +0200
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
