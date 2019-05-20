Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325F7231E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlgTUsrsveSR2oeZp4PAtigexFhOPJxhExDpQiUUo8Y=; b=hvBmCiBEBuStMK
	BmRsTeA2481LgLtmLZsA0JkwPeojuSG2be8X9xGxOjTS/Aj1zuhTvNtA8cE3Lw6JSzFey5Q91FY8i
	cBdpqPEAi4siqqG9M7LUKmh4ygwHXEQLmZQgUjNu3HV5F7BLMxkI1xQ9SdLSUo/8MyyHgVTC/n3O2
	tsamggBGAUQm5e4cf7RIBIdvNRbEiJr0L55rUGVWehzwmJ4iLSBCBErj17P5A1vEVPVQD84gET7ws
	JWyoQRsBI3Nkl3uCK1ewzXrR9Ltlsq7IhsKm5sVTc/WJvrLqtya/3PQPOnUp9+Do0ak+d41Z9HQPC
	sL/1MVdCTxV6NBSwlZ7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSg1t-0006nx-JJ; Mon, 20 May 2019 11:00:29 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSg1l-0006n6-Sm
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:00:23 +0000
Received: by mail-wm1-x344.google.com with SMTP id 198so12794632wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dY6Vm/X1fwZnQ8eZ+SPUjbYNZsQemTeD0TsJJW0/Jlg=;
 b=E49Fgfh98ks/ZozVTB2OfiBHqaRFuicMIjv8YusPYkUFwGgM0DWFn3SRQxK7+VfjN7
 9L8w6T6VnYMWTwkyNCi2bNdOabALssp9s+oYs7TW3syp+gLUiV25GrQM2R2N0CoMjkYM
 eR4B6hu01xaimG0VwTnQSWJNLh7mcmhoMEK9c8844TlPSl/WH2piBGd8hhuP77z4hOFk
 P3R45yx8cFj7pJuob0pHsHAtSkjaeX+D5MsQKbr2r7YypR4Bj0qGW1nHMDRbPi9aO143
 wOo9tUtq3AhlhOA6SCGNEryuRtX8GF458xueJSQ4vAdq9UbZQBrLePcoCccsfhdc4+Bu
 KogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dY6Vm/X1fwZnQ8eZ+SPUjbYNZsQemTeD0TsJJW0/Jlg=;
 b=l4UKnmiSyo9rhmJxZfk6po+8kLGDB9mCWZDRRMZ1meuJjNtgKw0ofJEHNTSnUCD339
 D69WHg4v0ZCUBGvuODF0yyOOg4TN+6sJixhPo9afxrsbPx4BtqWKO4v0+H8oRZ5Ody/W
 /nCpoWtdEqrmoHRPnpn97m8QZ6oYyP4ZshrsWQOorDdKaAancwoHiFmwpaXWovObd9Y0
 zsLXvs/vZhUKjLmxS3qReZ6Ndtyl8bGV/f9pyGG7Azjz2xiUtuaPfD5aGPY2XxKlUsT5
 Iid+aMvK6/we7epd2dS0aU/YCRWQhcEVvNSZoONljac4tZMphaEJosbBXq/umxdVf2+F
 4j/A==
X-Gm-Message-State: APjAAAUyPqRgBShosZudJ4gD5stz//kUkuJazj3L7WkQ1OGt5vywTItD
 Vyrv7ENb01Vu5UEkbF/VIATzFXohB0s=
X-Google-Smtp-Source: APXvYqxO7JEe30jPJyHjEt36HwpYLbb3bRcMWqZK9SnjCQkZPXbbGO5T+r1SUrl7zUYPzKcDhmLVpw==
X-Received: by 2002:a1c:a745:: with SMTP id q66mr31674752wme.83.1558350018039; 
 Mon, 20 May 2019 04:00:18 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id 91sm25263075wrs.43.2019.05.20.04.00.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 04:00:17 -0700 (PDT)
Date: Mon, 20 May 2019 12:57:51 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Aisheng Dong <aisheng.dong@nxp.com>
Subject: Re: [PATCH 1/5] clk: add imx8 clk defines
Message-ID: <20190520105751.GA17256@optiplex>
References: <20190517071813.26674-1-oliver.graute@gmail.com>
 <AM0PR04MB4211706D24BBF3F9FB6CAF28800B0@AM0PR04MB4211.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB4211706D24BBF3F9FB6CAF28800B0@AM0PR04MB4211.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_040021_948113_40BCDCD3 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/05/19, Aisheng Dong wrote:
> Hi Oliver,
> 
> > From: Oliver Graute [mailto:oliver.graute@gmail.com]
> > Sent: Friday, May 17, 2019 3:18 PM
> > 
> > From: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > added header defines for imx8qm clock
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> 
> It seems you missed this one.
> [00/14] arm64: dts: imx8: architecture improvement and adding imx8qm support
> https://patchwork.kernel.org/cover/10824537/

yes I missed this patch series. Thx for the hint. I'll try your proposed
patches soon on my board. I'am also interested to get this working.

Best Regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
