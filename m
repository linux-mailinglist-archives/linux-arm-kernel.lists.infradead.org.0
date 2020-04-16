Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B1D1ABD04
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 11:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=750JEr5dhmiUi0lQjmUdWZVaZd1d9HdFF3b6SSONH6g=; b=EM1LS73XoW4zBA
	Lb95pt+o6pPaw4D7DUGrAzlL1yZOZTIxE8IqKY5EHB/3un0NDU2/tR4hnuf1LIDCUQYO+7wzuxCKt
	r31mNqLWsU3eyMoCxqD1EN8SkfSobTDPPsV/wyCixZrC++JGVw8NrxG1DexMvpyf2oqD7pKTLBOzE
	Uu3PMDj/Snkm4ZJH7i6cfA/rspp66TzLDPNQA5wReZtNyalzWV13+40XeAytXKrhttG9SX7vQ6uzc
	UySPYY8Cz/Fn+OhH7Rop7msL/3n94rOwjFtQ3B4MTyssjgKvyIKeK2O8Pv3MulHt6jdcWF2uTsMQD
	wfHKU4gbp4aCJ7K22nxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP11h-0008J2-OU; Thu, 16 Apr 2020 09:41:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP11Y-0008IC-8Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 09:41:34 +0000
Received: by mail-lj1-x242.google.com with SMTP id j3so6633434ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 02:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5cXqd/FYXB0lbGufBrqDJUqh9/OZeedfUjtBKEKKPBY=;
 b=QREs/SmDJvEf1zq17GMjwgTqEIyMlkJEjg5f3v/HeaLYKjVC8QYC1tgHS9NiE8NKcc
 TGpmQwdmfUl79CLFpobpVIg7Y71DLmUEMoO4SybCkM0m/qJTWd8TH7fD8AW6GTjZh5E2
 3xB3Gmop1M/FTGW91HEFmJs0231flS44BMs2mjhSI3HDKbtBPY4kMr+le/vVy6MecdtM
 36GNDW5Lz27hb9BKmDCXci7WaRgb054h8OPccGeiMoEExPEgMfHxCK1ZBv+Rux+HEuDy
 gMC87Sq8XSDg34xBrMmEcMt62x/S+my0Xke4M9RSm63NB88ahjLVCRWh9rFJMdVUhp5/
 d7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5cXqd/FYXB0lbGufBrqDJUqh9/OZeedfUjtBKEKKPBY=;
 b=c/aRsMdmK+fVzjnuKPzY8nOZnqfOA6nZjw8tw/C7tiJiAZ4IHEOY3qo9cJxeZSIxgA
 gV9PcagP/QUTQrK3ooXsZAxkSEtb5aD0YZH9aG+Hwypd/pfm9n3Tr9N/7mlRghjO+x4E
 9po9AvdaCOysJEZDoS3oBuiG++bxa322zt43LcE0tfcCbY4UGBZncwdLbwiSaFsJn3tc
 pXW3YKb4aVF21eDaR+UqPq6U074NkdKy1EixmPVH5a1Bw5Ai9byEzsGVqFRtv7UZ0QLu
 iS1hijEk6wyIvSdtUQDHPN2VPUmKNGqa/AeGrlWn8857HwLBZuwwT26JbTdri15DAPkF
 hZTg==
X-Gm-Message-State: AGi0PuZzDBakfvmFn5w6p/YB5d0b/QZTp83/vISSB80zptgN4phjD6n8
 CGefZXZq/jo6BqLwtA9WsqeDKdqq4pT3e8x4NEM0zg==
X-Google-Smtp-Source: APiQypJnieW207MTrrcDCpD/6xCHVrwXn13tNVmDwtrOVmdK3UPhTDARFtiYg95ApfvlUAdHmjKJ2IVQP/pmqh19PEI=
X-Received: by 2002:a2e:5048:: with SMTP id v8mr5437034ljd.99.1587030090524;
 Thu, 16 Apr 2020 02:41:30 -0700 (PDT)
MIME-Version: 1.0
References: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
 <1585306559-13973-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1585306559-13973-2-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 11:41:19 +0200
Message-ID: <CACRpkdajgsshQ25eCsx8FS5qZ10AMcG9_PC5bwQfqGTXSprSvg@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: imx: Add imx8dxl driver
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_024132_296771_B9E53F79 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

> i.MX8DXL contains a system controller that is responsible for controlling
> the pad setting of the IPs that are present. Communication between the
> host processor running an OS and the system controller happens through
> a SCU protocol, add support for the SCU based i.MX8DXL pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
