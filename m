Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9A834379
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TzI9R9/94rtlt3nwDThud42KrJN5gkZ0AUSr1nQE3Do=; b=U6CoAMr+opDOqU
	VY4A8f8ASgbbNpxH+XfDm0FBaMSuZYRBxOt4ETqMehlcxYLyPamL73ZQPVOquJguKh/duRO92i6Rv
	swwuzzd6qdnAk3CPUvd6zYuY9L2mAxFgzYmN4TMiWTRu3Ssp/wiWt9UrJGETEhQclskE1+cwTUWjC
	WTTvAEemHkRoVAHgEhmGPBLhft2Z5N2qTTJG+OViqmK7J6FNelx+rASV3hjdGMr8EzfSwCmNBQctq
	ed/a/kbPIAARNahVG8xlotBwakIrh1NcSG4svpP8iFZ4vC4fKw/P+rsjQco49LLYhzh74x+dW76EF
	1LcX/l5Jq5WooDBeGMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY603-0003NG-OZ; Tue, 04 Jun 2019 09:44:59 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hY5zw-0003Lm-FW; Tue, 04 Jun 2019 09:44:52 +0000
Date: Tue, 4 Jun 2019 02:44:52 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH] arm64: Silence gcc warnings about arch ABI drift
Message-ID: <20190604094452.GA29927@infradead.org>
References: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559575830-11941-1-git-send-email-Dave.Martin@arm.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'd be curious where we expose structs containing bitfields as
pass by value arguments in the kernel.  That generally doesn't seem
like a great idea.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
