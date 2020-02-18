Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9665162B3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnoC1B/Ezci/Z7+6OvGxEZJThfHfH3C/7UMTDNMiaXQ=; b=bTFszzAdOndgzi
	cY77B0RGc0Y3xrAZc10JfhcB766p79R5i0Uyb890iKzAHQNtK3sOcuWC06WaovwgBzi1LY4QgjJX5
	wUUyWI2kheB6hCCReaiKAGmhzxcaDiR1RkyEVorGuj1yzi10cb/XDdV1mkiL37G0DmrGyrLiF3SCF
	GXXSZ6VC9DZSiVFzeWkndoKoPUzK7zOARmMBX4LTaG0O+NFY47URlUPNPOxhL9z0N1JO6vB758oAH
	oBwWKDGa8gPt8xt8GknkZZDy11rMKikwFoVzyAZM8qcu3vVB/uGhF3TaQsTXkolvsIshLirWnChq6
	znNgv4u91lj/YEDVCYTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46HG-0005Qm-EP; Tue, 18 Feb 2020 17:03:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46H8-0005QN-Lj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:03:11 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 036B0208C4;
 Tue, 18 Feb 2020 17:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582045390;
 bh=Pkh3+MVKZTQRwe6qGsimXYvavRkZ2+UBGlARjHQhXuM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=AH2Z7+rtO15bJVYGmNOVYNmBYuU6IWkyQakA8ANCSqQ+rVBQcmWUf3mKI0FlXUKDt
 Bv3Mq8SHomPyCUlk+h40wL2M9r2Va+3h9oe/BciiZN69eLlGO1OkBwdzEFMTZpoR8J
 Zl1iF3x7/ckMBjBK8CpfZbWa4hmw0eVrsTHRBlm8=
MIME-Version: 1.0
In-Reply-To: <1582023806-6261-1-git-send-email-Anson.Huang@nxp.com>
References: <1582023806-6261-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/3] clk: imx8mp: Include slab.h instead of clkdev.h
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com, festevam@gmail.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, peng.fan@nxp.com,
 ping.bai@nxp.com, s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Tue, 18 Feb 2020 09:03:09 -0800
Message-ID: <158204538915.184098.16137807611905794422@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_090310_729789_BFDA630E 
X-CRM114-Status: UNSURE (   5.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2020-02-18 03:03:24)
> slab.h is necessary and included indirectly by clkdev.h,
> actually, there is nothing in use from clkdev.h, so just
> include slab.h instead of clkdev.h.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
