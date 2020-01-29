Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54E814C846
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 10:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZI/hijirLYo/PGqBfPmw+4TVX63ZbNGoRF3jzkKNx1Y=; b=IJjUPXlZ9Jrxv9
	T36nGa5x/GnndA4hXZDzNoFfpg3m8KmyCYoUsdGelYo6T2kjX4rHptT9izGF67QYD40o6hvIP2HY5
	2O8SmNz8h4VN+j6HIRp+diH0ssLvuMGZewhSvgvzURr8gWwYwr6k1CoMfotRhE15iThuhsK/n6aXL
	BhpeeBnjNJgXodzvvGxOKzymOo4cuS1WLjy33atQVhIVUM8uAfQgbrz56zYj5m5CVusnTKPlGzUAs
	lm47NSF6ooGNu30ZKqms8c6oCozHw6tEyEBpMIxgI0tka3qyyrEBYokpKUCzbSoMUPd+Ko0czNTRi
	qCbXT2EVlpJf3hfvasaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwjsG-00044b-NJ; Wed, 29 Jan 2020 09:43:04 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwjs6-00043R-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 09:42:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id v201so11394480lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Jan 2020 01:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OgsPt5iLckDl4+reKUwpK1f/AMIxH90ObKmbxCdIZ14=;
 b=tN0PTJcTzUdOJaDREUJwwuN4Fwlv49F9pORwaFKbZS9kbFGwvBDWGHgZW6vbDhdWwA
 USD6BDOGBZrIk5H1bIPwx8B2kIQ59INlbcfn7nvWih3jjgkBEhJy9hy34ub4Zg9n+zPd
 VFQjJ7VywOVykhe+gb4ATY8EndDpqaiuo4oyI9rhvTQAkBaGiqxXAZMwdJyyOYTwclWg
 6Un8SC5o8GpqN1WsRU42/8cBSe01rNASa1cs5u+HgJaVQMD7Dweu3DSfzS/L6R68tGpn
 XPPnI+yikij40DB/e9DsEOw9xouejBjYL6OF2+QQEXqu4A4Aoqm2HKMIXc8Eq/T3B0XG
 objg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OgsPt5iLckDl4+reKUwpK1f/AMIxH90ObKmbxCdIZ14=;
 b=O//ZE5CzS+EmRRB/AwGP4+VuCK39x+265wIEdplYal3VF/jpYV4pLsBBIf4ALNo/+n
 WJ2J7eqKNJEcTBI10Ml7OgWEWbWFHOIDUN1+vPREa5t9rFoOyUJBzce0vHnu91+s1dfI
 AyDr5myISjY06ObJ4aDXEU4Cve3fnmpF+rHF7uzzC7XnZvQdJttffzbsCWRkb84Pd5U1
 kk6/U2qPu1HfujKf3eIK0hzEn7oeVcOsUv4NGPgIJa666PaKpw/Bc616N7CDiVherdbk
 zjGD9DaLoeD6aZCRmI0vNtNoV6Ii1ja0B90KATCNsosF4W4Oz8/UD26oVHWS7fHvlGYb
 qZ+g==
X-Gm-Message-State: APjAAAUvqHtmwoTmQg4KIPwFFHFmWPXxbx6QewekHknZI43eKeoKkboy
 BIEsxlZIFuSH4yHo7gEoE3doKmWHMcjkHUQ6qtDV/g==
X-Google-Smtp-Source: APXvYqzEcIiWTIZ9ytjZrmjpY6fIywNYTcRdFgjAz20YlNaSNq2K7nuUzaQ/5qIbfSRhs23wP8kcnro4GpNJkZSzX2U=
X-Received: by 2002:a19:40d8:: with SMTP id n207mr4819024lfa.4.1580290970448; 
 Wed, 29 Jan 2020 01:42:50 -0800 (PST)
MIME-Version: 1.0
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128153806.7780-3-benjamin.gaignard@st.com>
 <20200128155243.GC3438643@kroah.com>
 <0dd9dc95-1329-0ad4-d03d-99899ea4f574@st.com>
 <20200128165712.GA3667596@kroah.com>
 <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
In-Reply-To: <62b38576-0e1a-e30e-a954-a8b6a7d8d897@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Jan 2020 10:42:39 +0100
Message-ID: <CACRpkdY427EzpAt7f5wwqHpRS_SHM8Fvm+cFrwY8op0E_J+D9Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] bus: Introduce firewall controller framework
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_014254_770645_15939ABF 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "robh@kernel.org" <robh@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 9:30 PM Benjamin GAIGNARD
<benjamin.gaignard@st.com> wrote:
> On 1/28/20 5:57 PM, Greg KH wrote:
> > On Tue, Jan 28, 2020 at 04:41:29PM +0000, Benjamin GAIGNARD wrote:
> >> On 1/28/20 4:52 PM, Greg KH wrote:

> >>> So put this in the bus-specific code that controls the bus that these
> >>> devices live on.  Why put it in the driver core when this is only on one
> >>> "bus" (i.e. the catch-all-and-a-bag-of-chips platform bus)?

> >> It is really similar to what pin controller does, configuring an
> >> hardware block given DT information.

> > Great, then use that instead :)

> I think that Linus W. will complain if I do that :)

So the similarity would be something like the way that pin control
states are configured in the device tree and the pin control
handles are taken before probe in drivers/base/pinctrl.c embedding
a hook into dd.c.

Not that it in any way controls any hardware even remotely
similar to pin control. Pin control is an electronic thing,
this firewalling is about bus access.

IIUC this framework wants to discover at kernel boot time
whether certain devices are accessible to it or not by inspecting
the state of the firewalling hardware and then avoid probing
those that are inaccessible.

It needs the same deep hooks into dd.c to achieve this
I believe.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
