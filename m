Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CE1E45D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnqHwOQECXj+MfnNS0vpzgwgQX3YNzpveEMT/byECmI=; b=hcZ4Aup2nNpUOM
	8VHsP2wWLYFzsmbtxM9+2prKswA1fdGFsEMOHEDRaUF+NiyFrQLESUds/S12emVp/SF7SzfSrrlmZ
	AuUiTq0CPNHcnnBGU6gffgtfrAxjgLKf9STZVwcqamW4wQOdyrsr8JxoH8DoxXji6j7VNNUsaakjQ
	D8d6Q77dDmCiFjEhQgRYQWN9tcZp1V73Ed0idYq7ZhCMZj7Zb9Lvr/eUoiS3PJJEjJ5aPWAGU3gnE
	gdFkvgg58I0dnxapnQtDitSBCbFeFyYKDsoCr8wN7OP1M3Mlinmtcxt574Bhii/kKwSiUcIu7QziE
	F29mcNRj3KYbhYywPlBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNv5I-00028u-LI; Fri, 25 Oct 2019 08:36:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNv59-000283-7j
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:36:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id p21so1121619wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 01:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zH6fhJDQ4DcI0IvbaRP4GYERWR/GM64+6SCBGVBvvnM=;
 b=D/Z1dluMcIPn/WkbjBQ4ikinQ/eFoxTiylcePish3K0XRbliy8YkkjHzKai4oKWzsZ
 SEtsn+i0PmLwvXF6A8jd75FOGxIsd+mTEmFQ/SPIq7n/QRYA0UF77a7mcvSpxBFQg50L
 Zbbu4zZzULyWMikqJ2QTYTQ95pN6NWzNosoMX0e9lQplGoYT6+D5iYp4vWzgNPfiyGf6
 tMMuMLDC8+qA/ckJB7AlUvASVtvQsHKXDEX/hBia12sMhwKLLnN0vaaOob67en8sRq9X
 NyPBHVmPuseLG7bFTy4dfZKatYU1cITII7F1Acl+SUfyh9Xi/vEhbHEJLIf/tEKAylVp
 TY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zH6fhJDQ4DcI0IvbaRP4GYERWR/GM64+6SCBGVBvvnM=;
 b=rIJ6tOvI0/lwBGQRDHpYCvKZtBoRrF7x0i+RVE6OCzDpltHwgMCat2a1Iz6jTRpXth
 OQTRIGrGHDQpWNxpNRpZGuzORwFSa1iUFCntoXKxqhTTqAhUAiJ2dV0umT0zj+K+zLbY
 1n7UywBSzYQSAE31HKPVEP2U30EnGH53TJjxhoYumOwbrsvqdE08i9Y4oP2tvoJsJV98
 MtTNtroBqVDnOj8Tmzufrkac2jnQtsAjYd3677SVuFbENxSsJRWh+hEfw3JNpN/J94XM
 XLwB5/NCHjOp738lXTYFQa+ePI78i/GXnfBUCW/++o3YiMs58NqHYE9qjH2fgbR4WXZV
 p3ng==
X-Gm-Message-State: APjAAAW+eiwh1Iu4hnSZRRoivG29YyFc2DZfYYkY7MsrRYv4Mk3mU518
 IsPwNpBormRFH2RQqSRTi4s5Ng==
X-Google-Smtp-Source: APXvYqwkiUM7E12pQJvBKfXuE1sNT+XzGyP73rWBvWClOac5RajXWu6AxvfevVu1SDC1YPoZf9708w==
X-Received: by 2002:a1c:9cc6:: with SMTP id f189mr2230590wme.144.1571992583821; 
 Fri, 25 Oct 2019 01:36:23 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id u1sm1215506wmc.38.2019.10.25.01.36.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:36:23 -0700 (PDT)
Date: Fri, 25 Oct 2019 09:36:21 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 02/10] mfd: cs5535-mfd: Remove mfd_cell->id hack
Message-ID: <20191025083621.rwa3wug67vwapdhw@holly.lan>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-3-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024163832.31326-3-lee.jones@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_013627_281310_66C06E1D 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 05:38:24PM +0100, Lee Jones wrote:
> The current implementation abuses the platform 'id' mfd_cell member
> to index into the correct resources entry.  Seeing as enough resource
> slots are already available, let's just loop through all available
> bars and allocate them to their appropriate slot, even if they happen
> to be zero.
> 
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>

> ---
>  drivers/mfd/cs5535-mfd.c | 14 ++------------
>  1 file changed, 2 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/mfd/cs5535-mfd.c b/drivers/mfd/cs5535-mfd.c
> index cda7f5b942e7..b35f1efa01f6 100644
> --- a/drivers/mfd/cs5535-mfd.c
> +++ b/drivers/mfd/cs5535-mfd.c
> @@ -63,25 +63,21 @@ static struct resource cs5535_mfd_resources[NR_BARS];
>  
>  static struct mfd_cell cs5535_mfd_cells[] = {
>  	{
> -		.id = SMB_BAR,
>  		.name = "cs5535-smb",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[SMB_BAR],
>  	},
>  	{
> -		.id = GPIO_BAR,
>  		.name = "cs5535-gpio",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[GPIO_BAR],
>  	},
>  	{
> -		.id = MFGPT_BAR,
>  		.name = "cs5535-mfgpt",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[MFGPT_BAR],
>  	},
>  	{
> -		.id = PMS_BAR,
>  		.name = "cs5535-pms",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[PMS_BAR],
> @@ -90,7 +86,6 @@ static struct mfd_cell cs5535_mfd_cells[] = {
>  		.disable = cs5535_mfd_res_disable,
>  	},
>  	{
> -		.id = ACPI_BAR,
>  		.name = "cs5535-acpi",
>  		.num_resources = 1,
>  		.resources = &cs5535_mfd_resources[ACPI_BAR],
> @@ -108,23 +103,18 @@ static const char *olpc_acpi_clones[] = {
>  static int cs5535_mfd_probe(struct pci_dev *pdev,
>  		const struct pci_device_id *id)
>  {
> -	int err, i;
> +	int err, bar;
>  
>  	err = pci_enable_device(pdev);
>  	if (err)
>  		return err;
>  
> -	/* fill in IO range for each cell; subdrivers handle the region */
> -	for (i = 0; i < ARRAY_SIZE(cs5535_mfd_cells); i++) {
> -		int bar = cs5535_mfd_cells[i].id;
> +	for (bar = 0; bar < NR_BARS; bar++) {
>  		struct resource *r = &cs5535_mfd_resources[bar];
>  
>  		r->flags = IORESOURCE_IO;
>  		r->start = pci_resource_start(pdev, bar);
>  		r->end = pci_resource_end(pdev, bar);
> -
> -		/* id is used for temporarily storing BAR; unset it now */
> -		cs5535_mfd_cells[i].id = 0;
>  	}
>  
>  	err = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, cs5535_mfd_cells,
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
