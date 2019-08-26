Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124829D2D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQ2Riyx2kQUVuDRQpBosMX+piPQnXFxSZLQN9xjr7Rc=; b=uSA1SEgf3D1rPe
	sncm0Xndm+a0Ny+1yuQMoGjTMPXDXxEDZbN0mn1FeYCvyFAKnk911fq18oBylogfBoSwAMFehUIz4
	0g9f4/1o6k3nJ+ANLUNAfwSF7+g1C17O3IXmmw6xM4Cmnn1JmKjlhi3i082OXh13yGkSK+2cKh6+N
	qn5zGGhUpNvjDen/2ArnhNT5l5LkVYDqDOMRacDaTyFwUt/FlMxlMuFH24gfftyDRbLaRm9FoZF2v
	41IbY9JhOZcB94hBmF0uLJ8eFl42yFvZv9Ep50poD28r24XDMdIfMMa2sB7Spxm9JmTH8W+uUIBaz
	gOgftmmDOZN1SLDDp2Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2GzB-0008Vb-FO; Mon, 26 Aug 2019 15:32:49 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i2Gyy-0008VN-LN; Mon, 26 Aug 2019 15:32:36 +0000
Date: Mon, 26 Aug 2019 08:32:36 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [RFC PATCH 5/7] arm64: smp: use generic SMP stop common code
Message-ID: <20190826153236.GA9591@infradead.org>
References: <20190823115720.605-1-cristian.marussi@arm.com>
 <20190823115720.605-6-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823115720.605-6-cristian.marussi@arm.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 takahiro.akashi@linaro.org, james.morse@arm.com, hidehiro.kawai.ez@hitachi.com,
 tglx@linutronix.de, will@kernel.org, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +config ARCH_USE_COMMON_SMP_STOP
> +	def_bool y if SMP

The option belongs into common code and the arch code shoud only
select it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
