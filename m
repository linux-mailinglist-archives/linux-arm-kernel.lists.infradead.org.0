Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B461E2947
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 19:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/P+ZjKOC2/bMbVwrv5RR0LLprgFdyDzg52yKOqrupgg=; b=Yx3AiMRlPbYuw2
	faBtN3qAVLlpC5FOFGIp36VgQHqX9JPaKc6/n6eeYYobZHg0rxJxb/NQV5kkeTckqW0MtibtZ8dzm
	OlTmiS711B+57rxTme9lbAABjplh510q2LDehxwurO81GO9jbQY4IZbiV4w1aPyA3/bdz7zMxc87J
	7KiPW5gy/lOV21gJyqp+/AzDxphg806GepbA3d9+HdaOvP7KCJZRp0GJwlmijftHTY2eROAYK5V5G
	rmVsDR9nn9apHZyMRYpo9qTzJAsLHBbL4Mx+n+Qos/53LlzDBwLuFeqQqZRxE7lhkqrzffEL49S7B
	YjkLvwAecnIYLb2uHKIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jddcC-0006rn-GM; Tue, 26 May 2020 17:43:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jddc0-0006pz-TF
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 17:43:38 +0000
Received: by mail-wr1-x443.google.com with SMTP id x14so15909851wrp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 10:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DcoTWLaWuLh6LbQ2E4pMtjfD0DV5c7lnlwMOorG+hjo=;
 b=MEk6l109ZsgDsgxPPHc7TMEvSssMisdoBSHkKQQrQCOthwHs0s8i/KdD8H/QGlhcPX
 /yGYKMeGirxAUN8WXz3fZkl9/hKY3tt4l1tRn+fZyPKq99LJBolmTaFNGAMQ03ss/2Jm
 9XKroGmMOL1ZNOX4hNQGMRG/gaAdgxTKfc0Y/djC+Np97sbgp5Z/8Un7pcc/1VhTnbdI
 NpqRHA/Dd2mdwkLR7VhJBcsAeEuKsj7MVeOG6JCDwZYuJENI9AeOwUDNUtxTIgC9ErRe
 d3ajk257n1qqjj1me2d+tbvAi353QZVF2X/zUfNGffg6dbomRH2vrF0e8jCi4C0TJZid
 qCxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DcoTWLaWuLh6LbQ2E4pMtjfD0DV5c7lnlwMOorG+hjo=;
 b=pNJD7vLpHEpktzLSGS0mUO/BDsDIzHv4qkwlP80gUMtzuQDm4a22N2yTGI3jT15X1g
 PYCF+9kxwUJ/S/wvjH3A9hHRIXjnTEYUFcSxwdxK0NIOnjUBVtWPMeclC4Co8ZYUPyUt
 kdSegu66SbU49RhRKYECX7byFzN3q2ZUZaZxxcysdCmlt3VjsuPktvEDysDREOIfEear
 rmy/XDsB+Rq195NHENI4PgN6IWNBgEJn/cDsz0o0ig5I2xFyEnbYUcVsgp7iILby6UHl
 B0CCPV3sxHul4RlJksBMivpE50Zv0YGjROYOiaCWAGd+ABw8gnKI+3g9bJ2xPIi4sUFD
 D2vQ==
X-Gm-Message-State: AOAM531OOYyfI5telW9n0A0PrpVPFcfcvxk2WTq+WweNXi1gAy3cnq5f
 sx7AK0LeCmJkwlZTn7NX4CPUGY0HIjKHdOdJLmE=
X-Google-Smtp-Source: ABdhPJyoDeW75oDbS4RgC+rrZAbEt3FUCMuJnat3rtA+g/1JeSCoyGgqVUMthL8CZAOusFW65TR9SHP2qXfztEoTg8k=
X-Received: by 2002:adf:eec3:: with SMTP id a3mr22471564wrp.164.1590515015370; 
 Tue, 26 May 2020 10:43:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200526170939.104111-1-aford173@gmail.com>
In-Reply-To: <20200526170939.104111-1-aford173@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 26 May 2020 20:43:24 +0300
Message-ID: <CAEnQRZCv0KbVkGUoVz-Sz3XwQyFY-5KZXfLoFw6u5amxGSCVgg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-beacon: Fix voltages on LDO1 and LDO2
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_104336_940904_15AE76B5 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 aford@beaconembedded.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 8:11 PM Adam Ford <aford173@gmail.com> wrote:
>
> LDO1 and LDO2 settings are wrong and case the voltage to go above the
> maximum level of 2.15V permitted by the SoC to 3.0V.
>
> This patch is based on work done on the i.MX8M Mini-EVK which utilizes
> the same fix.
>
> Fixes: 593816fa2f35 ("arm64: dts: imx: Add Beacon i.MX8m-Mini development kit")
>
> Signed-off-by: Adam Ford <aford173@gmail.com>
No need for a new line between fixes and signed-off-by.

With that:

Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
