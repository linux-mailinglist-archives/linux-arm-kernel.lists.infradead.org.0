Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E3F8F315
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oont1M/1xXRGM2czizFlluNUH6ziBTzsl6X2yW1mwsI=; b=OX3xYRcrY4AqTG
	Gde8PZiZLVaZkyVguvSLMoLwGgq/KqSWNJqclwDshQUV8Bs+4fMOjXOSnFhUyZsyAcN9gZpsFoonF
	p1GrH3FgExLm1VL/mUu3tLunFSnlVyN3TAS+Hp3qhN7qOAeHx8nWi63lv7sawGbbf0TSszd2Y4Zq3
	TfDjAToTAcuKSm6V+D61BMx2NR5hHjltNFgVCWGYjafGaLH+EMcdHU0sOegO63StQNXE5DkY130mv
	PZ9jKMvYRx7W9sjPF9wZ4syzTFo1AFpaP8qskaDGBSKKE9yaL60TBrjBX9xARQJrDyUe/gamwhXYM
	3xicwm3IklZO+ewEVSEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKL3-0004Ra-3G; Thu, 15 Aug 2019 18:19:05 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKKr-0004RB-2l
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 18:18:54 +0000
Received: by mail-wm1-f68.google.com with SMTP id m125so2011414wmm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 11:18:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5leAgXssmuJq/e90a7MyYuV3K+kXUHUhhkOK+kGTeCI=;
 b=BYxKey9F4ZkYHHRxCCC8uoUJwRiObqiFfulDmluqKuE6xR0h9aceJVESzSNN+0Cq/e
 +KETzIZCPyRsxM/hU0zXkEnbp5XDqRwQRvmwWfI3KQdDTK7Tmg8V/I42l43LWgpDI12m
 bIG3TnRgwqaj8wtCXCN/LoI1KiDrtdydnEM8m4bNYTOXOGgYf6DQUuYio5+IUGBhT78C
 CGlyVLbuTvxuBW7sgx4ueIMTvySbOuFe9oNoYfrjcG0828jFHbcKBNN5dKh9+t3LIr8R
 t2vyvfqE5jE9snj8L3IFC4OMVzLSTQOhsVUw9vnoPR/htS1HHDiZ3UzmovMigh2lARUG
 VgLg==
X-Gm-Message-State: APjAAAVUP6PsoACyI3HIPl9rzPutTkwj/54P31l4qu/nC+4+k4n6Sold
 5za99PJk0asSgmRoGTRwusc=
X-Google-Smtp-Source: APXvYqzE6ItclCocP3PgZPG+mo57YgFsf9InExOzUcHhgjzT41/UMFtc8ufAeRAqH3HuEm/VsIuTiA==
X-Received: by 2002:a1c:7e85:: with SMTP id z127mr4016971wmc.95.1565893130728; 
 Thu, 15 Aug 2019 11:18:50 -0700 (PDT)
Received: from kozik-lap ([194.230.155.124])
 by smtp.googlemail.com with ESMTPSA id v65sm2874829wme.31.2019.08.15.11.18.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 15 Aug 2019 11:18:50 -0700 (PDT)
Date: Thu, 15 Aug 2019 20:18:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v3 1/9] soc: samsung: Add exynos chipid driver support
Message-ID: <20190815181848.GB14360@kozik-lap>
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150850eucas1p2aff64b5edb49ffb6626433de1c9e58ec@eucas1p2.samsung.com>
 <20190813150827.31972-2-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813150827.31972-2-s.nawrocki@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_111853_126569_12DA72EE 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 05:08:19PM +0200, Sylwester Nawrocki wrote:
> From: Pankaj Dubey <pankaj.dubey@samsung.com>
> 
> Exynos SoCs have Chipid, for identification of product IDs and SoC
> revisions. This patch intends to provide initialization code for all
> these functionalities, at the same time it provides some sysfs entries
> for accessing these information to user-space.
> 

Thanks, applied.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
