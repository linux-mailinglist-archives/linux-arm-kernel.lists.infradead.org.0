Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 203656CEEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 15:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=achpO7Nk5Gr20UJEtmNgJwUn7QgBHOSAKsACc/FEjjI=; b=iNPatUbVPgKhuX
	Y2jDuQX+fX/T08Xthb5rTH4tZI4Ty96Wf6jubDnIusHKsI74XIt1IOpGxqRSljD0UTmtq/zyG6b9x
	caZjHwmtJp3gfr0hn3Wcus2qgQl+lkqgShA2Rw5D+iBe/QiWZl5r9NWZ5jLyXyxM4CH9ktHl5Yuml
	qDyi2rzonbTdroZjWJJWcMtiIjHMo1qvW6uvLbGwQupIGetzp/2gXurqeP1zcvEcahBvv2137tkhB
	x/hDI8Zohi0P2u1JVn+yYc+JWsSRvmD6texIT0XsitkR5m7ppWS+Y5B2b57JTrOsFGW9TCGOCA0Nf
	YM1EXFnTWSJcAacoud2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6YK-0006vV-FG; Thu, 18 Jul 2019 13:34:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Wm-0006Du-1v
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 13:32:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so13908507plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 06:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uqxz+usfl5ubj3CY3zFZBVpUWMAMZReFb13uG+VpKhk=;
 b=hPqS/jwhlV8EqhLP0aNxajg3nw71noCAX1/ZuMg4djXDXUHMy83pViQuk66otWawgh
 QvqQUQpUEcJUoZQKzu/mN/zWhR9WBIelcCch2TjXF7u8oeYS5SB00SniIg+kzuloS8i8
 Vom1N8SpJ292Yqkuyg9SR5kQqhGhBTltovI8Wst87gWj1KRN9+6sYSCA8l1+iV9cEu5a
 +WkglCJ2pyQWqWQ8plPw8cN4GoTNen5Bl4ATdffnlizNpiZ+CIKZaFtch3mhAeVt9mC/
 TBoraNGI/AekjUS6m6PbucpvPfYgsBxYJEPh5ncCZhsmhS3Z3V7c8M/1SHIoP2GewFk1
 iuSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uqxz+usfl5ubj3CY3zFZBVpUWMAMZReFb13uG+VpKhk=;
 b=V9i3jKg9STD+IYsBHmaUA5fjdptpSykjQWDE4k3Ra6QuBsprHkOCOPwMPh1bUVhqtB
 qaOKQRcYxK8f5RI+9ehIj0SF5rHy7eIX/YK96IeSg1wrmByfh+E2Y/X0UvQwLiX1i91e
 r5MUfmyPitNBiBi6K4M9/3GP5uTH90cI/XbpGMT0F69Pyz3OvuSLQE15/R3VoeAt/JCS
 B754U24oVvZQfU3uv2vRUDmlTQuHNeGM8/+yIZsXF4xdWsin4XR16E+K7QYsJruLEioA
 Q4UUEzISxhQwJPh+hOXugnIEN19AovYvrlKPLnD2CIWjFF7FwZSxe44/gdRXfgal3Rpy
 bVdw==
X-Gm-Message-State: APjAAAVurwmdAc4I+r2CA48KMBWDbdoyb/h5OOtCeOQPIiKAaS/FU56/
 OwJhB+knjdon7WtWw23EYq4kFA==
X-Google-Smtp-Source: APXvYqzViISW7poxnkCViVCX0d/Rygfi5TgRGSdew6wPhEMa8Sdng7Fu1hFuwE/n73AS+seWku3KtQ==
X-Received: by 2002:a17:902:86:: with SMTP id
 a6mr50812360pla.244.1563456774644; 
 Thu, 18 Jul 2019 06:32:54 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id 131sm33059190pfx.57.2019.07.18.06.32.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 06:32:53 -0700 (PDT)
Date: Thu, 18 Jul 2019 06:34:11 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [PATCH v2] pinctrl: msm8998: Squash TSIF pins together
Message-ID: <20190718133411.GA7234@tuxbook-pro>
References: <503b2ae8-ead6-70cd-7b21-ce5f5166a23a@free.fr>
 <20190704163527.GJ12249@tuxbook-pro>
 <7431cf2d-4406-ff0c-331a-6ab82cf48b1f@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7431cf2d-4406-ff0c-331a-6ab82cf48b1f@free.fr>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063256_254349_D18806CA 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DT <devicetree@vger.kernel.org>, Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
 MSM <linux-arm-msm@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Jonathan Neusch?fer <j.neuschaefer@gmx.net>, Rob Herring <robh+dt@kernel.org>,
 gpio <linux-gpio@vger.kernel.org>, Andy Gross <agross@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 18 Jul 02:30 PDT 2019, Marc Gonzalez wrote:

> On 04/07/2019 18:35, Bjorn Andersson wrote:
> 
> > On Thu 04 Jul 01:57 PDT 2019, Marc Gonzalez wrote:
> > 
> >> TSIF is the Transport Stream Interface.
> >> First, rename tsif1 to tsif0, and tsif2 to tsif1.
> >> Then squash all 5 tsif0 pins into a single function.
> >> Same for tsif1.
> >>
> >> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> > 
> > Thanks for the respin Marc.
> > 
> > Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> 
> Can you or Andy pick it up for inclusion in linux-next?
> 

This is Linus' subsystem, so I expect that he will pick it up after the
merge window closes.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
