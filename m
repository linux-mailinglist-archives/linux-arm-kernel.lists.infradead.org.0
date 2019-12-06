Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ADE115069
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 13:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rO3gvcPrtfusTHKosUWv18fs9XtbaPj2fpnFJX2WaTY=; b=aKCeeTdqWudKF2
	0qt0BkgKzQzlxcRL/5xlG/z+d/bU70tc9GJ3vloWoVYrIfBwTsHiXhDPNejJRMPi+eaDbIAv6Ny8r
	tc/monK+aN3zq7jaFeZjTQSFxY3Lu5XsGMdy0vvpZ7Qa0l3HcXEbqdf856tQhgZovCHLuaBzSbidf
	hTqC6jmWlw6iBruWdeaPUWRUK5U0qCTkVmWb8bw04JS8366AvCRmjyrstwAnlaYm489W7eHvCy1dD
	c87UHRXX0H2nHyojxsQZ09jS0Em6Iu2KA27pvrmd0as9Oo2Q8PO1xjRFCT3Jot19OOcfh7IMxzzTA
	ZCbWfnPkZ7BJA4WlyuzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idCiL-00043N-CC; Fri, 06 Dec 2019 12:28:05 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idCiE-00042j-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 12:27:59 +0000
Received: by mail-lf1-x143.google.com with SMTP id y5so5124281lfy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 04:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PKO9TtrHuQ9SITwyzLtg4F8AuQu5WXiyVUPQNdmGcgg=;
 b=lYbSgN31bGbbluq0XOpuZHfsbvl2jS8gL8TF6XqH4rePIO7LsJcV1/DKU3U/cABcC7
 wajrKtfchtnFZfnsxGOxRoZ8WQDh2xp94pISSvrRbBDkes1o+R8w9bvGaj2o7rD7P1XR
 TCchixq4iJHiYw4EvGGnGB+4bizkc4Cj4v9oFeD/bMDjnA9IqjuOxjAdN52gmNWDYhUa
 roxsMhvmCStHYISvLE68eiqYEmnzoR3zoCx2Aca4LzxNzamzWaVaUyfcvdhiR/ACn7uj
 PQzwNFtY4XbqZizsneFB9OCcDgoqIRvzXVlDX+VO+A/i9OPiNotR75pvh4V51muytXWs
 iEzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PKO9TtrHuQ9SITwyzLtg4F8AuQu5WXiyVUPQNdmGcgg=;
 b=t23NkFNBfX4v/fBB/gouQpBxe6XSz1QntCTRRAeXCM7M0nIsrIJClirq4lRwbk08O3
 IwNDIlWF99lGQGOEL/xWh6tC+HSXXzuCyfKEHYPFlnI+g0qYnF0t1b3O0shJGxFTqjRp
 oikwp1BA1P2orDISPUB5MxJAMq28Udkr7MCqx40S9ZVjk9tEvuvSwszHa5y7q6kb98o9
 n84pGVUWrP3OgxJcgIVAJoMFdQgqtyGXCdeO6dhVInzarC4eqC/Ro9YgIGTT074L/XtW
 +c5vGgwrPQND/AU/zaIvq2RxDHqwaz7YCCaR3PacbHfRCTVG29vmfJRiS/vmtI9FDD5S
 HmvA==
X-Gm-Message-State: APjAAAXKpcQZyzMcJk8r+7RtIdJll49Zu7XAhnWjugh7jXUxr4AHCLFK
 Gp1dqqz2t1vpL/SScDoF+if8i+XJ7Ry2Fi4Fjw4=
X-Google-Smtp-Source: APXvYqwq6gwQ3z1IOGbDeVOkdPQGgkQAakkVSnICtBlS7UihdRuEA4Kt34BNJ6SOPDez/x4k0vn8K2NwSsXUOn7Gnqw=
X-Received: by 2002:ac2:4194:: with SMTP id z20mr8098899lfh.20.1575635272162; 
 Fri, 06 Dec 2019 04:27:52 -0800 (PST)
MIME-Version: 1.0
References: <20191205092713.58314-1-cniedermaier@dh-electronics.com>
 <f4fdca95dfe54569b4e2b430c69d56c3@dh-electronics.com>
In-Reply-To: <f4fdca95dfe54569b4e2b430c69d56c3@dh-electronics.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Fri, 6 Dec 2019 09:27:44 -0300
Message-ID: <CAOMZO5DS=Nmvc7cdV1Dw9FMHTOU4weV3JNeFZ+YqWLhpcaF4LQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: imx: Correct ocotp id for serial number support of
 i.MX6ULL/ULZ SoCs
To: Christoph Niedermaier <cniedermaier@dh-electronics.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_042758_576869_89A0650E 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christoph,

On Thu, Dec 5, 2019 at 6:39 AM Christoph Niedermaier
<cniedermaier@dh-electronics.com> wrote:

> Tested on next-20191205.

Just a nit: this information should be better removed from the commit
log and put under the --- line.

>
> For i.MX6ULL/ULZ the variable "ocotp_compat" is set to "fsl,imx6ul-ocotp", but with commit
> ffbc34bf0e9c ("nvmem: imx-ocotp: Implement i.MX6ULL/ULZ support") and commit
> f243bc821ee3 ("ARM: dts: imx6ull: Fix i.MX6ULL/ULZ ocotp compatible") the value
> "fsl,imx6ull-ocotp" is already defined and set in device tree...
>
> By setting "ocotp_compat" to "fsl,imx6ull-ocotp" the kernel does boot.
>
> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>

Thanks for the fix.

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
