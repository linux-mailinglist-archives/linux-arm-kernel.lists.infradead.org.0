Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DE5E649B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 18:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=da75QUHhhO4x7umKHEFZvikh3NFfy7e7Srd/FdYc4Qk=; b=WXMC5gqAojMs+T
	uS2S7wUhHrH22PvfWmKN8Z9dfjyIUQSpj9fh2S5Iy+cQPE59GL6mUb/2Mplk+38JLKWyfJqIldX79
	nORTIlw6MmNWx62gTTk3MsgnScsfR3Ie6mgOG7P3ECLzeXkBpY3UNV4rfoiUIruDgELfz8lZ5J/mQ
	K90gwWoXFmvLGkU0iu+LamRYa15Omr3+iO/FaGtgLWEbCzuec82HYLacbyzS04kAbKEBao3X9GCnn
	2W+q5n0JlYcsEJqwBSVRqVYvJYZnuIAQoza40T6kdgqeiM+otQNGgkGnN4agPWQVB49+rYM3h+AB9
	6dzt160rE/l+TCC22KOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmbN-0003zI-IC; Sun, 27 Oct 2019 17:45:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmbC-0002oy-I3; Sun, 27 Oct 2019 17:45:07 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOmb3-00088Z-Ja; Sun, 27 Oct 2019 18:44:57 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: Add doc for rk3308-evb
Date: Sun, 27 Oct 2019 18:44:56 +0100
Message-ID: <1753385.AINB0Y2Fk3@phil>
In-Reply-To: <20191021084642.28562-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
 <20191021084642.28562-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_104506_761980_1ABE942B 
X-CRM114-Status: UNSURE (   8.00  )
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 21. Oktober 2019, 10:46:42 CET schrieb Andy Yan:
> Add compatible for RK3308 Evaluation board
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied for 5.5 with Rob's Review, but did reorder to sort
the new entry alphabetically

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
