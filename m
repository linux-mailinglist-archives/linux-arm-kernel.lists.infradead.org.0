Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADFF7B478
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 22:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z2Gu79YmoVZ2gYUC/oXSi0PAXDzDcxJXjO0Iz9aoHPo=; b=LDWf4T1u9Dsl2c
	OovyNCPXyZ/fF7Bbq11Ky6YIiVSgrXF5Uo906U/ZpxKhHBrw/MzRiwGHVDAChljw4IgSz3qLe9JTw
	eZDuL/qUmEenspoTLpxCx9aTrtAdvp6aICy/RUt5squlEmZnFoVMcXInDmdX5aWNAYJsGNUSWaj/O
	gOoUW0zPAUNdhxCDtTIRfFWrP3WH72haB+0CAAHKHMXZP2jXOEr4AHpQSOWlFkjTNT4IOZj3QFx5b
	bekc5agrSLy+ymzGHTJ7wrW3MQlkTF0xRdR7vlQkcN5wkX2SghecT3hRh8A1qHh50d4yIBlmlfPZT
	zzhSmYaIdhNAHTjWRUYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYxp-0004AV-If; Tue, 30 Jul 2019 20:43:17 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYxh-0004A3-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 20:43:10 +0000
Received: by mail-lj1-x244.google.com with SMTP id h10so63407964ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 13:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NeOSOuZCKnuPWQlWTYZc7E94zSZCX6CWgucI8QbC5SI=;
 b=e6vS1VpMx06tzuYWtKIBuNEws8WAi3NUbyIV7c4StbvhwCGhsBL970rim8meTTIkWM
 O6ZmuI6RD5nOFDouzyCl0suxmg6ejTqvmTOZ+VISXnNVogpEdiP0rxFAJ0ecsXi2Mfb8
 RYJ67ZTGVfifqJC41HGloDKUppZCNsWmSQoNs/qEz8anDqTka3u82kUtC6pJgqk2NQoa
 FziK5WeFt3InEumrNWBLewagXXd2Bc4unv/x7zwcBc1A9iDOmunInHHOZlqWMrjvCsqX
 NtLNxGyeH8wrBXwUJqJF8a2hXQltEzL8VbGXsWeS7xYtM4cjZ2mCGG5VenQOWx+CQdZ1
 m9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NeOSOuZCKnuPWQlWTYZc7E94zSZCX6CWgucI8QbC5SI=;
 b=gQdLpv7ScrUKcfFTwSA/SKYlGMOID/37ja2keCwqYjflF3pjR3oKN/hNJCPnJa7Vxm
 3L6z1DLvQOS+Ojapoyl0NkneL/zD8afXIOd0zxjsnkPDTiIdrmHOd0/kJOXjs3+Ekoqx
 r4TaLZ0/akIHKHNmMX+k/fAhLfSuX4eqw02lRRTIB5twSwT3KBLs1UzD3n01hTlrhVrh
 FP0A/pzf6zhv29CxlAp65M/E5TC+QcgBCiK5LiXS7jaKymP1jXnYnXd2V6abjezpLA7Q
 Q6mmC609BbwTxWRniSTbJi9gmAStxu4QslpfpZ6a4VmNJPNUM9qu7D/b+V9dRAG0M+l1
 4paQ==
X-Gm-Message-State: APjAAAXr0kc2vWGq+oWPAVN+d1ywnCBepOnZUI3OOJrlhOfhjuxlOEkb
 5j6Jte9SCYoFS1eAd1zVBxfzeD+9SS/fhP4aOGU=
X-Google-Smtp-Source: APXvYqxGggeM2c8JKjHmE9XbOYkhPz3csWiBXje6H5oE/lVW3Y1DXijh0U7E24nUj8ZS7F/lrjAURo32s+z0BYMNXYg=
X-Received: by 2002:a2e:8650:: with SMTP id i16mr62727650ljj.178.1564519387730; 
 Tue, 30 Jul 2019 13:43:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190730144649.19022-1-dev@pschenker.ch>
 <20190730144649.19022-16-dev@pschenker.ch>
In-Reply-To: <20190730144649.19022-16-dev@pschenker.ch>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 30 Jul 2019 17:43:12 -0300
Message-ID: <CAOMZO5BqbUzBi5nR33TOpgnR4CFAwxF34m+oKtRZ6rtMaMVu9g@mail.gmail.com>
Subject: Re: [PATCH 15/22] ARM: dts: apalis-imx6: Add some optional I2C devices
To: Philippe Schenker <dev@pschenker.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_134309_612434_74D72845 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philippe,

On Tue, Jul 30, 2019 at 11:57 AM Philippe Schenker <dev@pschenker.ch> wrote:

> +&mipi_csi {
> +       ipu_id = <0>;
> +       csi_id = <1>;
> +       v_channel = <0>;
> +       lanes = <2>;

None of these properties are valid upstream.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
