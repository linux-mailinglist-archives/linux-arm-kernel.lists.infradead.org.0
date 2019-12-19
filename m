Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835E6125B80
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 07:33:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9SOddyegj7xazh+Xm961r9VyzhzpbgraNYqrvzzNpk=; b=KK7G52hNftoH0f
	7vzCDHAtn5/l61rXq4vdhAvStbtkVbBOkosmu8JfwAKgNHxj6gfIZISGYrmJT7QY3VtVGvXGF8ERc
	/tvifsfzVMFJH1eXQwX8sKuPHmhyqJ8/T1TVsHDgsO1Sz1dTRyGdwsVEc55hJGAv8ZwQBOU3EJ+yJ
	guZM8yfpLBYN5WBUfHinkLVDL1WWhleOGOv+eGTLk9JhuQlv1rsEMwZfNYuWjoylYDBHFSEkVJHlJ
	/HJ2dzjVgpr0XZrq3ZzIKmYiY9GIaaoF2Cdz2u3xYtsGP/vz14aq5wwYJhrpaHRe2v92aIyGRDeBF
	yNlDYNWSDO4ZX5G9QZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihpNI-0005gd-AJ; Thu, 19 Dec 2019 06:33:28 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihpN9-0005fV-Dh
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 06:33:21 +0000
Received: from zn.tnic (p200300EC2F0B1C00F1A577DA89A48CEF.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0b:1c00:f1a5:77da:89a4:8cef])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D82261EC0591;
 Thu, 19 Dec 2019 07:33:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1576737198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=A8v0UScqy+VRCDlp7lUVd1ltvewhL45ATvd1nYKuRsc=;
 b=lLeJypJQfPDH+3H4SlQKaWlSj3Yy1nMu9DplKTE4kBJAHU8R7JpDa9qVC5XR6RTEEANawI
 8JCxfRMwDm5EFjj4X0pt2yTnXGcADEDrD1t4oUpRrassvg7Toaqnyx4j/TGqpAfbYX+j23
 dS56sEWwbyaidzW8tKAo9cKXBmvOAqo=
Date: Thu, 19 Dec 2019 07:33:12 +0100
From: Borislav Petkov <bp@alien8.de>
To: Xu Wang <vulab@iscas.ac.cn>
Subject: Re: [PATCH] EDAC: aspeed: Remove unneeded semicolon
Message-ID: <20191219063312.GC32039@zn.tnic>
References: <1576648806-1114-1-git-send-email-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576648806-1114-1-git-send-email-vulab@iscas.ac.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_223319_623830_D7E107B9 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tony.luck@intel.com, linux-aspeed@lists.ozlabs.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, rrichter@marvell.com, james.morse@arm.com,
 joel@jms.id.au, sschaeck@cisco.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 06:00:06AM +0000, Xu Wang wrote:
> Remove unneeded semicolon reported by coccinelle.
> 
> Signed-off-by: Xu Wang <vulab@iscas.ac.cn>
> ---
>  drivers/edac/aspeed_edac.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/edac/aspeed_edac.c b/drivers/edac/aspeed_edac.c
> index 09a9e3d..b194658b 100644
> --- a/drivers/edac/aspeed_edac.c
> +++ b/drivers/edac/aspeed_edac.c
> @@ -243,7 +243,7 @@ static int init_csrows(struct mem_ctl_info *mci)
>  	if (!np) {
>  		dev_err(mci->pdev, "dt: missing /memory node\n");
>  		return -ENODEV;
> -	};
> +	}
>  
>  	rc = of_address_to_resource(np, 0, &r);
>  
> @@ -252,7 +252,7 @@ static int init_csrows(struct mem_ctl_info *mci)
>  	if (rc) {
>  		dev_err(mci->pdev, "dt: failed requesting resource for /memory node\n");
>  		return rc;
> -	};
> +	}
>  
>  	dev_dbg(mci->pdev, "dt: /memory node resources: first page r.start=0x%x, resource_size=0x%x, PAGE_SHIFT macro=0x%x\n",
>  		r.start, resource_size(&r), PAGE_SHIFT);
> -- 

Applied, thanks.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
