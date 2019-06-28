Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3879F59339
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zHH5YkNTS2GSKvdLAryDLPXsl8asFq9ELHhn/iBgdM=; b=BpP2da+EDB8kzc
	28tb9Gp4yMdXjPDiMycPPSNU0JD3/FMxaXo19hc0pMHtNk/rmyCesNH7i1sirI41I89v0A01EWUfV
	XqieAvtuN8oLT0XJaRQnkM3vGDSe3UX1/Eo57F6BVPlFEszgOaXTktsWmwaJ6a4d9OOWgPtu/ADy1
	a8DRyhHk/RULWnBJnvh37oniv0IPTbMcFIxcStm0RpB1u5UOvsuFjufeGaEEFL2ohK7lmVbRCP8Q6
	nx3t3fS7fMWmOzEXcwBwPHKeNLDk02X7ibPFksTDlyd+qflniG7JzLrNmoPsegRNGQAXChRRPb1E0
	5TgOxtWAbRn0Llqci+dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgj97-0004Mm-7q; Fri, 28 Jun 2019 05:10:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgj8s-0004MQ-90
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:09:47 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A85F3206E0;
 Fri, 28 Jun 2019 05:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561698586;
 bh=/peHflkrKmzjbuBmMuvUh/DLiTO8hGnUbfVTz+1n2Nc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tuUO3xjaZIWvv3Mbofdz1xB8AocKHnbI5XgL+ZE/Yrl4SQPS/oif9fvuu28wewGbF
 y3INDtDd1R3SOBrBKOxq5TNIordgAutrhTvLNsVlaCsvqOX+YyuOx9JEfflt3KkCLq
 PPafmL2uJvZ7PtFOxYWVbFGr29cYtAtZ3jO1gnHc=
Date: Thu, 27 Jun 2019 22:09:44 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [RESEND PATCH 05/10] crypto: sha256_generic: Export the
 Transform function
Message-ID: <20190628050944.GE673@sol.localdomain>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-6-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628042745.28455-6-j-keerthy@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_220946_339345_BF5532FB 
X-CRM114-Status: UNSURE (   8.20  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 09:57:40AM +0530, Keerthy wrote:
> The transform function can be used as is by other crypto
> drivers that need to transform the 256 bit key using cpu.
> Hence export it.

What is this supposed to mean?  SHA-256 is an unkeyed hash function.

Also, you need to actually explain why this is needed.  If your hardware
supports SHA-256, why do you need to use the C sha256_transform()?

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
