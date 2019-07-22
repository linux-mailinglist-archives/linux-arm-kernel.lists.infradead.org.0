Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150BE70257
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:28:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnvpK2RFCJ7IG2AULSxPZ9hjvkBWTUHlVCC3Qe67098=; b=uB80h2qdBvaSBj
	xxuN56EQbDGGEZLd+tzl0pcznRzpHvEEHM6E27ikmqY2n9E6cL4pZ1XlPuqlRUvGoVKtr/RS6iMu/
	0kA0evQBHwhjxwOmZzYa9zLj7Txos6qhkrCegMzwX4fSL2+Pl9xc5Wxny+q0ajBKbw0nMq3S/5huQ
	0S90ll/caINLZK+IG+5W6rGeHY7TqLZ1ep1+e/Z0ZWX8DPSJuIWzdiz816GYqokBHbelgDBx4Qz68
	px7/jOd6EZAuznFrj/J3Jm1SUGM7iyvn3wiVZykSXVzYEiI3xGr6qyC7EIBh3WSY7Z5wj/iR7fwtt
	ghnh+aeOd3xFtq36iYrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZIl-00084Q-3s; Mon, 22 Jul 2019 14:28:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZID-0007sX-RB; Mon, 22 Jul 2019 14:27:59 +0000
Received: from localhost (unknown [223.226.98.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AECDA2171F;
 Mon, 22 Jul 2019 14:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563805677;
 bh=ufpO/cIg3vENg49rkm26FM8UPrXHskQcxA4RS4RtOzM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zO3kDJZaiGx8OQDtAjQvGwDZPunpQ/sSohn2V0muKqiKEah1PmCQL0RhtF8hTbMfm
 XkJJm1SjcHiYH1EXldkxTarOlVtfukaZBeBOrwVgp3LLWq50ZNu6G7LtEwEzUWij+f
 ueScCxv6eEOdLQtPDsu/pe/RDOnvJgSBEh4g22y4=
Date: Mon, 22 Jul 2019 19:56:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] dmaengine: bcm2835: Print error in case setting DMA mask
 fails
Message-ID: <20190722142644.GW12733@vkoul-mobl.Dlink>
References: <1563297318-4900-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563297318-4900-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_072757_958335_A6C48F4F 
X-CRM114-Status: GOOD (  10.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-07-19, 19:15, Stefan Wahren wrote:
> During enabling of the RPi 4, we found out that the driver doesn't provide
> a helpful error message in case setting DMA mask fails. So add one.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
