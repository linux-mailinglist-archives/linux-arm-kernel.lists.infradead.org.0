Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CED21BC1FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubhu7uAT6alcLrD1QWb6TFWxerEqGm5y8lau/7riI6I=; b=eR99Dg8HZLT5i4
	vBeh7MfLj1kEo8GPAZRr3zUILLpasu/SB7sCpDi0C8xk02BAOHYz2oYApWsQlNQRgiRomqzGoKXRh
	h9xgtu9RJGEKn3agsGX09c/vKeXmnwRMBM/MmkHhuqQ3tG4HpNFm1isnxtmTP2PqX1Qr52svbwqyA
	Ltbl8/b8ONwASbazLK7dsA2s1q8Z5lQ35HU0EkqpO5zXqLvAaFrbbWW6bZJJerBbQ68SMBJjs8bDW
	LoDPviucBW105dXY65pDv6XlUMViw7WLmT6LTIHoJCQGD1qJfGBallKEBaLEvDZkU3NR0xBHBOLAU
	TQFEHXctQrDKDq5DePIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRcL-0004t0-FN; Tue, 28 Apr 2020 14:53:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYc-0008Sl-CF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:01 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDF962082E;
 Tue, 28 Apr 2020 14:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085398;
 bh=1rcl6RVUXtaqTUMRMhsdjnJSI5mjkOq9ry5jOgm75jk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YjL239eeuBNz09MW1L4kBBhhmodZkR15xQ2vVTLeyS/wE7KH1vWVKerDlJfu27A0w
 A6sxVXvXikOjj/X+yoIoRDwxA3wpxNfSXKmKueYxA+KnxyhxUZej7luDe5rUc7+wP+
 kN7kuy5pNf0ymMNi09Cv95/7jpyn60bNC7GCOCfM=
From: Will Deacon <will@kernel.org>
To: Gavin Shan <gshan@redhat.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64/mm: Use phys_to_page() to access pgtable memory
Date: Tue, 28 Apr 2020 15:49:38 +0100
Message-Id: <158807947318.210571.1093507749687250902.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427234655.111847-1-gshan@redhat.com>
References: <20200427234655.111847-1-gshan@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074958_444169_CB3F5222 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 shan.gavin@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 09:46:55 +1000, Gavin Shan wrote:
> The macros {pgd, pud, pmd}_page() retrieves the page struct of the
> corresponding page frame, which is reserved as page table. There
> is already a macro (phys_to_page), defined in memory.h as below,
> to convert the physical address to the page struct. Also, the header
> file (memory.h) has been included by pgtable.h.
> 
>    #define phys_to_page(phys)      (pfn_to_page(__phys_to_pfn(phys)))
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64/mm: Use phys_to_page() to access pgtable memory
      https://git.kernel.org/arm64/c/68ecabd0e680

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
