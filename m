Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3A3349A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaaDjGl3zMhC5X0J+HhnvGZSrIYUZgAJopj0gkV6V44=; b=gO9vkomLuxoKu6
	hGRe+yQBjqJdPlBFxqZJws8xIWXtxfxv1sg9ro8zXf3cuoCoJ6LXuBSFdlRDVydQANmpImb9+nm/i
	B72BTZUVjsoFio5FCtZy0dMNt77Vsj3DyIcAy8pFO86PeUNb6cyTpotSI5Y40ymQ+u0qH3Fv3Evw8
	kBGIZZUDRCB05xxNGedWTQDxHQpeeVVJ5wV21wOd5wcocDXN9/gCNQJsVDZoZ4xSWhowyTDm+4mCb
	Dk06zlmMLtVtIHApZs0wR7lxepqom1pe4Fv6jvtNn+xtswQkuwfZmSR6X7dG7Zae+RwXQYJ7FG8nn
	tcbVcz6brv9jIdFzKYuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9xI-0002KB-FV; Tue, 04 Jun 2019 13:58:24 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9xC-0002Jl-1N
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 13:58:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA644341;
 Tue,  4 Jun 2019 06:58:17 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BDB733F690; Tue,  4 Jun 2019 06:58:16 -0700 (PDT)
Date: Tue, 4 Jun 2019 14:58:14 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH] arm64/mm: Identify user instruction aborts
Message-ID: <20190604135813.GH6610@arrakis.emea.arm.com>
References: <1557029712-3237-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557029712-3237-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_065818_088417_666560E8 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 05, 2019 at 09:45:12AM +0530, Anshuman Khandual wrote:
> We don't currently set the FAULT_FLAG_INSTRUCTION mm flag for EL0
> instruction aborts. This has no functional impact, as we don't override
> arch_vma_access_permitted(), and the default implementation always returns
> true. However, it would be helpful to provide the flag so that it can be
> consumed by tracepoints such as dax_pmd_fault.
> 
> This patch sets the FAULT_FLAG_INSTRUCTION flag for EL0 instruction aborts.
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>

Queued for 5.3. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
