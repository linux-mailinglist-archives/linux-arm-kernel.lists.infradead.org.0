Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2753317703E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:43:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sWGPd7uRZu6fwfoFtuaEgeTL8a2FvY7YX98ri2w8QiA=; b=S44yt/mnSO0Sx7
	pZniNXaynTMmH5if2E54Xhtig6Ax8sYQdjctTiFa7HoUkakIkLl109tHCV/eYSqR5ws5tvWrf0TNo
	Co6HwKqu4WL0zRSErqSFDvTrvSTlySfCRZJlNPlrcyZIVOQFSc+8Mf5HNoUS+osRoQOK3UJB/jcsY
	ujjm3t3qMs+0XLpPLHy2U/H/NJrWOWo5KDFWEoGQAV0fEOiaxz1k4S6BpPTlirMoAMpPRkGxgc+1X
	vZDnBQgW8hFgakGieWDeBANNubT0FDLHnyuaoqe86E8OERfoqeMjkoGcNuLyZxqutfG7tnoXggynz
	3UjxcZ+R/EmIlb0AxFXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92DL-0000LE-OT; Tue, 03 Mar 2020 07:43:39 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92DD-0000Kb-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:43:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id i9so479410wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 23:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=19y8hOwEla5LQ3+q+f8D7McftSkNCumM9N4Er3lVr7E=;
 b=qCaL00L+lgluqeD7V6Li2FtyeNm4SiJjl2I3OZo+ttzhqvUyXsu+W8M2GcGpzr5z1U
 Js/ngQ7Uq4qVDuioB6r6A1dtezHGNWmjaxoEkddUzlLZbs9kfRyn11bccHe+1bAo2O6T
 f47JDo8Chc156DXbObyfI6o6WmDtcgofD+v8e66DxWQAsFNi91ho7u9TjLS2LL8uzv8r
 L3wtY0IZKM3GSNQiwTTWCi6cGh0EDwsZEPyDE1bcYSILnDT6raz8lKAPbFZbUJjUsg12
 RBocHthCRJ370sbl4DLbaEPPYIEbWojWy1YCjZJ8ZgUVY/8C7Ws8vAbJ665D3yRCzamO
 xzYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=19y8hOwEla5LQ3+q+f8D7McftSkNCumM9N4Er3lVr7E=;
 b=H7BwCJH2XzmZdI+XdF+bJjXsyNmqPoX7IiWRegmqdj9rYRNqJgpfILNCmzaitVeb/2
 bzZnTgaz12YncBvZtlYW17K3mNdesXbUkgRt/ELu/b7pHTdawUEsRVHenOxT5KxhVWJ2
 kfbEZMbj4Byndsx4GhLI/6C25lsBdqCAWwjYk5K1FK+xZGYRwx6CjUPwoC00X1TWXAYS
 04GX2P+Tcft1K52D6Ca03xWxro27w5icRNpp6h4fehcsIR8irIh/RbLjlgLktYMt5Pj8
 K3IJiTGApYL5eV6ng2D5UptKJ7vipFKpfq/GOV+d3ehA5ptGdscKFoi+uDwrR7uYFe+2
 mozg==
X-Gm-Message-State: ANhLgQ2mPNS37TK2x0bq9zGVFuMUFAgHJeVTk86Wh8JXowTLGe3Klb/v
 0Eg6JLLizWsmkG9BbSPL/i8=
X-Google-Smtp-Source: ADFU+vuw49wz51LirDGbH9qymWMVbsh0ZceIk1lUYnfagI/ccly8un3TZ7OYV+RRC94XY7n1OvtE5Q==
X-Received: by 2002:a7b:c315:: with SMTP id k21mr2763832wmj.19.1583221409141; 
 Mon, 02 Mar 2020 23:43:29 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id g7sm32066854wrq.21.2020.03.02.23.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 23:43:28 -0800 (PST)
Date: Tue, 3 Mar 2020 08:43:26 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: maz@kernel.org, wens@csie.org, mripard@kernel.org
Subject: sunxi: a83t: does not boot anymore in BigEndian
Message-ID: <20200303074326.GA9935@Red>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_234331_393093_FB9B1314 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

My sun8i-a83t-bananapi-m3 does not boot anymore in BE.
Others sunxi platform I have seems not affected (a10, a20, a64, h3, h5, h6)

I have bisected this problem:
git bisect start
# bad: [98d54f81e36ba3bf92172791eba5ca5bd813989b] Linux 5.6-rc4
git bisect bad 98d54f81e36ba3bf92172791eba5ca5bd813989b
# bad: [d5226fa6dbae0569ee43ecfc08bdcd6770fc4755] Linux 5.5
git bisect bad d5226fa6dbae0569ee43ecfc08bdcd6770fc4755
# good: [219d54332a09e8d8741c1e1982f5eae56099de85] Linux 5.4
git bisect good 219d54332a09e8d8741c1e1982f5eae56099de85
# bad: [8c39f71ee2019e77ee14f88b1321b2348db51820] Merge git://git.kernel.org/pub/scm/linux/kernel/git/netdev/net
git bisect bad 8c39f71ee2019e77ee14f88b1321b2348db51820
# bad: [3b397c7ccafe0624018cb09fc96729f8f6165573] Merge tag 'regmap-v5.5' of git://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap
git bisect bad 3b397c7ccafe0624018cb09fc96729f8f6165573
# good: [924ea58dadea23cc28b60d02b9c0896b7b168a6f] Merge tag 'mt76-for-kvalo-2019-11-20' of https://github.com/nbd168/wireless
git bisect good 924ea58dadea23cc28b60d02b9c0896b7b168a6f
# good: [3f3c8be973af10875cfa1e7b85a535b6ba76b44f] Merge tag 'for-linus-5.5a-rc1-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/xen/tip
git bisect good 3f3c8be973af10875cfa1e7b85a535b6ba76b44f
# bad: [642356cb5f4a8c82b5ca5ebac288c327d10df236] Merge git://git.kernel.org/pub/scm/linux/kernel/git/herbert/crypto-2.6
git bisect bad 642356cb5f4a8c82b5ca5ebac288c327d10df236
# good: [57d8154f15e89f53dfb412f4ed32ebe3c3d755a0] crypto: atmel-aes - Change data type for "lastc" buffer
git bisect good 57d8154f15e89f53dfb412f4ed32ebe3c3d755a0
# bad: [752272f16dd18f2cac58a583a8673c8e2fb93abb] Merge tag 'for-linus' of git://git.kernel.org/pub/scm/virt/kvm/kvm
git bisect bad 752272f16dd18f2cac58a583a8673c8e2fb93abb
# good: [9477f4449b0b011ce1d058c09ec450bfcdaab784] KVM: VMX: Add helper to check reserved bits in IA32_PERF_GLOBAL_CTRL
git bisect good 9477f4449b0b011ce1d058c09ec450bfcdaab784
# bad: [cd7056ae34af0e9424da97bbc7d2b38246ba8a2c] Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next
git bisect bad cd7056ae34af0e9424da97bbc7d2b38246ba8a2c
# bad: [c7892db5dd6afe921ead502aff7440a1e450d947] KVM: arm64: Select TASK_DELAY_ACCT+TASKSTATS rather than SCHEDSTATS
git bisect bad c7892db5dd6afe921ead502aff7440a1e450d947
# bad: [8564d6372a7d8a6d440441b8ed8020f97f744450] KVM: arm64: Support stolen time reporting via shared structure
git bisect bad 8564d6372a7d8a6d440441b8ed8020f97f744450
# bad: [55009c6ed2d24fc0f5521ab2482f145d269389ea] KVM: arm/arm64: Factor out hypercall handling from PSCI code
git bisect bad 55009c6ed2d24fc0f5521ab2482f145d269389ea
# bad: [6a7458485b390f48e481fcd4a0b20e6c5c843d2e] KVM: arm64: Document PV-time interface
git bisect bad 6a7458485b390f48e481fcd4a0b20e6c5c843d2e
# bad: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
git bisect bad dcac930e9901d765234bc15004db4f7d4416db71
# first bad commit: [dcac930e9901d765234bc15004db4f7d4416db71] Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time

But bisect lead to a merge request.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
