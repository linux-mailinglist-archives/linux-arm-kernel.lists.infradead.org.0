Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EAF189167
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:29:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3c6XQz4HMR9In1BfTio3z463kEZ4QrWIrKl3A03krN8=; b=gEkWO4EilDQWZD
	7J00b3TJKN1YCNWWV14iBahIVnAEEJ9Kd/wEDa1dQm5J7/gf/ozO6RYxfrOWJVJA+YR+/ZO0gunNc
	2StXyYI7zJeLplOfOmhlaKQ6Iu+j6To1nYQcmCsPolBqXfWsXxSYlGxLcDhlJA3r9SfMQdjdr2Y5o
	9WGlhK0hjXfN72txNKrHYQDJJt4r71S0w5n7qZSgWE3tq2KEZeulBKKKdokYsuWixCL95OMtabO+a
	o6sjpLvGCTl/gMyFsvjOPl3GQOLLRSnmqiuwY8kuuatyNSzM3hAh1qrKEtj8V5AYgul5xHKR+6GSs
	p8lqngs30UWON7Nd2cCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKhn-0006NR-IA; Tue, 17 Mar 2020 22:28:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKhW-0006MA-9R
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:28:43 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B417206EC;
 Tue, 17 Mar 2020 22:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484122;
 bh=nSKGWbY4Xs0O2GbOiu9elNNIPUWgp5PLlLYc0r4SxlU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZSdwp9LJOAm3ym1cTxWYVEucpwrEX3H/BIVsIAoIM2ZOtQzMenEAThYBt2+rBHGPb
 8inuycHItk/k2YHZd9WJdDBd4sT+mNR1u6DhmlITwlo156HlmMFoYJi35G2TzHWtx2
 +sHWD8ImmIC9OgXjY2ZZueruqlU87GQ6SVwhSibA=
Date: Tue, 17 Mar 2020 22:28:37 +0000
From: Will Deacon <will@kernel.org>
To: Li Tao <tao.li@vivo.com>
Subject: Re: [PATCH] arm64: kexec_file: Fixed code style.
Message-ID: <20200317222836.GH20788@willie-the-truck>
References: <20200311073156.125251-1-tao.li@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311073156.125251-1-tao.li@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_152842_350553_F8BFE897 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Matthias Brugger <mbrugger@suse.com>, wenhu.pku@gmail.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, linux-kernel@vger.kernel.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, Hsin-Yi Wang <hsinyi@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 03:31:55PM +0800, Li Tao wrote:
> Remove unnecessary blank.
> 
> Signed-off-by: Li Tao <tao.li@vivo.com>
> ---
>  arch/arm64/kernel/machine_kexec_file.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index dd3ae80..b40c3b0 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -121,7 +121,7 @@ static int setup_dtb(struct kimage *image,
>  
>  	/* add kaslr-seed */
>  	ret = fdt_delprop(dtb, off, FDT_PROP_KASLR_SEED);
> -	if  (ret == -FDT_ERR_NOTFOUND)
> +	if (ret == -FDT_ERR_NOTFOUND)
>  		ret = 0;
>  	else if (ret)
>  		goto out;

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
