Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2BA183B70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 22:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnUKnU4aFZYmnsu18X42xgG91yj4OzRR8f31LPQqsyw=; b=tmMQjW71CSEJa9
	MZ8YZQB1Mwo55uVGDvnrwofcmpJEbmOwW0+R4WM0brQdc/cGKvIMX8DihOmdenw5XJW/EOBp+Px1g
	SW91di3mhvh8UyW5R29LM2vKnlMC9XqHiwGW+MOElQYaZmMbYkaIY/+EzmKcnFbluKmZ4vXUrKwuW
	vCRLH2tH7aHpZI8PeS//JKyXmGy8zwEXEciZQ2BYpTU2v0LyNNFkQSL8wdAwoZwgBBPVLwgQr4UNt
	KZGCYWKDYndBdzt55dJ/WPJYbmn+D3GDw+pL9pFKZeZz8fGDDBnVe1zU0aQqXwzXcmFvfJjKqXy7q
	DAVAxHk1DYwkF1zh9zqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCVUU-0008LV-RW; Thu, 12 Mar 2020 21:35:42 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCVUI-0008Km-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 21:35:33 +0000
Received: by mail-ed1-x541.google.com with SMTP id ca19so9322908edb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 14:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w1zcQ0pwsk6Sv5HkuPglXPmgpcyE2cmpz+kIS0DS4nw=;
 b=Ns03hq698c5nJGC7j/6c5N9u3dyz/UKqOCtYtrfKIIrjDDTWfxUyd2jEas6KNqlSmI
 Ld+BKVByi4vsTqlmcAENsFHkbaraOdhSfotILQOcUREF4Wr8Gvch7+9HK/pW48ygG9N9
 zP9ub4iFy6Oq+NeRdx1ceKEDkdlpyrLpL5HSY0AnNqDioQDmFwlSC2FFeWVTCSlsGPg9
 hiLLtO0NsC0jVvy2RP1EaRwB9D4U4lGYVFxmN05EKPV76oRZ4r36Ttk73BzYsg7uy3vC
 ph8W4hF6XzQSy8FczqEZ8QyVw3G/uExf9L8sYjfjKS8wzdZz224ncurQFa6PKElVa6D1
 C+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w1zcQ0pwsk6Sv5HkuPglXPmgpcyE2cmpz+kIS0DS4nw=;
 b=nHrSRGLwb983h7mqB3Of2ytomY36kZRBwAm94T00JIyRLgzQBMuoMadJ82DfkVeV6y
 kClS5iTPGGKshDva/MLsAHyo6gkUjiT+VCDeYlEBVWj6R2XNefaj4gR5G3uKDJ3HL4go
 njuNbeVEtbzI3B6UvH8t31mdxFvAKIRO93cZlpnmMtHhgn7M0ltrFeyJAsXj+4bYuD2i
 a8KtcGYJOkA3AcPDDCy5tkcAYIYutXJWSAC3RPv1YtKZODiHV5499UXUAzdxwWafy1Ii
 Caeu1sunQdu/P3pBOk0H0ZqcREotrAPPSbk/pW4ogXRXPoA4/eL/1heZx7CACAonfC+N
 pssQ==
X-Gm-Message-State: ANhLgQ3+vlKiLcM1vtPxfLk/0TuTWhG/pglsVTJBjw4jO815Qev2hO/I
 R0ldf90TLguqbG/sLIRafi2D3dPkSSpYD6rbdhs=
X-Google-Smtp-Source: ADFU+vsiyvjYIkOLbK9gTV05LGSSgyCx7Z0cDMbSZLbMQjbrdyinTU8gUMl1VUDmDLUkNlpuLq769IWuinYNYh/M5kg=
X-Received: by 2002:a05:6402:1c0c:: with SMTP id
 ck12mr10249138edb.145.1584048926737; 
 Thu, 12 Mar 2020 14:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200312164320.22349-1-michael@walle.cc>
In-Reply-To: <20200312164320.22349-1-michael@walle.cc>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Thu, 12 Mar 2020 23:35:15 +0200
Message-ID: <CA+h21hoHMxtxUjHthx2ta9CzQbkF_08Svi7wLU99NqJmoEr36Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] net: dsa: felix: allow the device to be disabled
To: Michael Walle <michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_143530_693047_5942CFF2 
X-CRM114-Status: GOOD (  23.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 12 Mar 2020 at 18:44, Michael Walle <michael@walle.cc> wrote:
>
> If there is no specific configuration of the felix switch in the device
> tree, but only the default configuration (ie. given by the SoCs dtsi
> file), the probe fails because no CPU port has been set. On the other
> hand you cannot set a default CPU port because that depends on the
> actual board using the switch.
>
> [    2.701300] DSA: tree 0 has no CPU port
> [    2.705167] mscc_felix 0000:00:00.5: Failed to register DSA switch: -22
> [    2.711844] mscc_felix: probe of 0000:00:00.5 failed with error -22
>
> Thus let the device tree disable this device entirely, like it is also
> done with the enetc driver of the same SoC.
>
> Signed-off-by: Michael Walle <michael@walle.cc>
> ---
>  drivers/net/dsa/ocelot/felix.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
> index 69546383a382..531c7710063f 100644
> --- a/drivers/net/dsa/ocelot/felix.c
> +++ b/drivers/net/dsa/ocelot/felix.c
> @@ -699,6 +699,11 @@ static int felix_pci_probe(struct pci_dev *pdev,
>         struct felix *felix;
>         int err;
>
> +       if (pdev->dev.of_node && !of_device_is_available(pdev->dev.of_node)) {
> +               dev_info(&pdev->dev, "device is disabled, skipping\n");
> +               return -ENODEV;
> +       }
> +

IMHO since DSA is already dependent on device tree for PHY bindings,
it would make more sense to move this there:

diff --git a/net/dsa/dsa2.c b/net/dsa/dsa2.c
index e7c30b472034..f7ca01d93928 100644
--- a/net/dsa/dsa2.c
+++ b/net/dsa/dsa2.c
@@ -878,7 +878,7 @@ static int dsa_switch_probe(struct dsa_switch *ds)
        if (!ds->num_ports)
                return -EINVAL;

-       if (np) {
+       if (np && of_device_is_available(np)) {
                err = dsa_switch_parse_of(ds, np);
                if (err)
                        dsa_switch_release_ports(ds);

so that we could enforce more uniform behavior across device drivers.
Then you might want to make felix shut up:

diff --git a/drivers/net/dsa/ocelot/felix.c b/drivers/net/dsa/ocelot/felix.c
index 35124ef7e75b..fbd17fa94bff 100644
--- a/drivers/net/dsa/ocelot/felix.c
+++ b/drivers/net/dsa/ocelot/felix.c
@@ -712,10 +712,8 @@ static int felix_pci_probe(struct pci_dev *pdev,
        felix->ds = ds;

        err = dsa_register_switch(ds);
-       if (err) {
-               dev_err(&pdev->dev, "Failed to register DSA switch: %d\n", err);
+       if (err)
                goto err_register_ds;
-       }

        return 0;

This has the disadvantage of not printing the "nice" "device is
disabled, skipping" message (useless in my opinion), but the advantage
of also shutting up on -EPROBE_DEFER.

>         err = pci_enable_device(pdev);
>         if (err) {
>                 dev_err(&pdev->dev, "device enable failed\n");
> --
> 2.20.1
>

Thanks,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
