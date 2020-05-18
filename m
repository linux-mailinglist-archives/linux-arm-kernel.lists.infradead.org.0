Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 190E71D7D8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:56:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PEsXTdCNQh7cYJDl4vwkm1ojvKb10wPQKS8nWlEOSnM=; b=tcuG+tjPl3FGqw
	PSS8OJt63b/uCtmOXGO4V5fERpIakjkcugQjNjm+dXfaAI0uBk8Tp88hFOKXlFtK1mEeG/KhTJqc/
	MO5Qm0dhYj9wqD12HomF6p29hHlQwTPYd3K5IYxmksjNdAUbH0gFHrL3ul5lEs9wrr/GoGmvDzPCE
	ZesYpKh7SYINJn/eUDFLf3O9NVj/B03gndycnEFD2BZ5ZmkyMgu41vObx/q7s3i79QTZDucnYA6qT
	7nyN1oOOWAzpsQODHQtl9kh3zgbnZXOhsCLYJ4ZXY5OD0TJ6hGkip09/PW7DCmgU7pQudCL8rbi7r
	uSMB7MfgH+ubcXP16jcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jai7x-00010p-22; Mon, 18 May 2020 15:56:29 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jai7X-0000ly-1c
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:56:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id l11so12563904wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 08:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PtEh/eqO/jcM1mnHH6fVjI/HimaXnKzbvkPLBE0BPVI=;
 b=jUCcan+Nms1s70qgGIq39zMEO6T5qEC+yiZdoFL9PBCRCkQs5AUHTbRiAcAhI0lZ5y
 2+Xqnr+pY68Sd5tq2onYhMA4ykp8LFiKYIRuP62Tjcyht8aAEHNMnfZpwNkyY8DQ/ZaM
 8E2Tp0Xk9TIV1TBt455W9oAIvkpV7TtDj0yaluNRAygGidNh5suWfslpRiEe2ie6rdqw
 pPWH5//rz9ABUSurZU0iRUWSSwBn6VuDmMOOLPgzRndHHNsX1Ea7lwYtnxR3ZDqKdEBc
 PRz+Yvvizttbarx8SUIfvLvxYIyB29jqXPparoMQreul88KBAGoPE/XtONTIkm0DNYj0
 lFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PtEh/eqO/jcM1mnHH6fVjI/HimaXnKzbvkPLBE0BPVI=;
 b=qayTesVJEdBn6h17Ld8a6YkQ8Y4eYgD0JegVFTEhIrVHMoxLeLc02zXFYcZMsQFo4E
 oORFjTvuCAPvGHrVGRo6RQGmWR/ww5Z7TxgJV+vevSbu1ibvWW2Z+rDot/X9w8ImyxYp
 WPSPYn4YWtIqUBSvBzWG/UGKjj4I+O4MUtUBkFIi5Zu80zmoz0AIh9XiO3jvICAUqVFt
 GdOmbf3t4xtfoM3u337eYIHjSoHw5FdPbiXrfkfm9CTElgTX6JDjBG+oFowRhgaOhOsT
 K5J8zap4SpmTd1dbj4PVpO8eyHgwbu3I3LQGhpkceZuzhD+Gxyu02mxFp38qdDh7qVRj
 Rd4w==
X-Gm-Message-State: AOAM533W3oLip5aWjlsZXBwUGUUnDN5cs5d3GzH94fHxO3KlupWHLZZ9
 WoNPLjJCm9FW3rQTl35AX5BGkw==
X-Google-Smtp-Source: ABdhPJxt1Zaz2JVaB0TU+GicXYJwo+95dXbld8dQov8mZpcW9twBDQrd3PgWr5SfeOkk5/wD0DEL0A==
X-Received: by 2002:adf:cd88:: with SMTP id q8mr20999524wrj.67.1589817358531; 
 Mon, 18 May 2020 08:55:58 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:109:355c:447d:ad3d:ac5c])
 by smtp.gmail.com with ESMTPSA id v126sm13452wmb.4.2020.05.18.08.55.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 08:55:57 -0700 (PDT)
Date: Mon, 18 May 2020 16:55:53 +0100
From: Andrew Scull <ascull@google.com>
To: David Brazdil <dbrazdil@google.com>
Subject: Re: [PATCH v2 04/14] arm64: kvm: Add build rules for separate nVHE
 object files
Message-ID: <20200518155553.GB147668@google.com>
References: <20200515105841.73532-1-dbrazdil@google.com>
 <20200515105841.73532-5-dbrazdil@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515105841.73532-5-dbrazdil@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_085603_132339_ADB8186F 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 11:58:31AM +0100, David Brazdil wrote:
> diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
> index 7f06ad93fc95..13850134fc28 100644
> --- a/arch/arm64/kernel/image-vars.h
> +++ b/arch/arm64/kernel/image-vars.h
> @@ -51,4 +51,16 @@ __efistub__ctype		= _ctype;
>  
>  #endif
>  
> +#ifdef CONFIG_KVM
> +
> +/*
> + * KVM nVHE code has its own symbol namespace prefixed by __hyp_text_, to
> + * isolate it from the kernel proper. The following symbols are legally
> + * accessed by it, therefore provide aliases to make them linkable.
> + * Do not include symbols which may not be safely accessed under hypervisor
> + * memory mappings.
> + */

nit: the prefix is not '__kvm_nvhe_' rather than '__hyp_text_'

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
