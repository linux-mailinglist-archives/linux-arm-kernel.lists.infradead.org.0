Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E023D193805
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 06:43:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKyQffgewysoyDpsRA19843h3ieAnJYrLVHNQLjHASw=; b=pYlnsY76E8zSqa
	SkidLP7OuGM+vCnfwA7SGQ+c+VsrGz0uZtL0JU6o53IJBsydIJtr/m0QxquAGG+2P5mGQML10Qh+r
	PCFJtp1XTLda3SC6csbwArbkQD4RVy2HVax71qYSzSztA88QSS71V1SZczr7AGD2FCSEslt6qchoM
	ac6Am6QlDtnY9rGBYydEXb11/liFxbLBScrgMR8jO5hzpnSkMRyX4o1SVkTuIGEBfd8qmTbJX0sfn
	SPmLLi0tnTZ5sRl7NcuGWREOen9+tqwrwLT9+Yxn5ec2kWRxWexAyNnnvRtcDzGD9llG6DDheQrGl
	hPHuagC3/iswxg8HebOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHLI2-0002I8-9Q; Thu, 26 Mar 2020 05:42:50 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHLHs-0002HF-7b
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 05:42:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id u68so2244137pfb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 22:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lJBGxRctjvtRkYzCqhBiWXNr6fl3LKIu3bPffT4P37Q=;
 b=xN/aZFC3ywkctbct64T9SINp67QHK9DwBCHBXcBs0FP40E5s+s9fCTok4tvNQCqDE+
 L0HFx9UYuKYsHC5iz5cIrIYQCB/b9ETHQmgipbTr9oUNgSA/215Y3WoY6y+Uz92fPbSe
 XrBwg14hsA3gUwlFIJub6Ocyn/qadeRov99TL3mNE3jLPT0wo1gaXP0XskUvd+pCmrvW
 Tv4s9ChbrZ77NxWYJhGUQkbU+8kkUKJ0TleFtzpqxx7sEGDldoLR0V34KZlW2deIaF6k
 01wKAVnPQC0gM161neggvyqFe7HM28zTxM1mwd/YDCy4CsVV1MCJ943ffx9E4NNb1ZUC
 cn4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lJBGxRctjvtRkYzCqhBiWXNr6fl3LKIu3bPffT4P37Q=;
 b=DVERYKeADqIyqvsxa36D/pePV5p4wxFdJP0OiMNr5VGGQJDeiU82LOl1PoEph2tkGh
 cR252RhuyFx+k4Pq5w7LlArA9O2uNMMXE+hy74vypTH5ZpVAlstxrXiWelVf136Reg9F
 XJx8PygGD19CpDoTsLAO2bew3gMMF+uvhkBA08Tlb9qt8u/lHbzRSe1WVC4MqalvQgzZ
 10BLDdto7yf+MvlxYO2bh+I44DtGrz2fGS2LhKz3of2GO68VycUqRQoOebhFxVDYhDJe
 OwtB+VO/D5YvN8qoAPAWD1KRxyQEY6vVSn0oaG2yN7u5ty2XoTM9D9znva90gre8jPe8
 ZEzA==
X-Gm-Message-State: ANhLgQ3AU5GVcXbXXsTic7vPGOu1QZZ/Kc76b2yB88GCkXVLDSZTamO2
 ybty/wxbPE+wOVJej7ECVoXlvw==
X-Google-Smtp-Source: ADFU+vv9QFRgclZ54bBY7BJnL7ZL1CHe2/kxdDOsKldUA/e7jUAzRpU6ZAtzDKz3uD4UzX/kxliB3w==
X-Received: by 2002:a63:602:: with SMTP id 2mr6651318pgg.356.1585201357185;
 Wed, 25 Mar 2020 22:42:37 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id y9sm751518pfo.135.2020.03.25.22.42.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 22:42:36 -0700 (PDT)
Date: Wed, 25 Mar 2020 22:42:34 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/7] remoteproc: use a local copy for the name field
Message-ID: <20200326054234.GA59436@builder>
References: <20200324201819.23095-1-s-anna@ti.com>
 <20200324201819.23095-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201819.23095-3-s-anna@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_224240_308528_C6972223 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Lokesh Vutla <lokeshvutla@ti.com>, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 24 Mar 13:18 PDT 2020, Suman Anna wrote:

> The current name field used in the remoteproc structure is simply
> a pointer to a name field supplied during the rproc_alloc() call.
> The pointer passed in by remoteproc drivers during registration is
> typically a dev_name pointer, but it is possible that the pointer
> will no longer remain valid if the devices themselves were created
> at runtime like in the case of of_platform_populate(), and were
> deleted upon any failures within the respective remoteproc driver
> probe function.
> 
> So, allocate and maintain a local copy for this name field to
> keep it agnostic of the logic used in the remoteproc drivers.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  drivers/remoteproc/remoteproc_core.c | 9 ++++++++-
>  include/linux/remoteproc.h           | 2 +-
>  2 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index aca6d022901a..6e0b91fa6f11 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -1989,6 +1989,7 @@ static void rproc_type_release(struct device *dev)
>  
>  	kfree(rproc->firmware);
>  	kfree(rproc->ops);
> +	kfree(rproc->name);
>  	kfree(rproc);
>  }
>  
> @@ -2061,7 +2062,13 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  	}
>  
>  	rproc->firmware = p;
> -	rproc->name = name;
> +	rproc->name = kstrdup(name, GFP_KERNEL);

Let's use kstrdup_const() instead here (and kfree_const() instead of
kfree()), so that the cases where we are passed a constant we won't
create a duplicate on the heap.

And the "name" in struct rproc can remain const.

> +	if (!rproc->name) {
> +		kfree(p);
> +		kfree(rproc->ops);
> +		kfree(rproc);
> +		return NULL;

Perhaps we can rearrange the hunks here slightly and get to a point
where we can rely on the release function earlier?

Regards,
Bjorn

> +	}
>  	rproc->priv = &rproc[1];
>  	rproc->auto_boot = true;
>  	rproc->elf_class = ELFCLASS32;
> diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
> index ddce7a7775d1..77788a4bb94e 100644
> --- a/include/linux/remoteproc.h
> +++ b/include/linux/remoteproc.h
> @@ -490,7 +490,7 @@ struct rproc_dump_segment {
>  struct rproc {
>  	struct list_head node;
>  	struct iommu_domain *domain;
> -	const char *name;
> +	char *name;
>  	char *firmware;
>  	void *priv;
>  	struct rproc_ops *ops;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
