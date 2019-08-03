Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC3A8050B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 09:25:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p462cUMfuv30JYLXqyUBodK7gp1D8cBpvCzEhQMewpk=; b=ZNJ91n3Bn8cG8/
	PedMvptz5chQNpfFY1cHaboryAYeiwwgS29OmEFxeyw9errEgBI09ey4wUiPFxqRe8TSjcDlloc0C
	t7R+elQ4A0BHhfXR6EPXx1obVPgROWe4Dv/6dnnKyOC+HvZtJbyseUJO7ridcMSAUErndGt4TLqjI
	fepwV8lT8uKJxOYDRejdJRU9sLrmCTNMw7hAymMlMF4WqTLalcXX33PBSb4hVbDhxt0QNp6vgfOse
	Kv+3xmvDNs48Fzb/ywxD1BTReTd3SgYAU7MQ2W4HubGpFLg8n5HFROWQcfrHx4x1oEAR4xzZaADLn
	zP0tL4C5J9j7sDEGkx8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htoQ1-0005ON-G7; Sat, 03 Aug 2019 07:25:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htoPs-0005O6-A1
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 07:25:25 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 895942073D;
 Sat,  3 Aug 2019 07:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564817123;
 bh=nQgmvuwty+IpGuxuskizAqv+iX4PZOcNYWEpHdFpGzM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a3CYUCjcyMQlyHtmHrnAArp/g0S1/+DYikO2YC45lrhcYRLzSZ2wij3yNjgJenw9t
 Wx6ntrbnEVFpwlGmhd5JPvcZ1Ia5Ov5Rtcgs5i8obGAcNs0XIMHrOsrucrjaChxECQ
 n9G+lDPYPwaRHhy63ngunwzdqIwOHdGjaKaGnPM0=
Date: Sat, 3 Aug 2019 09:25:17 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH] dt-bindings: clock: imx8mn: Fix tab indentation for yaml
 file
Message-ID: <20190803072516.GA7597@X250>
References: <20190725020551.27034-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725020551.27034-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_002524_371121_2551171C 
X-CRM114-Status: UNSURE (   7.84  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 10:05:51AM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> YAML file can NOT contain tab as indentation, fix it.
> 
> Fixes: 6d6062553e3d ("dt-bindings: imx: Add clock binding doc for i.MX8MN")
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

I squashed it into the original commit.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
