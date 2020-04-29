Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842211BD106
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 02:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GdlLTKSTBJjhRKsZ5HjxFpBlwLv0ofsxZWeq0kW5f0=; b=Dt78nIqIU3e5VG
	ESL3J7HoPZtVNJ97rmlG/mqluQTxAwXIt/LwIMHSeAkmqbxRlnSF3M6HruDRXcTM01uMLe1V11tAT
	b2b/jbuhY3xv/OGl1kbjKPCyKFU6SJBeuNcMuC3ZspbW2SFOxZufSCQsL8EunIAixwGzfdDFmFv2l
	fjXqhGYb0lcEcv+uZhcLfWUDVKPNAeKSP+vZfkS1W2n673pcICRot2mLpN1PWYo43I8+bYmdoqO8j
	PmEpuX09hGrQOKBDX597ZVb/mvKRZRzO5F8vylfqAeUYxTcrrtU2/H3bb2eB/VPK+YSLfTGfaJ+MO
	BA4xEhv9q93PgRDiYKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTaYU-0004OH-Km; Wed, 29 Apr 2020 00:26:26 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTaYL-0004Nj-9d
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 00:26:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id h4so725234ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Apr 2020 17:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/HiSUgy4HdIvWLjYuum+TqzLflqanBrj+3DX557LOi8=;
 b=aVXs13fuMD8tYTcF8jNfrLhu5ML+wQppMSZ7gwhyeur8B4kC35c5nL0lRaXBfd/aOZ
 Jaq0kP7S16Pzx9p7MRhsx6rGf1LDQeSkACLd6PxCA+6H9QvnpMUKmNGmRW7Wlsd10n+Y
 yKHmpMdNW/bjIOMOkcIXwVazU39dU4xjmdYZGL87YfPZ9DJtmU5NpgBCws4ORuPIQwJM
 JZ2DUtPZbFi9IaPFPG09SDx1Hs0kqJfmmM/b5Bf+VWM7SSSB5Xu5GTnekJP4nGpTU1+Z
 YrWpsRK/K7WUzonyRkIdQF5Wvb9WiCDBPCGvqYi5KGv5gfQkONF5wiCCckmOPskLBjbe
 o82w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/HiSUgy4HdIvWLjYuum+TqzLflqanBrj+3DX557LOi8=;
 b=jKja+gRA9QKQ9ZNYNXoKYnzj4PS+qxUZ2OdWpzdau3meOKhlLa/c8jKU/xJ4iW8/nE
 w1AlU8VM/xRmkQyU4EC2czmeAZj9ALVI6VedkbcpOUh50xeSbGIcVvxRSG0u/hOhoING
 k/jQ2Zp4v+9OyGAFgK1Y3xIQEBF+2RaAczU5atff6XJ7Q3vx5P2Q0QEr54pF/khzytZC
 Uq/Bl4q4SsgNE05SuIXUSc2Yl4kOERy8zdIup81l8DZ/hNShfG9aOdH/vDxaY7Pwr3rw
 MGIV2vE9DTlbtBijfRGVLXkx+z85IaeBdFW8pC8A00KcFshVSdPAaikobpeUUzB+m2eP
 ggMQ==
X-Gm-Message-State: AGi0PuYNC3Wa9RgHnZ93KWK+q+N1SnHxwpXpUHCY673jH3F1QtPSvrY2
 7p10mudkSHgE196Ed/eOOcC8xoyf08U=
X-Google-Smtp-Source: APiQypL3wQKxt8REUfc+hl2eNZBwnCv5lA2SH5VyZm8esm2T3qhBylMrbIltlQMzNtSsO3KNfKA7JA==
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr18799069ljo.167.1588119974899; 
 Tue, 28 Apr 2020 17:26:14 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id b73sm835023lfg.86.2020.04.28.17.26.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 17:26:14 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id F06BE10235A; Wed, 29 Apr 2020 03:26:24 +0300 (+03)
Date: Wed, 29 Apr 2020 03:26:24 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 0/7] Record the mm_struct in the page table pages
Message-ID: <20200429002624.qkhb362moj6v3vtw@box>
References: <20200428194449.22615-1-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428194449.22615-1-willy@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_172617_360713_59D04373 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Tue, Apr 28, 2020 at 12:44:42PM -0700, Matthew Wilcox wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> 
> Pages which are in use as page tables have some space unused in struct
> page.  It would be handy to have a pointer to the struct mm_struct that
> they belong to so that we can handle uncorrectable errors in page tables
> more gracefully.  There are a few other things we could use it for too,
> such as checking that the page table entry actually belongs to the task
> we think it ought to.  This patch series does none of that, but does
> lay the groundwork for it.
> 
> Matthew Wilcox (Oracle) (7):

How does it work for kernel side of virtual address space?

And your employer may be interested in semantics around
CONFIG_ARCH_WANT_HUGE_PMD_SHARE :P

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
