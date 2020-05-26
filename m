Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 366AC1E3036
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bnTlA+B9Fgwn/HQYx25Nq8R/FBm3sdbJDQOu/mTTWQ=; b=Vfyvl7KoQkONR/
	tJ6Zz4H3zcvUFoiir7AKucK2pdrn7YblA/7wSuP4nqOX87s1uIwx8nLvNDJy2rnEs19A+3B8BRmXs
	KMPr3u5FuueY327F69E3oXnDkGlqchzAYMMKn7UG3iEUBNqHN2Q9r8WnAasJxSOwlsN68gJDnAxqI
	qwb1KD1OuwhOWZQeh43Ki2HfuWZhgFRv/s0L8sUofEPbJVtgyti79B4UKt98GEscdsKjlBvJ6r17P
	fglFguWyyhkJ1bqznaXKhkUTcXN7T28ryvwXXwU8xaEA///Gn9m3eymyGHDcT/e+WUvBzxpcN05yi
	H8f75JXdieB7pCLiYZXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgSJ-000151-QK; Tue, 26 May 2020 20:45:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgRo-0000ta-Cu
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 20:45:17 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 681FD20888;
 Tue, 26 May 2020 20:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590525915;
 bh=w80sfgIp3R5YveQ9sUv97QVAngNOtntSgmorvsNwyR4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Br8osr+rcBYborGWc/hNWnkzH4wihPwEDw4uWIJxiVUCZWcY3xXR2LUdy7Mz55592
 CwP6VRbpx4/gav2PHlHogWybaB7pqKEt2PbytPqjo9hVQn3Vhq+fTy/dSm2IkzuEPT
 vvIm+oXcTzRz7EyBmQQcSEpyWVz+Slw7lz/5YRlA=
From: Will Deacon <will@kernel.org>
To: sudeep.holla@arm.com, guohanjun@huawei.com, lorenzo.pieralisi@arm.com,
 Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH] ACPI/IORT: Remove the unused __get_pci_rid()
Date: Tue, 26 May 2020 21:45:06 +0100
Message-Id: <159052221332.23066.17607984571452199733.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200509093430.1983-1-yuzenghui@huawei.com>
References: <20200509093430.1983-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_134516_475327_AFC95E30 
X-CRM114-Status: UNSURE (   6.23  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: catalin.marinas@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, wanghaibin.wang@huawei.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 9 May 2020 17:34:30 +0800, Zenghui Yu wrote:
> Since commit bc8648d49a95 ("ACPI/IORT: Handle PCI aliases properly for
> IOMMUs"), __get_pci_rid() has become actually unused and can be removed.

Applied to arm64 (for-next/acpi), thanks!

[1/1] ACPI/IORT: Remove the unused __get_pci_rid()
      https://git.kernel.org/arm64/c/09cda9a71350

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
