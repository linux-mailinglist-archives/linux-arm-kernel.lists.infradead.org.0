Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D77B23F98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lnsoPSeqmyFlVIE7gk2L49QRZ3+3GqkciJthIVgtxno=; b=cFhBPxLaXJf4vR
	tU9LDhR+2i19HStmkMsDExsItIyag3jFWOatFVULKNwee+67zgonrsnEJ3dATaVchYsuNr2Ba9xds
	vm70NQKpAHjldbNsRHQTb/+FqxLts+PUklFL0lc7aZ2PAvRrH+2KFFC2srzEb99oikHVJeDUgJMPo
	kUWO9Dl8tuvw7L+3lnhDOOHWIn3diKtyuXQjo5ntcbclrz5BlP9z8AIPNkYG7ToGA2X5plDrZbpwv
	20o/giy3z61Jer1bidjOOZ2ohsPAcmzRPWUWx4/MbJ8tSMe3IxH868ymemDB1eB/EB+700b4vpHBL
	ftaR+1x/dkB8On3fJWNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmWL-0007lA-O2; Mon, 20 May 2019 17:56:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmW9-0007jW-Oy; Mon, 20 May 2019 17:56:10 +0000
Received: by mail-oi1-x241.google.com with SMTP id u199so10672389oie.5;
 Mon, 20 May 2019 10:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rnU52g/boLPrvaC7Lk7YTaYbB64jJRa17WqE6kdu0io=;
 b=hPUG79HfZRgIOAcjnjkcHWHEsotbZEp7IYdTnhO3sxpo39xGOJj26gWT+GrrmRR6D7
 NV5kY7MYANLoAYuiwh5Zlx6io39iLmeKXbsySsSgj4W3ws68vbPTf65+9uQykZKNhsNh
 hJVpZzdcFRxsPr2vO64EcyPRrqsljP/wdtgLtkbdeQVUNFglfotDJ1sx7eL7eKDSGwb+
 ADLqWW4FBTC3k4XdjDndzP1QhoDJU67f1ev04AOsg/xGHeefce7mRTj3RL/81+Shj9pb
 6rlOFr5eaNXHV5+LY5j2NKHNp9yShShMqaFRuiDnid91kvd5Hkvcaq/EchqMJOoWr1UT
 NgPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rnU52g/boLPrvaC7Lk7YTaYbB64jJRa17WqE6kdu0io=;
 b=a3TbCWxYzpbwt/IXrtHpVvFvPPYzNcNb97rXeOwADuFbawe/vjFLCZs04gtSwXETpe
 tqCn3C3BFySrme3bJVkijUE5jUdpciHbayNf7vUJ6dFtD/bUGQGaOu9vcrWTMTmi72PJ
 o3halKj3uqGYda0i3r9nfGaEjEvH2UyMxi9X2Z6DAzQ8QDST25WvQiFkyGy079qIGJJP
 0a27DeSgtdJqR85VpJ4HpuowPoCOefFtKOQu32CTGwYmJh5mSmeXP/2OdVzEJOQcm+dd
 tTv7NtAP2B5FvzFvXfQCUTB7/xb5k5GvTSYBDu+K5pSyS80FfESx+buRG1rMEy5sqvVm
 D9Mg==
X-Gm-Message-State: APjAAAUL0sjdCZZQDN2YU12YDP30r9iVXZbNhFUI4joThV5U2Gc83RYA
 YfOh9vDIB1aQEHtHzv07IqjSwbRneSJ0NYqHRSjQX/ew1IA=
X-Google-Smtp-Source: APXvYqypP7Pacvyt44dFZalPqQM1rwMz7wLXcmXZyakgBMi7D5OnzzpRmOas/Vj22KygufhL8H7XqICxyFGZBT7JDWg=
X-Received: by 2002:aca:f144:: with SMTP id p65mr278504oih.47.1558374968921;
 Mon, 20 May 2019 10:56:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143551.2330-1-narmstrong@baylibre.com>
 <20190520143551.2330-2-narmstrong@baylibre.com>
In-Reply-To: <20190520143551.2330-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:55:58 +0200
Message-ID: <CAFBinCDcs0YNpbe2ezn0bzE7n0PYj1u+Wx8abiBZRMBTAGye=g@mail.gmail.com>
Subject: Re: [PATCH 1/2] phy: amlogic: phy-meson-gxl-usb2: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105609_814092_B851E5BE 
X-CRM114-Status: UNSURE (   6.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:36 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
