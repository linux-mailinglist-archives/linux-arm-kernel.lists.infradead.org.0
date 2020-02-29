Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332C5174965
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 21:45:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UioHO19mZWpn9HemuSnnFJHakXOhGu1PIfE9N2wImIo=; b=Vk6fVujh3uS3gk
	K4zu6kj87qhnf2PVAmdznu7+huGjt4WFyrtwqb3+vcvnatUyYgSYbYqomB7CvzBhAQ0JsdWnsQoji
	nhzcnHZ66ojbcxBSWhMBW0dqf19FtchMc2n0PvgPeR6n514aywencFuWqkHXWHJLViwf2A9oYyQ5f
	7+rs2TaQY/Xbbdqnr7RyZarJUnWZ6TnsIDrjrco4lg6PGXXav8UUjwLwenyfOI7xcSXZxQ3FTPDFk
	LeQixa7NNG4+qMW/LSFH/nyNBIOLpcrOczl6xxC3dOiOl+MELgKbXOinQWGSY30MHzjG6rNSqL/5+
	k+uecTyt/F3j7zO69fkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j88yq-0000Zm-Vg; Sat, 29 Feb 2020 20:45:00 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j88yc-0000ZN-Jx
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 20:44:48 +0000
Received: by mail-ot1-x343.google.com with SMTP id 66so5958574otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 12:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rqrrnhnAhDxDR8DToJ03L+juASOs6Wy8PQ3rH1ycKSY=;
 b=TYpFojaFQdUqaHBll6wgyaBq0JuxhRQyFCiHl2aCihv5uMBc1KFDLDDeMczLWyt8tD
 qnLbcLplw+2WoNzbCgJnxTLzJUgibDfZbhT9vNbt0/enEuXTff8alC+u6o+URMJGyNJ6
 ou1NISRDvkqJtex7bh+3kcVgLSIao7pALFZD+un2PFXr3PJS3k+VeI1R+qVg2jI4wJXw
 L5hTOFFVEbsKWNM3uV0YKQ+t9u+eM/SZ1W/MR2NG+K24z72IjJI5pZ4CTLDqOY2K4PT1
 nii7SoL/cAdaHD/p50gusTVN3y7GcODdwr9wZ2TLWb8bhxiKX9kOGosaY8MhItMZJRCE
 nAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rqrrnhnAhDxDR8DToJ03L+juASOs6Wy8PQ3rH1ycKSY=;
 b=o6HPmR3sLj+iIXMoaBMfBNDzQsnhJmTcvh8HXcMIxoGJBhbhNgCAJvmMfzhyT5VA1a
 HRyS03QPMDJYCPbsdzR6eHKbHyGB+j+IkFwt4iD/PBPRoe2h2KcvhqCfkrszP7uubfbK
 bpbvqXG84gK5iu23bZaWCnJk30fg/CKvZqhno6pB6vKMw4grVngHkm9ej5CBDXQZTSRe
 OemR50FsGnsDz4je1XgBRUoIg1vG2eKI9/h89WTJNC5j1e4hJg0h1lX/TArkrw1QQin/
 IKFD2vHN023M6XJ7ybfeYR8TAAAm+I0j95/cP3tDuRY7D4UAD363Fa0Nfpr8thmoUp/W
 3+Cg==
X-Gm-Message-State: APjAAAXwG/XI1VHinY/lh23IHp+tAXxcfhrQqYSPLJyyxpRs4fR6ages
 MZqyy9CfEAq49ALIsj1v2C7tvtLGN9tVSllptjIqVA==
X-Google-Smtp-Source: APXvYqwuD7hXgqDuHa7bNKr2aGN5ZsRtxcfrMKKpE5k3aRoSjSLBCzEO28z30FjlnmPqDSMCgEWPc3EsieveZxFwGeE=
X-Received: by 2002:a05:6830:134c:: with SMTP id
 r12mr7849308otq.126.1583009084306; 
 Sat, 29 Feb 2020 12:44:44 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-3-logang@deltatee.com>
In-Reply-To: <20200221182503.28317-3-logang@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 29 Feb 2020 12:44:29 -0800
Message-ID: <CAPcyv4hLvciwxSnsQRye9SuB-sy9fm+_6CwZSuHifkmbWQs-+g@mail.gmail.com>
Subject: Re: [PATCH v3 2/7] mm/memory_hotplug: Rename mhp_restrictions to
 mhp_params
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_124446_797791_7256E4B0 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:25 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> The mhp_restrictions struct really doesn't specify anything resembling
> a restriction anymore so rename it to be mhp_params as it is a list
> of extended parameters.
>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>

Tests ok, and looks good to me:

Reviewed-by: Dan Williams <dan.j.williams@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
