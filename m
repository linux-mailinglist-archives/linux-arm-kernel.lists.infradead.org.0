Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA241143AA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=6naNir5g4im/4fRqnGAcXe7Bs+jXH/Fjk8OwPZZmT5E=; b=tu+6dH2RU63qz2
	SYpVXi4pxWB8Uz6rxV0VWcO385VkaZQU10+oSWET3MOLupSYQm+l8zyudTB6q373hIIlVio+MnVn3
	cGj5OO3Fo9dY5nWzO0VmzZnvhSmB48TGkO4JZ1w19qOGnGQUTeNBACq76qk2vQNSgvy1TcrNPlIBF
	TKm9tZRV5VSgAVAAhyV6P9CQvj6Dz3Pgk4uSquh7B1V27CO219DR84eAFsncg7H7yunNNDM2bz4WQ
	sF/c414ZTZmGbSKeCbdNFTUqXyew3kWEjBjL4CqYaEj+xw0w2NkZVPAyeIVyx3rPSg8my0K05PJKu
	9fZ/A2WX5cVuNtYHkEQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqZ3-0005z1-P8; Tue, 21 Jan 2020 10:15:17 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqYG-0005PX-4Q
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:14:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 47FB1B2C9;
 Tue, 21 Jan 2020 10:14:25 +0000 (UTC)
In-Reply-To: <20200121100150.31660-1-geert+renesas@glider.be>
Date: Tue, 21 Jan 2020 11:13:56 +0100
Subject: Re: [PATCH] arm64: bcm2835: Drop select of nonexistent
 HAVE_ARM_ARCH_TIMER
From: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
To: "Geert Uytterhoeven" <geert+renesas@glider.be>
Message-Id: <C01E1Q2TFG55.35B3FH1ISNZQO@linux-9qgx>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_021428_343004_C6EC1FE6 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Eric
 Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com, Gerd
 Hoffmann <kraxel@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue Jan 21, 2020 at 11:01 AM, Geert Uytterhoeven wrote:
> Unlike on arm32, the HAVE_ARM_ARCH_TIMER config symbol does not exist on
> arm64.
>
> Note that the toplevel ARM64 symbol always selects ARM_ARCH_TIMER, so
> support for it is always included.
>
> Fixes: 628d30d1ccb897fe ("arm64: Add platform selection for BCM2835.")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks,
Nicolas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
