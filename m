Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2961B42628
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evTGGpVV5TKvatNJpCPP9PY6kKjtKBJ3BPoMaHjNiGk=; b=txZw4nSd0ogX8X
	mKUutsfrLj8TQVGBFMZ9LPPr08xqfqkb++0PUjuIdfleZ/KnV6QlP6b394UYlfNVgVIucc6z05AeZ
	Y4QAZDqcs62z8cuq7pViK8luAXfHMGLj15JyrUJleLap2fx0lP8wcq5ULgLOM7ou4AOoqKcjeTgNJ
	MwNlYI95MS1MS9X5fQ3jt8OnX6jTbNMyQm1+YoIu6aT+uriW2dDeHE/eOFMVkgOysJ7C1SbyMM6hD
	H3BMkZyetx9csAD6LmCNLQIJW6yFlt4Qk+LPRVYQOYzv6iqNAvFQppO5l2vZ0evhVd6/KmIIUfpbR
	ZEHnOJamVOrYns155muQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2ay-0007Xl-FY; Wed, 12 Jun 2019 12:43:16 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2aq-0007XB-81
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:43:09 +0000
Received: by mail-lf1-x142.google.com with SMTP id z15so9287386lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 05:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V6vkS5UR633RrFItkYoPggOLkHWdZUqhLnRcNcB2XtY=;
 b=DWxwBLkLxa7JT3I+1DgXWyreCPEz8X0Ha8jOv9NGq44hFVhu69D4kduMd/7uGxdh2B
 cIWRCPCq9jJl98wMSvk7YGohrJKFaa4PjW4Fvp5KM5MDKt+1PdvXIPoI1h4fZ95dVbD5
 TaGctVbxlPdhfCs4/YfxV6Yh9vakovpMQRAO+ShReg9Ik42y2oFyjfGBQwD8ecB8Mx9e
 KsV3DGPXKQnRi3XO26tvGXvahStPbVMpkwSPPBVvPQeeQqaFZ4WA11sLI2Sgc4bbOkal
 7zKsFLYwaJ1Odl/F1Puf5twxvAEC0IhjHtX4SrQulhoxhfrJpiA1XP+ZGVCT+3bexZAM
 SnOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V6vkS5UR633RrFItkYoPggOLkHWdZUqhLnRcNcB2XtY=;
 b=RrcggVdASpwJLb2NPZC38qSEnAQSA5R2cB9TIkZ5ZtbhpwPMt551Pi27lShWDKlzhq
 1fvKE0GzaUjMI3HefrgbkzUmed8H6TVmYwlKSV0TmwEO3BWpaeccauPnM6lndhW/rYW7
 aggcJlx4x0cSfcA3LPkDBlYggPjItSgW9hzJgV1/GKKrWd9OIu9eJiD8AF+w6VCz5hGw
 AVY+twZJgBRloWw2Vr9XqCc5G4Sjgm0qxEbY0IP6Phyz68rbSraXgiTJXRSqQC3xkfIf
 EZWAJsJWWyG7zeTIyVc82m9y16DwibfI6Qlv+3eJOdvbuSxyRXVZsKvbmD6RAMxmsOYS
 pqfw==
X-Gm-Message-State: APjAAAWlACNiQ+H8WEQ9ZLz9q9HKChn4bRiZ6m8riqJjDwLuE475Qm+O
 mEZN6DmL0cjmbz7MNQmK7zk+GvqXOkN8ArRrY33ffA==
X-Google-Smtp-Source: APXvYqzdmDZbWcjzXKF4+qJgAd8KclcnVSdd+i4vFNoSgCTrLDHUk6WwujykW+79sxKgM6urEsZlcpEXfTd0l81tX9Q=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr28043288lfm.61.1560343386199; 
 Wed, 12 Jun 2019 05:43:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190612122557.24158-1-gregkh@linuxfoundation.org>
 <20190612122557.24158-3-gregkh@linuxfoundation.org>
In-Reply-To: <20190612122557.24158-3-gregkh@linuxfoundation.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 12 Jun 2019 14:42:54 +0200
Message-ID: <CACRpkdYC0DJkasyLawUvLWuM4_hE7OWLxaXwwus11Ga8-2+Fdg@mail.gmail.com>
Subject: Re: [PATCH 3/6] dma: coh901318: no need to cast away call to
 debugfs_create_file()
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054308_345438_D59641C1 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 2:26 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:

> No need to check the return value of debugfs_create_file(), so no need
> to provide a fake "cast away" of the return value either.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: dmaengine@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
