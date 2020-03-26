Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED626194BE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:58:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cZ1rOQCO6SyQapasLudhhVXOohzcko9OTFPfFzG5m4k=; b=bkIPmlgp3uEg/5
	hC6desO+mYYFot+FdsWfLYeXuPMJWPUXdNbNgeoE0NS4sz8sEYGodJyqr/IMBK1Hh9bI7/7MrVMHD
	icKZd5WLN3ZAhA/i/XvwE+jjYEBbuJCnGMOYdCZx8R8TMMS14hGS0mSSrk2HwPyqlUUdb+a4zlDa/
	YTh25ErAX6RGe49zbkFPkZNM+3L3HSBQnzgfF+NBE9BHvGUJuzCh3c+QqupubVjbg6w0VOc5+rjjl
	1ZgeKplP4iRkFV3WLHA5yuQomYmkiKFIuAdb+Gu9H2Ok7FmK3pwcqhkUlbX4nznYlaJ2JLz4mwZrZ
	mZhz5bwedwrTV9oq92IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbRw-0008DI-Id; Thu, 26 Mar 2020 22:58:08 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbRm-0008Bw-UC; Thu, 26 Mar 2020 22:58:00 +0000
Received: by mail-ed1-x541.google.com with SMTP id z65so8991743ede.0;
 Thu, 26 Mar 2020 15:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q3/Z7GZVJi0UW1Zu1oYi/BuQdVCIJAHd3iCUPZ44/PU=;
 b=e5dhEBvKcnOYZqE+p9+DD69rZSII4PRcBKD8b/PKJq1OPgYsJn+20sK9QVJo6dAk74
 rqXGoZvOjjhhNLVdKJpm6n2vSOIF8vEHQgwwjVNNMm1bswdtkbqSbUbL/Aw7C4pTq7dz
 RbQVq2apkyYa/jb1uBcjqHXt7iwMpB0hrUGRNRHwIYnCivwETiweR0Ztls4+dND4xREA
 sx74Lr3JYsEPHo7VoMkScWnNdrr6jjmzOcgr9CMUXAKIep6ttoSprkKdaU4lasl/JFG3
 n5zf3tgcPsQjhGo9Xbp3MnT11YMp3NihkMylZwBm/Uv8zJs2SQaOOBsF7YoVcTDnRZiU
 4f7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q3/Z7GZVJi0UW1Zu1oYi/BuQdVCIJAHd3iCUPZ44/PU=;
 b=rb6x/yKJ++6POnE+BhIe0HxbrlYTwAVYJ/QQKQsF9HrJS1jufi2yi7DUFyCi5OtHO7
 EZtCBV1byIYL+drNOTPg1X6gF+GuUF8wgvJyvmhgiiR3iTARQUW7xTRKMX8l3rVghUkK
 XuHIiGzIgKV8I7Pa8jzxFFLV5rtR5bx3jhY786ohDUniOQnvHDBPIlu1P1ASNUJs/Nvu
 TmlrMgtzvALajwySzzE6znA4Y/a8TM2IgFS/427zamjWiLgbH/GGzdwaPQDWv6ilwp5w
 5KqcgdBbNKVtMjCa/QLLMGok1tXpMQQMECEXD7TMJcwlTaRYL5Xdg7hlYlSRqbhfi1bM
 HyQg==
X-Gm-Message-State: ANhLgQ362xD2qno14sjBumtyDVG3HMQC5bnuZLjPEennteI6lWcuIsDa
 Xgvbmj1hPms3BD332BqF/6jpJzAa5oI2GpfbzcA=
X-Google-Smtp-Source: ADFU+vu81+58VLjFlWwPRkccjsbyz6i5eV+Hc6RvJgDEpLHNpf60WKYPTnTNMm3dUNr+vmEW9t2xGbEjqz41aa2/5vw=
X-Received: by 2002:a17:906:4d5a:: with SMTP id
 b26mr5083102ejv.90.1585263476743; 
 Thu, 26 Mar 2020 15:57:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200326134507.4808-1-narmstrong@baylibre.com>
 <20200326134507.4808-6-narmstrong@baylibre.com>
In-Reply-To: <20200326134507.4808-6-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Mar 2020 23:57:45 +0100
Message-ID: <CAFBinCAj5+poov+Nss83o+YU8H62zpFSMtd_HvaM49Ob74Wg=g@mail.gmail.com>
Subject: Re: [PATCH v2 05/14] usb: dwc3: meson-g12a: check return of
 dwc3_meson_g12a_usb_init
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_155758_998324_CF8CF80E 
X-CRM114-Status: UNSURE (   6.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, khilman@baylibre.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 2:45 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> The dwc3_meson_g12a_usb_init function can return an error, check it.
>
> Fixes: e3e716e6b889 ("usb: dwc3: Add Amlogic A1 DWC3 glue")
I think this should be:
Fixes: c99993376f72ca ("usb: dwc3: Add Amlogic G12A DWC3 glue")
(because I don't see where e3e716e6b889 modifies dwc3_meson_g12a_usb_init)

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
and with that:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
