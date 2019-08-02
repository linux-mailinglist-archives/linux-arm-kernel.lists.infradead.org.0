Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C06A7FB56
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 15:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XWTNQ0/NZbLiaDcB00Z65py6/DubpdRRF2ABooA7cw=; b=pQyBtYTxTgz7jC
	3evA16AbZe2dwdlPcdwFB9A/MT2gvBCRi5bH6gGJ9nULFphdwj0h0GW9coEeQOnLMnrF8Plrn+als
	CeKShiIDlXKPl3u4lwx31H0x82hf88c/O9CqPGpSwgJeMk82h0gKrTdNTkZGHPz85kJ2CNuL4kEg/
	o83uTmD1qoyB74WluedJpVLi8tyB7tScyySDYwjIdO0RIkRmNKFBeVvVoXPWW/Jnw40dkf+oEiKtD
	imGoGPJ15WMHWtMnqvWDtvyBwBM4IcrhNaZxs+jX0rGyrcIhvHtVWnVPXz5NLxmJutnXoy2oBG+XC
	ucL5HeC/428DkoJ19LqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htXrK-0000BQ-RA; Fri, 02 Aug 2019 13:44:38 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htXrE-0000An-De
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 13:44:33 +0000
Received: by mail-wr1-x441.google.com with SMTP id x4so24074207wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 06:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PNAMiOH+KosAOfYs6ZQtMwro3Z+vEfTrrxaffk0uncw=;
 b=NxwSMQH0vURU2W7+Q0c9vrt0Vwrgyu94uuj3bwLxRVMOwmF4uqRIsMaAwkj8hTLEw8
 F1owxyRhpAQgSTovu/e2I52MO0Lolj2UMZgkg4JcrL+hRFdAcKRup/OvDhVaw70ZQq+V
 uvvKNDR+Zb5oEGRPzvhI8ih8UF3S+73PGW6eEUsbVjiCwgXHvw6DNRw+aCeSMRfJTbc/
 Zv0NbVhFgaJBPIctMWHtB1DCNZF8m2HZ8kKkoUGbtw3giIBybfz1dL1m33ixcvo8XwhC
 49Vev+h9RdY7NHBCJpy2RRnrcKCF4RI0N6QcyA75OUDODMM5Q8sFHIyeOO2WY43RnnWz
 JQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=PNAMiOH+KosAOfYs6ZQtMwro3Z+vEfTrrxaffk0uncw=;
 b=Fcg85ZjLL7dCKn1OkNp6RUT7Pdf0vHNtrapueq9pWhNUyPDCj0QXSqfOtX6Y97isy5
 KNOWluOKWAj9nN0PDAWCDSys7RpI6k2m4fWVCdpiG476YzzZbgE5HhcQgPUVrxJXZQ0B
 LAOb44gfHlfhgb+JB4KraYZiC/KWx2DT6yI6fWPXIyJoDbwDqNXRftxq1Pq7yXDBMrtB
 3i6fdpVM3a3uEHw8fGYsZir4bGIpj9ARngrncHKUHPO229K5hjirndlQS7qOCnHLFpSH
 idZDRKUpAenW6Blbx6LLKgTbvKPJ1iNnHIRh9MIvJqaSdiDsPwPgNlDe82SLg6WNxikC
 Bd+w==
X-Gm-Message-State: APjAAAW8BJ0X2av0eHQxL47RyfsSysPkffJEnpdmP7is3QgyPVaQHwoL
 aqNeTepFcGo/lTyD2EySh90x/KQy
X-Google-Smtp-Source: APXvYqxZf4Umt0uqJeK5AzqQ3YwB8DEWEFy4owFZTJg4xeIJXE8GO65jbt3iPMWS9EZ8KzsKnTHfxQ==
X-Received: by 2002:a05:6000:187:: with SMTP id
 p7mr22834655wrx.189.1564753471024; 
 Fri, 02 Aug 2019 06:44:31 -0700 (PDT)
Received: from rric.localdomain (x4e375ad3.dyn.telefonica.de. [78.55.90.211])
 by smtp.gmail.com with ESMTPSA id
 i18sm99708446wrp.91.2019.08.02.06.44.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 02 Aug 2019 06:44:30 -0700 (PDT)
Date: Fri, 2 Aug 2019 15:44:27 +0200
From: Robert Richter <rric@kernel.org>
To: Jeremy Linton <jeremy.linton@arm.com>
Subject: Re: [PATCH v4 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
Message-ID: <20190802134427.dmclik66zcgxapy3@rric.localdomain>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-3-jeremy.linton@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801034634.26913-3-jeremy.linton@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_064432_456384_933A9919 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rric.net[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31.07.19 22:46:34, Jeremy Linton wrote:

> @@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
>  		if (topology_id < 0)
>  			return topology_id;
>  
> +		is_threaded = acpi_pptt_cpu_is_thread(cpu);
> +		if (is_threaded < 0)
> +			is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
> +

I think the return code handling is error-prone, as in the kernel such
functions are typically used like:

	if (something_is_thread) { ... }

I see this is due to acpi and arch code separation so we cannot simply
move the fallback to pptt code.

So maybe we have a static function cpu_is_thread() in this file that
handles all the logic and directly use check_acpi_cpu_flag() from
there. However, code may change here in case of a rework as I
suggested in patch #1. In both cases the acpi api is more straight
then.

-Robert

>  		if (is_threaded) {
>  			cpu_topology[cpu].thread_id = topology_id;
>  			topology_id = find_acpi_cpu_topology(cpu, 1);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
