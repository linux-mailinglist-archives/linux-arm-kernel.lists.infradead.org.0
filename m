Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE501C587E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2z5ifwTdXKszTJprL5BJJTby2J7YsRvzOy2W7eTSt4=; b=fwcXGcz4hXorsj
	l+CaR6/mC6hqXIJxZoMhsP5n5dCo+XY0hh6/jefLRC3Gv0hc2roIG8qDTelgQaG6gsJYbURLY8QyY
	bYe7q6aP08XG+9k4t++/tuERqBiXm1W8BGZa0u8eTthwwLNhpSJeWdVZkvWrY2npGkhCX0ma6LenH
	erOTfBfehbqn4Elfqyp9fiDwy+ktsAY0N6lEfeO/5omc1z+6t32ldDUHMZMsckuBt0B0xiW5hFPts
	x2pqR7LYrlAPusqeYX6aRgbCLMz3wNyug47fOVkCU4Y+xmD1brYtKG40LaQ53H7YIVr8xu3h67bzi
	VC+uBojWVH+lywpPKSfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyM7-0007mu-M6; Tue, 05 May 2020 14:15:31 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyLz-0007kr-3H
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:15:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id b8so1064008pgi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0nX/PJie6N8ENA2Zvbm0yQ+G3ZDyBTfdd9KJ7MPuSj4=;
 b=nfmE75xAk2mRtYELliGHUe/ax/6qkgrPatqmkxJZ/4QQY+o+lMk11CjpG4sAQ3FVBV
 WzncbHPCgbdKwNdc+0McksELLJMYnMAiR59i9RiNpkJ1wTWQvRjMj/LOf+Xb5oeK3q9X
 8VD8zvXA45j3xTucUWd8a6+SrLV7AXDs8dsNgTmPYadNJvCSJY3+9yk+3FG9cqznsAn1
 Ayjs9sTijBSlXb0wCaoDlmLuPkX19TLs6CSO8ttbuzlrxO+xpFQbVBsTgFRVP0zVj4wd
 QyMxU4d3tVal6fMMXpNV6WOxd3TZfCk2bsV8QT8ybu6iLP/OmMTw0MsgxUT8NrAH2Rv+
 1Ceg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0nX/PJie6N8ENA2Zvbm0yQ+G3ZDyBTfdd9KJ7MPuSj4=;
 b=DPLGCAISp/bfUQ2wJoBnPE4bCY/IgE1AQxU9nMhAFdcCjWjFFWQiX3QHjIiCQTcrqo
 ZHdN4dW52uH+ffpBGvBrh9PeMT9eCij9HyuodIDWricUbFmbqBFEZ2zqQu03i0qU4a8c
 7zZFTvR390IfVVD2R2IaDocLpX1UG/8bkjojUkMHhlPbw8rgOaAvMepl6Ziq5PsmrIuu
 AleofyQqDKwevlhYpoSA0DVo7U2nfOYm7jhxILIbUeW2sWeBk84syfsU4apr+F26LcAV
 S8rZFMId/+gDA70cY/wcbT8lPwUHhgWysjwI+wJo16XCJWvO8CDAQA0ayLhlinxavHkk
 CLHA==
X-Gm-Message-State: AGi0PuahdODKmaBXW67dEAYDpHcOAyiDvsKLAqBozmrshGzqj43ILxhr
 DLReKHbWeYwjA87d6r2XsnKSj6Uxr0LB7Tq98EU=
X-Google-Smtp-Source: APiQypLc7JWdA097hNwo8eG2GAZy8/3FtlTIfHPPFCBF9V0wjqm7rU8EeIuNboUNOrlwwMtxJqnfA7pV8Mn60TSZrt8=
X-Received: by 2002:a62:5ec7:: with SMTP id s190mr3257831pfb.130.1588688122575; 
 Tue, 05 May 2020 07:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200505132905.10276-1-calvin.johnson@oss.nxp.com>
 <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
In-Reply-To: <20200505132905.10276-5-calvin.johnson@oss.nxp.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 5 May 2020 17:15:16 +0300
Message-ID: <CAHp75VfQ_ueABUcgUUirQ7kK60CR6vMi1gP-UsdDd+UmsSE4Sw@mail.gmail.com>
Subject: Re: [net-next PATCH v3 4/5] net: phy: Introduce fwnode_get_phy_id()
To: Calvin Johnson <calvin.johnson@oss.nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_071523_679795_025C6044 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
> Extract phy_id from compatible string. This will be used by
> fwnode_mdiobus_register_phy() to create phy device using the
> phy_id.

> +int fwnode_get_phy_id(struct fwnode_handle *fwnode, u32 *phy_id)
> +{
> +       const char *cp;
> +       unsigned int upper, lower;
> +       int ret;
> +
> +       ret = fwnode_property_read_string(fwnode, "compatible", &cp);
> +       if (!ret) {

if (ret)
 return ret;

will help a lot with readability of this.

> +               if (sscanf(cp, "ethernet-phy-id%4x.%4x",
> +                          &upper, &lower) == 2) {

> +                       *phy_id = ((upper & 0xFFFF) << 16) | (lower & 0xFFFF);

How upper can be bigger than 0xfff? Same for lower.

> +                       return 0;
> +               }
> +       }
> +       return -EINVAL;
> +}

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
