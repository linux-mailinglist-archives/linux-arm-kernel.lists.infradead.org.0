Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D95B15084E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:23:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YuhFQHclL8w5jmt4pPMkp/DML3SCfOC7NIckPWXeZnk=; b=RXVuNDbeN6pTTq
	VM92qNaY8bxNG/PMHYQzOeKCuTnuHkZjW4T2Mtac+ZYi28ImXIi5VtjO+lEGgXQZVyUjyZ9M0JDTb
	aFWZyRkpTD8Obvefk2yrsdGhlP2pQ8vpGCFo3ZO0RA7Va9l6SDBGFfvjccmQV0WxgdbDsaOwv9iUY
	y82wAJ6RZCB4vuLkZOUICx9mbsoWxDDhf3vsYgDQItgfepmQUg1U0kREiAvHLH25Pu1yNELrTRFQd
	H6V9bUgQkmEMazAekWLnUD/TzgMCa0OxqJPpxd6tbXF+goOiHir2w4l8WWJoxRuCuK6AkW6e4/Iax
	Tp6HZ8T8avAhj0QIECrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyccq-0000Uz-Vr; Mon, 03 Feb 2020 14:22:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyccj-0000UI-Bj
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:22:50 +0000
Received: by mail-lf1-x144.google.com with SMTP id f24so9839628lfh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 06:22:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cQyJZrqDrPD9QQGrUv31P1u0hJiwjVoo5AE0F4uuGCQ=;
 b=aM+vDHpiHu7ZsP9uDCCkEBBjYhrgy6/xxq12THpUqTWsI7iZ+ha8+f2DUT/mgRoIOk
 GJ1cP3I5cf8FnLeqU98LZvLmNys2gevwmDWhWAvr4iGNlkTSdHOCC/j0jGUN6YXuyHR1
 OyE1zXcPvWfmNOWhwybZcPG1xzYo2aOoK3hrsjUlnvPcTWTX1DayvpleSvTg7qhRUvjr
 t/9YPUT7lbSx6q54nf1EtBO/tr/Ov9M2XIAN/srNDz54BpYSaBou9f/QFqVV1YvRN4f4
 s6jDsGcUf+m5j2CSUBKyzmrx/37bsztcQRKUWG8Bt1FwUSp83I7Fn6FCpfnYLgExGhkf
 1njQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cQyJZrqDrPD9QQGrUv31P1u0hJiwjVoo5AE0F4uuGCQ=;
 b=tOT6bHPegknuPBIwpYz6mrLNc7FNRT/sjIusq1ZWSyhNGkx9DgF5WFAN4k9KN/S8K0
 2vEbabmqtUSQXuekyd/lk8xkQDK7c4FwbL9+1mNGz2IUpleUwXYkJJr5FeGqv0fpQaPd
 F9XD+8o4IZYTIhdAb1w14ohlvtgWZHxRRPNY077bisXyAyAXwvmmEuKjZeXf+WuV9Dz2
 N3mam7Ufg636Pr2ymU750GVoPJI48UzhP9G7HjR+InIUcZehH/m5XlYw1AtP5MC9YQFH
 uUSsp+faRyqmKdY+4ZdlhCVA3ZNjsa3k3HgZTGHtLI9WcIgqglu8wXx0ZfVXUryHjuWK
 lh+A==
X-Gm-Message-State: APjAAAUX+P2oIwgEBZ9OwYeOQEvd6ZYO45+ilJutaxtjwCq+wigvPGvT
 BWBxzZH3qdDCzvVdHyS1Isiz70UkdgN/XH377v0=
X-Google-Smtp-Source: APXvYqxu3RquYZLbeVnhZXAa2l6u5wyw7ijwh/U3Xd58fv1kHVLoV2qoyvjjNMMdryAAt03QZsjjKAB8CVu91pU+HeE=
X-Received: by 2002:a19:3f51:: with SMTP id m78mr11975049lfa.70.1580739762842; 
 Mon, 03 Feb 2020 06:22:42 -0800 (PST)
MIME-Version: 1.0
References: <20200202193014.107003-1-stefan@agner.ch>
In-Reply-To: <20200202193014.107003-1-stefan@agner.ch>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 3 Feb 2020 11:22:33 -0300
Message-ID: <CAOMZO5CRwOpNUtUqTmdvV0Yz=fRadjYwpv19KZyhdc-ea0+_ZA@mail.gmail.com>
Subject: Re: [PATCH] ARM: imx: limit errata selection to Cortex-A9 based
 designs
To: Stefan Agner <stefan@agner.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_062249_404876_EC0FBCA8 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Yongcai Huang <Anson.Huang@nxp.com>, Arnd Bergmann <arnd@arndb.de>,
 Stefan Agner <stefan.agner@toradex.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

On Sun, Feb 2, 2020 at 4:30 PM Stefan Agner <stefan@agner.ch> wrote:
>
> From: Stefan Agner <stefan.agner@toradex.com>
>
> The two erratas 754322 and 775420 are Cortex-A9 specific. Only
> select the erratas for SoC which use a Cortex-A9.

Change looks good.

It is not clear from the commit log, which SoC selects the errata
incorrectly though.

I would mention that i.MX6UL is based on Cortex-A7 and hence should
not select them.

Otherwise, only by looking at this patch context and commit log, we
cannot notice the problem.

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
