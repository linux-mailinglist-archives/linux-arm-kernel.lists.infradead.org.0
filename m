Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4F11BD16C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 02:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SaWc45p+cGkh5gSppHbUIQ70J5bX3xXNlTbAoHOjiJo=; b=mkqjKF/b2nAMsA
	7gvrmoZw2CWEm40OzxlYJ9XV4mV5LKHFZiDcmnT3UQcqaPAbmgEYCW8f/ZFNNhZ6j1SXbp4rqYIn2
	+8Bb6jk85eRWCViWShJEblyFUvL4MNwC9vPCYohQugoGUpb2XnRRdlW2iawJJNErbkHMDpqBD2zDv
	gFfkwgXzrsC/LT2aZdbFakOag0LzD7sE+Mi74vZXY+u7nv53MMzbOXpqnG/WOVSmCzeU0a8MDUlKg
	wUs+mHBDUFOvCfwoR48QRb59C82bomLhhWqJdMUm8hxTXiSE5slvErwcvEPfgVkpqaUuWTf8Z+jGv
	Jf/uO9lmKkj6Q8N2YtKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTaxd-0003sj-QG; Wed, 29 Apr 2020 00:52:25 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTaxR-0003rz-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 00:52:15 +0000
Received: by mail-lf1-x144.google.com with SMTP id y3so233970lfy.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 17:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YuT/xOY+th6eK/rHxIuv+OueW2AvaS5G3o5QXDKsWZk=;
 b=2PRDAe4jqELbkHosMLEoi906nCbFHQSecbav0lfwR6eYYgY372mGh4nRfMuvEOOvED
 +qC50YnVtwF2whxzMWxyiLVqPdHwVXn31hDhFL87VDzoFhZ/nvkx4/SqLEKvoZMUFN5K
 HhJjhBfKPgi3E/6odf0mDQKF4mfgdtELBlpF756FPWVu45nwdkJX2u3wqne0avMiiLtw
 Dd1h5P0BM1Jtm3jCVDvTZoOE9a7x5oCOB7dyl2GuZ0RhnVSDro6aJnu42uwtQat9E7rN
 OQsXlPpjUuZJCCGhxW0ayBVzlPBMlcvRaboDp8fJfxr4FG8JmzD7ZkfSiYObk8qvfwFG
 1rmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YuT/xOY+th6eK/rHxIuv+OueW2AvaS5G3o5QXDKsWZk=;
 b=U36AYbP2tSW2D7N5wVL5vvZnxlNKEBRZzSs4c7WARunQSaY8ZsrRXLBJOHL1Vqhy3Z
 Lrpbm5BCb9nGPAhjGsHDAVR4zKu4PAOMSFequZiisEKhlcvwWftYEUY/PjfmQ7dxxanr
 VKXU7coLXh79BMAIUs3it42TkIAjitXyLe0tJ1r0IqEcpApCe2k3NjOCWB6RI2DC91hx
 9vPaQ1TD4CnFqj2JVjSl2dOWion7jZvNsK0ATwx8GjHTEDswGsiGff3OdcjC3SSDlGhV
 twhWaVg3nQDXijHvRSeBnhIQ4jYFNEfuVYzkLkIfDdsNYOtqqiY145RCCrPpZVD5tWsK
 e9AA==
X-Gm-Message-State: AGi0Pub/88X5qzhL6iYe+Rsd2KeYjEhQmMYDn48VUTcPOcdSfMMoFbjA
 Dh1obyMH47mU/UXz7v1XCvPQiA==
X-Google-Smtp-Source: APiQypJR3g8SZEsvHcVIdxhOYxzG8T71U5sfYmc5ejCyTx1rQPoRNFqAuJxd38JO5R75Jsx+a0tnlA==
X-Received: by 2002:ac2:5611:: with SMTP id v17mr20733406lfd.137.1588121531721; 
 Tue, 28 Apr 2020 17:52:11 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id j15sm803395lji.18.2020.04.28.17.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 17:52:11 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 20CC910235A; Wed, 29 Apr 2020 03:52:22 +0300 (+03)
Date: Wed, 29 Apr 2020 03:52:22 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 7/7] mm: Set pt_mm in PMD constructor
Message-ID: <20200429005222.3hwe73qsp7l4rxah@box>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-8-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428194449.22615-8-willy@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_175213_720987_00081823 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 12:44:49PM -0700, Matthew Wilcox wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> 
> By setting pt_mm for pages in use as page tables, we can help with
> debugging and lay the foundation for handling hardware errors in page
> tables more gracefully.  It also opens up the possibility for adding
> more sanity checks in the future.
> 
> Also set and clear the PageTable bit so that we know these are page tables.

As far as I can see you don't yet introduce any checks. It makes patchset
somewhat pointless.

I'm not entirely sure how such checks would look like. The single page
table tree would have at least two pt_mm: the owner and init_mm. Hugetlb
shared page tables would make a mess here. Hm?

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
