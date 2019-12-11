Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2EC11B4DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43MN9u19eFOrVkMQR67XFj9atfU/uPyGjKbThYQNrzU=; b=bvJebWBjBwYTeL
	5gZdCWtBoDSNX/kb2tuWHnPPL/GqAJpZxTq0wDsUy2lhm/Oz4TBp8kX61F4vs8Y+gp5OtYxL7H6sh
	F7aXfTSNUp27u2yXgCUnzKc//ePqRgx4um4x5rQ5e+ZU7VB8MLet6rwPW/15YzBVmfsXcNKAMi9Pg
	4pAlBift4xVhQD2pBL5MZHzOPTvR/e2GkOyouQLgD+044VDIN/oU7aIx1J7v+UZHzH3/0Q3IZwP/d
	RRmexheOEcku7ZAk9ouvpuCSw951NqvSgtrsJqyq/9wa8xupuvKnRqgvy/Bx2URVg9MUzI3tr4Hb2
	aBxuBj43hMtXHjURLVJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if4H0-0000H1-Bs; Wed, 11 Dec 2019 15:51:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if4A2-0007Hf-16
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:44:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id z3so24576028wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 07:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zTeAMitJBFyTpo1SLC9FDWJuZxg2pIG+EP0HCZfhl0I=;
 b=pOLJCHVHJYDyPogESOHu5eSOC0iZmXtd7Moc1RqXnzMeYrkXXT2uJ6MN+GBcjIldDo
 N1NMWAndifJdnJNZujfnuX3xAPYEhliqNfRumigz/7iXep+ev51u+JvMzEFpirxxTht1
 S/lkPoW8wEQd+UFqCafa6uN+m+ws8r2r33fNZjI4C9Jkkbd4mU959c3nooEd1d0rMm72
 nMUdhdjTR7gKaikD2XYXDfm0Hr4zhYNIYfuml8NF6wUeYNZ6HbKRMFNPk8H7celmF9y2
 pLKwPfg3PKXGEhKpXxODcgtOwjUkqFK0SjgxOgYiFnUJiSyFTJToigREJ56mUm80oBcw
 on4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zTeAMitJBFyTpo1SLC9FDWJuZxg2pIG+EP0HCZfhl0I=;
 b=XsoRs4sZn5bJSFYIgttbKYrhkSWRksqw96T4Mjin+Q2pJppD5/Kzrgo0tFBCtXuS3U
 Z2OEqjGvKpU390GjiSuJ6pIDMlFavXFSr0O4kPugrIUOPMrUWp5/r5/TP2LrSjY7EYtI
 s7q0ClZecU3/m/ZaS1fptSpsBfsyVN2hTCOCyBeslkjimhR3dSXTHh20uU9aOdEIl4bM
 uhCHYNurs9z4Fr/bcZHdgYBQom4v9CZKaPjpUWoY/9PdTZ6Q6jLxdAcp6/kJir44dfyY
 HVADuM6GTBpSshfxk1D/mGBi9HxKOPF+olgF2sdet8sBX9NG0uSWAqJFwSJeQzuF66Uc
 ABFA==
X-Gm-Message-State: APjAAAUxx26RsyogMkA+3GTzq5tw35VFfwuye6uhuLF52Wr6+zoENfvX
 nQ9fJe2cgdtO1Y20ihNHwSwPLw==
X-Google-Smtp-Source: APXvYqyb4Pp7PLP/3DKnjab13q0ueZ+RiAZW/2+2GzBfRU2szkzvYsUcLcSImdIwSLGU5xpIHlfSTw==
X-Received: by 2002:adf:e591:: with SMTP id l17mr404663wrm.139.1576079059232; 
 Wed, 11 Dec 2019 07:44:19 -0800 (PST)
Received: from myrica (adsl-84-227-176-239.adslplus.ch. [84.227.176.239])
 by smtp.gmail.com with ESMTPSA id z12sm2693401wmd.16.2019.12.11.07.44.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 07:44:18 -0800 (PST)
Date: Wed, 11 Dec 2019 16:44:16 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH v2 5/5] iommu: virtio: Use iommu_put_resv_regions_simple()
Message-ID: <20191211154416.GA1927@myrica>
References: <20191209145007.2433144-1-thierry.reding@gmail.com>
 <20191209145007.2433144-6-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209145007.2433144-6-thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_074422_155284_D62B65CC 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 Christoph Hellwig <hch@infradead.org>, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 03:50:07PM +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Use the new standard function instead of open-coding it.
> 
> Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>
> Cc: virtualization@lists.linux-foundation.org
> Signed-off-by: Thierry Reding <treding@nvidia.com>

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
