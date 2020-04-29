Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 902AD1BD30D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 05:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hd42A9DB9TBp9VSiSNQDvczgc01XPxtONPop/YTSiQ=; b=ooKvkEetx33ngE
	UbA8apSdAsQRK+WN9kNrPPfSALA6IpnQe5cSWaOpSp3hzxGvbVwMaNHfI2XIgDEweuuqUwvov8QFJ
	47MLaoHTZFEpYDA3PGSoNiidrYH1a1Lwu+7b/ZzsKnPG2QNRFOQt2N7+tc9pvBejTo406ZTmO4Fyu
	g4XqyKsrfaNhMtmAhqHt9jWx0LahCIrzy79HNrf97F8MmZrBLQcio5kUBBd0NSjr6rnk/9DOnJFgm
	4nlUTDIma5JV0o50TMwyTKHEEpkax4XC/nVny1//S9O93T7+abVnWdKnyQHYHt0RrRLoJ+lpQy+a1
	p056PGhrF2Y2AXLjU9dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTdeK-0004oQ-JM; Wed, 29 Apr 2020 03:44:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTdeA-0004nj-8n
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 03:44:31 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F8512072A;
 Wed, 29 Apr 2020 03:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588131870;
 bh=UOI52B+HxIPjHlHwkzRaPgH/cjm06CDYk5PdcDmLmJg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pwdFd3kyDXq5QAi1z3RjZSKzXgSQI2kS3nXenNwHeRU/3Kk7IWr1cCh7dkKEkjIpf
 sw4iQ5Rm75FSzshRrsp0toaAl0vMPxhlCwBOzXLn6Ki6evyxQ5Dht1pF0wbviepZ0b
 6O8yV+3aUz/HiXcu8R7qP+okuqwJAhdkYF2DE/kQ=
Date: Wed, 29 Apr 2020 11:44:26 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yangbo Lu <yangbo.lu@nxp.com>
Subject: Re: [PATCH] arm64: dts: fsl: add fsl, extts-fifo property for fman ptp
Message-ID: <20200429034425.GS32592@dragon>
References: <20200427035131.21109-1-yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427035131.21109-1-yangbo.lu@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_204430_327706_02913C5A 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 27, 2020 at 11:51:31AM +0800, Yangbo Lu wrote:
> The 1588 timer supports external trigger timestamp FIFO on
> FMan on QorIQ ARM platforms.
> 
> Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
