Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30F81A76FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 11:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMw8UNhIS5AA3pNTfCiBUkYGCfYSRXaStnrxtmqvfYE=; b=MQJhTAR5MqG7Pe
	Oz/0KITpQvZdk8rUCUgolC8IMdZXBe/f6YCRWbf+MDW3e43q2ACNlJF0aG8Pm2EyZ+aFPeBXbMRza
	84lD+EU3UAq44kAsANsTqxcgF3LX/CBY6kFWOUYidQjE6hZf8PWrpS1wls4Ht8afExg5brInxPybC
	6Cx13Y+zKCuE6vnrJbgLM1D8BrZtpAUNkSrHV4/0hy/vHyTqCuJaZg3oSfHmMzhDZLyKEzqAneGGB
	GjJZeWjl9D+MuQBNihfGP59yrwYenJcOHC0HzZI0nG0VRhm+q5tgYeMKTXdeKZFTTuOq1mUVJQut1
	2qGqbGZpw0hmrFTvbFGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOHYy-0007pe-9c; Tue, 14 Apr 2020 09:09:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOHYq-0007pK-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 09:08:53 +0000
Received: by mail-lj1-x242.google.com with SMTP id m8so11658823lji.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 02:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zyjNeTqvfEjZX8vIKzclorxGtdOVdVhWe6jr1cd8Lcw=;
 b=YprgSRcuKMz2TB2H7Js6CV9O0igeW65lMXILU0J5LZC5dkVlZVfMejJaTxk04tAwGb
 SKRQrIaXIHu7IAXDTdwvQIFevn1Pw+oltQRWXV9hhLtCckgmgeuH1V0jUCz6Tf4puJXv
 0wyzzp1faSmkY8mg9d/yHWuGC7GaRgnindjLgjC67KJR0wVTeeLNDcy14kb+eaJy2Sm0
 FJTwfDwSCas6Tp+ruj7SxunLNrOtrbaZ3OLjgQTZODzWeIQZlzHCevccg7vyk4xBmm5J
 44mYUWCTr8x3RfWzk4bU1eOLrjRnG12wzlJ625PyNW41w6trhwqpxDEkPFYGmCGgBXrJ
 TbSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zyjNeTqvfEjZX8vIKzclorxGtdOVdVhWe6jr1cd8Lcw=;
 b=O7uzGpKLOML4r933nqU+0uVIUkiPnBgeAS9WWc1urHEP1cSSZeQIgY1OPsw2peNm9y
 LDm4zt6aOKl3THojM67Vs9u0dVtJ6F2YZp0G3wKAnu7kTPNNB5jqmjAuPrVq397txHx0
 QpSSGHj8SbP9EYOOPwlAMSvEvMewHFsP/7Vq5OJdP4cvDUzo94Kpne9F1qkzNk0PmeVL
 dKBhobtVlOUKI+DOQev2n6xyOoSaXmFyZtrzNNgYKEZxENB6jSvkqlEF3hrGg1VdTlnC
 IyU+ypIlxYiid0gjMUKmSyqp9SyGik7WVAKUbI6XnXT4iCC3ZtU8AJSHCZfV8Vg0odhn
 b8rw==
X-Gm-Message-State: AGi0PuZDZPLkJ2ClAp950OnluTQliKi+NtaH4KacWf471Sjg2o15ZvaR
 hT5J+79D4uQfdB/lptWHEyQYZbCdDeKRfA2Niz3uMQ==
X-Google-Smtp-Source: APiQypLF1woHKulkGKUVOcynI3F6bPW0neabdjjFhnRcaLD4bVyCGbpN1rI1nFV64y7Zz5AswkKA1tI10XRVvnW0pE8=
X-Received: by 2002:a2e:9605:: with SMTP id v5mr12489541ljh.258.1586855329250; 
 Tue, 14 Apr 2020 02:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200405173252.67614-1-stephan@gerhold.net>
 <20200405173252.67614-2-stephan@gerhold.net>
In-Reply-To: <20200405173252.67614-2-stephan@gerhold.net>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Apr 2020 11:08:38 +0200
Message-ID: <CACRpkdYW930B-riUi5OnmsDCJD_piJ+321rgB40bq93ndzSp5A@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: defconfig: u8500: Enable CONFIG_GP2AP002
To: Stephan Gerhold <stephan@gerhold.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_020852_117813_37B08736 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 5, 2020 at 7:34 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> sharp,gp2ap002s00f is used as a proximity sensor in
> samsung-golden and samsung-skomer.
>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

Ooops I saw now that I already had this in my "Skomer and misc"
enablement patch. (rebasing my trees today).

I can put this in front of that patch and take it out of mine if you
prefer stepwise enablement.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
