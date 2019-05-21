Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D430D24C0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 11:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rC0/X78q/q6G8+5KTS8OCClm71P93A91kEpDbcTUNc0=; b=UdisrIk/CDsG9N
	htdIIKEkOq4cRkUlt/X69djH9b5zks5xedQjwCWpZ5jgsbNNhbzdcF2zj9gvddqZJkI6oPWtmyg1o
	fqOvu21D2f/NXUP3k01RTCjYCW7NgBoa5EUs1e8IE1qA/LFJ/AnAWMi9aH/cat//8vyOXPdBDPlgc
	YqtaU1D1w6HlypYP4YdGedY+g1E221066+hvCXh7WSmqJK9PVTUvSCVslmz/Z0j8N67JSg4giDg5u
	042jSvB8FZWeMcP6t7BIX2aMLJVe/Ot6UVYf5Rv0dm1g7rIR5bef5Dnz0IX2h3SEr0YQJf9Px4qp1
	OlZebAaCIi/1vEtbxojw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1Vk-0008A2-Ow; Tue, 21 May 2019 09:56:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Vb-000893-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 09:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558432591; bh=1nbvGwWgSb1jI/P1ZT27Mo4T3fhSGGa/u2NrHc/bhEY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aQxlmz+L5OjzAbaGr0IgpRjnbM2RyEQ9ga6eu6t3E1wgEuRsrhjeZ3D6nbtxshUqQ
 EFtz03J7GkN8M0jpVIqGGEF95yxB7bHBJWFoHkXR0AupOG3A5VI/5BhgWHf71ZAzVl
 J10mK1Th7bIsLg6pDXlJsqz4NYBtfHlHzsAteH3k=
Date: Tue, 21 May 2019 11:56:31 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Subject: Re: [PATCH v5 2/6] net: stmmac: sun8i: force select external PHY
 when no internal one
Message-ID: <20190521095631.v5n3qml5ujofufk4@core.my.home>
Mail-Followup-To: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 linux-sunxi@googlegroups.com,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Icenowy Zheng <icenowy@aosc.io>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190520235009.16734-1-megous@megous.com>
 <20190520235009.16734-3-megous@megous.com>
 <4e031eeb-2819-a97f-73bf-af84b04aa7b2@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e031eeb-2819-a97f-73bf-af84b04aa7b2@cogentembedded.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_025636_602021_36AEF49A 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Sergei,

On Tue, May 21, 2019 at 12:27:24PM +0300, Sergei Shtylyov wrote:
> Hello!
> 
> On 21.05.2019 2:50, megous@megous.com wrote:
> 
> > From: Icenowy Zheng <icenowy@aosc.io>
> > 
> > The PHY selection bit also exists on SoCs without an internal PHY; if it's
> > set to 1 (internal PHY, default value) then the MAC will not make use of
> > any PHY such SoCs.
>          ^ "on" or "with" missing?

It's missing 'on'.

thank you,
	Ondrej

> > This problem appears when adapting for H6, which has no real internal PHY
> > (the "internal PHY" on H6 is not on-die, but on a co-packaged AC200 chip,
> > connected via RMII interface at GPIO bank A).
> > 
> > Force the PHY selection bit to 0 when the SOC doesn't have an internal PHY,
> > to address the problem of a wrong default value.
> > 
> > Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> [...]
> 
> MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
