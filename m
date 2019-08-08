Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF928618F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rCzB6y+ToWZ1yNSHy4k9rIuEpUHub2SsqwjesMaQS0c=; b=XitZg2SU2O+gIH
	Zs7bAZC6sJGNrC17rzIaZp9p5LhTPztobQvQvnZNWE95gNVORUQnIRTSZbwQu4G1b97nM7UQgjhoO
	AEBdy2p5xvrJNbXXM7cK01Rteb+1wMlztt8lwPOROB9sEOS/SzXPAOtAdU/B2c4Lp2tMslv9Rj60R
	xJh9t26mytQpztAo9RXgHYp3Y5c+tCo/PQ4mjwSvlq/3b0TFtgyl5CaeECLyalX0eC3ibv9bRy/0n
	KCRR8vT0L7Xhdq0HGveXGjjnoL+6O05d87nwas/0tuontSULyu+e0Osk4eG5mcchbDy1Z524+wEmd
	7y9whaZgRLF05HSLFCyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhSo-0000FL-Hu; Thu, 08 Aug 2019 12:24:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhSS-00007H-4Y
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:23:53 +0000
Received: from localhost (unknown [122.178.245.201])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C6ED2171F;
 Thu,  8 Aug 2019 12:23:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565267031;
 bh=pYsFBGP3kI4gJG4u1PJaSdrgvkRbRuJZQ/c/jwcwI2U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RsxOLcsIRag7X9lY56IOqRlZ2V0Q6//0+WaDnwb3m3jeBSAOe3St/5HIHi2dRwaS5
 y4Nd5WpZZE48ICQUYPDHqfaBHWUchP8OdyFBSoBHTiMCWa34ue6zE7Ni4imZ6qDJeh
 P8TsU1q2UPpRS6qdup4haXscQXlhUkK4IWSc3Gdo=
Date: Thu, 8 Aug 2019 17:52:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH v3 04/24] dmaengine: qcom_hidma: Remove call to memset
 after dmam_alloc_coherent
Message-ID: <20190808122240.GQ12733@vkoul-mobl.Dlink>
References: <20190715031723.6375-1-huangfq.daxian@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715031723.6375-1-huangfq.daxian@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_052352_444602_A90485A2 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, Sinan Kaya <okaya@kernel.org>,
 linux-kernel@vger.kernel.org, David Brown <david.brown@linaro.org>,
 Andy Gross <agross@kernel.org>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15-07-19, 11:17, Fuqian Huang wrote:
> In commit 518a2f1925c3
> ("dma-mapping: zero memory returned from dma_alloc_*"),
> dma_alloc_coherent has already zeroed the memory.
> So memset is not needed.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
