Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796811BE8D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjQZ3RUrQgl1/27qGpD3SF+RDV6dOKtSEGRJ+Y8N/qw=; b=DndfdNSz4TOe+P
	F++F9iAEUviyRNAlg6ZdWuTskbjNHihTX7yBx1U9HpsEreW2AuzfsjXn1E6DkUREIoMHF+7P54aNI
	tGx8CCjFaP10AjLTJwSej9vnmZJzR9pwJrjLIg8pdSmwfYTheDI/Je5n+5a8B/eV5UHu9sZ9hb1Mo
	T3L2OMPseOVaXPOeYz9CmL6fp3TugZMaF1yXBJYLKRpfoLckBQOHeOcYgoYNJjPPg5SGclq82x015
	lRdfwhE5DtcwRP0Mtw8KNAnvF7fcRClvUTCfvFOC9CMLdxe0LxnDzZVVyemUQvyckTnZ6ZdotlYnM
	+3STYKFs5kxVASoZAr3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtW5-0001B5-Nc; Wed, 29 Apr 2020 20:41:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtVw-0001Ac-8D
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:41:05 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11759206D9;
 Wed, 29 Apr 2020 20:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588192863;
 bh=suzdndGGR5EK2ejB5TF0ELa2x2ZlN7vdIpWOS4Qpq6k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JGqO0sfXrqCWXetmK9khouH1U9mFdhQGxilw0a+fGG9TWHrB0HBu+DPCJzyjIBDc/
 ty5SQENHOaHxrsvqoL5J1EJZvbycyG+HgilERy1Fk3xwRUjg3GkphomzvVuYSE0TMs
 WS2yBejUmpr+PB9Iznuf0rslCm7GDdxVU/PDi1SQ=
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] arm64: silicon-errata.rst: Sort the Cortex-A55 entries
Date: Wed, 29 Apr 2020 21:40:58 +0100
Message-Id: <158819239959.55689.2456969531583340359.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429191921.32484-1-robh@kernel.org>
References: <20200429191921.32484-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_134104_311781_BA1D39C2 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 14:19:21 -0500, Rob Herring wrote:
> The Arm silicon errata list is mostly sorted by CPU name with the
> exception of Cortex-A55, so let's sort it before adding more entries.

Applied to arm64 (for-next/docs), thanks!

[1/1] arm64: silicon-errata.rst: Sort the Cortex-A55 entries
      https://git.kernel.org/arm64/c/184dbc152e39

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
