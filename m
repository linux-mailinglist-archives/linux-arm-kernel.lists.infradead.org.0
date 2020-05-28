Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD3F1E5EB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 13:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PaK78mKvjC0iAsuj0ngUVv4sVMPYyZtnsxGiWSimyk=; b=DZG4DRp4I4eIMi
	t4EEEL8l8qsNge/V8S2zpO+smeEcYfJB+hvdOYNUwbdx5d9SyG96xAmK42UtCdks9gM7gMcaT4m8N
	9AHP4vpxXvsXl3WAbC31Y4YgA7ZKExxshr0X3SMKssw63L6xLkA5zc7LefDjaJ+SPmVet4GBWiXkT
	I6Fq5FSqjKMZvunZJ0kJ5g6B1aSCqB9pVPyVLXid1Ow7VMcVCIor8EgCkkptkDQhk5/0kJWPAu2NE
	Qu78/D/jDsmzYbqL7wOLUqbUDHNj34MicH3iGn5PtItNmkIg172q0SPJfbvwaB2uTW8lfE2NbaLLf
	6KjdqSltSDVshx+1uOVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeH6E-0007oT-Gq; Thu, 28 May 2020 11:53:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeH65-0007o4-ER
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 11:53:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DBFED6E;
 Thu, 28 May 2020 04:53:14 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E72BB3F6C4;
 Thu, 28 May 2020 04:53:12 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH/RFC] arm64/kernel: Fix return value when cpu_online()
 fails in __cpu_up()
Date: Thu, 28 May 2020 12:53:07 +0100
Message-Id: <159066395280.21305.7073811837932060599.b4-ty@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200527233457.2531118-1-nobuhiro1.iwamatsu@toshiba.co.jp>
References: <20200527233457.2531118-1-nobuhiro1.iwamatsu@toshiba.co.jp>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_045317_525076_B8FA30E5 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Will Deacon <will@kernel.org>, Yuji Ishikawa <yuji2.ishikawa@toshiba.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 08:34:57 +0900, Nobuhiro Iwamatsu wrote:
> If boot_secondary() was successful, and cpu_online() was an error in
> __cpu_up(), -EIO was returned, but 0 is returned by commit d22b115cbfbb7
> ("arm64/kernel: Simplify __cpu_up() by bailing out early").
> Therefore, bringup_wait_for_ap() causes the primary core to wait for a
> long time, which may cause boot failure.
> This commit sets -EIO to return code under the same conditions.

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64/kernel: Fix return value when cpu_online() fails in __cpu_up()
      https://git.kernel.org/arm64/c/ba051f097fc3

-- 
Catalin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
