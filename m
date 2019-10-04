Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A51CB849
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:31:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+FpOgr+TrU6QJguZqNDjs+NpDbZD4SHMfBIBopeEA4=; b=dIzsNpFrNrba8R
	gEEjh+BtQBb3y5irTLEU+9K5afN6YlArSAd0NgXsNSlM70lLSNzTF7hhvX7EI7+xkf2bGTr2QYgPb
	bl9OhFD6vMkmsZhk1mx4GdyJpz0E3fR8xilflKSFHqKJd44t/kYikQIZTClr0XYmIsbReUamELUi+
	luqDNtgpUl24wgIbhMNZWw3Eic6LkJVmePKdMT24sk/BYc791Ed/hU8Va7RYRyT4EW6ODvZ1WkUo5
	PnNF83lG2wUFON4qXzHU7jnV7tAME8OP5zOZolfs/hcMHKaTgHLs2SP+HEKen/Mc/e3DjJ0oPeXnV
	NOXMXEPQgsA1wnhY52hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKs0-0006Mc-Oa; Fri, 04 Oct 2019 10:31:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKrp-0006KP-Qs
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:31:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CE56215EA;
 Fri,  4 Oct 2019 10:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570185081;
 bh=VRYbJsVYJThOrqcpNwtURgK3EOchoy5a2PZ5K9I9TFY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VjxeSHmp/jSIjsl8FZpJUlArIjWn2KahG+J/Mor7wd1FeiJvmq39Z6U62d9zNKbYq
 Ggh8nUBxAviWyPCiTJJf8YlSLXTYEZGBA+QRonLj3tGyWmF8v9Y0EyX3abjxgDDnM+
 33A0jbcyQwjXHovZG7nNb9ky8e1Zz5Lvj0JiXZrs=
Date: Fri, 4 Oct 2019 11:31:17 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/4] arm64: errata: Workaround Neoverse-N1 #1542419
Message-ID: <20191004103116.eneiskohqxd3pq3s@willie-the-truck>
References: <20191002094935.48848-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002094935.48848-1-james.morse@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_033121_893888_85F5E2F8 
X-CRM114-Status: GOOD (  10.41  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 10:49:31AM +0100, James Morse wrote:
> We can't yet detect whether EL3 has the workaround for any particular
> erratum. We lamely print '(kernel portion)' as part of the CPU-feature
> text.
> If we get a mechanism to discover this stuff we can use SCTLR_EL1.UCI
> on systems that have the interface, and don't workaround the issue.

Is the firmware portion available in ATF and is there a plan to add the
discoverability mechanism, or is it just wishful thinking?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
