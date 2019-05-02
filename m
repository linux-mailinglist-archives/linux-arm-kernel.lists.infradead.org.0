Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52998111EB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 05:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmGIFL2y6eAbPlrbxuEBN0awXiF9MdG8+1eUeaGetY8=; b=t3XDipjyorkmlf
	P0Nx6DCeOnMrzNTBE4ZuBLldBG59d+oY5uSAux8qDIv8Wqx9jg7UnrMqIoRbTdChNVSL+KM6al0sR
	fknnbiiWu2s5FOCBinJ7MIThxdTyL5W8vhICpeNqS+r2t9zGTzDCy1S4C33davSnsUf08yTRqqav0
	s43GcCeyHNsxcc3M6OzBfA4Xonq8uT0VFT1KeUz6U1a8ShitemaGJIrpHCLnJ6YnR6eZ7o+rBB3rM
	8vVgWNGoSZOpSHb53i/iTMs8gamTFtHWNc09FFhorR5clINQomdU2kSfoW0i0oM9gf70KJ1ACmOIw
	rU5Wd7vKW8fWEqZvaibw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM2YD-0007X2-Cu; Thu, 02 May 2019 03:38:25 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM2Y6-0007VQ-Qw
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 03:38:20 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 0B19E23331;
 Wed,  1 May 2019 23:38:14 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 01 May 2019 23:38:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=/n72BNTxkHX6NBIhd/p5zL3KWP3/PyG
 ZP2hQM7vw20g=; b=MCI5iyqkxaOgf7gRkwsEyLdoVFv0ejIzogXrM5ekkDV/z8h
 FxMwd5TgN4J37kmrcQ60tZK9eoaGbMgFkCVsmEWjL007YQ+PeWrvZA0nctQI5EyI
 ii+jCwyBSCFCMjAFvUYK4uPGhEpDe6dVcWVDWy0ZW9eYoHh0JSiPJbbO0Bj3/OGh
 +tBxenwgWEpjpFQaLDZjsP6rVRlVzQYbRg5KJW9La+NszgHM2lvJ9OLLglRCHO69
 mhSWBvycruQdEGdsR6ikmoy9uZwj/nPDe4E81Idqm3eZEJJL/+ReTC1QV7sI+6Gt
 kq27oXv17kGtaW5tKfNmERE2Y+FDEOhhQjeSp4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/n72BN
 TxkHX6NBIhd/p5zL3KWP3/PyGZP2hQM7vw20g=; b=wtQsRlEWn9LGA3wllkwogB
 +9IPhc8LV+jYBhTFcDSteo4siYvFgakXicppdkTH7RKXJwuJAq7ZuRatJgoXwk1f
 5A21MywhFDBjRgMpVG+SbT8QoNMYn2KKRaX9yBrrBjAcim3kqznimK8+aOOqd08Z
 IS9TjSjb5VsxPSGGM8Z6cjk55QRoeqsvPa+0cj/4tnFgv9YgV89ioDV6n8kI6IML
 jC8JsKQtUf2btrtgAdzJfqGYShNUakvVTPkRZjonUrU/f1aA90ruNc0vrV0KCeVk
 Z4VbWHCkRZZFBDiwGRliE0P1YbKdQ8hGHaPUIsYQC+wG9eGHF79lmOwasOb9fqBw
 ==
X-ME-Sender: <xms:JGbKXJeVDYPhK2I_6dtDBKZ_-uHfi6kKdOH0dySElkcytqfmmcJPng>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrieekgdeifecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:JWbKXM-jrg1l0Jasczh8con4d15w5bcHnH6pN8BbKKyBXChpRk40UA>
 <xmx:JWbKXAkIXxtOu7ThHOUEue5AM-etYDn2uoI-uCg_ivhBw0gLtHPVeQ>
 <xmx:JWbKXNhoDkiZEUf7UaQ4ZBAd5wjOE0HRHjyESWCdorZjmr5E893Hmw>
 <xmx:JWbKXEugwosNKIJ6WZT66--1DRz-JP8KllqUjyAmXtB9Np4nUB0cCA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id CD7177C6D9; Wed,  1 May 2019 23:38:12 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-449-gfb3fc5a-fmstable-20190430v1
Mime-Version: 1.0
Message-Id: <ad47a332-125b-49c6-bf06-2b414ad446be@www.fastmail.com>
In-Reply-To: <20190426165655.218228-1-venture@google.com>
References: <20190426165655.218228-1-venture@google.com>
Date: Wed, 01 May 2019 23:38:12 -0400
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Patrick Venture" <venture@google.com>, "Arnd Bergmann" <arnd@arndb.de>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Joel Stanley" <joel@jms.id.au>
Subject: Re: [PATCH] misc: aspeed-p2a-ctrl: fix mixed declarations
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_203819_056202_992BF68C 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, arm@kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Sat, 27 Apr 2019, at 02:27, Patrick Venture wrote:
> Fix up mixed declarations and code in aspeed_p2a_mmap.
> 
> Tested: Verified the build had the error and that this patch resolved it
> and there were no other warnings or build errors associated with
> compilation of this driver.
> 
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Patrick Venture <venture@google.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  drivers/misc/aspeed-p2a-ctrl.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/misc/aspeed-p2a-ctrl.c 
> b/drivers/misc/aspeed-p2a-ctrl.c
> index 9736821972ef..b60fbeaffcbd 100644
> --- a/drivers/misc/aspeed-p2a-ctrl.c
> +++ b/drivers/misc/aspeed-p2a-ctrl.c
> @@ -100,6 +100,7 @@ static void aspeed_p2a_disable_bridge(struct 
> aspeed_p2a_ctrl *p2a_ctrl)
>  static int aspeed_p2a_mmap(struct file *file, struct vm_area_struct 
> *vma)
>  {
>  	unsigned long vsize;
> +	pgprot_t prot;
>  	struct aspeed_p2a_user *priv = file->private_data;
>  	struct aspeed_p2a_ctrl *ctrl = priv->parent;
>  
> @@ -107,7 +108,7 @@ static int aspeed_p2a_mmap(struct file *file, 
> struct vm_area_struct *vma)
>  		return -EINVAL;
>  
>  	vsize = vma->vm_end - vma->vm_start;
> -	pgprot_t prot = vma->vm_page_prot;
> +	prot = vma->vm_page_prot;
>  
>  	if (vma->vm_pgoff + vsize > ctrl->mem_base + ctrl->mem_size)
>  		return -EINVAL;
> -- 
> 2.21.0.593.g511ec345e18-goog
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
