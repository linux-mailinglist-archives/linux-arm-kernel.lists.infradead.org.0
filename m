Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCBD16972C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 11:17:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSw0MzmmmVsSxmMQa96ixs5RiHsMeqSL63t4jJ2th9k=; b=rnb3GHbFeZ0CQZ
	3btTHQn6wXsQa4U3O3OcOf5Ab6Vp8RJwsmV80yWOCWgstyIPd/QdpQzBgfOBuf2/q+TsQ+G9FX0ek
	xhaUzmeRVjHyVp3rIAbXyCz+H4nVr69zEBYgl6fhyJRxnhTCwwQ4d9Z0SHzSRxZxlkSXFWU1AdLEQ
	7CL1E9lAJaUZ/Q9n0tsKlXBFCnQu1x/4jwcnI+DdBqf0UCNKseGEtM9r7KuLnzSzIztWNgxn/rPZR
	CPKwaLl5xUYLJpTmqNK8etCyiqI4I29oPa7ggAPqlrfq583cDp7GweXLu9Kd/WXvkK/PRqo/NRxVN
	dvypA8BayMqjRGzibfxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5oJl-00025y-NG; Sun, 23 Feb 2020 10:16:57 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5oJc-00025W-T8
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 10:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582453007; bh=z9sC5wOeZ8k/vAYXkg0uXqw7iHlxu3PkoDa1zkNANqo=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=EUkfKzysbsZv/G2CQHBgmg57Mjo5pY2Tv1ICSiqbr8bgTmRbvOiwKlrH0dI4iCKH6
 f2sR6XefKn/pzCE9nQQooHrTywRSCrda5EPehSjYOPf72B8p0pFhcn/2XOu6YgLyb4
 +u7CCVPdFCmvzZ6giMTnggkNR5+KOfBuY8uuyhII=
Date: Sun, 23 Feb 2020 11:16:47 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] ARM: dts: sun8i-h3: Add thermal trip points/cooling maps
Message-ID: <20200223101647.wqhya3uqvgmsvj32@core.my.home>
Mail-Followup-To: Chen-Yu Tsai <wens@csie.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200222214224.209860-1-megous@megous.com>
 <CAGb2v671FS+k07xWRbr1+3XWNKAsVx2AaWKOrDfyYpt2Lf-gtg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v671FS+k07xWRbr1+3XWNKAsVx2AaWKOrDfyYpt2Lf-gtg@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_021649_110513_DC1EB762 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Sun, Feb 23, 2020 at 11:29:31AM +0800, Chen-Yu Tsai wrote:
> On Sun, Feb 23, 2020 at 5:42 AM Ondrej Jirman <megous@megous.com> wrote:
> >
> > This enables passive cooling by down-regulating CPU voltage
> > and frequency.
> =

> =

> Please state for the record how the trip points were derived. Were they f=
rom
> the BSP? Or the user manual?

I used a slightly lowered value from the BSP code. 110 seemed like a lot for
the critical temp. So I rounded it off to 100=B0C.

https://megous.com/git/linux/tree/drivers/thermal/sunxi-temperature.c?h=3Da=
83t-3.4-bsp-tbs-a711#n1139

H3 lists the same recommended ambient temperature range as A83T. -20 to 70 =
=B0C.

regards,
	o.

> ChenYu
> =

> > Signed-off-by: Ondrej Jirman <megous@megous.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
