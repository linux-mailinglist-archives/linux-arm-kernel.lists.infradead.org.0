Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A291C11D2F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 17:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pUFGoKoJTZqiohIvfqUmxkZcEs/8RVRVkXCe/Rp2TE=; b=nCJDVKvwJIP+MF
	z+YdPqTXi3kM0XwtG8aTeO8rZcakYAS9dHHHAhC1OBw4mmWeXg3CKz3FcT3YO9Apm5T0tuFiPg8rL
	JLn+sxtufwI1TGTJRmBZtbjrwsYhvzBKg1TNbnd/v4Zs6B7cusKUuOFq/UUrNYiwVRpm0B4EN7tKl
	OwCr6cQFonNZljb7/pYWMpAsxawW0tzTPvWOgNw20GJ6Rc4GjJaIpJ/toQFJOCt35nOamAaKDpwxp
	EYgAxfyV8DkXTuHQOHBGPCsLoG8r+pXRlIhk06mVa/dgtnWvouBp8HErlXOWjT+8Wox2ErwSku2m3
	N123KfTM/NDRjR+9SMgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRoN-0007qj-1g; Thu, 12 Dec 2019 16:59:35 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRoE-0007mo-C2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 16:59:27 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 0FEB780C0;
 Thu, 12 Dec 2019 17:00:01 +0000 (UTC)
Date: Thu, 12 Dec 2019 08:59:20 -0800
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH] bus: ti-sysc: Drop MMU quirks
Message-ID: <20191212165920.GU35479@atomide.com>
References: <20191212124751.3400-1-t-kristo@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212124751.3400-1-t-kristo@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_085926_454556_2C8E0EA5 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: s-anna@ti.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [191212 04:48]:
> From: Suman Anna <s-anna@ti.com>
> 
> The OMAP IOMMU driver no longer uses the pm_runtime_irq_safe() API
> after commit 1432ebbd6003 ("iommu/omap: remove pm_runtime_irq_safe
> flag for OMAP IOMMUs"), so the SYSC_QUIRK_LEGACY_IDLE quirk is no
> longer needed for MMU devices. Drop the same.

Thanks applying into omap-for-v5.6/ti-sysc.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
