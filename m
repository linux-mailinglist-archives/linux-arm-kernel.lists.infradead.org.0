Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791BE29775
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuzuA4xYosE7b3EAjrZ9wLwaR6HsZ85km1Ea1jhON9s=; b=YOkxpmVbKb7G+O
	EUaV0+3a8+kTLEV2T89F93mX0YitBFtzfHNvamwGOjRRIFHCkWEBLsoO44MW95Fc5omn5l0W6dqfb
	K7IszygoMpu+L6Ih9T7LO80XQgGN+T5ClfAniHDE4vUuzK/oAlj1gg/Tlsf48a9K0r6bYYuGPF+Lp
	FJNKrNqj6D+Jh6oklBwG34QAD/YEgNci5ZsjNLhGn3nudTZP+DU9yKuS76iVzmvnWbWyiA0ciTKWI
	x/42kNpYz4YdA88HyXbrrcExDyFhlEBp3wKsF5884KzG0vgf8KIaYjkNvVWoyw5fmvFk4ca6niKSW
	uPfVSiJ/RwpIusnzf52A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8Zm-0000su-Sq; Fri, 24 May 2019 11:41:30 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Zf-0000sa-IR
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 11:41:24 +0000
Received: by mail-lf1-x144.google.com with SMTP id m15so6287453lfh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 04:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eJLDwVfH5VJnZx8ZM8GCRIzVJV8WcHMD+lvgI85Fwb8=;
 b=tFjCJYE4s1Z94dMb5aFsdWecVIC3UQ9ZA0iji4fhIgPiEbpjNkp6PM+YSIl/F0zg/8
 v067wNSAoldwvwxNc12hzdZ1o+Ue6PunKG5AFaw6SVX+axaqR+H6XYobKIQ2AOZfRVDT
 2MSu12IVDZlJVYeaEXVBJ6u0fHu/T+hQ38wwb9HMSr/yWO0eah4xbg1CG4Yx04vpm/Gl
 5waRRmDXldlktA4Axy7Gh6TMSlIUN0TR5TR6qQnFCE/iDu+Yu3IwGLAbBiOQYDTZkcO5
 7PFePDllYZl7eMyl9c9S364wV1ARtv7+Ho5BblphuAKfQYr1mTkL2OPyj3M5EdvOFQ9r
 bP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eJLDwVfH5VJnZx8ZM8GCRIzVJV8WcHMD+lvgI85Fwb8=;
 b=q+fwTTn48qTwqbMLbIGqyZoAitWIR4xWCef40FJ2dRLrUXDEaxqknzz5AmLsj6Qsye
 EzNCKIbulLy3AEdm6F7+BRPLUBs7ekCW92DLpKpahjxwS5l1hMVYZlBESSgY/RjtB3fR
 TFIGTmy37pKTsayFYk7VL5gpgxlx2L8YE7eh+o7JZa+Ir80jjkCxVqggC13YkymToVZi
 Xsp9vSnt286x63dbHgyRydl4Keqrf0WebmIQt+j/ObUdB2poLJjRvaZAo11bg4kMJhR5
 +0Z7wVqvBtnNtqftYgbgPA9t0rCIJvbkrPDT6Q3SW6FckfBd0wV8cYdnx9SgCVACfexV
 v6YQ==
X-Gm-Message-State: APjAAAUZ/NkIXfazLfV58I9LqpwTUM7zOuwLGoIOY5EyKka/AbKBTG/X
 KVVgrh76QHoWqbr9dDmKKDNRm1kfz0CFIGIWa4DJJw==
X-Google-Smtp-Source: APXvYqwlCU/Ve7G0DQMfQWyCLtGMK3SgbEDDMWwyMwxIxCdMA7wUKKKX4Ntzrp8svUCapzuA04ATKczG2IaW15wIr9U=
X-Received: by 2002:ac2:5935:: with SMTP id v21mr9226943lfi.117.1558698082036; 
 Fri, 24 May 2019 04:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
In-Reply-To: <1557503126-3025-1-git-send-email-alexandre.torgue@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 24 May 2019 13:41:09 +0200
Message-ID: <CACRpkdazPrbzL-oo6rhfgDcLftjCE1hrgPQCMvtE2TOUUnorVg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: pinctrl: Convert stm32 pinctrl bindings
 to json-schema
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_044123_652825_46D33308 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 5:45 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:

> Convert the STM32 pinctrl binding to DT schema format using json-schema.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

What a feat. Well done!
Patch applied with Rob's Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
