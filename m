Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667D01CE06C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nRHx2NAROrYOEp2VdrypZkPoxGENHQvRXMHRUPst8Ic=; b=QatIDIOHb4ycMg
	vla/StE76ToDPARfHsmgN18KfExTwt+aVMkevRIwRCEHhaAEHoStl8joQsrOdanzIHqfuUgmyfhQw
	2H6rTwMye0UJwgOx7TThd5Zfs6N4B1Yo+MsET3W5vy+w352rlAL8g0JUJPe89Ra/ZAp/gFVxlso/l
	+WSEnP30CvYsdVgf1ZHOV3p3Q4N27y56vr+ZofuXkLphBpWFo0ZF0+Le+pa7gsR9JekBHt8FOTcBP
	gHZWpVrP6G9duGBdqRMcFyR7gpZxWbEk7shWBszvV9vjvgzKoK9A3DnI5EQm0qVdvo1gd8ECGtZwB
	Aa2HltvAwbUP7Cc1b+pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBI6-0001ym-B4; Mon, 11 May 2020 16:28:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBHe-0001lt-V6
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:28:04 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19B3820720;
 Mon, 11 May 2020 16:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589214482;
 bh=nHP8K2loP8fNNvk39GdbJPey1+kZMKWKWEytPBaMcxw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=II0LDklD9XYd65fHxKxk8cPX0NaKftxcMowEHXOhR+YHTc3LiNUAj4CmnfUEtmNr9
 AaBwsVID1DVdzvatpFNKKDxIO9sza2Pr/k1FTUgq618LtwI7dUhGp4IYICSNkw6gtg
 jPPmEwQcc4waLwIlBK9kqm7Pcg6etOjgV3+U0MWI=
From: Will Deacon <will@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Hanjun Guo <guohanjun@huawei.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2] ACPI: IORT: Add extra message "applying workaround"
 for off-by-1 issue
Date: Mon, 11 May 2020 17:27:55 +0100
Message-Id: <158920943595.105559.13805168263649265884.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1588910198-8348-1-git-send-email-guohanjun@huawei.com>
References: <1588910198-8348-1-git-send-email-guohanjun@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_092803_013970_65B27F89 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Fri, 8 May 2020 11:56:38 +0800, Hanjun Guo wrote:
> As we already applied a workaround for the off-by-1 issue,
> it's good to add extra message "applying workaround" to make
> people less uneasy to see FW_BUG message in the boot log.

Applied to arm64 (for-next/acpi), thanks!

[1/1] ACPI: IORT: Add extra message "applying workaround" for off-by-1 issue
      https://git.kernel.org/arm64/c/44cdc7b16e0a

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
