Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5775875E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f5EDYLELvZidpF2090OI9CEmvpJiEOccZUcbgkNGvwQ=; b=X3h9aDYSrQ2w6K
	9uG2I+mIF04PBPk+WxMuj72YJKfnEguYHFADUYzDAggb5i8ZxwpOYnssnqEONUasgWet9e71wF0YB
	lYyZ+RkwHLqDfK3YaC/laZOqZkSWsT2E6VFZ1oLLrqDWzhCohDeSkvuMZ7YDkNqVKvbqFKWB0/HHE
	fkJhezcrMRaP4GBhsw3rGXLMOzGiz2IOCF/pW6xLoyIOImwjnMlBabb1APMzwUl5vaS/AjTYtGjI4
	vDC/Op4X8qVR2VPO63B5ScyD071ExyxOyF5VSo4GizLcQBz45Bq8Jt8wd23ccJ8VL1CTy2du415Jb
	MhF9Vmb2HdlZ02p4+ENQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXSt-0003sF-6F; Thu, 27 Jun 2019 16:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXS3-0003QF-Uk
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:40:50 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBA42208E3;
 Thu, 27 Jun 2019 16:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561653647;
 bh=nNVG+IDzbIeEVq65elRdqny10jN+YiugKfrEYScPmbQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QkP9iRzla7wMEKlyWi2QYrAjIKvPg/6kpeDLXNvdvMxFCo8b272C5ZX5KlfYar2Av
 vllgmGG/Bh1qu/jloayliKN8fU2IgkKVj6sIow+Fh/cnwZkbkX/GvwFwDjl7+a3nBt
 UF+kV2Wlo6WEhFL6O8oZF3F6/M7wJlOBv3jcT7aw=
Date: Thu, 27 Jun 2019 09:40:45 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v5 7/7] crypto: arm64/aes - implement accelerated
 ESSIV/CBC mode
Message-ID: <20190627164045.GE686@sol.localdomain>
References: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
 <20190626204047.32131-8-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626204047.32131-8-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_094048_112682_FB450A76 
X-CRM114-Status: UNSURE (   8.02  )
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, linux-fscrypt@vger.kernel.org,
 Gilad Ben-Yossef <gilad@benyossef.com>, dm-devel@redhat.com,
 linux-crypto@vger.kernel.org, Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 10:40:47PM +0200, Ard Biesheuvel wrote:
> Add an accelerated version of the 'essiv(cbc(aes),aes,sha256'
> skcipher, which is used by fscrypt, and in some cases, by dm-crypt.
> This avoids a separate call into the AES cipher for every invocation.

This technically should say "in some cases by fscrypt and dm-crypt", since as
we've discussed previously, most of the time this is not what fscrypt uses.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
