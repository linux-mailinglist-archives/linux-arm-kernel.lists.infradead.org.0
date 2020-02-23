Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B34E169728
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 11:11:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aefmenuyGc0vb4RcU+l3GfiKoY/BUGuc+6EHwtRJuwk=; b=lKm2tjcaiJHIzP
	KAQ1KnoMoZnRvtapH6SAZVX/RkLBPhJ/b3uRkJaf09RJsgyGumDqPZ8PXTSQi0jW0YhaCX1rpQVQS
	qYCdA/5b6mw4gNerYEFhCWPqZSUXJ02hym0FfurUgGbpet/jIOGYvbIGEH23lD5b2xVyIsgW/JJPs
	Uc3DDGWhBh1vluAvLNzOmPFRD4cArzEPvPyFJvdh9Rs15DgISUt66bzVnEo2JnsD6G1hS/3yPqL6w
	/ep8312J92tqiXyQbLxpbX9FNwgBYOnxgNJ4/MiX/7/4MMLYGRpsm1+DjBl3UY4FuQTklW1uMtZtk
	bW0RkwrkDMixr9vlqqNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5oE3-0000Pv-3a; Sun, 23 Feb 2020 10:11:03 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5oDs-0000Pb-KV
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 10:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582452650; bh=qHK7thdvdqT9t4EBxhrZdrfCjokfExVrtqLGFwi71Nk=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=QZnsVYfhoZudqeACNggVIuz1GgSeMuF7BQFqwhDGY3UDRBtKEdaAgDhgEDk+S/6EL
 KyQ+Ei1uRjoxnZQNWDJmEjv4+5r0MI6L2njKIKYTp/1UwU3YtPLjBp2PiZFVJAsBnY
 ygFXrtnOGH11lEmUU1yDBwLgAUJmMHzW+Pa1XfS8=
Date: Sun, 23 Feb 2020 11:10:50 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] ARM: dts: sun8i-a83t: Add thermal trip points/cooling maps
Message-ID: <20200223101050.lqe5uegpmoyqvna6@core.my.home>
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
References: <20200222214039.209426-1-megous@megous.com>
 <CAGb2v647zKVrDvnHeLvwNPEZLX+yTgPq-x7MJkp9=duzkQN3mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGb2v647zKVrDvnHeLvwNPEZLX+yTgPq-x7MJkp9=duzkQN3mw@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_021052_842935_1D674632 
X-CRM114-Status: UNSURE (   8.95  )
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

On Sun, Feb 23, 2020 at 11:29:07AM +0800, Chen-Yu Tsai wrote:
> Hi,
> =

> On Sun, Feb 23, 2020 at 5:40 AM Ondrej Jirman <megous@megous.com> wrote:
> >
> > This enables passive cooling by down-regulating CPU voltage
> > and frequency.
> =

> Please state for the record how the trip points were derived. Were they f=
rom
> the BSP? Or the user manual?

The values are taken from the BSP for A83T:

https://megous.com/git/linux/tree/drivers/thermal/sunxi-temperature.c?h=3Da=
83t-3.4-bsp-tbs-a711#n747

The datasheet only mentions recommended Ta (ambient operating temperature) =
range
-20 to +70=B0C. So die voltages will be larger than that. I guess that roug=
hly
matches the BSP values.

regards,
	o.

> ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
