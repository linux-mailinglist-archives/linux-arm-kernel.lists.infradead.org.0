Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74801BC8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 20:02:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv4hvCSlpS0g+5LjHCQ7WUHR+qgKquOJlrMBsgPajHE=; b=U3aNiDvnx8V4/X
	dWYNN0VX5l7NAtc3LqRghwK/kH5ULfFHydnnsQ5y2xmZQBo0ppK/qv3YiwWyni3mTWvu3135jaQ7G
	TMV2KBiUW3/+lLCWVVCLa7VS7L6rlig8qhojG8pJolUtZkIcSOu3TtlDy+6XyfjshS9+2LT0bjn91
	z3rGrrHyrtYtDnpeaihdmiAYO6Bl2asaey4vEhLoX9Hp/CfSHqCGhK3ZGlWr80waslRvdwAefNpDA
	Yw1nMQdgTvvqMsFjVik/X2zxhLUc7FNV8Vcb0eYyvCqNIlghKifmEAD9djTq8KqqxDLDV1A8dnW+3
	WOUnfrD1tq+MC6ywENHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFH8-0003pU-SU; Mon, 13 May 2019 18:02:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFH2-0003p0-0K
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 18:02:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id l26so4109644lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 11:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zS+LwfVg2khkqAlhoTFFFjzuYkUPD/9SFICbNmLG588=;
 b=KEUjAMlD5dMDa5GsmmdEz9cu4OvVATgBkCtl8zN7eoWUPbfAm/fbVtk1/9P3YfYxy+
 jspK9o5+/1xMzYH65R6IId2SUlES9m1jbc3Is8zAv6X5+2ZI2Hcd+9N+Yjesu/KY1Pu7
 x0Cvjft8i84sk2dRI2xXG4Nj/p3ktsQgJRdE84jZ+yWhcI0wo7lMgAB3VocCK32DD8Co
 lAFiLIEnEDqJ6IgzxaZNa/UR3lEvwTJu1IsfMGzri9TyuQtLbnadnKb2IRWOchLrN3UA
 LmoykvWsYcDjVG6/v4GFN5ZStsFoXIqaXbF6NRtM57f/PDuzKDeGB4khUPompmbF8t7H
 DqBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zS+LwfVg2khkqAlhoTFFFjzuYkUPD/9SFICbNmLG588=;
 b=gfa5/3WF7d1c3YxGqC064VhaSg0l7v7SfbXUOChoBojnAQMIhwLzp8uN0dvF2KTOOe
 33UvFJMWvdS8WhJaQXV+oVVLhTD4W+WdsjO42bIU+/Up4Axok6zcTNFltmuAc1SiWZIX
 fTiUL0yPitITm9pZgZnhl8zV+9dKEBpthTdSfFqXg07GaLWDjwhstphTf2fU8G6K+JbE
 ZxdKujsukGKsReMNyqhJEsIsgVs97VrGmlui5RjlJ4Kk8xQO1AOzlwnucWHWc4waXtjO
 gq/qVhB/KwCAW9ah9x0Y4TgqpbAlaLt3WeDXcs4ny7Rc6RPbLPPmR6HHRez0CMPIi2zK
 uCcQ==
X-Gm-Message-State: APjAAAVwKIRE7PAskHWbauLar4p2gneLsItyDwiorFySiKjVlt+Y4CMa
 Ud238Uy+gSN63ojeuovOkP4G5n1Suh/pwQgtQdazSwFuoDc=
X-Google-Smtp-Source: APXvYqxzUj2G1F5MbdNS+8N+ZQleOQ69VpT3QcJdiUuVmAPVlLl9yxOSYTE/aAbCQWlLPSAc4J8eKgxHnKsBGlVG0i4=
X-Received: by 2002:ac2:5621:: with SMTP id b1mr15038258lff.27.1557770521961; 
 Mon, 13 May 2019 11:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190513174057.4410-1-angus@akkea.ca>
 <20190513174057.4410-2-angus@akkea.ca>
In-Reply-To: <20190513174057.4410-2-angus@akkea.ca>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 13 May 2019 15:01:56 -0300
Message-ID: <CAOMZO5BaQnrDOYogzgpmCExjB+uhYQ8SsxBiMWrSB-1KRtgeVQ@mail.gmail.com>
Subject: Re: [PATCH v10 1/4] MAINTAINERS: add an entry for for arm64 imx
 devicetrees
To: "Angus Ainslie (Purism)" <angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_110204_041871_80FD3B47 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 2:41 PM Angus Ainslie (Purism) <angus@akkea.ca> wrote:
>
> Add an explicit reference to imx* devicetrees
>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 7707c28628b9..0871a21a5bbb 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1648,6 +1648,7 @@ T:        git git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git
>  F:     arch/arm/boot/dts/ls1021a*
>  F:     arch/arm64/boot/dts/freescale/fsl-*
>  F:     arch/arm64/boot/dts/freescale/qoriq-*
> +F:     arch/arm64/boot/dts/freescale/imx*

No, please put this entry under ARM/FREESCALE IMX / MXC ARM ARCHITECTURE

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
