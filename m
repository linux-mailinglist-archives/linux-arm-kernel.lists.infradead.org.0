Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AB657C69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j46zkLCkfwkAucQ+lRpDJxfwNU9lX/XNegn1zEp8koE=; b=EOfdKIiaLGgku8
	a+mvpbDb25iPNkel1n1f4aXHVDa+/ajcNUGq2dYCY9kHH/jQGhBcOp+hUClR2CoMyd+1wL/dDO91O
	tfj+wLH+oFDDrCUWfLolYoaMY3K6r0Rnh9tyzTBwEbKe7sdgGPSn0pO3q15nfI1sza87u5O/axG7/
	rOBLtTMoBa0r70XqD0AFuUumhx9aObnsTYGqWBfNlUc3RC3HpS22J4QD5XFQSGsF0eKNU/RMJ8gOf
	/yZSSwkyBGiawePq0iByKLgMhaGGRMoPfIQPfXFBiotW2IS9HcEyWg4QInT9QIxDcloIM4uGnVDU6
	OXUf25cCbHOJ4VoZudIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOCT-0002PY-5z; Thu, 27 Jun 2019 06:48:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8J-0006KM-7B
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IBVpdeei62Pkg6OU9hx5jtv+/E8INHawqiXSTj0E44c=; b=e7fBVliVoV1RkfEmqUQNZ8znI
 v6GvQQeLh1Ujx29/drtX6w9tVgsVV8E6z0yQgGpDRO0ZaI0Map0sF3QUmEqgE/8bQGWzBQOSUrQwJ
 Ei5Og+GYSEsZtB6zLWQUdY9w2YYvtaeSP3euAo1/SJBQWvL6WMm6mGv4Tv1ICfunuT2tCfnzxp7TB
 aXoZ1gLUuygALKvlPeWbd1cjtW9WjV8xvsrqqAAimmGh2YX9CO+QODaPeg0lRPT8jMhcLQMuDe/d5
 DmV0dvJG43UdM+YJ+xYTiUpOMTrCSVybbRw3r+cF4WQhYCV1+6OXb9ERyIHdP6IfkWDuggVB716Mx
 tX+SrpvOA==;
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKFd-0005wD-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:35:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id 205so633383ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IBVpdeei62Pkg6OU9hx5jtv+/E8INHawqiXSTj0E44c=;
 b=SjkETA5dA4Vx1NcCYSVcjS5Eo1K7O9ZFrwX8eqtlVbqefaF6xgJrye9b3noBTNBu3R
 toZP7tsNNKk9CYcK85cVrTsuppDS5tFoG4fV58JlDnE6hJFDXQZ8LZU1cIe8g2Np318K
 IUkbt55ADqjOM8llS1h3ljVkLj4SLk02VFr65h85mV6nPXywwTARwJlrZWXED/pKwBTT
 TRMmaKUtQQGiIzwlsogXr253iSN3RW8AICQ9QZ2Bl/vWVvZpoEZtDlHpUhK9ZjqvcOmq
 9uS1ge1LHLsRJlTeXkD5qQfdq38RvMYPcK708pgdek3yH4yMvfWyTa8C2hBtYE11hV7j
 pK5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IBVpdeei62Pkg6OU9hx5jtv+/E8INHawqiXSTj0E44c=;
 b=NuB8Vr5AXVQ+NnGfAiVpYauo/kp+fTPK8ybci8iSjcHqw/bpjt/wrQA49tdzAXRcit
 7e3DbCO5QfQLrIGANSsgqvbZoV87Ef1seqfR5gsd885j9kn+kW2dSRuntECEhaZBMb6e
 GWHF+YG5o5e/k/qdMJJ8M+0HkaAcSaifi1d00dqNTeMurRvIn5IVisHVhEpSdqkcy3cm
 J5QRUsT+krCpcPx8muKSmLIcwWyPytQqbKlFsscFNPKVm7s5txo7NFaCpQgWojMVhkLR
 Ol5juZ0AtxmV67AcbzyL/MnDpkiTacAy8U2epVRIYfWntsUa30Q4yrAcbLqlyq0cXrzo
 tBtA==
X-Gm-Message-State: APjAAAXwn+iphKiv1XQDXv3wa1wdpUwwcqApishfKw6ExXpROWnBKtP6
 DKiWghrpessEzytd7RZ4NIB3yA==
X-Google-Smtp-Source: APXvYqxRzgDTg4LFmdfgeioPXrA8IbN8WGTPVFkiWp4Es5PbFqSPCa+LBp0SE15Dt0fzPgpWEtCwqw==
X-Received: by 2002:a2e:12c8:: with SMTP id 69mr840364ljs.189.1561602828305;
 Wed, 26 Jun 2019 19:33:48 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a29sm110537lfi.23.2019.06.26.19.33.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jun 2019 19:33:46 -0700 (PDT)
Date: Wed, 26 Jun 2019 19:20:05 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] arm64: dts: mediatek: updates for v5.2-next
Message-ID: <20190627022005.2ragrshoflkhlja3@localhost>
References: <aa4de43a-0871-dfb0-0ad1-46f11b254a67@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa4de43a-0871-dfb0-0ad1-46f11b254a67@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zhiyong Tao <zhiyong.tao@mediatek.com>, Ben Ho <Ben.Ho@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, arm-soc <arm@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 hsinyi@chromium.org, Erin Lo <erin.lo@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 michael.mei@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:35:27PM +0200, Matthias Brugger wrote:
> Hi Arnd and Olof,
> 
> This time we have only some DTS patches for MediaTek. Mostly it is about the new
> SoC mt8183. Several drivers where added already but the device tree was still
> missing.
> 
> Please have a look and pull :)
> 
> Regards,
> Matthias
> 
> ---
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
> tags/v5.2-next-dts64
> 
> for you to fetch changes up to de1033881e936382d67ae47073a7092554729d74:
> 
>   arm64: dts: mt8183: add efuse and Mediatek Chip id node to read (2019-06-21
> 17:50:12 +0200)
> 
> ----------------------------------------------------------------
> - convert arm boads to json-schema
> 
> mt8183:
> - add base SoC and evaluation board
> - add cpacity-dmips-mhz
> - add pinctrl, auxadc, spi, and efuse nodes

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
