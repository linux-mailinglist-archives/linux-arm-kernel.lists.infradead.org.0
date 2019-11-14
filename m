Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1CBFC59E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 12:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJAuKit1bQH21J5PipAub+JcPWCBFriwVbFkHqpS+nM=; b=bkrIGixIsz51RW
	LBDVgezo/eqfX2zpBZmsXVGbXqzDhGJ0Mssqez4Q2Y7UeaGQlhReY01OTZUaETA/P6A7pdN6Lc9mo
	5dg+dAKBIVTV8R7Mu22HwdYNqjyca4LJA21PFOolHlcz5tSD2Z6w6L1pjJBUR42tSgRq4iT5fiztF
	ZCPWQzDP4Iqrc9Hu3GqRYh/a61kPZzPm8OijlhNCJAtJOoChGwJFb75I/fIC/NmmTMedr8gsNAEcf
	swqAKjzpFsyWDDnAYjka+NJl5TE+waGq0n9DXDb3ZlRJTPTVdfvSQQGdF6vcxnx7iXr8Y8LhDLhtM
	mlR32b+/p9c+puq47tEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVDZ2-0007vd-FG; Thu, 14 Nov 2019 11:45:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVDX8-0005Bs-Qb
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 11:43:35 +0000
Received: by mail-wr1-x443.google.com with SMTP id z10so6063747wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 03:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nQNqrubOlUUYZPppnjrDT5gghOk1RD7VpCkLrJlKMDQ=;
 b=lUaH7bFRd2dhXRSlw+qcr3GHuOtqyG8vd8F0OdlZgPharmpXM3PwpHtGslEKKUTnHM
 27t6qBaIXKh9gGWzxI5rYY4nIBq7FD+trKsQmmL3xDJejBQR3R4DdVL8nb1tzR//uvRj
 kGodRl0qd5Q7uRKoUBYwmpofXZllW0DYzt235GAxRyTrvti+8qVzddQ9by8x7pKAmRXe
 oZzTv0uZpVpOU9vJGgVyUzS9zVrpykUkJv2/nPbOl5lSLoPCAhCrpVCqmDjSKuRW/Vca
 5ZAbUDA5YTxZWn7QJi75URZ097xjC0+ScXkUI3I8/F9Gox0VW4ha0L4O0TMPn8yj+xst
 /b6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nQNqrubOlUUYZPppnjrDT5gghOk1RD7VpCkLrJlKMDQ=;
 b=tPZ6QSAybotBQNoMzG4tK62fLspt7yrT1C4oTQzI38UiDMGaUFg20XC8Q3OIepR8Ug
 QqsfANdKITOtaQkm2DX86UJafoZHoIBTqTpF7Yu4Dn2zGlnBpsemoYGrq2t4qPr5brcL
 lNSWTudJFlqSIK+lKSf8z60T5XA3uaktSfcAx3IiYRJI4A8Xpu+ET7ak6asDVJszUo5d
 GzDjMKVQVR0aKbzSzrqSn+b8U11pOwmGLJJtXRKO/F8emn8r6woo54MYTYplPuoTuuLN
 n/vYW60DKpylDi309iS7EO08u0O2Y0wRK9Hm6iwi5bVXa/Z/7WVCKqmhHKBS2q947Yzm
 cNfg==
X-Gm-Message-State: APjAAAW9aOQYJkf4IiOnBLTHVOjLgzlWK5Me07F7jwd37kD5MTmuDT7K
 6+It3M9DAnlsLdJc9QFAalw=
X-Google-Smtp-Source: APXvYqy88aC3vqt2wu5quF6h4AmdgM/VgNut4bo25B9uywblwPxT9Fv0GJagE45hAuflHj5UsL2a4A==
X-Received: by 2002:adf:ef91:: with SMTP id d17mr7505042wro.145.1573731807811; 
 Thu, 14 Nov 2019 03:43:27 -0800 (PST)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id w18sm7021172wrp.31.2019.11.14.03.43.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 14 Nov 2019 03:43:26 -0800 (PST)
Date: Thu, 14 Nov 2019 11:48:48 +0100
From: "oliver.graute@gmail.com" <oliver.graute@gmail.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: Re: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
Message-ID: <20191114104848.GH4147@optiplex>
References: <20191029122026.14208-1-oliver.graute@kococonnector.com>
 <20191029122026.14208-2-oliver.graute@kococonnector.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029122026.14208-2-oliver.graute@kococonnector.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_034331_015084_66DFD306 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Mark Rutland <mark.rutland@arm.com>, "peng.fan@nxp.com" <peng.fan@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/10/19, Oliver Graute wrote:
> Add basic dts support for a Congatec iMX8QM Qseven Board
> 
> Product Page: https://www.congatec.com/de/produkte/qseven/conga-qmx8x.html

just noticed that above product link is wrong. The right one is this:

https://www.congatec.com/de/produkte/qseven/conga-qmx8.html

Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
