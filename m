Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBF0589D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 20:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=piuCzsHdj2E6NvD5GBGnjwKh/YfQCXdW3lXqeQClXTw=; b=obdXqo/2lHZeyt
	nKqWHn0lxw0HTAHUVWcXtYSUrhN0BhR+yEE37gkgUt1UT5yCunN18O2pQF7ugPwy+ZrToQqIUNeKE
	Loz6nwcV9owKSpu8XV+Xc9JF3ConbLMq3FyyIlwunMLdFvHG8L50tKGMm+vg8tyAF9uGLV/wZHiEq
	oNz5aLJMmB1h5BP3hbw6J9j77Rmwygzhe7e90SaTUviLc62X6jn8rFbmuITy51AxhfvZILQim0mJA
	b/kuxW4iP7RFzzLhmPyANbEefyqQHz0G/81hb2ivm1Yp4P6M4e6TbCWiSDPVhLWJpvdNex/D+V8hC
	TGNhZgeEWn0M8gGH/P7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgZ2o-0005zv-RL; Thu, 27 Jun 2019 18:22:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgZ2b-0005zc-8O
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 18:22:38 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D274720644;
 Thu, 27 Jun 2019 18:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561659756;
 bh=n60tYciFZ/rJjYb/1k+C2pWN3/F6CRA6F5z90rAb65k=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=E8nmK2zzxL74/hvLttnn9Mj59gGHrsvRd9F1cHH0d6FnOpmhYMCeYa8/78C+bywPP
 4diOqXEYmZTrmTIWQUHKBWVGxgONk3IKatkCs/SjO0mPPtXWuB1jUbGzEVnVEOAZlQ
 XEdJNT2JdveWMHAK98k838m2Vp5+UVt3vcfFqdPQ=
MIME-Version: 1.0
In-Reply-To: <1561650825-11213-2-git-send-email-claudiu.beznea@microchip.com>
References: <1561650825-11213-1-git-send-email-claudiu.beznea@microchip.com>
 <1561650825-11213-2-git-send-email-claudiu.beznea@microchip.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>,
 alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 mturquette@baylibre.com, nicolas.ferre@microchip.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 1/7] clk: at91: sckc: add support to free slow
 oscillator
User-Agent: alot/0.8.1
Date: Thu, 27 Jun 2019 11:22:35 -0700
Message-Id: <20190627182236.D274720644@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_112237_310338_135EE17F 
X-CRM114-Status: UNSURE (   5.78  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Claudiu Beznea (2019-06-27 08:53:39)
> Add support to free slow oscillator resources.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
