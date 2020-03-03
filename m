Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DFE1769B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 01:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GueI3hkoMzAPyUOcBtVGy4AHIo8FAWDw9EeK8o05DM=; b=fCzl2HsmqG90uJ
	4yEq5ykI5Iua05YwUWMwRB2ApSMV8SwGIZ+Vv0tLbHtqn4ogdM6k4rCg9X8rDY2t9q5qIL4/aXF2E
	P4FJVoxWGda0L7hlu6HD2OJ3S2SNd6LgnTenugzD3c/MDy13Aiih5AnQj7FSF3fS7D4e0LcFrXuEg
	t3kXO0WIKkqHfxnblZBsvTouOIPSTiAOF60aE1iJUYYMIf9a0H1uCLMJj37ydsgw2n/U/QKhuwCA2
	St+q2JsuGGb3tKF3teWzVyN9QoUQtlqHLrhlK0ZATmBEu4Lowbpptyd8TPUAYANh9vEhRqGe0FpBh
	fPD42D/Z6CZm7NryUINQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8vuQ-0006R8-N5; Tue, 03 Mar 2020 00:59:42 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8vuK-0006Qa-79
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 00:59:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id 7so1150769lfz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 16:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NBsGwlqlyExK6MebGtSCOV88shQTV00pT4RnlDjq5h8=;
 b=gu2ABzyjMAm2QLsha51eT7chbva+u57D0uURthQ+YT7woX16ehn43gODj9EmfBphyr
 oF1pFfbXNBdij8sDhnJhd+ep+8XKfa6eFthADNSlp3/iYdxT4Zdt6jCayfDYDRspm6f5
 vean+kGodV7qyb/CL9/MKi70WN/u2FWT6g2mXS8bWJICpltJ9Z8ez5lJdPXofufZCySq
 voWvpfzxsGjuFyLvYaYIIbBM3rjUlutGEhGPPPAgK6QuyVXX88xLXnQrIxsPTgErrTs4
 LksL5Odice6qQvkZwGUSS1W1s2C23BtOueEhNBCSLrTkQ6YzIpdfjRwjt0JMzMezNvoL
 Kgrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBsGwlqlyExK6MebGtSCOV88shQTV00pT4RnlDjq5h8=;
 b=qXZfgYov0yalpfoDJl+H5/fhviA9yCvN05hLg6sWg78Thsbt6bgoq1T/c8RezY3uwN
 Bzmy8pcHDCbkFCStN2k6jrZGLjcqmH6SvorKYzI5h54NURjeHXhpmj/+phed/OViNGiF
 CYkRAPNCo/Gihz0s84mcUw5UgzE6uB6GOF0C1RRnUCAEm0Menhfbosc3jqtkfL1XWF6b
 g8OMl6twqajhy7rE5BhR8ASAsYU1Mk+v7EIEAJe2ygMJzKkBCAMXjjk3HXXjU3toJ929
 BDptVfhBCe7Nk69N1dT6dTly43X+0gUTA/Omf+ZdoMiviNG+Y16egtS7GJJWUMbSRxJR
 dKbQ==
X-Gm-Message-State: ANhLgQ07QKTDlUaTJWMxmYL5BQYlku5ME2ZY3jQSFVV7H+1EJZkPRtn7
 QcGBOUYbY9INvo942rieIMRqcKQ/yYA4FXV6Y9Q=
X-Google-Smtp-Source: ADFU+vvGEPDHL6NW50OU3bAvbL14J6ZpRbkc/t5I/vqh37bxmVgdYziMnL54FOL66o6wwMfq/LddUMsl5SS7hne7I0Q=
X-Received: by 2002:a19:488c:: with SMTP id v134mr1054894lfa.66.1583197171654; 
 Mon, 02 Mar 2020 16:59:31 -0800 (PST)
MIME-Version: 1.0
References: <20200303005244.13893-1-vitor@massaru.org>
In-Reply-To: <20200303005244.13893-1-vitor@massaru.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Mar 2020 21:59:20 -0300
Message-ID: <CAOMZO5AmAqToKeDz=GZ0f44P6qAP2OGPHzUiD-xV+hr1W1_BRg@mail.gmail.com>
Subject: Re: [PATCH v5] arm64: dts: imx8mq-phanbell: Add gpio-fan/thermal
 support
To: Vitor Massaru Iha <vitor@massaru.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_165936_284588_BD81F796 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, lkcamp@lists.libreplanetbr.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Marco Franchi <marco.franchi@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vitor,

On Mon, Mar 2, 2020 at 9:52 PM Vitor Massaru Iha <vitor@massaru.org> wrote:

>         pinctrl_i2c1: i2c1grp {
>                 fsl,pins = <
>                         MX8MQ_IOMUXC_I2C1_SCL_I2C1_SCL                  0x4000007f
> @@ -374,3 +437,4 @@
>                 >;
>         };
>  };
> +

Unneeded blank line added here.

With that line removed you can add:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
