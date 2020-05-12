Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534291CF56D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyAjgraCioOW1CnfHtChRj5UeCUeylXGuPiPegClXgk=; b=sPRVSTb1A21hYn
	P/d3ElVXcCu7Lduz8qLdnpZYoHS60H/U33Gz5RFYMA1rFMYhDb/dSabzM2EQFShsjlXfKGx4fMcug
	Fj/yIkJllE56JT2p25gbZjWiDKAsSyVzgG8nuRdrGO3E+zjmRNTeTzk1M2Sa8rKX3Jof8JkWzDl8i
	ltuT6Og/HJtvaaw4IamyPdNYNaoI6zsR2tsWmTF6c2GGfgBa0y95gEwihfiEWi2UwpjWlO3+WUoPV
	AmV8cIhLZ5Hqdp2N9QEHNVqjhjHmB1/gtG+8abOTuCEfQyE80RVKLwV9RMEJ+C2zgDKy0iMjz1tRh
	tStbZX67HQOMGRP6inJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUmB-0003n6-TR; Tue, 12 May 2020 13:16:51 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUm3-0003mS-8N
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:16:44 +0000
Received: by mail-ed1-f66.google.com with SMTP id s19so719493edt.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 May 2020 06:16:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NIwzJl9fpDrjOBLjiihFDvWgheTrbFtBuLTM/ySrEf0=;
 b=e7AuNKJyxGzfuqdJYSPFbMBL5t7paG91x3EqU9+xeunZfNHmduta82bpZ7z1zGVdj2
 +2nLb3KDcjD+gA/d+cSgqq04Eo3ncbRM9xTA/mgl30fbHInR3bhOrLs5zkiLKq7km95j
 9HZBKp/Pm+ggWdcwgPzGUAJPnMnlHZFX4M/fnZdjE2KqeszKnYYxJz2QgKmVm4XL8swj
 lGDv4TlJV8wpwib2d6n+RGaJPHD30/gkj4tt21Of9GahnmxgLm6uboSfVOOC9yYg8Z5p
 KWjo7dlFAluu2mvDW02SuVKc8W17hnrxiKgSgcRvd3RWY2Y1Q5pBhiUVO6rJIZTuYzs5
 Y97w==
X-Gm-Message-State: AGi0PuZMlLng+LjnG70ftX+9zzuSgheyxzs159OaHNNAQii4BFe6DfWK
 eUoeVfHf0Z6ypSI/QpoHaoc=
X-Google-Smtp-Source: APiQypKTjaJ85/GzsRb13MsiaK4dm1XvENOhWOccmQ5NP1MCWiE2Pzk3YZiLUFGIowz6AxyTfcUsRg==
X-Received: by 2002:a50:cd57:: with SMTP id d23mr13372694edj.181.1589289401350; 
 Tue, 12 May 2020 06:16:41 -0700 (PDT)
Received: from kozik-lap ([194.230.155.237])
 by smtp.googlemail.com with ESMTPSA id n9sm1620876ejs.0.2020.05.12.06.16.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 May 2020 06:16:40 -0700 (PDT)
Date: Tue, 12 May 2020 15:16:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Bernard Zhao <bernard@vivo.com>
Subject: Re: [PATCH v3] memory/samsung: reduce protected code area in IRQ
Message-ID: <20200512131638.GA18782@kozik-lap>
References: <20200512123149.40162-1-bernard@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512123149.40162-1-bernard@vivo.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_061643_299178_91A06592 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: opensource.kernel@vivo.com, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 05:31:49AM -0700, Bernard Zhao wrote:
> This change will speed-up a bit this IRQ processing and there
> is no need to protect return value or printing.
> 
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> ---
> Changes since v1:
> *change release lock before the if statement.
> *revert dmc->df->lock mutex lock to protect function
> exynos5_dmc_perf_events_check
> 
> Changes since v2:
> *Improve subject and commit message
> 
> Link for V1:
> *https://lore.kernel.org/patchwork/patch/1238888/
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 6 ++----

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
