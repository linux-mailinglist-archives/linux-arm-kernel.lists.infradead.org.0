Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734F179DEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 03:36:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hb4VCldMPNamnlXuKMoDAjm0zxsyDFGTLq6le0nP9KI=; b=haiznjcYuW+Ga4
	U9DEw8Dqa1Z9kap3/PDdhgROk1/IAKbZufM0EBZuxvpgWGoG8D2Xc1sTCfti1masMc6cnpmsK55OI
	kczxrUrdZQaAqD1cdHgLIiEF4l8bhetAFVpR5Mr5NwLA9FUTW6B9CerIoyCT1cNxvMVN8T7Cb1an2
	jf8fHS/hoXxClpAi4HZKCVk5xSvo778s80QznmcWvDqgXVppE03Vpc2BNoW1C9MB9ThQtHut8eCkj
	KotfAqwq+7irBbax3qm+0tpYyieAMEyUEFMe/Cen9dA7Fb5tCebQXBD+LHMrxgChMjiNfaYfWP4NF
	eaiVRABLZguSKosRlfOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9gND-0004rF-OO; Thu, 05 Mar 2020 02:36:31 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9gN3-0004qO-LL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 02:36:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id cx7so1812497pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 18:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vq5qjs7qz67UNM1UqkjHI/TeAVWlJM1Ckq9qqFzOF58=;
 b=uE5L3OIFH7hgJXdE2xCGSnwOEDkEdOH6qfYcBHj7RrpUuVb8NudQzuYzTLzNigApeY
 xobwj3AdEYtxjBRciNj1RXv+Qnem14byPSHBdlQcEErL8Dxx25Orm2wuubO/5QumyzO5
 zgN0+CUWswBgTFj0daaQ2uMSjwp+6ucbZkxp4g+BLqqsemJCNXTDjsienFBprKW2wgsk
 fo1whqLhoCLPykP2ghqcoFgLOPuhiiybH5KKwGp0bH7/6lQ3Qyygp6OJRjkPrLUElinK
 yP+ZWBnjOtFegqqs54R0PVV4caZaYQbjqsQtShhCVSGY0pv0enLCA7MU50OpdnfIEPDt
 bdlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vq5qjs7qz67UNM1UqkjHI/TeAVWlJM1Ckq9qqFzOF58=;
 b=qaD6X9dPdRQpr+PYiW3LCiRVD198cV2dpLMLpoMCBKkIqzqElMyqxtBtMWzor6/i03
 ZcLhJjN5/bMt3GDtLparKs32VKn3W+Y8e3DR9ZZDCv8VilHqLK9vjZcnk8RuCpoBMBvj
 j75vtlvKBDgtsODAyqUQEiINrMOlcjCv4+D5Uq6iBfdkuaPqXDrvVVesjRRxA2PIrI2q
 0ZgD47kF3Q14zhFjP4v5rd8yuajVWbNPGSKpuS2RvkUnvSLtwCqvIvYIEGILLMgwCRaW
 leBgbtfTC1pmAexKj/fJnCPY4Fus79yeOgjb5sfQRdV2zDs8zXeira5KUZCqJ+KnyB9b
 bnfg==
X-Gm-Message-State: ANhLgQ0/Gbys77u6a8P1SSnRHaJP96W4llKs2RV6FYwmXtGrqUKPEnmM
 JWsvJMfrwNvhry/ZWbxfXd0=
X-Google-Smtp-Source: ADFU+vtegKp7SsWIhtQi5FLswdvNjiO6nAc+nLdA+8v8NJ3m8Z1MDgeAPG6oduDk7/r++EGg7Ok6bA==
X-Received: by 2002:a17:90a:8806:: with SMTP id
 s6mr6165058pjn.141.1583375780299; 
 Wed, 04 Mar 2020 18:36:20 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::5:7dc6])
 by smtp.gmail.com with ESMTPSA id b3sm3961744pjo.30.2020.03.04.18.36.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Mar 2020 18:36:19 -0800 (PST)
Date: Wed, 4 Mar 2020 18:36:11 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v7 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200305023609.GA15787@taoren-ubuntu-R90MNF91>
References: <20200303062336.7361-1-rentao.bupt@gmail.com>
 <20200303062336.7361-8-rentao.bupt@gmail.com>
 <20200304161610.GA26873@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304161610.GA26873@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_183621_723128_34BD2F25 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 04, 2020 at 10:16:10AM -0600, Rob Herring wrote:
> On Mon,  2 Mar 2020 22:23:36 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > Add device tree binding documentation for the Aspeed USB 2.0 Virtual HUb
> > Controller.
> > 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > Reviewed-by: Joel Stanley <joel@jms.id.au>
> > ---
> >  Changes in v7:
> >    - updated to dual license.
> >    - removed description for "reg" and "clocks" properties.
> >    - Added constraints (minimum/maximum/default) for vendor specific
> >      properties.
> >  Changes in v6:
> >    - added 2 required properties into example and passed "make
> >      dt_binding_check".
> >  Changes in v5:
> >    - updated maintainer to Ben.
> >    - refined patch description per Joel's suggestion.
> >  No change in v2/v3/v4:
> >    - the patch is added to the patch series since v4.
> > 
> >  .../bindings/usb/aspeed,usb-vhub.yaml         | 77 +++++++++++++++++++
> >  1 file changed, 77 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks Rob.

Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
