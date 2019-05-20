Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D3E23F84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0H/ZAmTCmWPFRNYmkZVS6wpJR+dvV18G08oHQDCBkw=; b=bync1pgNaB6WWR
	asB8C8wnPWxrsl/8fEv2Duc+POGl33YhhdlZ7bONHy3/fKHOXtnlQisbLvfxQMM/kIXu4DKZonNHs
	qcjG6xRNKI8paXQ9t1f4LtTKOTreh6HgsnRGo/pC7DhT9IM+DESBHiTx/DGo1I3aiJd4bDQqXEUpD
	8S55kp9+lC2b6WomU8mak6rbqGtFhffZS8JEv8N02Shcc0U3E3GONURak0hhOsjInT7+K7Oh4CAeV
	ArefwvgCEbPKS5wjn1pwAnEh+mVD7sVqgOmyGtFpgABAl2Y6tokGzJjw9EY+wc7/f1yEVi7ddIIq/
	hlfhe0O4dTsvUCRPvjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmUN-0005r8-9Y; Mon, 20 May 2019 17:54:19 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmUF-0005qf-UP; Mon, 20 May 2019 17:54:13 +0000
Received: by mail-oi1-x244.google.com with SMTP id y124so6353279oiy.3;
 Mon, 20 May 2019 10:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+TT7VxpiGJ92MYdiwp3Ymg21i+ktD/aUk1T7VpGbYWU=;
 b=o6/ke7DkM42v4VU2Pc/qn1wtld8P7VZklPINruRFPm4Jj+fd3QtQ+yvHwYsMa2i3MZ
 dDKmeFB+vNlbzV6m8jVMGITMpO4p/rz2HsIHTRMLeGbkp4yUJmIhxJiGFO+sfq5k7WSp
 IzsIMYmJkh/rP3rzAeUdl9iEzWmz/+gbjcM1HLg0oqusbu2oCqpHk0uYAZr99ivCjsdy
 2jUefsQbU1jfABN1ThxdBfjmmlXesNHha3EoVam/CnW876hedtfx0mNepGOrdWstUIWY
 sfF/I0yWNUF1F8VNSAxMq+RKsrlOYTSojkdo3gVicMuqvLcfY4ypKj8RoClEDKs81syJ
 gjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+TT7VxpiGJ92MYdiwp3Ymg21i+ktD/aUk1T7VpGbYWU=;
 b=DwiUS93YIfwO+LadFSQL/GDWs/8jpUR9jk4g6ziBXSXvQ+KYakKgDKnKE/0kht+OrW
 YSiCVp8YCKbYrLnH7F32IZnZDBvq/+rQblNkuak4GOx2wtN2U0ndl7fZ7ZjMwRZeQpHZ
 Vj8jaTI752puCtUm2OYO7VjVhVVpVEhy1CyRBIAi6k+kc9ze+LxSP4AGxAXvdHOS/nmx
 aegH6s2GTMmuncZUPkLBCjISynlhrDVNLyC7oJgCmasJUr4MbA59lE1qGuN/EqMiY3gT
 esAGziqxHWG02+IyApiNmJRq7X5wFqLvOMyH1q/Bmnsdryf5ET3iaqW7dpVh6ayCjO8t
 FNsg==
X-Gm-Message-State: APjAAAUY9DR+h0HUop5gBn8oAxxxj7M2AapNcBvQAEDVI9MdUiN75PIw
 +3/X/4gCQtBm+uKuR4nNOPsxvvcqoIkBXVk4V58GvdqP/84=
X-Google-Smtp-Source: APXvYqxTveKpT4B4VuQk3T31UTuVi5i9NCYogPnEhi5gmvdQ9hdPvMLDCpVuSmJVfLt4VV/et7aCi+C62sNpPoI70Zs=
X-Received: by 2002:aca:ab04:: with SMTP id u4mr271445oie.15.1558374850489;
 Mon, 20 May 2019 10:54:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190520143450.2143-1-narmstrong@baylibre.com>
 <20190520143450.2143-3-narmstrong@baylibre.com>
In-Reply-To: <20190520143450.2143-3-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 20 May 2019 19:53:59 +0200
Message-ID: <CAFBinCADC4ZxHGpyUEiN-VvNph-CN82rgWCLu6qGVjYbwjrn1g@mail.gmail.com>
Subject: Re: [PATCH net-next 2/2] net: stmmac: dwmac-meson8b: update with SPDX
 Licence identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105411_979926_9B687972 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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
Cc: netdev@vger.kernel.org, linux-amlogic@lists.infradead.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 4:35 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
