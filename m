Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2AF1C49A1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 00:36:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNywWLWHz16JYoMggZCcTEMTWmUBUwZjFHCn8ll4VPQ=; b=hGbdvji2H//xT4
	v5ICByoQwXLXgrsWEzjoGvB2hLGmq2gZ91rfFzrbEvs6veNnMcbcCh7e4XbIk3DPII4F4CK0yD4Z8
	3mrjNcqI5N4WZzY6ET51DZwGUtwVuPW16Dvvzqir/laWQ4+kZSH4p12mF1Msh67V+P30tANFW79OC
	Xps9kfJhDDXqKyAT+cTF9V/qalZ53r8YvKW+ZzShGZpnPfEhX8dsnWG3H2wT5X3E3jT4q41eiO9Rp
	ZDsnHvVdMcLXMmlX+u5RLIAFvAQItUv8ckvytUv6tRXQRZxFD0uCVGr9KLUDtx5L4aWED9D3oBa5g
	LXINv4QAOZtM2+wYiAwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVjh9-0001cj-Cj; Mon, 04 May 2020 22:36:15 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVjh3-0001bb-Pd
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 22:36:11 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49GHks2CQ0z8r;
 Tue,  5 May 2020 00:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1588631766; bh=r9Ra0YsTNI47z6MEyzSs2RXlk4X+BQLFr0esPWmvCXg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eDpXtSDzNBSoyYdFn2P0bsWoUvPEC9Um/JcPWFcXE0GRu5RqGFbwQ3WVQCIvasKj/
 ezBtzKnZHmBd4lbrfJp0Iy8KuEWGqxK67p2cywxnPWQFSyUK/cQwvrI6zPlCPqLFrX
 nf5HbWEGPa8+5u6gbVOo0duiz+GqulhBTx6zSG3HpEyQoVEZr7dqi1XSCnW4MrgZF1
 i2y92nuXpIpcfsBqLJg9iBbKW1t8iNacBP2ILye/1C7wsCrHrmzbPPWFfDlui0iQWP
 UHPObRQevE9wXlMf8WjCsBtYCxqKEsrxNTTjaHm2X0HVQaTmnQM+jIsuyxFH8MufYs
 7X1mcVCx41/sQ==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Tue, 5 May 2020 00:36:04 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH v6 2/3] clk: at91: allow setting PCKx parent via DT
Message-ID: <20200504223604.GA16549@qmqm.qmqm.pl>
References: <cover.1588623391.git.mirq-linux@rere.qmqm.pl>
 <fd853126e9971b9ef9bdcfe469ed3146a0cad92b.1588623391.git.mirq-linux@rere.qmqm.pl>
 <20200504204447.GL34497@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504204447.GL34497@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_153610_001853_0E82DC88 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 10:44:47PM +0200, Alexandre Belloni wrote:
> On 04/05/2020 22:19:17+0200, Micha=B3 Miros=B3aw wrote:
> > This exposes PROGx clocks for use in assigned-clocks DeviceTree property
> > for selecting PCKx parent clock.
> > =

> > Signed-off-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> > v2: rebase and update to clk/clk-at91 branch
> > v3: rebase
> > v4: no changes
> > v5: no changes
> > v6: no changes
> > ---
> >  drivers/clk/at91/at91rm9200.c    |  6 ++++--
> >  drivers/clk/at91/at91sam9260.c   |  5 ++++-
> >  drivers/clk/at91/at91sam9g45.c   |  6 ++++--
> >  drivers/clk/at91/at91sam9n12.c   |  6 ++++--
> >  drivers/clk/at91/at91sam9rl.c    |  4 +++-
> >  drivers/clk/at91/at91sam9x5.c    |  4 +++-
> >  drivers/clk/at91/pmc.c           | 12 ++++++++++--
> >  drivers/clk/at91/pmc.h           |  5 ++++-
> >  drivers/clk/at91/sam9x60.c       |  4 +++-
> >  drivers/clk/at91/sama5d2.c       |  4 +++-
> >  drivers/clk/at91/sama5d3.c       |  6 ++++--
> >  drivers/clk/at91/sama5d4.c       |  4 +++-
> >  include/dt-bindings/clock/at91.h |  1 +
> >  13 files changed, 50 insertions(+), 17 deletions(-)
> > =

> > diff --git a/drivers/clk/at91/at91rm9200.c b/drivers/clk/at91/at91rm920=
0.c
> > index c44a431b6c97..8da88e9a95d8 100644
> > --- a/drivers/clk/at91/at91rm9200.c
> > +++ b/drivers/clk/at91/at91rm9200.c
> > @@ -100,7 +100,7 @@ static void __init at91rm9200_pmc_setup(struct devi=
ce_node *np)
> >  =

> >  	at91rm9200_pmc =3D pmc_data_allocate(PMC_MAIN + 1,
> >  					    nck(at91rm9200_systemck),
> > -					    nck(at91rm9200_periphck), 0);
> > +					    nck(at91rm9200_periphck), 0, 4);
> >  	if (!at91rm9200_pmc)
> >  		return;
> >  =

> > @@ -159,6 +159,8 @@ static void __init at91rm9200_pmc_setup(struct devi=
ce_node *np)
> >  						    &at91rm9200_programmable_layout);
> >  		if (IS_ERR(hw))
> >  			goto err_free;
> > +
> > +		at91rm9200_pmc->pchws[i] =3D hw;
> >  	}
> >  =

> >  	for (i =3D 0; i < ARRAY_SIZE(at91rm9200_systemck); i++) {
> > @@ -187,7 +189,7 @@ static void __init at91rm9200_pmc_setup(struct devi=
ce_node *np)
> >  	return;
> >  =

> >  err_free:
> > -	pmc_data_free(at91rm9200_pmc);
> > +	kfree(at91rm9200_pmc);
> =

> I missed that in the previous review but shouldn't that change be part
> of the previous patch for bisectability ?

I was sure I already pushed all of them to the first patch...
Fixed in v7.

Best Regards
Micha=B3=A0Miros=B3aw

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
