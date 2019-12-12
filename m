Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E5B11C12A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 01:13:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI5aspnTT0EwGzdZZ7WO5L5zPLOFC+IiuQH7D2OCkeo=; b=rzydAnohqbT7WC
	aA9rj1f7iG/2JHqzSgHh5Cwwa0bSZ4MgE0wORS7P3q7Yt/dDQX6DmXvum8Q9JJwAOXXRv7BM+Rzjz
	dxLvfyQOJ1P0E1pincjuJ+4m8tbshgSK83j0vZJW/jK+q7NCMB1qre2wc11wIsQhs4Ex7Z3KoPJqw
	vJpZrhYzk9rqc/oVx4FjmgJ+MIoYKhTUHnHmNV1+4T6g/f/B5Qmt68rMmOrFJRM5GyonuSMFArNsD
	lVI8HOBp/ESsK1mXgYUIu7Pg+u7LkGBu/TsMY+Lhp61wmPC9OCKMFb8PZnc45vuuxOh14u5Z8J1rU
	njwoGzEMYRwXeIVOlceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifC6R-00052p-7s; Thu, 12 Dec 2019 00:13:11 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifC6C-0004wu-SW; Thu, 12 Dec 2019 00:13:01 +0000
Received: by mail-qt1-x841.google.com with SMTP id z15so688002qts.5;
 Wed, 11 Dec 2019 16:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JpkQHGI2xpytoMExaxEosFs2mgf6joP/Hf11Z973OOo=;
 b=CSt6XAY8CElDN73sZdchWCJTiVYvx0gczwNtK7YUuSVX/lG5mchWFQNQbomhcw58G2
 d92/8npPNpQ73goL6dPfm215af8SsA90ngfSDwgtOY1LnOaqE44SOOIrUTGK85AoA8E/
 aypxy00MsBhiVXUyn1al9RZIE3GrLCeLZjLI8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JpkQHGI2xpytoMExaxEosFs2mgf6joP/Hf11Z973OOo=;
 b=tH9XWDjDfK3IFzETUoQq/UzoOeAegrO31EpRwCCT1GaUU5Glr1oFP6as9TBmlUCBTO
 E+h92ddfoXRRuMpn7C4iBaAvGTCwkFxyNDIO6J63NOJmfUyMCmSSxYXhiC2kL4b8I953
 NqnuwysVdm3ZRkmXaz0L0czpaUUJXmRu8xPewWYxHb1ZzTq+jGhr4iMOleBxD34lOwx4
 3uX30y+YNrkQOSpRpbSAvl+0qLxuwGJNK7C5Kd3O9KuTwJv1rWV4+Mnxc4Uk22ByD56W
 cLnlnC0UvYU3Dqy7hHkqL9oPdEeIFdpo0m13rbI5e1LOJhjH8Lpctb5gkdtW89CozBE5
 Gygw==
X-Gm-Message-State: APjAAAUEGtptan3vhSDRVac77OPLsIUMy/+mJzzOGVxRHdZJB88/7TX3
 rE0jagiNsqB7+m1gqYT4XzixjVB8tFt0XGS6gv4=
X-Google-Smtp-Source: APXvYqx9tpMnePqfUyI/wqyrtIckfCZNviBzFD6lqfFJher3fMfJBT1e7NmLJtfELd5HAaHlEF3LR3ykCznnk4gFFTs=
X-Received: by 2002:ac8:3467:: with SMTP id v36mr5149667qtb.255.1576109575020; 
 Wed, 11 Dec 2019 16:12:55 -0800 (PST)
MIME-Version: 1.0
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-8-brendanhiggins@google.com>
In-Reply-To: <20191211192742.95699-8-brendanhiggins@google.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 12 Dec 2019 00:12:43 +0000
Message-ID: <CACPK8XctCb9Q2RaFVHEDuWxKDXpCWMWs-+vnKZ=SeTa3xRnT_g@mail.gmail.com>
Subject: Re: [PATCH v1 7/7] fsi: aspeed: add unspecified HAS_IOMEM dependency
To: Brendan Higgins <brendanhiggins@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_161257_856844_A7459F34 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Andrew Jeffery <andrew@aj.id.au>, Richard Weinberger <richard@nod.at>,
 jdike@addtoit.com, Eddie James <eajames@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-um@lists.infradead.org, Jeremy Kerr <jk@ozlabs.org>, davidgow@google.com,
 Alistar Popple <alistair@popple.id.au>, linux-fsi@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Dec 2019 at 19:28, Brendan Higgins <brendanhiggins@google.com> wrote:
>
> Currently CONFIG_FSI_MASTER_ASPEED=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
>
> ld: drivers/fsi/fsi-master-aspeed.o: in function `fsi_master_aspeed_probe':
> drivers/fsi/fsi-master-aspeed.c:436: undefined reference to `devm_ioremap_resource'
>
> Fix the build error by adding the unspecified dependency.
>
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>

Nice. I hit this when attempting to force on CONFIG_COMPILE_TEST in
order to build some ARM drivers under UM. Do you have plans to fix
that too?

Do you want to get this in a fix for 5.5?

Acked-by: Joel Stanley <joel@jms.id.au>

Cheers,

Joel

> ---
>  drivers/fsi/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/fsi/Kconfig b/drivers/fsi/Kconfig
> index 92ce6d85802cc..4cc0e630ab79b 100644
> --- a/drivers/fsi/Kconfig
> +++ b/drivers/fsi/Kconfig
> @@ -55,6 +55,7 @@ config FSI_MASTER_AST_CF
>
>  config FSI_MASTER_ASPEED
>         tristate "FSI ASPEED master"
> +       depends on HAS_IOMEM
>         help
>          This option enables a FSI master that is present behind an OPB bridge
>          in the AST2600.
> --
> 2.24.0.525.g8f36a354ae-goog
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
