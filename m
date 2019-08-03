Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2172080535
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 10:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZnT5tb3OP8bpA5YI3SUZzYvtcFLOfppTxAa7oYw0ww=; b=pddZpjGw0Btax+
	LtXcXou2uoa5YuawNI2AKibfTiJIRGFsuNAd1fB/2qp/msLjnZMcNekQ6CbJgy4xxcEgKYamfVj/4
	BQqhgCFq/TWemNUXmrQvpaauvzvgYdYVT+GWafdT+apImQcQ+ErKiAXimiXkrE8IP5dux68YCmJLj
	Bj084GDa+41DFq9BLlZiGcMkcf2wW9anNba/Qb2tOneEX5nEPazTnA1kzEIJzz6SoAVgVNPiZcbh4
	T3tB8luHCORpKgQqOcua7QJJVpRYK+k8p391Ag7EzXizj7BMGcBPZsMLuaQtlA88Nk/Fc8JTCdUtD
	KuQZj/GLxHazLcnIjqSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htp9V-0001iu-8J; Sat, 03 Aug 2019 08:12:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htp9J-0001hJ-7y
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 08:12:22 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A33D21726;
 Sat,  3 Aug 2019 08:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564819939;
 bh=48aWMdCMkjYO+TIY+je07w+cK/deQF45Y7RMj+QIouo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pV0Uoa3/a3Riy4c+yQtXWVkCtm1A2YJ18TfIDr8mmd4J/+Z2ksX/ijYwTKekSstPh
 XImanuCxwCysJLwakWH7twmKJmrc0+aIGc2jlFvPxznu9616ffVKnWOTQen6Tj4wm7
 y55vd7YQVjaTBFKZ3aeXoBXB1c2Uz+RGLrSBjLFg=
Date: Sat, 3 Aug 2019 10:12:10 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH V2 3/4] arm64: dts: imx8mq: Add opp-suspend property to
 OPP table
Message-ID: <20190803081209.GB8870@X250.getinternet.no>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
 <20190709080015.43442-3-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709080015.43442-3-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_011221_311705_64C5E25D 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: nm@ti.com, mark.rutland@arm.com, ping.bai@nxp.com, ccaione@baylibre.com,
 agx@sigxcpu.org, angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, vireshk@kernel.org,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-pm@vger.kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 09, 2019 at 04:00:14PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> 
> Add opp-suspend property to each OPP, the of opp core will
> select the OPP HW supported and with highest rate to be
> suspend opp, it will speed up the suspend/resume process.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
