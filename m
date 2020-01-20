Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AE4142899
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:55:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i32TSM7q2T61cJV8CdhYKZZcsOD2/5MYyhafbrOEmpI=; b=nemMLpNbT0iGBL
	UMn/g+WrneCETX2sBYWgqoYv7SOYKYfWwRtU2MFcru+B8w6gazwXzvjUIxBAHbH9RLehecpJl2ITn
	dtN9fTdxyZzRiz3Kux6ju7Dqa/xmmvfy0Wm69kMKe1Mx+vgC2Tue7Pp4Ji2ATBoTUL+iiioq3r3pq
	zP28oy9FvMg9bckB9wVcyYyjhYtjxKgqLrwuVOjI10buYG0O1VbxjBLw6NpGFEB59TVXDY+nfx/TJ
	qWHcz3ttBbgYG6s3Iw5za/1X4kCDCLRhfU88B5WxzM5HaWG75sezcGOfslgBNYwcVRcigzJSzHELm
	caRSVP+vPmuqtmHjLJBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUiT-0008Ak-Jh; Mon, 20 Jan 2020 10:55:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUiI-00089x-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:55:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E3B430E;
 Mon, 20 Jan 2020 02:55:20 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD7A73F68E;
 Mon, 20 Jan 2020 02:55:18 -0800 (PST)
Date: Mon, 20 Jan 2020 10:54:47 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH -next] PCI: brcmstb: Fix missing mutex_init()
Message-ID: <20200120105447.GA17089@e121166-lin.cambridge.arm.com>
References: <20200119023003.100987-1-weiyongjun1@huawei.com>
 <f49226ca-6256-3709-3f7a-8996f5e68d76@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f49226ca-6256-3709-3f7a-8996f5e68d76@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_025522_199171_1BC08993 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pci@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 09:50:09AM -0800, Florian Fainelli wrote:
> 
> 
> On 1/18/2020 6:30 PM, Wei Yongjun wrote:
> > The driver allocates the mutex but not initialize it.
> > Use mutex_init() on it to initialize it correctly.
> > 
> > This is detected by Coccinelle semantic patch.
> > 
> > Fixes: 72af6f6f0d13 ("PCI: brcmstb: Add MSI support")
> > Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> 
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>

I have squashed it in in my pci/brcmstb branch, thanks.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
