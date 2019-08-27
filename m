Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440F69DCC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 06:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rK293z3rVkDUhQqVglaVix2fxSunu3PrhOYcFA+WX8=; b=ELjBegKJUUKQ7O
	rdlxUDHar1Mfu6XyNJ9wtlSOSz0/S//evBy5UBoNyG5KO0gm0DfL2b1whm88RdCdgb436rXFDJj/2
	emDwmtCakQNm5aPDzTWGh2OYHOYpmwuiAaVNcuHl+ULra1gyZGPokbhv5wLM+1Pt80ZLL8omVD+8u
	qr05AQ5kjNzVCSL5C68ajsFqDwYIgBBaenuPqzhbuCajOdR8fUDGc6+8znlFWWaj/HkXT4Of8q7ba
	wvYx3dgN+OEeJLnSaDGNh1R6Q9rhh39wwcPmUlATgCn4zS1MF4QuObucvAinqvy4h4adegXS7Gytc
	YqBhDnGqoNLiAp7r+Vtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2TOH-0000ir-V2; Tue, 27 Aug 2019 04:47:34 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2TO6-0000iU-6D
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 04:47:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so11895554pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 21:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZggmcMPjgmDFSK8EEYOInY8FueVBR2R/tMdLkVfa1po=;
 b=yFZSCiB0NW9TOMOMqdidHpwU9VtRg9aI8PKGUtwURiN/LSCSiAG8exF7F0huz7CfIL
 QQrFiClqVQ3U2EjlN2hfiqEZ99GCerlGf1avMwsuZtsJP6VnG/Clqi+NBV7UAwu/KEbQ
 rw6E6odIo0bhJnHBiNd9jASUNaNbxjat/1qiGjGgaydb8GNp8oMcgl2+EZYhgyiE0CsC
 FX2DpA4XR5PCqXzyKQxRJcJEmVKFZgAiwfvzpWXtWVjmtkStQCz9jFTivfjatl41qYO3
 6jTQpp7DHUdMzuU3hk2T9d7A3jxalfb8PjBrFy5mRbisSu3f5tXPGrpTx1bs9e5TBwai
 SpiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZggmcMPjgmDFSK8EEYOInY8FueVBR2R/tMdLkVfa1po=;
 b=rJ+B33ElzFYv5Hbm1hP/UszHKUN++DblfSjH5lvpYndT2P+21JyKzr/zDHK2eVbwS3
 e22kiNuOpeFh2xB7V9aOP9w1nFOlsUnStvDctncK+bF+1D5ihPckGvpRhNHWmnnuNYeM
 2KRC9N+gbd3qE1aUGshcR9NPDtPSsw0LdrYU09GtxvnWWDZ97EDpcrcHp7iuW89Aggx7
 lyAIIbcV0CRy+pLg+oC5S/Fu/WF++pVRxLvJtcL7akqmYWgpn+R4vYhkyScpBSj1L4xk
 NuUXb9xOSVCKddemMrxzVt9XJmZKf9A1LIUChJUc06oMGwUn7vizWhxpFLdLlDfm2n2L
 CO+w==
X-Gm-Message-State: APjAAAU4p7MzVu9KS4p6XAgv/9FHB8Oh+V+ZudA/MQPzDJDdEw3ju4FH
 dvf66Mhz68a24nocWcgkXm4Bjw==
X-Google-Smtp-Source: APXvYqyE8chtCs5y/WfhbpCulmRV//9zfesOLjWPH3tkAUvp8citEd3eNp1ZCu7OM1j6VaK7ZpbMrg==
X-Received: by 2002:aa7:9516:: with SMTP id b22mr23967083pfp.106.1566881240912; 
 Mon, 26 Aug 2019 21:47:20 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id v8sm11778661pgs.82.2019.08.26.21.47.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 21:47:20 -0700 (PDT)
Date: Mon, 26 Aug 2019 21:49:09 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2 2/2] arm: Add DRM_MSM to defconfigs with ARCH_QCOM
Message-ID: <20190827044909.GD1892@tuxbook-pro>
References: <1565707585-5359-1-git-send-email-jcrouse@codeaurora.org>
 <1565707585-5359-2-git-send-email-jcrouse@codeaurora.org>
 <CACRpkdbtPo9dr7E2hZ4=fEWTXappWTaypKJyd9M2jz0tYu7HXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdbtPo9dr7E2hZ4=fEWTXappWTaypKJyd9M2jz0tYu7HXw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_214722_256318_C233E5C9 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Anson Huang <Anson.Huang@nxp.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
 Andy Gross <agross@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Brian Masney <masneyb@onstation.org>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 MSM <linux-arm-msm@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Jordan Crouse <jcrouse@codeaurora.org>,
 Simon Horman <horms+renesas@verge.net.au>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 freedreno <freedreno@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick Fertr? <yannick.fertre@st.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Olof Johansson <olof@lixom.net>, Shawn Guo <shawnguo@kernel.org>,
 Frank Rowand <frank.rowand@sony.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu 22 Aug 23:52 PDT 2019, Linus Walleij wrote:

> On Tue, Aug 13, 2019 at 4:46 PM Jordan Crouse <jcrouse@codeaurora.org> wrote:
> 
> > Now that CONFIG_DRM_MSM is no longer default 'y' add it as a module to all
> > ARCH_QCOM enabled defconfigs to restore the previous expected build
> > behavior.
> >
> > Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> 
> I suppose Andy will pick this up?
> 

Not sure why, but this patch isn't in any of my mailboxes. So thanks for
the reminder, I've picked it from patchworks for 5.4.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
