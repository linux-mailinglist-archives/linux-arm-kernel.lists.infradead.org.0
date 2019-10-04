Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D4CCB874
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzAnrCmaBwWCYP7QIDZdeAYLyWS2BGUA7TEmyEj2Y0k=; b=cxfGzP+kFDyfFF
	CYH8yU2PaBtj7q5+NQvvzqf46NGJZDjSrIAE9Mm5Q4sWZvdvDXgHWKoAHppPvzLtjLvCNqorMfhM0
	x31kF+6yFzrMdGEqOK+YUdkURNHiMil0pnltI/qQryhxbZB4t5ZdZ478vnz2Vbrb9G7ZdEADNoqCf
	RBZTd0je+OzN3SzoST963U9PEMhNXdPvPjMm7mnaHRQ5kcLw7TIsuOhENLW4DvhKypJN5LUUIX+Lo
	kkJdNgFGYiSZ/KKn405GnlthpDxrtu17cvuzDWjVJDYrj76ca0hCHpyphh6vlREOJgGNpt5TvPfli
	kuWATF1ZeTrhnSLOnSqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKxq-0000mz-Nt; Fri, 04 Oct 2019 10:37:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKxi-0000m1-G7
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:37:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9D6B215EA;
 Fri,  4 Oct 2019 10:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570185446;
 bh=iBQF2+NS3IUMK5BhUwN9rX2yg8DwSDs2+jK+wIGNkkE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ign7A6WyVcqgWtlm8J4o3Lamf2+hcDBoVklGntADdUH0ePlfnG02YAsHEfXfTsOwz
 Wo8n+BSt9/5agQ6bgT/JE2am3QYMnfMsmztBqBCxOWFiohmgPvIDtBcX/2D3jAfiX2
 nnQATchgEYXKtKxYaP1aztOMER2qfHnYKK9OFAoY=
Date: Fri, 4 Oct 2019 11:37:22 +0100
From: Will Deacon <will@kernel.org>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH 0/4] arm64/cpufeature: Fix + doc update
Message-ID: <20191004103721.tnjii772ts72pnm5@willie-the-truck>
References: <20191003111211.483-1-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003111211.483-1-julien.grall@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033726_566442_95A0134B 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jonathan Corbet <corbet@lwn.net>, catalin.marinas@arm.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 12:12:07PM +0100, Julien Grall wrote:
> This patch fix an issue related to exposing the FRINT capability to
> userspace (see patch #1). The rest is documentation update.
>
For patches 2-4:

Acked-by: Will Deacon <will@kernel.org>

Catalin can take them for 5.5, since I don't think they're urgent.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
