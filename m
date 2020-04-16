Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F681ABD02
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0znelx8Llbq+vGJb+YYDM9yvZ0pk1oh2J17Y3mMmzLk=; b=PTxRN22vZIzlkj
	YepIuu5E4PvRVND8URO2eO6JVAphk6eEHUjgPv651TKHF71iBlVpVlB/E0r6ftBvf11RvgeMhPBrZ
	nwOirYTbATAUTYbCzWRwCpbyBcu6l+pwu/KFOThma+W4JqvE94O56m8zX0dPQ30Y+gr67EkXDSjWm
	UvbG/sCiJQCCutI3beN7faZGke8w2YaSxDz9EVRwH7MDuN32nfBWM5Uqhyvu/K98GB+Amp7BwEjhl
	GLWFLY6+wgynKmnQzr71zFiGgBSecBL6Va7Qb6WcE+5aYu9EdcdzcR6mFWLF9sa4/wf4kk3pD5nhB
	C5CDCEsGxca4wlkaMIsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP11K-00082Y-EU; Thu, 16 Apr 2020 09:41:18 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP118-00081t-5E
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:41:07 +0000
Received: by mail-lj1-x241.google.com with SMTP id z26so7027099ljz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8dAk70I1p4hnhRGOefpbJT7ms2GQjkjqrJGg81hx6OQ=;
 b=ObziAsNZFmML/a7d7NyFT7NUp0TNcEQoe/JcKNJRXlvCU3WayEVxd+oN3RnNbY2YK9
 fdwRkA2KoGhzenGHSQwzhrnXNIAvYHWxmiS/2E0x/Ti3lsohU1KAS/vGFGhbV/JKJGru
 IZakD4MQ73Hb+ddeolKSS/3O/BATf1tH82knHsUXb4ZnWDnSnn/Uo1r2Z8bgJaBg/oSQ
 jvDe9T3HDh61oUWZvHkDZrlF7Fpj4VNr3ji1FKygGOrcPWMqXpluT5PKq6TaE2BdX5WZ
 A2bUMW2Ip9GH5STT7BwaS4KvoAbcvYu2Eq5P+JT8ilaLA2T+PcZqATJAP1T/UlQMOTMC
 sRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8dAk70I1p4hnhRGOefpbJT7ms2GQjkjqrJGg81hx6OQ=;
 b=CNEh9CniwNaS/xBwfU3B5H7Ax2Di0mq57E9qBGx0EvP9tCu734Foy8ghy8WLNKY6pf
 emlGnSbLt1VUWCS+Zj7gfqb26etpWgI7vaEYERAHUsQEwjKWZafMXmrSQJ0cHNV7tIa7
 unIOEiTNN1AIL5AV9/Inhl6ALkHG3LQSKPvDi/q38WEspTie5NfGWKfnMtoj2A7ZKckJ
 QpoePohKWnc48QzjH6LlJEjnlKjI6TIgQC9ZaRQwCV7uC/tjUOJ0OZao/QXTVkh1QaGq
 NFtpGc+294zrP8AQL7/z+EVjKc86KcRDihXEmL0rPiL05MYCGZqZ27N6hmyiHLQBpgY5
 jGTw==
X-Gm-Message-State: AGi0PubKjH13j6Jp/hZZaP4Q87i8vkT00tAB5p356hca+Qm+HvvyibTC
 wfxpxmifWlgBJv1K+rggf/yoGe/DWIO9YDU0hrgoPA==
X-Google-Smtp-Source: APiQypK8qx4sDjdMlKaIAgsSnv1jrL4D1nl6jj30y6f4zJEOB93Qgx1Jwe4YMT5gUNKLU95XB+kIvZo1wtO6/Q3eFao=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr2401076ljh.223.1587030064671; 
 Thu, 16 Apr 2020 02:41:04 -0700 (PDT)
MIME-Version: 1.0
References: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 11:40:53 +0200
Message-ID: <CACRpkda7U5M0OU+dQ9CKNqqmZ0XU=LsWqZAOy6faDqknaDCaQw@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: fsl-scu: Add imx8dxl pinctrl support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_024106_207518_CC20F7AC 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Will Deacon <will@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 NXP Linux Team <Linux-imx@nxp.com>, Guenter Roeck <linux@roeck-us.net>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 12:03 PM Anson Huang <Anson.Huang@nxp.com> wrote:

> Update binding doc to support i.MX8DXL pinctrl.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
