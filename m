Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB94684BC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xXiZ5/oKDexrgCOjnQ/FK1TEL410o/jBS2EZm8FiPY=; b=Sp50cIDKGG9XAs
	5SgIMvHf9ascgGoMFvxdptEVEp8v1Ge/Bd/wES6iwfDPCPRRho5kvzla5m37vNAun0KYo9bEv4d/Q
	DaU2PnufK9aCpIFE3KvMsQBHZV1htZ6My7WT/Tp0UUy1ze+AFdPNaoTs5LVNTrKwx8yKiB38k11uo
	d5S3aQjRvSCLD7c6nWREhRRm+HMfEdo1TiKYEkuG5oIQPjZyKIgE9W4eBCDfyTBdg1BnACTu8/4nA
	ImOtAiHtVBjtd22K8JDg9/WOP8lU2s1uLRUPQyqmPbDLRNxksehko71PhVUDsHsGQrCbmo5QLumpe
	j+crC58OKYzWaBH8FrBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLDq-0000nt-Ea; Wed, 07 Aug 2019 12:39:18 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLDc-0000nX-1v
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:39:05 +0000
Received: by mail-lf1-x141.google.com with SMTP id j17so9895897lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 05:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TF8WdIG/GBC2B0M9b1jzvI8C7ifY+jxxqdmdf35RJnQ=;
 b=RAnrNzwG8H2/CmrBRYmjmwFER746NivQ+c3H6MAgOQTtgbdbE+plXLUg/Pb2VX8N8y
 /3CSu6PD4n6Ow9WZorSa0EeqxxcUrrNYU2UVYRceVVXN2eSKtTEUc0ymFz1UPy+pX06p
 sBOiBJOu07e0ijHIKNaReZOvn1hFP5ekYGjpt1XG3RFm7eH1Q+0H2mqNabivvavJXPq9
 brvGtWglmmR8k+toTssfm/YbGEdkIoIsz6Ez8MZhSWd+8+20OGUUJciV91ZTyVkdraBI
 0DtUooopmsUeGyVsj2TIEuzVTOPKomWIGT+2qCBFUUpZ1vtA7mVCIGJ8h+WGZkf9i9nG
 eozA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TF8WdIG/GBC2B0M9b1jzvI8C7ifY+jxxqdmdf35RJnQ=;
 b=OQ5Y0U3yf24TJWFlf+eblOaY8GlGe5fCv3UTALcrE9GQNmTXNr3WW1wp8lmIEzyG9e
 50/y9KHIeO+zuJrcMJIMiitkQy08hlpHn3QPP3w1Wu3Z0u1O9EPMlq5DzTCLaljjobGc
 YCCwwRXzKw/2ltGPOX7XHCN73Qa9iKVClyLNgjUbgGyZ2d+XQsVz9ps5DHkoWqqHpbl8
 +Pn2B2Ryom8MtXyR3PVCgRfTMrUjGFF3+Or9jHJ2eLMgmIGdzz3NxtCoX5KDzgWrNASK
 Eat4JW+E3oNiWnyTjegpUU4VhhHmq4ZIdXssG5XAFahuhkLXrenOJ9v3ggIMT5lGZkDk
 A+Yw==
X-Gm-Message-State: APjAAAU0KrRFhTRUxTwnQwhCIGUuuE6WBirLFIrwUQ2tN3qCgeStnfwM
 00RQxWf1cAlAjvWqe7m+fKjeXLxYWcAnOeNQcncZcw==
X-Google-Smtp-Source: APXvYqzj2koP6TS5ONHRZFw3kwuCVAqOEziE1cUAfaaag6Bc/wbf6kDZ6QI8ReWDq+/VrKEp+xB3gGAoMEXRhZU/e/Q=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr5973751lfp.61.1565181542001;
 Wed, 07 Aug 2019 05:39:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190807021254.49092-1-hui.song_1@nxp.com>
In-Reply-To: <20190807021254.49092-1-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 7 Aug 2019 14:38:50 +0200
Message-ID: <CACRpkdY5V9HGMciOq90RJzrMoc_gbyWKJ96sw2HOB5UMzGn1GA@mail.gmail.com>
Subject: Re: [PATCH v3] gpio: mpc8xxx: Add new platforms GPIO DT node
 description
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_053904_095740_CEEF2C18 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 4:22 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> Update the NXP GPIO node dt-binding file for QorIQ and
> Layerscape platforms, and add one more example with
> ls1028a GPIO node.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied!

Thanks,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
