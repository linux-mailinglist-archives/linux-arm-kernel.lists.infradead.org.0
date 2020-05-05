Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9371C5860
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE/ztOLeAPkZUW+zVV5znuZRTVVEdKYMVrhnSUwwUqc=; b=YwCJrryr0fPNKG
	z/QDF8Aqdb4QVABnt+Kv2zeuh5fChy5DW5HEJXsc9gdJOK7HYqisBeUS1oty2FCRX2IuhXRyhnWmL
	/Q2LD55JkMDbOO6ggdxE06WeN60tY8NBXZM6/6EVfeFcDyrHdQj9dblGYPGktB5EaPv5hrfsx0ly9
	8kkGm4YckDjnaHECWtUAo38ZskeM9TMWSMyo/Zc5K7b5kgRiz9XwgEGCcgKEsKVj5inyNgmBGkXVA
	lgHQVP2UyuvIYJ7xk2aHGXSNm7WdgVb47XdhMApBmUis4eNNOtBHM/VW1NG8ZcmSvaTiWmybxLvHS
	sLfZSM4Ul6EcRR3Sf/Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyKc-0004Sd-9q; Tue, 05 May 2020 14:13:58 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyKG-0004Ld-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:13:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id u22so833703plq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vUI7H3zEQ9H8QIwCQ24EAq2pWsz3laTp86kjJwGCy2A=;
 b=YkZw8YQXDccsDbBS4C0O5LMJGsSXIuT1ovPSHZeibMB4ZhJbetT5karBIQDGZyMu0k
 IBdRJNOVOa1GNEbhoAuCCrvOK95e4ExfkjwNMMqw8yyFSpe6/HZclQjj/o/y/DEjyXQf
 D8bD98dH4TU8N9iILFu6DwhyrLrlFYj24qKgldff3S35uVjPxaC8qpPHMbhOElowls51
 NA+CUw+XfSpefYj0MsjjxqdD/1An+fcrvFfnPRdSVMHOAFB4Q7IZukrTfCHjNl6LuXlX
 SkcXFYf+6CloWECw34gLTvnp/U4XgJ2AEyem4IDuABqVEJH0tksWHndPxMQsIdIQQlgL
 50zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vUI7H3zEQ9H8QIwCQ24EAq2pWsz3laTp86kjJwGCy2A=;
 b=PS0lBtGYW+j6ftyu21PK9B4WwaGs4Nm6A95RtTznmlXOW3i7gKZPt+bXg7Ooo3EMD7
 /i/qsTVRsGOwI8Cr67MwC6M2+niPTFoqgm7jTK/54b5SguLneex8LwvAk/wCR0j6S05b
 ZISIxrOfNdlCJq8pQagibvJbZiP6Tl5G+Z30WcjDFMyxR01bzoQ6YGDZsAFfBa5zgwLD
 je/UtyQLM0zgLHX3aB3XdO5waVQQf638oOF1q4p8Bw5eYo0ntao8q154PtE3WRlGTjjO
 tS3+j7nA2d/pwQGaAeX2WN1k3pUOx1uq5IiBAsMOfdGw7y7snGnG9I+hPdYn3vxoJ83y
 8Mbw==
X-Gm-Message-State: AGi0PuZevll0WgKkBwWSdDW+Ii2FadaC9Ni2fS6SFUGufEX4nADxZTxX
 SSCo6sYy/PR9MiW3aeJV12w2fp6ZOWdZqqrM29g=
X-Google-Smtp-Source: APiQypKwqHcpUrfpqYd5uUdTyj3td5+1Wg/esi83wvGDAF8yQlrbm2K4xPgTkvNlPBQj0TfYH1WbhCd8ME96fqQEWY0=
X-Received: by 2002:a17:90a:37a3:: with SMTP id
 v32mr3401271pjb.2.1588688015023; 
 Tue, 05 May 2020 07:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-4-calvin.johnson@oss.nxp.com>
In-Reply-To: <20200505132905.10276-4-calvin.johnson@oss.nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 5 May 2020 17:13:28 +0300
Message-ID: <CAHp75Ve4RMhfkNjO9NtNpjT9uRi3p1BAifCGDrB2fhAyBA8YtQ@mail.gmail.com>
Subject: Re: [net-next PATCH v3 3/5] phylink: Introduce
 phylink_fwnode_phy_connect()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_071336_286761_B9019CBF 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>,
 Cristi Sovaiala <cristian.sovaiala@nxp.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Florian Fainelli <f.fainelli@gmail.com>,
 "Rajesh V . Bikkina" <rajesh.bikkina@nxp.com>,
 Pankaj Bansal <pankaj.bansal@nxp.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Diana Madalina Craciun <diana.craciun@nxp.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Florin Laurentiu Chiculita <florinlaurentiu.chiculita@nxp.com>,
 Madalin Bucur <madalin.bucur@oss.nxp.com>,
 Makarand Pawagi <makarand.pawagi@nxp.com>, Varun Sethi <V.Sethi@nxp.com>,
 Marcin Wojtas <mw@semihalf.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jeremy Linton <jeremy.linton@arm.com>, linux.cj@gmail.com,
 netdev <netdev@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 4:29 PM Calvin Johnson
<calvin.johnson@oss.nxp.com> wrote:
>
> Define phylink_fwnode_phy_connect() to connect phy specified by
> a fwnode to a phylink instance.

...

> +       int ret = 0;

Redundant assignment.

> +       if ((IS_ERR(phy_fwnode)) && pl->cfg_link_an_mode == MLO_AN_PHY)

No Lisp, please.

> +               return -ENODEV;

...

> +       phy_dev = fwnode_phy_find_device(phy_fwnode);
> +       fwnode_handle_put(phy_fwnode);

Hmm... Isn't it racy? I mean if you put fwnode here the phy_dev may
already be gone before you call phy_attach_direct, right?

> +       if (!phy_dev)
> +               return -ENODEV;
> +
> +       ret = phy_attach_direct(pl->netdev, phy_dev, flags,
> +                               pl->link_interface);
> +       if (ret)
> +               return ret;
> +
> +       ret = phylink_bringup_phy(pl, phy_dev, pl->link_config.interface);
> +       if (ret)
> +               phy_detach(phy_dev);
> +
> +       return ret;

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
