Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2AF202529
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAU8yE/O9KUi+lWXm/S1/QvgjofPsxpl4chs4EMyO1Q=; b=gXrxY3HSxuU/EH
	ylqUUy9yS13OuuqNe40QRveI7RCoLa4WL9H3kIBHfbnfj4iEMhfRUHHaokdsAKJqlsNQmL+wcrRVU
	mzfKDmibl9kCJ0F/M+sWXMuIZlTR/J1oPj8E9TzOWplrEeHDRUkgIDAcPGAqyYQfaXShhAVuSJq8U
	ATlK4/HPD+Z0SZeWKOQJCDFmjQyU3yDE0KP/Mtk60hcFb5l1HcEkHJFf3dw5J+55Oi3QgvgSig4cu
	7PC4jGzLI3dJl+1K76vXpOxLJUGP3jnNCRPO7FOyrpoH7xZBOzDohlQH4KEDXHCANPRWi3YLrxx+Z
	DWhbu//oEUA2GjSEra+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgBB-00042N-TR; Sat, 20 Jun 2020 16:17:17 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgB1-000419-9Z; Sat, 20 Jun 2020 16:17:08 +0000
Received: by mail-ej1-x642.google.com with SMTP id k11so13551425ejr.9;
 Sat, 20 Jun 2020 09:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RvAgfTjcXFkPSa91lOsTKSl91buywUzLiGuCcM3OEbA=;
 b=gi2YfXtC+YREyXAAYGSXxMWJxvI6mIcBKWaR+AivlxT4pnDYEAMJEUF0rZDluwWiBr
 v6/t2PpA/6IyAm+vOLYNga7+eusqNP2nldIUsg51JJVgN86NeYgeVhkbBvoJVgcKDKxb
 m4SP9kPMLrIn2x69BfVi36HmZHRTSFgMqq/fWjN91tuPt+xB99IdICtEQt34aQZmSQB5
 RGqodhJsrDe1ysoc/P6T+zgfisR9JisPWNFFSCHiNlOvK7+8LuBFSjPKge4WMdOC2pax
 h/BRKQaqW+mtm1L7CyLz3KP4h/rII4a32OAuO5S1XNxvv6F0klHRxiz5tbGwmcg4sm16
 gIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RvAgfTjcXFkPSa91lOsTKSl91buywUzLiGuCcM3OEbA=;
 b=FpGJRdpHvSwHfIhyycEvOUCzy/+wCgnxuLFf7YIYO3H93BIGztw1xRd7ZZ+TPMDauz
 9uwyviLf0q5XfxprImXBzns675URJQqXtVtMPqSQP0SbTteNrwcJdJ4gzui21okLCpt1
 17in9HYFkP4vKxLNomIPyywgi8w+abD9uOFOQpGOtV5RC0nIbEfDSd6CT5Nhm4F+Btfl
 yEhwOGPtAnRBfGNIMxA5SOyPDuvZAwp9aKF1i4h8U8grYJG8kTjCzt4KkPKNDOqg45gm
 Cs3HL1gEO11CNL6UIE1kk0kQFN0XB/ceZL69duX+UNeJ4YBJDUJHYk1mPslrueEPFWmO
 9kAg==
X-Gm-Message-State: AOAM530IAPGjzrp0Op4QZDtFcHAPUuTK6FP3zd0rGU+NByUJNsv5ky5V
 wO7ChrEtLa/Y3VVtGjNT9AQKJuazdsrbhqBShWI=
X-Google-Smtp-Source: ABdhPJwXyZk4gt0IG21r86cM0zaWKEIEo8piLpgi4sSOy5EXnN2eNTfyAa1yrtDj6XFepQ9HIsK2QLzMZL0k0T5E5aw=
X-Received: by 2002:a17:906:254f:: with SMTP id
 j15mr8383777ejb.162.1592669826117; 
 Sat, 20 Jun 2020 09:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200620160136.21584-1-martin.blumenstingl@googlemail.com>
 <20200620161426.GR304147@lunn.ch>
In-Reply-To: <20200620161426.GR304147@lunn.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 20 Jun 2020 18:16:54 +0200
Message-ID: <CAFBinCBg3M4xz9w-M17hbiYTrMBPiDdE3RsjJsGTvJ7G_BTVjg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: Add the Ethernet "timing-adjustment"
 clock
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091707_352720_FBDEE7C6 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Sat, Jun 20, 2020 at 6:14 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Sat, Jun 20, 2020 at 06:01:36PM +0200, Martin Blumenstingl wrote:
> > Add the "timing-adjusment" clock now that we now that this is connected
> > to the PRG_ETHERNET registers. It is used internally to generate the
> > RGMII RX delay no the MAC side (if needed).
>
> s/no/on
>
> Sort of typ0 i make :-)
good catch, thanks!

while going through this I also noticed that there's a typ0 in
"timing-adjustment" (in the commit message only) and the word "know".
I'll fix all of this and re-send


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
