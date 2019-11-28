Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473BE10CEF3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 20:43:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIbRcVXokczV5oTaEp249bzdBg2Pyzbs0ioBEcheJHY=; b=lVaFYvyfJ9a9uQ
	Cmz+Kn/nRBPK8uCjMzerWdJpo7Nk4lJN70oAa40cXGPbek8n+CxOexoOuP2qXYcFub9pPV3M5j8lc
	5pJxXi6i5xcDg1JvogVowFV5ok6Kr61ko2gbPISDVVAGBkILO8/qcx0mq5Jlb5gwMb7Lgi/UVfT5a
	0I3sAMlb+hvcAxwJXX+/RPkQRtRSfoa8NopK+NU/OOT4XsUrEf+KZ2zsZyT+6lCGyz4N+zApoTALx
	8QtWcBbFjIs53CLVIozCdgsqjWzYXKFUPPND9HCfHOXh/Sirgth1AbR/phA96t36SGCTJIAK6QQJn
	sUk8JnoSt5ZGN4Ten3Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaPhH-0000Gh-Ph; Thu, 28 Nov 2019 19:43:27 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaPh6-00005j-TI
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 19:43:18 +0000
Received: by mail-lj1-x244.google.com with SMTP id j6so20568339lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 11:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SpMIRIbW8ZYEXnPjVi1K5UjyfJnW9d0uWsvcAYJ8UAo=;
 b=oloUoFA6UEefUoSDn1DnzhQNTgPLoRmUIapMdu94c3HlssacdL3+A9JzQ7WyjHVcPk
 1ieJiyoTLFE1nabxAMujJZbaYTZ72Ogj6LTaDRPPpPlpdWfysr5/jCh0A4R7zerP94PN
 Tkt86uIY+efghOxOaVuFVxM2WrT+3ZUM9pf/q6uhfOLDP9srSbSs9TUKcazQ1P/StUpu
 GL1fOWr9XZOgkhPiGsQhrv15r+AZObmrV3BEGACvF7LW9qaBJ/hUsjW0WxTkNYHFCd14
 Nx1+wc29hKo6hIMxcIPyYKhkWRFY6G8lxcT8179YJ4pepGzpxOBAeAJY2O2IGQymHu+A
 yeRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SpMIRIbW8ZYEXnPjVi1K5UjyfJnW9d0uWsvcAYJ8UAo=;
 b=gMFeK8KWlHaRCkU4rB6r1DMbekNIUtxDY9GjphKhUYqz32nm0I3sMqF/wkiU4IGwCh
 jojxK1xpiSC7Pd5Mv7GWMjaNOx8zVBFELEYkqlCqpwaUqv/oS/Ja6X5KltbbcHLpur8f
 V2q7lIs2V05XRb2sOYiIv1PlUq3lrsnrI3FhGLnPx6iru97KVx5fienE402LUjjsfYTL
 Y/E7Z4MEGgAeP+eZrvc1hELnu/vxK63a9IXFMwHRTggpoyLf3huG5rtuZP4b3nQHvkDA
 D4j6Wv4L/Xh69kDaGLLy5b6AibY5EtN12phfzsesgkM10cCf6e8N3PlJThtlR80GISXa
 M/6w==
X-Gm-Message-State: APjAAAUEksTtm/HHIhW/wqx25iVCV1PsAyEaok1cshQfyGAJ76DVQKM4
 ezBDRMJzosrb7fDAARycfC4fIeLe0HiUTMMdEws=
X-Google-Smtp-Source: APXvYqxpB0Wunf+56/hcaxrikPntTecjuCZskYxZSW3kIvL5RTbQlgjROVYSTQxDYPAHSZV7sIYaeI4FnnBsHnoxFQs=
X-Received: by 2002:a2e:2c1a:: with SMTP id s26mr35884555ljs.239.1574970194248; 
 Thu, 28 Nov 2019 11:43:14 -0800 (PST)
MIME-Version: 1.0
References: <20191127110509.29905-1-l.stach@pengutronix.de>
In-Reply-To: <20191127110509.29905-1-l.stach@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 28 Nov 2019 16:43:26 -0300
Message-ID: <CAOMZO5BAN-BTR=A=ODq_CcZgumYjww4b3h3e_r3Og+JBK=uoeQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mq: increase NOC clock to 800 MHz
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_114316_972735_607EF253 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, patchwork-lst@pengutronix.de,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 8:05 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Philipp Zabel <p.zabel@pengutronix.de>
>
> The NOC clock defaults to 400 MHz. Increase it to 800 MHz for improved
> memory performance.
>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
