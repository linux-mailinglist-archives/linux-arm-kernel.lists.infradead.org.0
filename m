Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFE675950
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+sCA9PpT2QkszCSIMqkjZKtPT8CBa0wqBbVJSenwWw=; b=LRsVf9RgFoh8oU
	jiDg6NLkRAJJ+vJGv1apob1/12KomEZQL8KIQ94CorIa9itFu12QVFD5BpE8P8lhUgQIDQq3Zxo6u
	tG82bBCQAy/77XyVba95kUbyjII4QNlKmvYV47t0lDPFwEMB+whxI6eQzUeKm7joVkeJWtx/LwWP7
	albfCUENAbkiaTDaOsCgyKrgiGrTNXHNGkVY8ejbRVTBuiyqvNwR6+GX4VHlXaP9niG0wqiEti1fY
	CoDRjDDUO1M/g+bY6E5/A+yjw3KfOOSPCCRWoPcuqUor4ON2WieldutWlspgDeZmfqPUY6jQW4XNo
	GQHcmMsucJDLg/QSWjgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkwc-0002tx-Jd; Thu, 25 Jul 2019 21:06:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkwR-0002t1-KO
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 21:06:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5EB94218D4;
 Thu, 25 Jul 2019 21:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564088779;
 bh=p9mkR+Gdya905GgF0OyxisK0iTc8hQ7GlRutorMJ5pE=;
 h=In-Reply-To:References:Subject:To:Cc:From:Date:From;
 b=pKTUTK6hmPaKykMz9Qjb8U43546SkjbmPc8Q6/eBQjtMDjax1X3BgKkVh1OGf2uBB
 bLwg+IEEm2nsJbEBbIH1w4cuy9y6AFZnNfggnKbgp8lBEp6NiVnlVoV2kSfu8bzt0i
 QWs9zgZrowICLTcVp8pEaREIz4IFTntCfQqjBS1Q=
MIME-Version: 1.0
In-Reply-To: <20190725020551.27034-1-Anson.Huang@nxp.com>
References: <20190725020551.27034-1-Anson.Huang@nxp.com>
Subject: Re: [PATCH] dt-bindings: clock: imx8mn: Fix tab indentation for yaml
 file
To: Anson.Huang@nxp.com, devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 mturquette@baylibre.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Thu, 25 Jul 2019 14:06:18 -0700
Message-Id: <20190725210619.5EB94218D4@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_140623_689138_64C2CCC1 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson.Huang@nxp.com (2019-07-24 19:05:51)
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> YAML file can NOT contain tab as indentation, fix it.
> 

Would be nice if checkpatch could check for this.

> Fixes: 6d6062553e3d ("dt-bindings: imx: Add clock binding doc for i.MX8MN")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Acked-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
