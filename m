Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CCF144496
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:51:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJh2EZY497hU+rwfXMhxTACbncQ9S7kcuvw0aFyYoeo=; b=MJ/JKfDqL4SuE4
	0C3DjKq+ddm2hf7FcKN5O9mWVYg7PVFk6ndx675Vc/wrp3YZOSC0ZBZlPqR/iZxDX6Ka6t/t3a+eJ
	CR0T8nXImMQPCVYE79Uk0a5d4Um5Yz+nYHWLu1oHFZtqPntGpUGD6jlVi1NPuvlG6YN/5zhib/GPy
	4KtoRtueWz5u3mqIwBtbZlr8Yxse/jBEDXKyxSbnZNwrVroMtndMXYvwGLjkZ4l8cMtnN5rGkvHj9
	dDGgXmNjy50tjPW44SN0ZQ980GiflKQE+LCrn+nKUO4U5dqI1rdYRz9Csgyi94I0yPW1xGXkjgvyG
	nQhbLbQFinrnRLa3zENw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itycI-00078c-Ex; Tue, 21 Jan 2020 18:51:10 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itybt-00076s-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:50:51 +0000
Received: by mail-il1-x142.google.com with SMTP id t8so3196518iln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 10:50:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QrAzo0r+PctniV8BLO+0JoGrZ0gylLyDz7x0MsayThw=;
 b=KITAQjmXrHBI4Cx9f9d5s9/7phJyVP9EeYyLDCsG6C+Y42GmBqA8IEtINi//jbOah6
 bvCpKYBBZLKTK3tXvl0sbIXPfFxrbjxU4FTRuINOoyPKVwEZbsGSIbJ1xdpk41OOHd5o
 P70Jko+1meMlL5igLHD7NUpGj2aQ2C2i94cnxCFPTcFitfvPnmLNiKHfPZxfyoDubFjW
 v+BT6JU5Eml+jIX/1eqYAMLM+bgppjwCTigxKyUwsHqacJOG5fiduCAfcV8rPOA+TiGD
 GQRuR4+ZA99MqJCScJ8qxM6kqHsPuG07bSODmvRV6gnnDmDfDyEI+JCjeiRmTHgFjvIt
 G59w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QrAzo0r+PctniV8BLO+0JoGrZ0gylLyDz7x0MsayThw=;
 b=ncwc6ONIlLeP9pGK5E0p+9SIrLOzfkBEV5iggflfR43qk7mkYnHhHrZyIRH8jl/eKN
 AvIqnKsezy9v0UzB5b83z8h+ZCQVlF0ZHXT4avuJXE70+YCQFuahvLMvdG7w0YHj+Lq/
 piRw69z/AsREzh8vJeKH9kxmKJFAMi3sR9j5qVMwnjb7ejtB1g/mOTrANhIZx7Su5wKU
 UO8WCceich7hQTDH3sItkJ/UAPZ9/AcgiVNbntABf4OlKL8QglXD+bKG6Cv4j1eoR5Nq
 vXSMLy18H0rL2HAEI4OTEvG9mWqDPOZNnqqtAcs1a2NnFftbXGVRcu2UDvnVr4n1E37l
 z/AQ==
X-Gm-Message-State: APjAAAUGLwxtK/9o2D+OmTkOjKSFq6pZ0uxZeLL+VXvP1jk14Kln6EvL
 NQREFaez2Y/HEjuZLqfZZj6xUqP8BJTuRazypBKkRQ==
X-Google-Smtp-Source: APXvYqzJYhB/DjWJuPAVhQ2AHgfUnFEuRszl6MoiznJoY/+nns2AVgmRZMicsXpEnIra4HYeKi8tvfapzdjmS3WFwKc=
X-Received: by 2002:a92:9f1a:: with SMTP id u26mr5016834ili.72.1579632644680; 
 Tue, 21 Jan 2020 10:50:44 -0800 (PST)
MIME-Version: 1.0
References: <20200113095555.GA29848@wens.csie.org>
 <20200121075127.r4mlnv4avcx5ona2@gilmour.lan>
In-Reply-To: <20200121075127.r4mlnv4avcx5ona2@gilmour.lan>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 21 Jan 2020 10:50:33 -0800
Message-ID: <CAOesGMi=Z+_65pNeUp0twbrsC4DvfPcRWOuodLYi+k8VQMUVRQ@mail.gmail.com>
Subject: Re: [GIT PULL] Allwinner Device Tree Changes for 5.6 - second attempt
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_105045_860006_47CE2FCF 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: SoC Team <soc@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 11:51 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> Hi Arnd, Olof,
>
> On Mon, Jan 13, 2020 at 05:55:55PM +0800, Chen-Yu Tsai wrote:
> > This is a fixed up tag for Allwinner DT changes for 5.6.
> >
> > The new macro in arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi has been
> > replaced with the macro's raw number. The tag has been directly compile
> > tested.
> >
> > Please pull.
>
> Any news on that PR?

It's merged, but the patchwork bot email only goes to the person
sending the pull request.

If in doubt, check our patchwork
https://patchwork.kernel.org/project/linux-soc/list/ (or git).


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
