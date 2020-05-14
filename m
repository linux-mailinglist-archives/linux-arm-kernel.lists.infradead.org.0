Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B0C1D2A03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 10:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBvYy2F7lMciFkQnLSoCuh4pnJlHQtrUk1sW/0hhclo=; b=Z+AYaN+OLT4LE9
	xBOqbO0ayUWq3TtHHAXYWr/UrVQmrz1HfvM3dDdbxba9jniumI9drbrxwEIyiVnVop1ZiTMGV0Ad7
	WPLIkYQi0oeTVgFEiVoqOMzUY5b21t4EP7LlKUsuakaegSAp/NLC9I/aek8sOZruKqrjK7FYOU18J
	12P0UI9C1AD5Ixmc2/X6E2fc+nL79St/e7FvKc5LA0SS1htyGHb5e3TtDpsIt8YzIjlUeb/CRZGzN
	K3N+6w6BI/sjgt+pNgr35Xp1Jadk2+ZqfMa8YMMa3K9fpA0Pgp0OE8UG26yEkGgPSKmZV/9f1UcTj
	J7Q2Xjw7OB/m1fdCJ3Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ9CO-0000xf-Ps; Thu, 14 May 2020 08:26:36 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ9CG-0000x2-Bi
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 08:26:29 +0000
Received: by mail-lj1-x234.google.com with SMTP id g1so2508152ljk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 01:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N3phpM5YkfSN9Y22XUbTQgtMEkMD9DwBcpg7oirfCws=;
 b=z7yudwDjMr2DXZCRVZRmUNZ9xVRuVKT5e5qcwTFzKCY+2pl3XGwhoItFUz0Qusjps9
 WyvGv2QiCa/AlTJ7PquBCwxloSb9OH4XyYfkCL/8mcATRnXFwxHmrH24KKOGDuV84GIU
 HG4RkZCcEW+y/Dj94fJc+oGgTLiv8rS4i/Hkp65TPMV/BuiU7BbFae2n+Wfz1T8vQnvJ
 fosgAF+twH+OENs9A6rqkzS6Y1/8u2nO0/jIsidJHPP9JAYTJjT+5w+25WVGM9DfcxN+
 V8OV9JgPPNrmHx/ikLvegdQctTowQ0jBQsFWGdrc8hf+aCN/hE4X0V8DNfdu4vE4Ph0N
 Z+XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N3phpM5YkfSN9Y22XUbTQgtMEkMD9DwBcpg7oirfCws=;
 b=BYtIkekNYOSOMkt5paTk8M+tRkw8gcdvHgsW4gpUTIz0pSJeaPgYZS5tWB3Lx4t/ld
 Bc+mE+IUVYUsPn3ZKIMSasFgWMP+BOK3Tpl6wDm9ViN9Rt+nnGfPqFt7UlHK0urTqDjk
 T62IcS7rsoBvEEnrBMRF+0taQHyak1TFAIRMf2giXxtB3L9W8lHEhypsvCsCb3eEfOlv
 cmo0jEppiZEYC7hoZfU3tJXJoilSLTgYaUsmwNbajSRATOrsUOfeh116mqK9uPBVLmHX
 mrUYHB11S+m7i89QhfubQhrSmLE4Mq0URfiJ2Nj1Izy5khZkP9Wfhkf8V7lW6l66ldMB
 aP4Q==
X-Gm-Message-State: AOAM5333H8ZDdy6MYhruGxzkWHXNDZwlMqYuwM8yCpFVXesn2qDBYRfX
 0IJO++0eTo4yJOuogXlVyZ6f+Bex3KtU4xCQ/uNtUg==
X-Google-Smtp-Source: ABdhPJyu50COWpwddrm33sTCzSmiLPVui++vaQ4U72EfDUPz+0onMO02ezw5nSaAa+9khHe7GnCSUOkTGjYGvZ0FjRg=
X-Received: by 2002:a2e:531e:: with SMTP id h30mr1138947ljb.168.1589444785904; 
 Thu, 14 May 2020 01:26:25 -0700 (PDT)
MIME-Version: 1.0
References: <CAL_JsqK5Gxf1xuNkttzpndYU-5ncpw0E_EiE6Uv3HMdpqRZQjQ@mail.gmail.com>
In-Reply-To: <CAL_JsqK5Gxf1xuNkttzpndYU-5ncpw0E_EiE6Uv3HMdpqRZQjQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 May 2020 10:26:14 +0200
Message-ID: <CACRpkdbr68mCWT9KxGPA16LU3kZRnE3kf-puCn0QZVZxZEC2BQ@mail.gmail.com>
Subject: Re: [GIT PULL v2] VExpress modularization
To: Rob Herring <robherring2@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_012628_403908_247341C6 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:234 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, SoC Team <soc@kernel.org>,
 Sudeep Holla <Sudeep.Holla@arm.com>, Lee Jones <lee.jones@linaro.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 7:49 PM Rob Herring <robherring2@gmail.com> wrote:

> Sudeep suggested I just send this series direct to you, so please pull.

The series:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Nice work Rob!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
