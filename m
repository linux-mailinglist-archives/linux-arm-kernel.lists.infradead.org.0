Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DEC1C0900
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 23:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqAKbBmVt4Fqm6ly7rC04ZSWPQvSBrSagSXPIK9s2JQ=; b=hYiL4V4WXzXQEG
	dAIjo7m1tUKcpBuL+X1HijzqSIjw5S5x+NHmmRFODeGPXIWOUovzLqZ+qAckjpOk4NkZJPLw/iaQs
	EyhI8w7gV4Ckm7S03Ww+WQIi8LBsmYzZ+EtOWtZvOyKhQnPOB/frwdvWhCp90AQVrR4dGGSsUBB4K
	/jTkp1oER/HOQz2czbmqE9u2fmWXavbQkaJrHAUbXLG4mPMQvBM+MdRBTN7FOlz4net9Cz1z9TRpV
	ubsN6UID+GSy37LqT7thO9oQyaz3o01WzFobNqy7l/NRai8uGiDHm7WA4liwcJsEgJGisp6Z5tByC
	XlXcV+ctEz0VsLQh8ARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUGXX-0001lS-Ls; Thu, 30 Apr 2020 21:16:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUGUC-0005LX-AK
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 21:12:50 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4BAE220870;
 Thu, 30 Apr 2020 21:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588281166;
 bh=MvtEzTw2tAa1JCRHwTpZehzEUSv/XmyHnoN7XEEMzuU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NRnyUGTPRqPINt94Yp8VuVcC0FMtLFKlGxCGPzb84RpBd/FnPfTgzSGhAcnevnhdp
 jOl/m77PnJqmClw8xBlTaXvclx2xbqf5UBDfUT+7iQbZ9RmkTAJdtrbttcWDzLiP+2
 yluuZSdVDGQB6lPdQqwRiM7wwpWXIEHC7kXP/otA=
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drivers/perf: hisi: Fix typo in events attribute array
Date: Thu, 30 Apr 2020 22:12:28 +0100
Message-Id: <158828001952.124402.3189570004429732847.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1587643530-34357-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1587643530-34357-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_141248_441690_D0F8E3F4 
X-CRM114-Status: UNSURE (   5.63  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Apr 2020 20:05:30 +0800, Shaokun Zhang wrote:
> Fix up one typo: wr_dr_64b -> wr_ddr_64b.

Applied to arm64 (for-next/perf), thanks!

[1/1] drivers/perf: hisi: Fix typo in events attribute array
      https://git.kernel.org/arm64/c/88562f06ebf5

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
