Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FD3168084
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 15:43:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnC9Pi3k2bJ+UM2VPlMcaIb9laxo6tgMzko7I9OMq10=; b=DDy+m6G0KOrzlv
	crpB/WHEQSRuasTiHAwgiBXUcHDq75OJBIY5lmbSckwk6fAsDWmv/R3f0vw9KwD8qU0mllqS5oiZI
	Aa9gp+dsljA5HYqDPv4y2ldKiwN06VlNhfCL7te1FARTbHvbtUC7/GpzxCk5XFh2fihpY+vYvORUc
	bX5p6H6ai8n2BKaAA0zdx6znSCRTvhD6O/Jz1sSEr2l+H69m6p9P8X3Z69mNFxhT39TmXmLXvdxFo
	a7HpMtfftfKIEdnv94Vnupkr9BtWoNfi4iAxPUjWbbO+LIX+CDQ3Ca4AHrheGIkwbUDcV4dYunVZD
	9cVPPWoj2EsmbpLcDp7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j59WB-0005nV-Mr; Fri, 21 Feb 2020 14:43:03 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j59W1-0005n3-Tk
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 14:42:55 +0000
Received: by mail-lj1-x241.google.com with SMTP id n18so2428656ljo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 06:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TfwhgDHEklncUQidyHCpGyvOwyCft49V7Fap/k80gu8=;
 b=RKc50qWQW5JUHoFyHSCc18gTHWep0/bdQ7X3lrnM61wt7aD4JHP7ydRJcxLKBtccpA
 5HKI6An997w+9x3Eu5GfnhcACLBcAZxJUHKFM5XkRUfSmIw2pX3T8soMHxPBc2ZVhZPk
 otxGRG0yTGT/yaPO7i5Sn0AkvbsA09CEvbFAuhO+HUGUEVVmCURiPVApBIQU5siRjq04
 xbFt4Q/mIAvMHcIA7+xdHWEjz6F1jfwEu/fSPBBjaHiUIcAKyVIgTPEZqVj8/Oi1peMK
 el5DLBPv/5P5oZ6B6f5A1KjXdmJ96YmIpBUKSI7posaQELJidKfJ9HhHZVsq8cLrd3zK
 4jHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TfwhgDHEklncUQidyHCpGyvOwyCft49V7Fap/k80gu8=;
 b=FurSag90dnqsGJmSWBnYQXd6oxgnZkTTnoTTw9+E5obRFYmhQKAhddXMeWiBEHT8nJ
 6i2avumDRpwwmApCrW6kxRRclp04vpUTLCGobSvMUMJn31RsnYnyYBe84yVYASg2UPiJ
 fYvD0CK5Oj/CZjN6GZG/G2RCPuhYgMickERUp7UvnR5Lb75ZE62KjB8zz5e4yQvUQkKT
 L4zC/z6CTnOCngxHWgjtkObhHZr0ArNggNW96RSXcZnpmjAbkB+lXXDfwylveX15Avqo
 LaTqniogc/XNUYBlDeKWaFldYighVb3ZMsCSq+Yvsj5PiaWicz7SuR7X+QJvHK2su3QK
 SDEA==
X-Gm-Message-State: APjAAAV18k1zRmEESPHkV+wAmLf0T88cxcD9SCAMs7+YB57IUcCAXc/m
 ClyLr9uPtUiSb2luxVN8QCm3WdTcgTIYh1Cb8tHLbg==
X-Google-Smtp-Source: APXvYqzgoeW5K8DqPL4tqHNwBvjMIGmjMtAVsQtMYi5lx4Vk/lJjNQQy6wkBDm/+PCOZbQHMB3p9VjdLQVGYccMGcI0=
X-Received: by 2002:a2e:9013:: with SMTP id h19mr23010571ljg.223.1582296172343; 
 Fri, 21 Feb 2020 06:42:52 -0800 (PST)
MIME-Version: 1.0
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 21 Feb 2020 15:42:41 +0100
Message-ID: <CACRpkdZS9V_XugLuvzhWfd9Pk8xO4SBakShZ+RMeyK4z8fGQhg@mail.gmail.com>
Subject: Re: [PATCH V4 1/4] dt-bindings: pinctrl: Convert i.MX8MQ to
 json-schema
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_064253_964931_424CAD6D 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <Linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:57 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> Convert the i.MX8MQ pinctrl binding to DT schema format using json-schema
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> Changes since V3:
>         - use uint32-matrix instead of uint32-array for fsl,pins.

Patch applied with Rob's Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
