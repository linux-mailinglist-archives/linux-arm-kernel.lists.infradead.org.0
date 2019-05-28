Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6914E2BDEA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:46:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXyHE1wUznqNciC51h8bAwdZ08dRi1t3+CPHM3pgUBs=; b=FL+zdAFtKXUzJB
	q1E6ReuBbD2g4P0viIgHIJHg1ovRlyN6uAcAA6nQPdcWFLNSj5j4Q5lB4Jw+S8PbtflpJVgP3YNYa
	8UAlhZ9j1udyZeup2LngxRu2r2oYN2O7pUpYYOTXESTOlD+6eIAsVJnxy+FHiKBHImsjSF0IPbKgw
	U9pZsXNKPpcnb8aoOH8aYH7hRlOZ2fm4kFfWOHUBzwMFxR0FWx++T8Lqh3GcI9zrcceRSuCA5D9vY
	TUHVKrL/qYe7V9CfpIPimElNKdTws9fm8vrSzVCw53FuswZJRzbNBAyje3oAuyVUxB8EFUeaxXbFS
	ZR1Ep0cOb5h9xDxFWm0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVT4b-0007rE-Qc; Tue, 28 May 2019 03:46:49 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVT4Q-0007l0-3q
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:46:39 +0000
Received: by mail-ed1-f68.google.com with SMTP id b8so3624413edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:46:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HciJFsIn393eSXtgEKFfq08975UQNkMkSjbQZHFnn8s=;
 b=FEDdu48ke08niCjbk226vqWYJxEbBMS8DOjjoJAUq6DrD1IxbvFkRF1VnZhcPYxdQr
 klFS4ssEniJBzI9DjoBSwurJeDTzhaO+JFgceBZck01xqnR2+XgJG1oyS/Cm36NVOZY9
 dxUjkNsl36HvEAxRwWODVKuyCQouIumKJSkHptOPb3BH9K8ZX3JnFEo/hFOaZoCC1nve
 WalOq1yzcKyxqgNzJf2UEqbcXzxkxGjH4CzV5wQwXbeZpKYSyVyJyjPd79j7I9lMJsr3
 UGaWyD1L5DOTdUyEWX+ckd1oFaCiWYpbinea57FytaoNr+U5hOWOKZG4C5Nf8NohpsXb
 zz5w==
X-Gm-Message-State: APjAAAVLH1jnn28EuvIHP5nd10oxrHYrFmTNjgV8TUiPj56yHr5QVEpo
 daM4bk1l2TiG4qr+CvxuiuifkVT/Tbs=
X-Google-Smtp-Source: APXvYqz+VTxws4ALm03u7zWpkGP1g7TYBBQYenEN4uCa2R9wnIcQEENfgOP6xLtpAHtcbZ2bQUehkg==
X-Received: by 2002:a50:a5b5:: with SMTP id
 a50mr126084172edc.109.1559015196615; 
 Mon, 27 May 2019 20:46:36 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id j18sm2006710ejx.67.2019.05.27.20.46.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 20:46:35 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id l17so10130202wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 20:46:35 -0700 (PDT)
X-Received: by 2002:adf:f946:: with SMTP id q6mr1107436wrr.109.1559015195243; 
 Mon, 27 May 2019 20:46:35 -0700 (PDT)
MIME-Version: 1.0
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <9b447096c79c8660970013068457c05cb03f9027.1558958381.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <9b447096c79c8660970013068457c05cb03f9027.1558958381.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 28 May 2019 11:46:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v65BvcNf7_oCBBaaS8mUCRu7vYR+vF62wffkMGraJuogJQ@mail.gmail.com>
Message-ID: <CAGb2v65BvcNf7_oCBBaaS8mUCRu7vYR+vF62wffkMGraJuogJQ@mail.gmail.com>
Subject: Re: [PATCH 07/10] ARM: dts: sun6i: Fix RTC node
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_204638_196863_D26EF412 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The RTC node doesn't match what is described in the binding for historical
> reasons. Let's add the proper description.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
