Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D72BA0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nXSYhMzm0XGOUMf0mDIDCNlw45LrHjne2pBCG+UsBv8=; b=Noumib+8YrXSpd
	PL8j4fVQA4/fpmJlM1w2BGCv+smzT8yWSXvKx3z1+nMTwAKkhCbyZ2V3e9uZ7PC+Y0ML7v2tDIpht
	IF/ZYKrDROL0U3UdwDO9PexYp/BjhCWlw1fKwSM8HvHwk8r9G5IK0rTAvEtt11u2qkC8KDIhQ+xto
	Ec9ZU6p93zYOA948MP13Il4LD4HrFIZGqoL8AczDHTpYZbv4AmBWfsJqxL67zEAH4VDLY0oHceXAV
	NZsWrBaEnB6eNsElG6i8Q03sF4g56GmrWHI5QSyuzg+mAdvy9/8KwQB/e8DCAl9NmduCN1GHboSnq
	U1veynjf4uB5/yr62znQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKI1-0005LU-Ka; Mon, 27 May 2019 18:24:05 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKHs-0005K6-Rd; Mon, 27 May 2019 18:23:58 +0000
Received: by mail-ot1-x343.google.com with SMTP id s19so15537853otq.5;
 Mon, 27 May 2019 11:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yAp05ZteI172+2ehJDHx5CjetukVgwIirAu6MSeV5Bc=;
 b=gXbrkZHeoUgjKSE7PIBXVYeuyn93nqDPVilRWjegA9vEdkVjJKpM5Dp8XcYoYu3P60
 2giEMyye9CnFMs4k6l4Zb8ONeJZofSJujLVuioZWKtcl9X3VDmaIGZR5jFWf8g2jWtyM
 PhtdgOcbrJeF0YCo4lC0xAWPDy68kwPqvx2RiPJ9cTUbePW7R/nMC2SBZfWf1qCsWPLo
 9XnAlOHhUd/ETM4QBLX8VZ9KK/SKJNZRDpuety3LopMHVSftzcyG2mOkncv0/K67gS2v
 VbrUy1W3wzKZzeBe7blRPay9GZeW5Pa2qc0ORlNgCdk0raPeD+fKgV++Qp/2LTYsrMWD
 xfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yAp05ZteI172+2ehJDHx5CjetukVgwIirAu6MSeV5Bc=;
 b=HQMRXli229vBCt+Wi39Jg4qxRTfR+3xHk7qMqlebjRhsEV3ZQBGVPoZsKqfPUlsuOZ
 Eaem1cX7ga9kFVajVx8mkgO1RO02Ds+9Ywx1maebrMFqI3bfdxwoFV21LHuCyYXK6enx
 Cbt3FAcGyu7qSf8jyKDffREy8cUdjbsh/X164LbE66rAqBcwMRiIZak6Zjy2UaE9HNUx
 SWSSd6F/RtiKaZq3rSTkjtSeN0WOrdZIqKRFuL30A5x78aDx02RJJuWRNBTZcA8TIC0a
 f/6sBiV3OzkFrQ8nNZ54vlyPqJ2GBl/GOyF0fTq1rnw46IE6PZuo5k4olkrsPU2dpVgF
 KBoQ==
X-Gm-Message-State: APjAAAVQVxbX12fmDWbK0tajT7l0s/Nsdgsm52MFhs+Akf6EUhEGvo5d
 Fjp2gC4k9vUfluOYcybQAPRe6KHlE1NJ3ApZW+Y=
X-Google-Smtp-Source: APXvYqysIaOypAAttCGsEzcLi66R8e4Aznpcqh9wB/pRH/Lk/MVeM9y6pA18bswmjtVq11U5LXpfUShz+nKPjQWx0/Y=
X-Received: by 2002:a9d:32a6:: with SMTP id u35mr61348755otb.81.1558981436041; 
 Mon, 27 May 2019 11:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-7-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-7-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:23:45 +0200
Message-ID: <CAFBinCA=habC6ytrMG2HYw=e-ikmNNgy5jzUswZ-44K76r8LeQ@mail.gmail.com>
Subject: Re: [PATCH 06/10] arm64: dts: meson-gxbb-vega-s95: add HDMI nodes
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112356_892038_E10A0E4B 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:23 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add HDMI nodes to support graphics on Vega S95
>
> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
just like on all other boards, so:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
