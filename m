Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D648188069
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ELxMCVT9IZz8+MjYLSw1qfknFd2jAbmi1mhMqmUmcLc=; b=kz1XKQxfHeeZub
	5PQVhNObQ6UG6ZUYgFhSwKRCYL4IvEs2c3m7hw/YN8MWnZ9McxB/vbb/ffubowmt7qivjotmolMVn
	zJ/UuiKtM0jDLG6vrcLpijTDeWgwo+1sLQFcPjuxUKOBqfs243vm9lDnOA08FrH5KhOzwZ1550ymm
	eqxYoZ3slhFHTeHc2Oopx2dQipa77ApdJLjlhhsA3VT1QlM+7jZ0LHQA10yZHaVlrGDMv10K63yWn
	cT4QZKDgfV5d/jUuG0IjWypnqkx9zxGVcZDgPswyaSK4F6eTFmhDp7xJyT4eEdvfA2RSNe9pu0HdD
	TJJ7VLp5tK3Ymkr6EeGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEA6b-0001dC-9i; Tue, 17 Mar 2020 11:09:53 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEA61-0001I9-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:09:19 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 17 Mar 2020 20:09:15 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id F129C18005C;
 Tue, 17 Mar 2020 20:09:15 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 17 Mar 2020 20:09:15 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id BE23B1A0E67;
 Tue, 17 Mar 2020 20:09:15 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 5A436120134;
 Tue, 17 Mar 2020 20:09:15 +0900 (JST)
Date: Tue, 17 Mar 2020 20:09:15 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH 10/10] arm64: dts: uniphier: Stabilize Ethernet RGMII mode
 of LD20 global and PXs3 ref board
In-Reply-To: <CAK7LNAQ98kUHQS33jQL+Kq5E48H75yvYk_qsWxT9ubrP-yRCdg@mail.gmail.com>
References: <1584061096-23686-11-git-send-email-hayashi.kunihiko@socionext.com>
 <CAK7LNAQ98kUHQS33jQL+Kq5E48H75yvYk_qsWxT9ubrP-yRCdg@mail.gmail.com>
Message-Id: <20200317200914.978A.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_040917_974754_3916DB09 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Mar 2020 21:55:09 +0900 <masahiroy@kernel.org> wrote:

> On Fri, Mar 13, 2020 at 9:58 AM Kunihiko Hayashi
> <hayashi.kunihiko@socionext.com> wrote:
> >
> > The RGMII PHY needs to change drive-strength properties of the Ethernet
> > Tx pins to stabilize the PHY.
> >
> > The devicetree for LD20 global board specifies RMII PHY in the ethernet
> > node as default, however, there is also another board that has RGMII PHY.
> > The devicetree for the board doesn't exist, so the users should change
> > the ethernet properties by outside way.
> 
> Probably, users should change pinctrl_ether_rgmii
> by the same means.

I think that it's reasonable to have a devicetree for another board with
RGMII PHY.

> The change to uniphier-pxs3-ref.dts looks OK to me.

I'll split this patch for uniphier-pxs3-ref.dts.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
