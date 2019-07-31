Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8C7CE22
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XqabaPI4q5cLfHC25bm6lmX2JvzxTrtfzYrmgimxFwg=; b=iIMz8mITXyLFS+
	/iRCWxBzQCPxSvV/1XLO13ysskj67SoNU1lDE5Hb19j3isvqUHmzqS0AEBikkT3pz1dq1ki+eXVbY
	ZxtTLer3S8iVIZHFqJiInHO3iHF+yz2COFSfameCVEpeyu2/dTJ43NTsgN223dr1xqiIOwX1TZLt+
	3mQDQ1YcuELpkPdSOgGh7QhWKCCHrDDwlr8mLpgrahlh73Stya3rtPA8P+4bjouxs3+1X7fY9MGCz
	Tt+Sk26qdhS5leRJSmUQTLdEaxhw+zBaW0L074AwjuyZtD3tU36o2tmsmOQHu6eMZEnXYNThgFxYC
	NiZcJwXioFCLCUThuJwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsv7H-0006K4-9q; Wed, 31 Jul 2019 20:22:31 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsv7A-0006JU-BQ
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:22:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id q26so48416841lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 13:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0SpmVhieaSp1M/Y3YqpENmZuxtfqWEgb2ZzBcoQ3X0I=;
 b=LWAjpLiybWndbpqvSdgC0ZNVG3eJ/FDLgFPRE39//+I4dk/MsAtj+ieFxB9Hs2cwHQ
 oY2l9jwMPeSNwgmgqTsA7iSTuBKhTQZGKCfU0RbTM86pn4D5v+lrLJf3EQsyq3p6Iz/0
 q0kyq7nEqWOvEYdsRx2VVAYAOG4ck69HCAa6EDEDEEJoDH22wO8bzmsr3TQ05a4E/2e1
 ODRI678yagekALfr4cBmh88QfX+hhk3Qe1VzHoiQdIWQ4SzjgXounkQY1fao2yLewMyc
 KjXDaZtoOnZu2ZuHqpkJLVVM01pvBQZIuQO98ZLyGkv7wslm8+/X17AH7bMoLhLDMJyC
 WkSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0SpmVhieaSp1M/Y3YqpENmZuxtfqWEgb2ZzBcoQ3X0I=;
 b=hDzCiGJYpTuChlDSC6LTepcKSrBVp4FlE+Pc3dRAtLBhpoHKzhQ1EdXu5U0vFV6nOG
 GI6gr9jmhF5H58s92y2Omp5xi4ocbFhnFknwlGiNmGHt8or6WgxBvEXEnqT3/QIUYDDi
 mJdZvAF9vRngsiJDJJxb4RHAya/GmuMdAFxT7PBsjjFYuTY5uT5hVSQPAAhAHeAJfvJo
 jFyZuUihLHNxb80A6ekaLz8/skTromLuvkcMcRaAJFpPP7KBKJgFIxUooUppLCeyxJbe
 yLE5SV8u4RNYk7Fy6oKwco4BEmYsd63MrsaVFwfU0k5IrryI5GM19++6DGpsqzqxQkix
 dopA==
X-Gm-Message-State: APjAAAX97reKtFkFpf0DC/QgmvHlP5fbggzcWK/PiQ9Ycz78R6XLxQPY
 Y+HRMY9eFlZlNG60gnLKrEs9inKvhpI0Q6Jo5QU=
X-Google-Smtp-Source: APXvYqxeyi7F/o8AJ7WWDg5VWXCfCMw/eTyZi57avRvhkoBN7e7jtZLbC39zRmkyQb8O5+pm6aN7oPac1yNmmebqoVk=
X-Received: by 2002:a05:6512:21e:: with SMTP id
 a30mr39464898lfo.107.1564604542373; 
 Wed, 31 Jul 2019 13:22:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190731180131.8597-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190731180131.8597-1-andrew.smirnov@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 31 Jul 2019 17:22:34 -0300
Message-ID: <CAOMZO5BSsPx-iFtuHap-kSSqYYCEMH4A=wsOp61oJvGRUe1O6g@mail.gmail.com>
Subject: Re: [PATCH] ARM: imx: Drop imx_anatop_init()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_132224_387962_E996F494 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Peter Chen <peter.chen@nxp.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Chris Healy <cphealy@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Wed, Jul 31, 2019 at 3:01 PM Andrey Smirnov <andrew.smirnov@gmail.com> wrote:
>
> With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
> detect in mxs_phy_hw_init()") in tree all of the necessary charger
> setup is done by the USB PHY driver which covers all of the affected
> i.MX6 SoCs.
>
> NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
> datasheet it appears to have a different USB PHY IP block, so
> executing i.MX6 charger disable configuration seems unnecessary.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Peter Chen <peter.chen@nxp.com>
> Cc: linux-imx@nxp.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
