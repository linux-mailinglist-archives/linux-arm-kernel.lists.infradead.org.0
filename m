Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AEDB48C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeVs67wsHabSBeeX9kNWb6SqCkrj8TUnXbJPET7UQBg=; b=EJKgYRQYzP5wfv
	jQsBjUG1tR9WKoVPDUVmrF3J8HIdjYBIO3wjltmg36N21ZnwkWZaDUWlWfwxq0b5cDb6lMo7aAAZg
	ZTgC+GindmniJVuyE4/ZzvGmmZUEBmJGh8Fi5TfFlLiwurg81NQIoJ8yBRu1GcvXhaCQZMP6Hf+US
	bpDzzYeqBuVa6ryCKcnEof/xMDkByVutaE/HQlHiG85ZjfEF6OTvMLyvH3KUzxucznahSSObuNWuu
	Wq6qhw9p5EZ1z4wvKATJDy6H4NK4kyvVvNmdKrctpuI8clRi5EYBzE6IOB6VDj/iBIy3gzCJUlu8f
	0161UC/0GinP8C4VAj3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8VS-0002qy-Jg; Tue, 17 Sep 2019 08:06:39 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8V8-0002qE-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 08:06:19 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 7546120897;
 Tue, 17 Sep 2019 10:06:13 +0200 (CEST)
Received: from [192.168.108.37] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 17E4620840;
 Tue, 17 Sep 2019 10:06:13 +0200 (CEST)
Subject: Re: [REGRESSION] sdhci no longer detects SD cards on LX2160A
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Adrian Hunter <adrian.hunter@intel.com>
References: <20190916171509.GG25745@shell.armlinux.org.uk>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <b19a0640-5d71-a005-eb0f-c6840f181e5d@free.fr>
Date: Tue, 17 Sep 2019 10:06:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190916171509.GG25745@shell.armlinux.org.uk>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Tue Sep 17 10:06:13 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_010618_400431_5E3C73C3 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mmc@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/09/2019 19:15, Russell King - ARM Linux admin wrote:

> The platform has an iommu, which is in pass-through mode, via
> arm_smmu.disable_bypass=0.

Could be 954a03be033c7cef80ddc232e7cbdb17df735663
"iommu/arm-smmu: Break insecure users by disabling bypass by default"

Although it had already landed in v5.2

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
