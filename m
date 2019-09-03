Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B73A7302
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 21:00:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23IZNeP+IT6s2DE40PurWgBWNzt4eO8/A3fvKGhPfgk=; b=ksaFdxq1wgITwi
	r01mCqqNEnXMHGVhoxmPeBgEC+kIUSoiOTGxBQNkZH1u2i7JweVTqyVhbzfVykVAN90G1zTkGoO7f
	DsM73AUYmO7mCPmiNEbzUcqjhMHC0fBIeAnFbyJ+7q0+/9D3CVdHdca4V95iXZi9OuEHXPWueJfS3
	u7oSDuvPMSRcSvIpGWlahE5n2bndUvcEwlGko6dDx2LAe23ldnVQ/VSb9moCOQTDnQ8qZ2MylV683
	+POdwphzShxEzR4v3VXEvQxDisFO1EQA1xqteFsc5k3VOjaNOhhi+t0QwmCfT6hqbdK05WuCxDTiM
	9o0RBRl1zQ7q+ZDUjw6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5E2s-0000aD-DU; Tue, 03 Sep 2019 19:00:50 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5E2M-0000NF-AU; Tue, 03 Sep 2019 19:00:21 +0000
Received: by mail-ot1-x341.google.com with SMTP id 67so6417650oto.3;
 Tue, 03 Sep 2019 12:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vf/VvldevLv/HCFkjZrV94cfSMaqLzordyoxKpG1uYw=;
 b=l9nH8yA8dk2cWypmwNTEl29wItA0r60ykvssWEIu6OfsaVT2LG924XNrdoQDJaVKKU
 KhPae1R/bxhgZCuawZ3GLUgDARpEyLUCJLwt+bbgA+t3TCw/v/vYXhnDEaNCyyUAh6uu
 05lpyL573U5gYnRbeV1fiUF4xYkpLr1e4fQy1H85nmpLdQ5zsmZseMt9ue+FH9rGrXYD
 KzfQy5vzo0LDOdRHOVGJDXQhSpqA8N+tL6uEpQBo0Stkpdu0V/+5gw8x8IQwYK+x/700
 UhaY89UU7vsCnJd0AwtNFsC/YOU6IWAMJv/bI4vcFwVsNKlZaX5Ktm0I+xjVRWUOpSvw
 SfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vf/VvldevLv/HCFkjZrV94cfSMaqLzordyoxKpG1uYw=;
 b=k+8tP3AFbEDudGyb13iJGADlRdxPbZ0ICf0C6YGRbtLZ5VbEVetLi3Dgvf5ysmkXKN
 LaCamN29Jq+f68zj/M5dwvZ2umt2fe2F4Qkr3x+t0SG41oXv5uj596fGwIWJD0Pr/cTm
 J29bOwi5KmzKRs0zvD6+3SNzcqWMiweZ6Hc/L3lt2oE5ugHm+UOghXr3Ml3MA6nBITjK
 4YIiWCUiQD8fBJ6vOvdeJBGI7Q7mMvw3z6QN4/aqhdF9PRANrZwP6jGSHS8gL+yRt2jj
 xlrAMhVyz/0WIfkXFHoSs8ev+dqMrsPuwFWcU9YGsWZiPjsy5FvUVtGrkeU7woh38f/R
 HQMQ==
X-Gm-Message-State: APjAAAUzOnwm7gRyAHNYSpabcA7UB97QQVM2b2bybEfI260+bLnjg6+S
 RmtNsT3J7vLt31nACiVXaFHI/psemWIa0zSiSP0=
X-Google-Smtp-Source: APXvYqybrQKStl3+FVCJwwcMnm906TDSMh+2UBslvDCPsH/wUJ0nK8jlZLTIL9bXUyNxcp7IBfZAAKplrBI9qBuchqs=
X-Received: by 2002:a9d:6c0e:: with SMTP id f14mr18894833otq.6.1567537217247; 
 Tue, 03 Sep 2019 12:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190902085821.1263-1-linux.amoon@gmail.com>
 <20190902085821.1263-4-linux.amoon@gmail.com>
In-Reply-To: <20190902085821.1263-4-linux.amoon@gmail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 3 Sep 2019 21:00:06 +0200
Message-ID: <CAFBinCCkdaCQim4EZtpoo1J0FyCEUNP8djXnF1dK=2cpX5Vizw@mail.gmail.com>
Subject: Re: [PATCHv2-next 3/3] arm64: dts: meson: odroid-c2: Add missing
 regulator linked to HDMI supply
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_120018_414966_D36B3F22 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 2, 2019 at 10:58 AM Anand Moon <linux.amoon@gmail.com> wrote:
>
> As per schematics HDMI_P5V0 is supplied by P5V0 so add missing link.
>
> Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
