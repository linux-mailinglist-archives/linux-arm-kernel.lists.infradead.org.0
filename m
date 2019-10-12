Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE6BD4D9E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 08:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nvquywgSFozTURBSM4uTpZ0pfM+JgcTRCbNGzuNuHkM=; b=hDJ1gO9DkTG4/O
	YTUEc9Nmz58tida6q0580ZtBU0LgPFY9/ZtVLj0MMW2RFKr9axtq8YMWO1SAw6gYKJxhmKys5ZE3a
	NIBTWRkCpp0Cf7Qm7PrSpflxVMGmyEfgfJP79fr/U7Rg7qjUC4ZHIY9U7TP7YupSrAMBRJJqEpkFT
	cQlNTENdvpl4RyDEyU0Csp3DWmcbyJFAjeslbUWsQxb/7Dr9DnuGEdyNJa9nCdArNbCPgAjD19K2i
	ipply/rWUW2O4Cfd906HlQ19h/MO4f2g9V25L5DG38w6F39odYUBsBEf5qrSoS8XOmXs4cImjQwdd
	q+kHlk10hcqq26yN2JnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJB21-0001NM-UX; Sat, 12 Oct 2019 06:37:37 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJB1t-0001Mn-00
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 06:37:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id b8so7004026pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 23:37:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=enj181dZ5QRmkidqsNYZCPy2b+xtjYW3Q1Csrx2TdQE=;
 b=NDdFcZqcvgb1E3tLIlvdDL21maihC/qaIj8y3PAYoWFkjeSjpGsr4lqELXhKXFddoT
 Jzzkk1hC5XFcwcUODp34vVZwxXHBHhzNkVD/ORklAgon5CFD44dfqjmp2TWpd6eXqbwe
 JpFR1EmAnq/OX0MKv4NgyGRKjenm7wOWmIOWOav8Vmkz92PyvpTZJaLH2WeC3koqizV7
 +//i8gcKUOpwccK09/29/Of0HpaGg9uYj1/rtYbgH7EYsa62v6CLDHpM8WxBUWsTZCJ/
 i6lz274qDCZWv5U8/eiZRTvoZHiG5AsozSZxivV2qDQUMa0Uqo1G4F9KPnSI16VxdH9Y
 KPSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=enj181dZ5QRmkidqsNYZCPy2b+xtjYW3Q1Csrx2TdQE=;
 b=AqYw/fWJ29uHLWN7GF3/wUKtZvzatqAOA7AqlfaWwZqJ4WXBNacDp+VCQ51swO3IAn
 FM5f7Um61sEbFwfOUUQIJWlnTPuA1t+FoO5j2gC7bOsPulp4m8QoiVm8SwEN5A5PymNR
 +P6WSd5iOgqBawZhv+t3UxWxmdp+HrkLB6CI9uFKbkzf2E5zdIMRXledkltaPCUgHpjM
 vUGnuhGzocgG+HrttT4a40FTVR3jP0YfKCFa/dN65hHBY5wuxu87KU29eK9GefiJlb61
 GwgX9CkJz7W3hIHmer+3fJGvoGuiQMLsr2bP5UuVXw+6S8Xe1XqaM3KiHQDGs/uASr0H
 hJWw==
X-Gm-Message-State: APjAAAUm+hG8l1d9C2g/t4/xH/Zfq5H+/EhduhqFU72OmzdiFhjSXWqH
 BHCebu6NOtloPKyOHBCeUjQnEDkr
X-Google-Smtp-Source: APXvYqzSkVg6MzYCHOPE0i8n1okTjhUY4LjicQkMl6T0tlNbQu4Zi4KGdjs4SMZNzc7AxMZ3MyASpA==
X-Received: by 2002:a62:8209:: with SMTP id w9mr20704434pfd.5.1570862248058;
 Fri, 11 Oct 2019 23:37:28 -0700 (PDT)
Received: from localhost ([106.51.243.12])
 by smtp.gmail.com with ESMTPSA id b69sm13576328pfb.132.2019.10.11.23.37.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 11 Oct 2019 23:37:27 -0700 (PDT)
Date: Sat, 12 Oct 2019 12:07:25 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: NOMMU: Fix exc_ret for XIP
Message-ID: <20191012063725.GA4813@afzalpc>
References: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570102888-13426-1-git-send-email-vladimir.murzin@arm.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_233729_038318_BC41A936 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (afzal.mohd.ma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, sza@esh.hu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vladimir,

On Thu, Oct 03, 2019 at 12:41:28PM +0100, Vladimir Murzin wrote:

> It was reported that 72cd4064fcca "NOMMU: Toggle only bits in
> EXC_RETURN we are really care of" breaks NOMMU+XIP combination.
> It happens because saved EXC_RETURN gets overwritten when data
> section is relocated.
> 
> The fix is to propagate EXC_RETURN via register and let relocation
> code to commit that value into memory.
> 
> Fixes: 72cd4064fcca ("ARM: 8830/1: NOMMU: Toggle only bits in EXC_RETURN we are really care of")
> 
> Reported-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> Tested-by: afzal mohammed <afzal.mohd.ma@gmail.com>
> Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>

Can you please put this into rmk's patch system.

STM32 Cortex-M boards are currently not booting in mainline, this
change makes them boot again, verified on stm32f429 discovery board.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
