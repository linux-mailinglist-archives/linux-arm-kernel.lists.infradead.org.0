Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7A810115F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 03:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnBQaqJ7Xnzbn8GjZxKWCgZLGj5BpWEmhN5pAmpvFXU=; b=WYyLJNhaB1vgD/
	g2rwYTE+/pAEOrgSDYWInITORqDyI568TA27Gm2XRbDqwwt/LQNBa3dkFYkF++GimKGm6kDkfs+5Q
	j56KQUjNzt3nvir3eeRq7IedeMwDR70WwPrqJJd1yZmR+nuITxEn9fFqzGIpZvm/x/Q6ZCmc7JiTf
	n/tLa+XQEA2gla3Pk3aeq5/V62oPnJzlPFeJBr7ZiRnG4++FN1WnYIfYLFJqkXHYDN6VVclacbYDr
	DwG3O1W62NyH+7y8aqHn3rvvb0x6Kmu5DSRtJky2LpxIEmxv4hzdDVUV3d45lJo/jtGMzJcO70DPI
	RWvwzC3YYFClC3Yz3IHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWtOj-0006UR-Tl; Tue, 19 Nov 2019 02:37:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWtOa-0006Sp-3U
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 02:37:37 +0000
Received: by mail-lj1-x242.google.com with SMTP id m4so16488606ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 18:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lucCyifi+cNj2bBusqodMTZdSBO5qj6Vap0H2hhae+0=;
 b=tqsn2nAG3Br2u59mKUWyfMiYlANBBlYkBAAROl0eTj43D008vybSBfn1aIqPwaNqlX
 3Y0h7JDlKZMw7N2123tGDAgEJM75Gen8sa7qSYPFy/AexfYc+F42R+2KiCCdNvivjqlX
 kgIZOVur45nzTlfz3sktrN2FV5dMhiNXB8Ok6GX1Q7nJqoCNKlZEdTQhcYMAuvlM78PP
 5sJP6aItkPYw9Fcvb/1Ckjal1CK3LD8+gSrj2xvxuMJZEUMDXkls9kXKyqLotxjQOhD0
 xALPcyCNlCVW69l6Ar3OkXmqGwb02AjyXEwlzlaUR+AzHlgStF3nKz/09xU4Nq4hK/jg
 oZHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lucCyifi+cNj2bBusqodMTZdSBO5qj6Vap0H2hhae+0=;
 b=ZbRBcUkXf8TwYJSA4MicDDhYUQHsH5cknyDjjATL91gLn5njycNTqGk6S1JtBQUEU1
 hDH/uLjoPKR4212rxjn6mPRqm/mt2fdyZ8rjd4QlL+aC+RTugzl42z/rkSKsQuglicPj
 ieO9nWAt9UGjnOzDIyYlUErXyYyS/mHFea+lzCqizETs6hXlFONNQq4qlVmHxKzWdx1T
 PKroMl27vdyNQ5ht3v/ZYKs7SnJJ5quTSM/qSJ/BU5OHm7ddBpFH81+/4J8KnTpM5Mjk
 yJr1+LnBSY4LM1ZFZC7TVLzOafkWAl+BKDDf0YlUNbBqdZSQgK7AA5yQwbAidSm5N75o
 +zrQ==
X-Gm-Message-State: APjAAAV8OeoIkphXXUNLrhpQk2XdjRzRq26+2FZaiRbSwMrB1pjWBaNR
 KgaMw3eJ6AaLyECHN3Eo5cPUlSfT1/qNtkd+y5M=
X-Google-Smtp-Source: APXvYqzQsuRSn+l9haQPfvyu4GjnZzDuxDevPw00bbnzXD6rqv6dBa3+zSNGIlk9xkmiUOFa7FXZtrGL7aXiC7nXYD4=
X-Received: by 2002:a05:651c:387:: with SMTP id e7mr1844421ljp.0.1574131053718; 
 Mon, 18 Nov 2019 18:37:33 -0800 (PST)
MIME-Version: 1.0
References: <1573586526-15007-4-git-send-email-oliver.graute@gmail.com>
 <1573593892-25693-1-git-send-email-oliver.graute@gmail.com>
 <CAOMZO5DYssbnVsemV+U24wbVoYM3LM3ZZtFwWHonXLHKF0Y+kg@mail.gmail.com>
 <20191118212912.GA16329@bogus>
In-Reply-To: <20191118212912.GA16329@bogus>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 18 Nov 2019 23:37:27 -0300
Message-ID: <CAOMZO5ALK+YJDQZ3ma6qc2WNnayapVQde3R9MA3sEGnSFBGnxA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: arm: fsl: Add Variscite i.MX6UL
 compatibles
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_183736_150142_334FAE2F 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oliver Graute <oliver.graute@gmail.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 6:29 PM Rob Herring <robh@kernel.org> wrote:

> > I guess what you mean is:
> >
> > variscite,imx6ul-var-6ulcustomboard # i.MX6 UltraLite Carrier-board
>
> It matched the .dts file. However the '"' in there is an error. Make
> sure 'make dt_binding_check' passes.

The dts is called imx6ul-var-6ulcustomboard.dts, so it is not matching
the dts name.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
