Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763C39D2DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 17:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mS/sXFWJ4QH/WmtU/AMBzmX6gTi55peJd5NNnHKxEuc=; b=AI6JCfe3wUiP69
	P5FuNyBbo9FaKJdTH3mIphnxIJdElZJNcUe8ONcwHbbvdc1u+auTut3fBTvZXsm83/PEXTCI4oJrY
	w0lZkiPK07ZyLYDFhh7HcO/OLMNWYCIOnK/mlWBsoDCt510E5QeN/lKSZeN4IIchxupIi7NjOBz+Y
	XBj7HVCkmymCNw6npbFFR1njpMWR+iXxYfUI9qQTg9drLs1CmXl1dB1A0YjMZZeHZz2X0SjH3tWG5
	odOO4maEv/DMzJM4fESB0JgsAClErUJ8YPOGCD82TnIMbHVyeKFduuFRh6XlGhNXlr+dx4e8gzcZb
	Ly0aagY40Is/OjwiJEXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2H0h-0000X4-JE; Mon, 26 Aug 2019 15:34:23 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i2H0L-0000VW-Qf; Mon, 26 Aug 2019 15:34:01 +0000
Date: Mon, 26 Aug 2019 08:34:01 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [RFC PATCH 0/7] Unify SMP stop generic logic to common code
Message-ID: <20190826153401.GB9591@infradead.org>
References: <20190823115720.605-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823115720.605-1-cristian.marussi@arm.com>
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

On Fri, Aug 23, 2019 at 12:57:13PM +0100, Cristian Marussi wrote:
> An architecture willing to rely on this SMP common logic has to define its
> own helpers and set CONFIG_ARCH_USE_COMMON_SMP_STOP=y.
> The series wire this up for arm64.
> 
> Behaviour is not changed for architectures not adopting this new common
> logic.

Seens like this common code only covers arm64.  I think we should
generally have at least two users for common code.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
