Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD30016AF3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6D299exrySGo0EC0QGJBkJ3vtYqG7qp9PY/49cUVCU=; b=BEFTSHLd429T2T
	UWy7w6J+RuxX6MyjX+byzwjmOsyCq209JDXenT0k0tCk9OGJ4Q8Di6iUXVD8nE76i9v4vG33QzfNk
	QKZOOuKrVvFk85iEjls8kLVg/6RonBcmpuOOzUXlDvX24hOoE/3ELwvqni/dtuB9y5Z3X8SnsTkaT
	uoi76B4gCGSEo4Zw36NAjoy/F5sJBuMH8tt25q/HjcuGYDVfVibL5ACpMALuhx3/KNITN98k5zm1n
	khVh5INjK6yS+4FX3O9f8TWuPjkPlDcdQids4BwRt9hcu9N8kmqO1PpBVYwycCWKbGlify7Oq5Ael
	AUnlDEDxrmaMR9jhcCDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IY0-0007sW-Gq; Mon, 24 Feb 2020 18:33:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IV1-0004n9-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:30:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id 84so5778909pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 10:30:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=pq6GSAYK4H+W5Z/lzKiek5aeX7rqYiIt2+bcNZslLYg=;
 b=eUBBV9tDY7yrhSRonCgvwzq/NRJKstkC56R2Cay6ne8H1xuRDdGKapCQE6oWy29RLr
 ZYIthA3p2vhOiUbAhDEIkJAxj9FdltuD0qfP+q3/LcU2jV6+3oXsSFBXrjhiPvfsdW4z
 sBkMe1JOSnfrzLLpPeGL9Xh6eDKyrZ+F3ptPWbU/VzlLBzrJ4Cq9mNxGVVIqdoDBHHIf
 tSMUqoSe422VQt/QN4XpBBlXWhx3mJnVhzLJ0lHb8e3R2s/0tbMOdJBkpiV9coZaUmRW
 oCpNryodOkfIWY0MNaSD5pTMIapa6Rh6j7+GD5FO7MJ9PRyjTqxO6iqlvKP/aWvLJPI5
 poWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=pq6GSAYK4H+W5Z/lzKiek5aeX7rqYiIt2+bcNZslLYg=;
 b=YMpZaypuCa4bqS88uHI5UutKxqTyeUoTJP4lnHqoM5k5hoey0s3fIG5XkttU618sHi
 2Q3fm/bjEmeXReRs+CchL3nHNa/QW4F8Pdnmvw/zyNfgWuH1GJmkO/+sX0KXLQA7l38S
 kOwjx08gsFJptpzWx92SRrKjtsqgDIIyfKkwovy611ryWgIDUTdl5GYDLpGF6NeyI73K
 868pEivJ0coxEo6k5ete3cy4mJbiPbHsM07wy+XOz5hU5vbqQXUxWGiy18r/tz1Al32W
 Cwx2NTkSF/FKW2IP/ztkKuCdsiEgAqOBEAEjfxJ1L16WnWHniJ4ogwZWU4KlP6L6YmQ/
 zCNA==
X-Gm-Message-State: APjAAAWhL1oZRdxrWpxei6mI9FMSvDObouS2Nqj8Y8PubvpY6W0YslqV
 IOcllIKMU3W49bHj87TnR6k=
X-Google-Smtp-Source: APXvYqw/0Z2SLf81F4zyq2z7mcNTzqNfLuTdXhEIPM14gzPyWllaLcP2ZXtrATAvk2samENioENhng==
X-Received: by 2002:a62:5447:: with SMTP id i68mr53703624pfb.44.1582569035022; 
 Mon, 24 Feb 2020 10:30:35 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id b98sm167511pjc.16.2020.02.24.10.30.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 10:30:34 -0800 (PST)
Date: Mon, 24 Feb 2020 10:30:33 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] watchdog: imx2_wdt: Drop .remove callback
Message-ID: <20200224183033.GB29799@roeck-us.net>
References: <1582512687-13312-1-git-send-email-Anson.Huang@nxp.com>
 <20200224102211.clzqw4vtzc4nz5df@pengutronix.de>
 <DB3PR0402MB391637EB54A1FD37059FBE47F5EC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <33c3778f-fc7e-8564-f767-91aafae03122@roeck-us.net>
 <20200224182522.33qeusb4xbxxt3o3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224182522.33qeusb4xbxxt3o3@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_103035_623773_9DBABB90 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 07:25:22PM +0100, Uwe Kleine-K=F6nig wrote:
> On Mon, Feb 24, 2020 at 06:15:17AM -0800, Guenter Roeck wrote:
> > How would you expect the watchdog core to stop the watchdog
> > with no stop function in the driver ?
> =

> I'm not 100% sure, but I think the situation is that you cannot stop the
> watchdog in the watchdog register range, but if you stop the clock it
> will never expire.
> =

> That's why I asked if the devm action callback stops the watchdog.
> =


Again, it should not be possible to unload the driver if the watchdog
is running.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
