Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507F51D4685
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 08:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dh9b0LeKjtotze7SXvPbJi6sjcqVUeLA33DQvye8j+k=; b=mDusF0yvr0MPW/
	mkcMN1S3nc3rMNaJkjuNrde+hPEKuJ1EYMrlxDN+NewUtQYItOmNxLCpqfVHeIfnTNBPYFkFmp4g1
	ritcnCFjVjNmbR4OryMuK0eF6Nhs5MIg+jcJR5802dkjYnoTyVPM7gFPyPw24v1g+kyUtJc6RWssb
	d2JjqG2VmZrlZCJIO8qs5eTxSYzDt0xmvY+ld1ZvYyTQdvtXSPiFgj1g2kxQnG+wwz7Ga6Hs3HSYJ
	4N4paTheb9kAjDamHo2vWrrAAcxVtQuuOEEEDVkTWqgsHy5e2bmgR48YuGEo5rw1OGPu6laZ6hEWB
	eKLcLKhgRB04d/j9D9mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZUI4-0006C0-Ti; Fri, 15 May 2020 06:57:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZUHw-0006Aq-18
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 06:57:45 +0000
Received: from localhost (unknown [122.178.196.30])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 504C1206F1;
 Fri, 15 May 2020 06:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589525863;
 bh=jnCPwiqOh+zJ3vviW4gFRvxdkVv56zAejpkrdVS/M1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bd6FrTEISeLwQQsUio8f6e/UuDg4BLKeU+zfDaBnwZsR9usUiKyMVXo/liQopANsf
 rSHYDVg+aMjVYbnaz/GvSxC7slHFAo960hkmom39PtNsKCqpmezYK8hOoOEaCBhznc
 EvvpFShs8ZwXrq33PSr2H6U9Eab0qbSfvqsMroWU=
Date: Fri, 15 May 2020 12:27:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH] dmaengine: imx-sdma: initialize all script addresses
Message-ID: <20200515065732.GK333670@vkoul-mobl>
References: <20200513060405.18685-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513060405.18685-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_235744_093642_06A28089 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dmaengine@vger.kernel.org, Robin Gong <yibin.gong@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-05-20, 08:04, Sascha Hauer wrote:
> The script addresses array increases with each new version. The driver
> initializes the array to -EINVAL initially, but only up to the size
> of the v1 array. Initialize the additional addresses for the newer
> versions as well. Without this unitialized values of the newer arrays
> are treated as valid.

Applied, thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
