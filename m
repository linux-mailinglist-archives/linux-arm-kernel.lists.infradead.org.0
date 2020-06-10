Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8B21F516C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OUqPhLQGRWyr/IClmUdVpQRnWmeooX46dFBbxJBRnAw=; b=s2C8C1dwAUuUhT
	vwhJbc+2vvxS0VBHomfA731uETThrux40Z/z8YSIg6rPCkxEVfnCqo6vPVjTDSwLZ/iVJXC7Bstpo
	REYEq6hUCUirXi3IqxY2k0dM8OxNST1YILmwEJKXFuMt77DUfPdQDymCKcQAjLRYapsc/ELvZMtwL
	N9pWuDRbqZfrH5ENiYRr8NNcc4cSYiaKYKjBN4WfbJ2+wTVbaBbZo4GXuL1d+O2FH8x1P8P35ACzd
	AKhsFRX3/923Fxy0ifshdkA2W8RQs2gASd6No3OY7Upa0MnoE52QdIgEMYb7hoFV5FcxPLOMTHSSU
	hg2D8JHFbuynt5fGLbMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixIi-0004K7-0a; Wed, 10 Jun 2020 09:45:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixIY-0004JQ-Ha
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:45:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8455F1F1;
 Wed, 10 Jun 2020 02:45:29 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 87ACE3F73D;
 Wed, 10 Jun 2020 02:45:28 -0700 (PDT)
Date: Wed, 10 Jun 2020 10:45:26 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 4/6] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200610094526.GE25945@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
 <77b02e4a-bfcf-90ef-90ca-73e878b7b649@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77b02e4a-bfcf-90ef-90ca-73e878b7b649@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_024530_624405_0632608D 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 01:39:03PM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Dave,
> 
> I've not applied this patch yet, in case you want to make
> some changes in response to Will's comments.
> 
> I think all of the rest of the patches in the series are now
> applied (and pushed to master).
> 
> Thanks,

Ack, thanks
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
