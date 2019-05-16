Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE23B20802
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQEt5DPePuj8BUHOqDm8fLEHC0lqM5WRP+3+a5DmDPE=; b=n+9egSh3Re4EMI
	xJKSuYpIH9JYDR/gmkvn1Tj8AmTjDFT0fDH9cT6L4iylTfiVunScx1F/tX0Nxtx4iT2cFwHlAKzya
	0OMWbQZA+CRi+QEKVWjlHMDLVdqVe3SsidfIfqRMHkIX0eqLLqrYuWDl9NJTPfRuCdU2kVezPuU1v
	WBDfuy6a9aoaAyJpC7D0h1y/jagcrj2DI2FvjTQaAOX2wdO4kpFT9aNdP+YPAnb3TtrLKS66SKicO
	W/CEGiXVuiTp4ctKywq2W6ORjH9Jl0KhM2E/SDs4cS8U60BziJDK+dvEoy2AejCwurDbxWb+/4YYW
	PUljwUsyQAWq97+PkLFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGMs-0008VK-RU; Thu, 16 May 2019 13:24:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGMl-0008Uo-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:24:13 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C61992089E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 13:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558013050;
 bh=WC/f5/dSz84BLEkLCwH5U1Ll+l1qX8eGJWnolT70naA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mMP7Wzmthjy6/0ck2UaNN4pJP5P8nV7mxvFMGXF/TXYcTLRh/uSIQe7sLPkomaF5P
 UuK4HcS5R0vgmx2B3+OJsYBGXM4bD2J4a6cEsFeaAZLmsQLxmZcHEIU/Ni+Dbe+Crd
 OOycWYTzu9X1HBX4OX90uNcziIg7l7XeU9A1xw2M=
Received: by mail-qt1-f176.google.com with SMTP id t1so3767261qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 06:24:10 -0700 (PDT)
X-Gm-Message-State: APjAAAW9f51q3o/iBk55gMsPrikraYOWrp34F7JlqD76/8j1rq9+irNg
 pIqbH2uq2U6wh9G5sTJo7Us/9jAyM3vHcLvcLg==
X-Google-Smtp-Source: APXvYqwyjeW+HDz4tETM+qCkBYtyxCUgfVIbX6tfJRijPiTqWWE5F/OFxbxutdZT+809kJ9yZ7QBXnSwzANIq6CG5w4=
X-Received: by 2002:aed:2471:: with SMTP id s46mr42283987qtc.144.1558013050035; 
 Thu, 16 May 2019 06:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <706cb97ae45cc9edc49c8709b2189ed786d2c7db.1557993523.git-series.maxime.ripard@bootlin.com>
 <a0558cf83011d21c4f44fecc078dff1e67cdbe9d.1557993523.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <a0558cf83011d21c4f44fecc078dff1e67cdbe9d.1557993523.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 16 May 2019 08:23:58 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKKE1XT12SdqG=nUnW0-F9Nb8VNxHq0jwm_AYowRKjJOA@mail.gmail.com>
Message-ID: <CAL_JsqKKE1XT12SdqG=nUnW0-F9Nb8VNxHq0jwm_AYowRKjJOA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: sound: sun4i-spdif: Document that the
 RX channel can be missing
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062411_876483_3CF12C0D 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 2:59 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The H3 and compatibles controllers don't have any reception capabilities,
> even though it was never documented as such in the binding before.
>
> Therefore, on those controllers, we don't have the option to set an RX DMA
> channel.
>
> This was already done in the DTSI, but the binding itself was never
> updated. Let's add a special case in the schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v2:
>   - Removed the expanded items description and rely on yaml-bindings tools
>     to fill them
>   - Fix typo in dmas property description
>
> Changes from v1:
>   - switch to a draft7 conditional
> ---
>  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 38 ++++++++++++++++++++++++++++----------
>  1 file changed, 28 insertions(+), 10 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
