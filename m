Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B23E653A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 11:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yh+W4oLkpAgAoAR8z59r7o67deFjdMVy4/f51dCts40=; b=Bq+gjy0I3qecLY
	Z7/AQhbl7zCl81mWKc/CEwBGq2xINXFFPW3w/kPGWEbkP6lOr+2mU2OC46wUbzTkorrTHt4Ke1N9v
	GeII9istaoik6e9AFb+gcHnweEUnk35PiwO0RID8xSIQHk/QxsDRdNIzZc3MXvIkOWxbNhUaKOw+E
	AkghM1bVD/gMavivNqd3nee6izGXgzEtmsodzDh0hO5hTHBuWpr7ygEhE81U0oTWEq7dZG3vtXxfn
	l0ObwSdlDjQw5+Iuuk9MJ6LLWlXXMEqgaCdSQMgJORgvnx1+OYGMrJsZwRAoNbauzvxX5nBXQX1PM
	TqPLmPLScLRSyfqA2CDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVDp-0002RO-QE; Thu, 11 Jul 2019 09:18:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVDZ-0002Qw-IZ
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 09:18:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id v19so4931885wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 02:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3fOgz1HmCtagvlUL/uPREEe2zIZr6sKtMCeCzceJUyw=;
 b=PwBMIS9hm+yEYCvBflAbbJcinxzbpqVbzcZ5Q24LtfSmLm1mbaf/pN9oIgcCL4yvuc
 hdlyoTfLfi9kzgFCH8gntOGEZi8zpPHmMhmTgYhin8sdCblY8+F5kv87728lP8zFiV0s
 hafGrAtLAmkIdGxeFnTKr5dXFvTZ5rDAEGV2056ILBfC8ijYzQPTbXtxetRIian3zoN1
 AbG2a6/lZBXHS4zYNUJs9eJa2yQwe8sLksce06FBRsfUDz70hTIbKPM/oywlistKCe3T
 ivkWSDP2dHw/uyZAe5DU/M1KDFUCL0ZAXnpIULeB/iGw/Z9NHLsunlc5+tQoFeXtEA7M
 T7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3fOgz1HmCtagvlUL/uPREEe2zIZr6sKtMCeCzceJUyw=;
 b=lDDCdYTOQnstaVzlTLVQQsxdx136MJ6c5VMB/JR5yQilROMNn07/CJL42HWwgccfSy
 EzXFnlg8sVYkadas1vHE1T5dB6xedv+Car+CQK7nFExjvth7GxTD41I5tV18YBvXzsFs
 +e/rP/Z1Ulc8Q4pnPXLxDvRZrpH/NBZufrKUuoZLWeJBDHV7MWQvim44pvdWU1KSmaSJ
 jZAPH3oR82ytD8QklRGDBi1qyEGuIcJeW8EYPQcZxoZ8JWg27v/bVNKic5ZkWWiQzWly
 rCKdh7UXOg6NPr121K8CVCM2LnG6c+wbtnFO5yku0aEIwxTOHxD9S4Swa5FVJtz+0slK
 NW+Q==
X-Gm-Message-State: APjAAAUNksD0wxXjztIvVuHcm6PSv5U2Z33tc6BIl6smuT67FzCu2hk8
 8vi6OwYrP4DVER14BWc4FjU=
X-Google-Smtp-Source: APXvYqxPFuR4M5BCR8Sb+ubGATW/uN4m71lAA+qeXPQ1bZfFhMczU5S7jaBPszXh+H2hg8yJaV1Wyw==
X-Received: by 2002:a1c:3:: with SMTP id 3mr3153271wma.6.1562836699392;
 Thu, 11 Jul 2019 02:18:19 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id n14sm7481561wra.75.2019.07.11.02.18.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 11 Jul 2019 02:18:18 -0700 (PDT)
Date: Thu, 11 Jul 2019 10:57:25 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Abel Vesa <abel.vesa@nxp.com>
Subject: Re: [PATCHv2] clk: add imx8 clk defines
Message-ID: <20190711085725.GA1385@optiplex>
References: <20190619074000.30852-1-oliver.graute@gmail.com>
 <20190711082039.zze4t22rvlgdxzow@fsr-ub1664-175>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711082039.zze4t22rvlgdxzow@fsr-ub1664-175>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_021821_613456_51F37128 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/07/19, Abel Vesa wrote:
> On 19-06-19 09:39:52, Oliver Graute wrote:
> > From: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > added header defines for imx8qm clock
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> 
> Again, this seems to be taken from some vendor tree, so please keep the
> original author.

yes the header defines is from NXP vendor tree. One of orginal authors is

Author: Anson Huang <Anson.Huang@nxp.com>
Date:   Thu Jan 19 03:53:31 2017 +0800
    MLK-13911-3 ARM64: dts: imx8qm: add dtsi
    Add i.MX8QM dtsi support.
    https://github.com/ADVANTECH-Corp/linux-imx6.git

Whats is the right way to attribute him?

Best regards,
Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
