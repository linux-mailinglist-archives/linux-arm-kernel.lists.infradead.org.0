Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EB212D878
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 12:53:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4YrQJRzOpZj66UrysodXFrCbbfbchaKZ4+JPMJW5yU=; b=DUHqEvHOxBSSOk
	4uRg0a0dVODER3IaCGn5FS8ZMNVXNCPeZNPr2PK8keaAxr3DaN2TTRUHpB9q+GbekWzLmibNVHNkS
	EfeVSW02tQAjSTVm87fmX9Y6N2/tIONFQBQfsS1ccNtgtHpQ7M6wtTnr+N+Sf8JjXcZfAxjgGsG9y
	roxdxn1voFd8MTvNQRUp3whnHeLB3nj8M47FKwGvxtmU2GcIEnrvNV+cqaa6T3b+qpmQgGa2sMHdK
	F7iAD6D5GrGy8CxfaARFRp08hbJsRKgDEkDN/ORspplSC24S0xXerb3/u6eKqjC4gk+k/pOkdFXVe
	OHU2hWc5/xvE/a9ma5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imG59-0008HB-7c; Tue, 31 Dec 2019 11:53:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imG4s-0008Fb-35; Tue, 31 Dec 2019 11:52:47 +0000
Received: from [217.166.244.239] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1imG4o-0003ri-AR; Tue, 31 Dec 2019 12:52:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IR on Beelink A1
Date: Tue, 31 Dec 2019 12:50:31 +0100
Message-ID: <30349756.SWxbmzi8ve@phil>
In-Reply-To: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
References: <44269c08e2a5d75b03ded87d2eb11621762d8249.1577636223.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_035246_284547_1C85E52A 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 29. Dezember 2019, 18:48:05 CET schrieb Robin Murphy:
> Apparently I wasn't paying enough attention... And nor is the lazy
> test of `cat /dev/lirc0` sufficiently blunder-proof. Oh well, with
> the correct polarity, let's also hook up a keymap now that one for
> the standard Beelink remote has handily appeared.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---

applied for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
