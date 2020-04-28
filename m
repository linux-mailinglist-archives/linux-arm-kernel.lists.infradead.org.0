Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D040D1BC1FD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgEWrahbO4oQJ64mMrOFmwcRS7bcdJnlVavilyDMbLI=; b=OJGYWkNRaqgE1l
	JipyLYss19VgWcyjTI4xXNn6sNlkLqRhUiwPMzTqFuQbo7TAbxS9Bp5QLtXbVjULYc9y5BvKu8KCZ
	fjhWgAFN4zOmA5aeroQUbxjaoydYsQpVKNlP2n8A3Z6cxV9uDfNutva+y0JK+lzgDs3FLB1iMmRWR
	XRJBflwHmYKs34jagbP17qmfPKfsylK4E2w5l7vyArR44uyKiL0+mX5GXUEAzv3WMwpJaiGBphQX0
	B7fFGsGVNrkqdrB1CZWdTwvkKm2ogKnL05kdHMVRWNtgS4mELqNtk9sUw8qr6jmqrf3Eew6l8YuAe
	mqCrjTKGoMwV7Zay2V2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRch-0005GH-2V; Tue, 28 Apr 2020 14:54:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYe-0008UN-Eg
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:04 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7770C206D6;
 Tue, 28 Apr 2020 14:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085399;
 bh=KQVhaFJwaQDI1LQ4GB7LyZpVuA9l1lrKtbwaO9ObaOo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SbNi47LSVdZKZiCKx5OXieBgFz0DUjpnCJw+d8ky+EBGf/9hMTjEH5FQdSwfpa4dz
 dVo8xHQgEcPIUhqEjBh0wR0hxCG1DDXBQZg/IaeTxSJQM/iBVtvBqUrSyeB4Lgof7O
 wIjlNWqIjUTtMeeXcGO5/k0pZ+DkMhnzJRVdj1OE=
From: Will Deacon <will@kernel.org>
To: George Spelvin <lkml@SDF.ORG>
Subject: Re: [PATCH v2] arm64: kexec_file: Avoid temp buffer for RNG seed
Date: Tue, 28 Apr 2020 15:49:39 +0100
Message-Id: <158807855142.208424.6865350866606582490.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200330173801.GA9199@SDF.ORG>
References: <202003281643.02SGhMtr029198@sdf.org>
 <20200330133701.GA10633@willie-the-truck> <20200330173801.GA9199@SDF.ORG>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_075000_529013_B4884DDD 
X-CRM114-Status: UNSURE (   9.32  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lkml@sdf.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Mar 2020 17:38:01 +0000, George Spelvin wrote:
> After using get_random_bytes(), you want to wipe the buffer
> afterward so the seed remains secret.
> 
> In this case, we can eliminate the temporary buffer entirely.
> fdt_setprop_placeholder() returns a pointer to the property value
> buffer, allowing us to put the random data directly in there without
> using a temporary buffer at all.  Faster and less stack all in one.

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: kexec_file: Avoid temp buffer for RNG seed
      https://git.kernel.org/arm64/c/99ee28d99607

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
