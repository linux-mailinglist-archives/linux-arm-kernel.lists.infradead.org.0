Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ABE45B5B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3myPbdH+P5lieU678fac76UcjjqKv/fkuS6pZUZJx0=; b=pF38CChAZ4divk
	V9nCR0l4mjtccqTTu8c89vAE/Xrc6sUMmgvX/Re0Mv0QMgdeFpajzmIDw/XF7qn5uN2SQzwk8+Jyn
	tLiSP2ap5cBBNvQDHuFf8cLK94rXt+GcqEOab46irh8AD9LhqP1Cbu1psQkB9CZOx9BdVCjpwEnte
	QKvD6AcBDL40Wu2Coualu+HyJghBXbhofmseJhLS20W/Zl2c+CcSWVCu8iBrwTy8Y4o2DECXymCtf
	lE3LW1OYCwQS64Lzx16CDd0IE0xGE8cbgC2L6fV117SYvOOwv/oOnUft3L/PWGp4O4SNAQlnfIAqe
	PxNZ7AvM2Ip8tdtxODXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkKX-0006HZ-U8; Fri, 14 Jun 2019 11:25:13 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkKC-0006Gk-Gr
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 11:24:54 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 92D7A2046B;
 Fri, 14 Jun 2019 13:24:48 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 7BD2520186;
 Fri, 14 Jun 2019 13:24:48 +0200 (CEST)
Subject: Re: [PATCH v3] iommu/arm-smmu: Avoid constant zero in TLBI writes
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
References: <f523effd-ef81-46fe-1f9e-1a0cb42c8b7b@free.fr>
 <20190529130559.GB11023@fuggles.cambridge.arm.com>
 <84791515-e0ae-0322-78aa-02ca0b40d157@free.fr>
 <09a290f1-27a0-5ee3-16b9-659ef2ba99dc@free.fr>
 <20190612081051.GD21613@8bytes.org>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <3939f36f-eb7b-b165-426a-1beed23bf4a9@free.fr>
Date: Fri, 14 Jun 2019 13:24:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190612081051.GD21613@8bytes.org>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Fri Jun 14 13:24:48 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_042452_712836_767BDC59 
X-CRM114-Status: UNSURE (   7.76  )
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
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Trimming recipients to minimize inconvenience ]

On 12/06/2019 10:10, Joerg Roedel wrote:

> On Mon, Jun 03, 2019 at 02:15:37PM +0200, Marc Gonzalez wrote:
> 
>>  drivers/iommu/arm-smmu.c | 15 ++++++++++++---
>>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> Applied, thanks. It should show up in linux-next in the next days.

Almost there... Should be in tomorrow's next.

https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git/log/?h=next
https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git/commit/?h=next&id=4e4abae311e4b44aaf61f18a826fd7136037f199

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
