Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CAB159C3C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 23:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtmJHnCIIH6etXWw54PpgH7j41Db2ftaN/jiSnnM0UE=; b=GMtpnDkT0bFLPd
	L6keF/cL43mlVYrdJOw8NYtdpQY4hz2Awc22kFCFyxXe72KtIQRksogVOfhl4S9EYLp2Jk3BeusfC
	nFo/Kon46kkBL5UI8MpP9d11MmUkkqGLlezSwAfmg8Ua4V5oD+yPKHzsMMmBjsE0htXLWP6g3nKiB
	AjTqclWghDLQUtC6vNPglNPVu2oIXccMhbJ9sqOgFTHoux1tLZ1Tjx+wDdPlzXSnJFeTPvG69N0Oy
	uzhqbVrPUuQd7hIYHLokWVUWgPg7XnvsQBSWhhehSoPdKNdLaA66ML756QX3A265NlOVjEAf39Klk
	nWyvxSjBPf6fnR5muYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1e3V-0003F4-5d; Tue, 11 Feb 2020 22:30:57 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1e3N-0003DU-FW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 22:30:51 +0000
Received: by mail-yb1-xb43.google.com with SMTP id p129so6205631ybc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 14:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CHoiFuVyPb6jGydbvdkP7hbmi4a+GAh7Qj76wkBaMrw=;
 b=KqXh8ljWsaeJuL5FZXSBYEMOEtwIDGtNhPOg0K+XUvNK9WNzlf102sQ8jl82PFo8XF
 s+Ljzb/2DZuO0hfDjig0E+42lrnPZv/TPE7RJ8Aqcx5xI9V7autaDv1tzexHXbY8iQty
 emEUEpwNSlANK1zORXQhRhy5tNQf2Ob0zLmcHG55uqs/alcX9ODLzR5BetAN9ZF5rmQ2
 L25xAQtPyXz4zTfuqZZ/CpTP5vh7LsBhN8NpOxxgp0t58Zctl7vxGJbVRa2ovEgfn55s
 i7Ls6CX0QpJTP0yd4t9igAHATrBZ+sxcHJfF2O09c0ls0c51XDilEOQdV2YfxfRxZoPj
 KfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CHoiFuVyPb6jGydbvdkP7hbmi4a+GAh7Qj76wkBaMrw=;
 b=LSm8/HSmvYM/sCJVeO69wQ6K0YDg79V9qf75HEtDXVIyQMFzEzZc9DfxU95vqNt1BD
 eMrOSlIfsoz0VucweaBILt8ndLFYMFs133T10mgxZKUvneSIvBTbowR0Em5aCUd9EI3S
 jGt/sHjA2OlP/B19Ezwwsry18+yOpgF5+pKoGOzTSteRDsOeKCwyrk5vVNdYrfp4Olj0
 o8+JMkQ2eWAZZozMKr5ca28kR7oS6LuyFm7DRpl6r94ylmKolzmK5tmqQV+cjAacxZiU
 U3AAUC6zmuBjKsGqoH4MRYe2hsLqVnPNwYaV1MRtK3Y3B00qTuA21yNNVCQdlqwSddgS
 h7fA==
X-Gm-Message-State: APjAAAWI0tRTR3y5FvzLbday/rSj9Z4xS9owvxVGprmA69vcJ4NE2jet
 qGH6bsRG2NxinmqPKWF6Q8A=
X-Google-Smtp-Source: APXvYqyilsRsa87oczzBpnbDDzSd9mSalUhB8qVYON+pfbtfykYkhrGIfyKeqrrb88A0edcvtP8mkQ==
X-Received: by 2002:a25:8290:: with SMTP id r16mr7654104ybk.4.1581460245400;
 Tue, 11 Feb 2020 14:30:45 -0800 (PST)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id q130sm2560552ywg.52.2020.02.11.14.30.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2020 14:30:44 -0800 (PST)
Date: Tue, 11 Feb 2020 17:30:28 -0500
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] counter: stm32-timer-cnt: add power management support
Message-ID: <20200211223028.GA7369@icarus>
References: <1581355198-30428-1-git-send-email-fabrice.gasnier@st.com>
 <20200210174550.GA4626@icarus>
 <b1e2930a-eeaf-dcfe-3e2c-b666908262bf@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b1e2930a-eeaf-dcfe-3e2c-b666908262bf@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_143049_520409_1C2ECE95 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 jic23@kernel.org, benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 11:54:17AM +0100, Fabrice Gasnier wrote:
> On 2/10/20 6:45 PM, William Breathitt Gray wrote:
> > On Mon, Feb 10, 2020 at 06:19:58PM +0100, Fabrice Gasnier wrote:
> >> Add suspend/resume PM sleep ops. When going to low power, enforce the
> >> counter isn't active. Gracefully restore its state upon resume in case
> >> it's been left enabled prior to suspend.
> >>
> >> Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> >> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> >> ---
> >> Changes in v2:
> >> - Don't refuse to suspend in case the counter has been left enabled.
> >>   Gracefully disable it and restore its state upon resume.
> >> ---
> >>  drivers/counter/stm32-timer-cnt.c | 63 +++++++++++++++++++++++++++++++++++++++
> >>  1 file changed, 63 insertions(+)
> >>
> >> diff --git a/drivers/counter/stm32-timer-cnt.c b/drivers/counter/stm32-timer-cnt.c
> >> index 3eafcce..50496f4 100644
> >> --- a/drivers/counter/stm32-timer-cnt.c
> >> +++ b/drivers/counter/stm32-timer-cnt.c
> >> @@ -12,6 +12,7 @@
> >>  #include <linux/iio/types.h>
> > 
> > Unrelated to your patch but it caught my eye: are iio headers necessary
> > for this file? I suspect they are not needed since this driver does not
> > make use of the IIO interface.
> 
> Hi William,
> 
> Yes, you're right. Thanks for pointing this!
> I'll push a patch on top of this one to fix it. BTW, I'm not sure if
> this needs to be a marked as a fix, as this seems a quite minor issue?
> 
> Best Regards,
> Fabrice

No need for a Fixes tag in this case since this is not a bug fix, but
rather just a minor clean up of the included headers.

Thanks,

William Breathitt Gray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
