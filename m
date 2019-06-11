Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0523D11E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wi3jqet0imlM2hWSUPf5L+2G8amLz01G9+hS82FMj24=; b=Ag2AD328NYJGKQ
	vYX/mKegGH6bQKeqc3A9URS24csyW532JrS3Ao7FnXS4ED40Pyf/VonqEqVKHtckQ61AgVNzcUjI8
	TlzvqD8eQTJjwrenr63VqfACrQOhxpiqEtZ9EWqCttVYUrTPUXV0etCzYezwO0MgfL3yxXRxZKeE2
	zmD61jCySYJprGbFL0DMmwE7zT9549wm0hAWBwG/EVdB5O0Mz6I8TV6g5zO/m2lFbHRD9LDPYeuqw
	Boc08K30XMtGHGozOPgRpxhZUVhi9gblCYtfPxoUBnYC/sstF5xB7MWbtFK0pqp0nqXXxwuX4b69X
	6P6MsRRJmMsINqNP/Ffw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haits-0000Pp-Qy; Tue, 11 Jun 2019 15:41:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haitg-0000Ox-LA
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:41:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BA47337;
 Tue, 11 Jun 2019 08:41:15 -0700 (PDT)
Received: from c02tf0j2hf1t.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 793AC3F246;
 Tue, 11 Jun 2019 08:41:11 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:41:06 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
Subject: Re: [PATCH 2/2] arm64/mm: show TAINT_CPU_OUT_OF_SPEC warning if the
 cache size is over the spec.
Message-ID: <20190611154105.GE10165@c02tf0j2hf1t.cambridge.arm.com>
References: <20190611151731.6135-1-msys.mizuma@gmail.com>
 <20190611151731.6135-3-msys.mizuma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611151731.6135-3-msys.mizuma@gmail.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_084116_737616_C16C27B4 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Hidetoshi Seto <seto.hidetoshi@jp.fujitsu.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Zhang Lei <zhang.lei@jp.fujitsu.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 11:17:31AM -0400, Masayoshi Mizuma wrote:
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> 
> Show the warning and taints as TAINT_CPU_OUT_OF_SPEC if the cache line
> size is greater than the maximum.

In general the "out of spec" part is a misnomer, we tend to apply it to
CPU features that are not supported by the kernel rather than some CPU
feature not compliant with the architecture (we call the latter errata).

I suggest you drop this patch.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
