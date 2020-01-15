Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939913C291
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzicmpaRN23olSSo079f5zIupWDn3Ud465Nif8RYaLU=; b=fLwtsT7S8oTtmR
	5nOWtYRrrS2ESTdxok3bDkv4ggO8VYUwapEXAgqaSztTnUU+KO2sUxOyVYwSwdqCHkOhR3Ao3iR5H
	2e4B2io4mC25QeYsDxmiqWhbAdMsldcX0G+920c0dq2liJO88r2aKrsYhP4Lw2SKF6oMYZQfI7/vF
	rVtPznd6n/8hzy81ksmKwa3vMhd+Q5r7V6Fv5NoSY6uriXZdcp2vsLu9J76iBeIYHqqe0OBcYy2oY
	tp6TDHGeLBMUWoLF0l1PrsKKD4l3CB/p2HUhPfZDfYMYgyGgjTzmCMXDnBsPjhESBexDgIuY6tr7E
	LdR7qAiydLSu5lAXaU7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irieB-0003j3-07; Wed, 15 Jan 2020 13:23:47 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iridz-0003h3-SI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:23:40 +0000
Received: by mail-lj1-x241.google.com with SMTP id y6so18588696lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 05:23:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cvu9eNQm8Fqp7yqoiO0Eg3cYEaQpDgDeASdv6EDKHDk=;
 b=FeBXywdclmpumyiY8AaSvPG2sflC5GIFQPGxS0tclLyaRoR7MtRrr77mv97btXlf6K
 i9ucWvcyKqSdsfiK1G/o834+A8xIg9OgyXmVlYZgjwuv5nuEujiGrtXmTR5t6hkfVVfW
 8aWMSIwDMPDtPmG1soj1ne3UGKydg5wQRpexej3uTo/LlFPvsxbHtxyMv/BzgiGwuxjS
 84gUSp5izBj4xspxwK2+67+2spA8127WmW7SFzx4BWRf6MAgfdmV4Wo5OEn1YzQcQKfS
 rY6+3eoh2KNA2mg2aOpRv7w2sNxFtFQxE9PcC5+I8EY0PNe9p287+uUOrncWHaF/BajF
 ndqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cvu9eNQm8Fqp7yqoiO0Eg3cYEaQpDgDeASdv6EDKHDk=;
 b=jeFtCigwf85XSlzY79rAZuktEUXUMfVhIoKHnfSmGacTuce/pviRurtsW+ld/Ecco2
 +ny0zwoSX/QSp/qibvQAdoIlptQPX5e2pPLBsLPMWtKRx/vC6FDdme6h4KpDjrs0ugJb
 +OM1nBGZtNKuqACikVMDReifNDJXngMUP2Ird/Cv0gHOPdLsIvtOSo6ZMFWpKa1xvrX1
 FX9LYq+M+Ol1F9DbBUlH73s7UJ8Nvr98o/586xPgCTS6a3URCmr3651I7ClZAosGQ4Mm
 s0wskiKZMXwLOgkhRICxPIR9qXf3OEKJK9LdTXFuhCseHFhNlt3QtPRiinmMgBKS8xMq
 Ix9A==
X-Gm-Message-State: APjAAAXc049enCiQ+IquGtCb9sr3+t0jfuawuG6GLz08MVtUbe3aGlCr
 8QeZC9vqPJ5i00RjyIIqD/LBdrQFJwvQURwYVLFw2g==
X-Google-Smtp-Source: APXvYqzU8Jv6fm21Tu9Rpsr7UPGXoPRMVTBScqqJAJfziGSJNsqhmRW3iBPEyc5EmHD9qO4S8yzzNBA7PCNgR4QemhA=
X-Received: by 2002:a2e:3609:: with SMTP id d9mr1641890lja.188.1579094613876; 
 Wed, 15 Jan 2020 05:23:33 -0800 (PST)
MIME-Version: 1.0
References: <1579052348-32167-1-git-send-email-Anson.Huang@nxp.com>
 <1579052348-32167-2-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1579052348-32167-2-git-send-email-Anson.Huang@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 15 Jan 2020 14:23:22 +0100
Message-ID: <CACRpkdYakDK0Zp_StJ+J5UV7PRjHEnWPmZGpGpeXMZyPtUmv1g@mail.gmail.com>
Subject: Re: [PATCH V9 2/3] pinctrl: freescale: Add i.MX8MP pinctrl driver
 support
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_052335_917797_E5D28531 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 NXP Linux Team <Linux-imx@nxp.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,

On Wed, Jan 15, 2020 at 2:43 AM Anson Huang <Anson.Huang@nxp.com> wrote:
>
> Add the pinctrl driver support for i.MX8MP.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
> ---
> No change.

Can this patch be applied independently of the rest of the patches?

In that case I am just waiting for a review from one of the Freescale
pin control maintainers then I can merge this.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
