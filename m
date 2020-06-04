Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E811EDC70
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 06:41:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqpIMFV7HPQP+mlsLtwZchx0ex02Tb6g5yzD72lo2Ac=; b=Q2NHNsTnH4pgxH
	pkGL7y+sIKEIlg8y1LO6oNtqbXQNT9p8pn3WSbzIv1JR9TwCKX9pSDFYcAaOXCVyAMzWFvPUwSC88
	FyNJgYGQpgNb62p8S2d7vUZWz4hqXKkBC1No+jZImvHKkJhdyNeeb3YFhrMG5lFesEDrkAllqyCT5
	TESrCGhGTABVV+QBJLmeDsvxfre+fVwr/DpNg0GLIKpYV/+/IYzpVmQMzwE5+StEqmARBxBYSEBgY
	Idydv/Wr0IgAnt5EpK/a6cxepH3R8/0WvlEVL3Gg1m7Fq07l1AzwwLBaang2hBT93fe5Fi1ZXwXPk
	zypbOCKBGcQ0UZbZydrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jghgT-0005pm-8Y; Thu, 04 Jun 2020 04:40:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jghgO-0005pP-3B
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 04:40:49 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACF4A2072E;
 Thu,  4 Jun 2020 04:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591245647;
 bh=13tLzVtmrPoCVWrBPWoOY0F4+WIdkvFKkcoN1yl+MH0=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=frhnRWAKp2lW4rQNOfVFrP4rn96xX6cZ26uWHBlxtGm3C90HY2rneICf/wUkhBuMM
 eZAuEIKKvg2ZG3GZ2GWWot6/CeZQHmF97Bfqmh3z2X6dQjaV7QklQFXIURVesn6QUm
 sRpytvTHD6Vb65AnaVPe0rkOnrqmaaT1JESSYmXI=
MIME-Version: 1.0
In-Reply-To: <1591234387-15059-1-git-send-email-Anson.Huang@nxp.com>
References: <1591234387-15059-1-git-send-email-Anson.Huang@nxp.com>
Subject: Re: [PATCH V2] dt-bindings: clock: Convert imx7ulp clock to
 json-schema
From: Stephen Boyd <sboyd@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>, aisheng.dong@nxp.com,
 devicetree@vger.kernel.org, festevam@gmail.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mturquette@baylibre.com, robh+dt@kernel.org,
 s.hauer@pengutronix.de, shawnguo@kernel.org
Date: Wed, 03 Jun 2020 21:40:47 -0700
Message-ID: <159124564701.69627.4748922307258479623@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_214048_157751_92B06080 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Quoting Anson Huang (2020-06-03 18:33:07)
> Convert the i.MX7ULP clock binding to DT schema format using json-schema,
> the original binding doc is actually for two clock modules(SCG and PCC),
> so split it to two binding docs, and the MPLL(mipi PLL) is NOT supposed
> to be in clock module, so remove it from binding doc as well.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
