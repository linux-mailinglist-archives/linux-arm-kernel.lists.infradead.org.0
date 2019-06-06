Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AB23816C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 00:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRjHW4j4GEn45FZamcRnk3QZwioq0/FF6khaw2WqB6I=; b=b6tLGTfQOzsZI7
	Y8w1kkDeUQu5YMjLNSE0EAGfmN+ISfm66n6blsiIW/vcST3hiMXwKASl96w9tSQgLhvyKsPvFpEyI
	264cDQqxrPJOT2lBbPdvswEhhQZvMKVmNBPznNAoHn96aT4obMCOANXMSGxVnz764uwrjzKSbJOJy
	6g/WG4inEv/zMMjEf9OMsNRvZPyp7/x4DzroneFDaHYuUY/fWE+L4g58moQqpH9osvsZzz9Ab+GCX
	NuX/MssCJZ32ZfBl+qQpfPlMYq4VenorgFwk9t+Lt+mbVlWbkwwAzO8RAGIf8RzyPDW3OZdp9sJjG
	ok0ZBg3EgjN/0gzSsQyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1Lj-0004di-VO; Thu, 06 Jun 2019 22:59:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1Jz-0004UL-Oj; Thu, 06 Jun 2019 22:57:43 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3F3A2089E;
 Thu,  6 Jun 2019 22:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559861842;
 bh=SbcmLhRUMEcKE2G1wyLK7KO1wG+abbZtFt5UzD5yYPM=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=fLZhLm4O0ZRtATNhW6LC8DXAUlbFw6Hdz13pkrUZtvPnELiNLq2VReUt+CngNwlGD
 knziL1f0OQGfjCRdXxjd2806IfTPb5FK3Bqi+Iypc9kJPU2k3iD6SJOu/EVG9uOHqL
 /MBIOc9pI1yZaqRGKB3VCU/QwOE9nbYVyujz1y3E=
MIME-Version: 1.0
In-Reply-To: <20190502121843.14493-2-fparent@baylibre.com>
References: <20190502121843.14493-1-fparent@baylibre.com>
 <20190502121843.14493-2-fparent@baylibre.com>
To: Fabien Parent <fparent@baylibre.com>, mark.rutland@arm.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com, robh+dt@kernel.org,
 ryder.lee@mediatek.com, sean.wang@mediatek.com, wenzhen.yu@mediatek.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 2/2] clk: mediatek: add audsys clock driver for MT8516
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 15:57:21 -0700
Message-Id: <20190606225721.F3F3A2089E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_155728_928848_FEC133CC 
X-CRM114-Status: UNSURE (   4.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Fabien Parent (2019-05-02 05:18:43)
> Add audsys clock driver for MediaTek MT8516 SoC.
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
