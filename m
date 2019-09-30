Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6495C1E96
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 12:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vu5rWpHt2gf3bDO84DrouHcU33Q4EdUaOn0Jx4PiC4=; b=EjIGuegCxwiiZu
	tuBdq7f3I1dVMo0eY+RMsnB/4q3Zhn3O8yoLXizJLdYvfvleBZqoDiBhwQs1P5RJzXl1d3MD/9sWY
	xEtgGlwNJH2qP+J/bnmW53rfQW19sVieAGWDSi4EFbOb4e5QObItMn7DaKbEJPkDUm8ezA4ca0Zgv
	T4LAnt5N9MULJFO/g+Bzp9MSeAvDeA9uSF88ouEbJRQ20BR4eDGBGEfdm88jSJ6V+Wvr5HNsx/Ypm
	0aMB+/XTdfYgYH4Qr8en5IMii+fPfYHD0hSvQdBN4Y9KV5BbfOiX/FKKXPSQKoK25lJPCOhfNlZOv
	qRioIUW1WWITdVe6yChQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEsVi-0004bz-FN; Mon, 30 Sep 2019 10:02:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEsVZ-0004bG-2l
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 10:02:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 89203B157;
 Mon, 30 Sep 2019 10:02:19 +0000 (UTC)
Date: Mon, 30 Sep 2019 12:02:12 +0200
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH] arm64: tegra: only map accessible sysram
Message-ID: <20190930100212.GA21324@suse.de>
References: <20190929200851.14228-1-ykaukab@suse.de>
 <5d2e47ec-8304-d648-9c4a-80c7c02050a9@wwwdotorg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d2e47ec-8304-d648-9c4a-80c7c02050a9@wwwdotorg.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_030221_267641_EABA18F6 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-tegra@vger.kernel.org, treding@nvidia.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jonathanh@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 29, 2019 at 11:28:43PM -0600, Stephen Warren wrote:
> On 9/29/19 2:08 PM, Mian Yousaf Kaukab wrote:
> > Most of the SysRAM is secure and only accessible by TF-A.
> > Don't map this inaccessible memory in kernel. Only map pages
> > used by bpmp driver.
> 
> I don't believe this change is correct. The actual patch doesn't
> implement mapping a subset of the RAM (a software issue), but rather it
> changes the DT representation of the SYSRAM hardware. The SYSRAM
> hardware always does start at 0x30000000, even if a subset of the
> address range is dedicated to a specific purpose. If the kernel must map
> only part of the RAM, then some additional property should indicate
> this.[...]
I agree the hardware description becomes inaccurate with this change.

In the current setup complete 0x3000_0000 to 0x3005_0000 range is being mapped
as normal memory (MT_NORMAL_NC). Though only 0x3004_E000 to 0x3005_0000 are
accessible by the kernel. I am seeing an issue where a read access (which I
believe is speculative) to inaccessible range causes an SError. Another 
solution for this problem could be to add "no-memory-wc" to SysRAM node so that
it is mapped as device memory (MT_DEVICE_nGnRE). Would that be acceptable?

> [...] Also, I believe it's incorrect to hard-code into the kernel's DT
> the range of addresses used by the secure monitor/OS, since this can
> vary depending on what the user actually chooses to install as the
> secure monitor/OS. Any indication of such regions should be filled in at
> runtime by some boot firmware or the secure monitor/OS itself, or
> retrieved using some runtime API rather than DT.
Secure-OS addresses are not of interest here. SysRAM is partitioned
between secure-OS and BPMP and kernel is only interested in the BPMP
part. The firmware can update these addresses in the device-tree if it
wants to. Would you prefer something similar implemented in u-boot so
that it updates SysRAM node to only expose kernel accessible part of it
to the kernel?

Can u-boot dynamically figure out the Secure-OS vs BPMP partition?

BR,
Yousaf

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
