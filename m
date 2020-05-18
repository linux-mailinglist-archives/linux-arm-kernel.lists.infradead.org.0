Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6F81D8B68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 01:05:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJa6sqPvjapI7ebpSiVhNDYvXoMo91Cw0Trj3qEiaBs=; b=DAiDTU1ecy7MWz
	hgOq0P/k9PWVsomYPYR3K23OjXHDwldwt++cQq+UXgqJekM2zZ+rNC27dInqBOS6NJctqEllnF+aa
	XkL7/h2M/IYKS8vs3C9XZS1Kg4YTZdAealdLkKSFW/fs+R1noef6EwCdyN7JakDEZDqRzgkq5NqoT
	6YLE5dYQTc6nySIwEl/dVeI81QSa1Yz5zmZAiJ0rppur0iFs6Gp+mmgQeifr2+txpOsy5AXoQp8wL
	pFdXBOj87KK2tm7R5t4jxNelpQ6yR/+o2C8jJbTJ409xeu/rGEBI5l+kPXORkDBnKIb1BVe9jsIR/
	YOkbNQYqpMKRHb2qF2gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaopJ-0000i3-1s; Mon, 18 May 2020 23:05:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoo2-0008L1-ES
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 23:04:26 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99AD520849;
 Mon, 18 May 2020 23:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589843062;
 bh=GfUiNBtiusxD7tUiINLEXRG4SGNIJl7n+58QUt6qvZs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fcpr6uvJ6iosc/Fx8JK5jSmyYYGSfn4dU9VGX/qMwOIsRA0LF2HSNtFOSIFc0isnN
 Ny3QrRBf1uYVcHO38u4ujfkk5KuT1G72w7QuzKE1/igZ440cMRZTMVox05uY1Qk1ED
 Lz3onPGS7fC7qoyDl+sBdGolBjGUK1DXHw4pWR8w=
From: Will Deacon <will@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH 1/2] ACPI: GTDT: Put GTDT table after parsing
Date: Tue, 19 May 2020 00:04:05 +0100
Message-Id: <158982168456.1117.3371494781648874842.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1588910753-18543-1-git-send-email-guohanjun@huawei.com>
References: <1588910753-18543-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_160422_503216_E1F3C037 
X-CRM114-Status: UNSURE (   7.50  )
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
Cc: catalin.marinas@arm.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 8 May 2020 12:05:52 +0800, Hanjun Guo wrote:
> The mapped GTDT table needs to be released after
> the driver init.

Applied to arm64 (for-next/acpi), thanks!

[1/2] ACPI: GTDT: Put GTDT table after parsing
      https://git.kernel.org/arm64/c/5ec605108ff4
[2/2] ACPI: IORT: Add comments for not calling acpi_put_table()
      https://git.kernel.org/arm64/c/701dafe0670c

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
