Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F291D1659BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 10:04:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGP2laoJUp7D2N24W1Uq/VRgQwVY7f4Z4i3TJx3JwS0=; b=T0MciJUJsxOat6
	iGP8tAIEwcEknkJkRzMJlSpsV4LWjJHioEaL0pEiMqg3714+FI+8RZxcWaXxKLNZHxrczP0jn48XE
	s2+mr7q2bh7mE5KCx/MnuRA0P4nwUTDG1wHJYXeuqrp4uhcYrt/PzfQniM06jNdZpcutpf1FDot3p
	qGb5bgdXZL289zzZOhhpaT2nkof2KLDkkld6HIgtnokQrDPqkkcMinRu+Sh3hAgTgag8zzd8O13GR
	gNKg+T6qW5H9ccZDPibrPO1sy4DA+zcfIEqspm6gptev4nYgs91SNQYJZTHRRYFi+5Hx5mWT4giQE
	rM9bAy5APYVaGMEZTZLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hl2-0002dq-Aj; Thu, 20 Feb 2020 09:04:32 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hku-0002dQ-0o
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 09:04:25 +0000
Received: by mail-lj1-x241.google.com with SMTP id q8so3393008ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 01:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EtwFUgXnzMG7xRSPK5ep4NdZQoJPGdlrXdQuPq3LaPs=;
 b=vT3CEAkG5tcsFFbFsHJmyzP1bPuTG0lGWwl1/VHgibZrTrs+dGGrWXcCh6PlmIp5qj
 aLgO0RmwGAPNzx4Nlh/SK0OT2bZRl+6Nbo728uQ5K/iZ81592QfwkpdE+20vagx4oR0+
 eI0H1ro6G/lRK06d1YjZsqpf0VfyEkiY4d2QL659oZeFIX18QVpWALrSOP71+V1A4po0
 t9o/0o+QOl5vxyAInUQI47v3hxI3qkAfCH4zZlcAh96LBiAHOgoWYyYe8xtZCw5UrOyc
 S9BoCwWMrdEyXAoa2NPb5Et5PKm+203P6MtFZ6d6P1Vxz2ExgOVAtLusSPRKYp5NqXIP
 UztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EtwFUgXnzMG7xRSPK5ep4NdZQoJPGdlrXdQuPq3LaPs=;
 b=S3ua1HuTR20M5g6wbkUpW0rSPQSd1kU9F4TQd4l0cY/S9v8fwy3rjTtkn8BMbz9ULD
 VNGCkRbuT8rUn3usOB4z1HRzFOSR2gknQXBIG6sfiFu5RK5ducb+qYUw5FekCilAKW21
 Tf5AuaVQkp8N7X7pP9nunIlUVA++6zORKeoT0mY862qgMcACLVuvW0JxlORLfK25fDvl
 EK1hVITp3ERkh2BpIcS8SpOnv8cB9pr2jveV/gwiUAtLriD0uvUWKNVgdzQud2Rdr4Im
 YXxRuJpTcdxSQS+Nzy0J9rP+c2XEZI9tPXaLxJAm+AErjQTU6lHR6AcCwV5s7gGhjVwz
 TmNw==
X-Gm-Message-State: APjAAAUvhVjU9WjHA0ZMLYlX2uZV0yiqec/BGYpY5Se2kJtm0M96SuN7
 CbL20siqA7rSObF3KdDdHQIQTA0uk4fEumZWNDGm/g==
X-Google-Smtp-Source: APXvYqykxTk2UJC6Vt5ZX+50V0sBVT8b6IEsTzEaCbxY0/TQGOpkj5sPXy865IF+LfcUD/8rZA4hCZqDPn22AA/jsNQ=
X-Received: by 2002:a2e:7d0c:: with SMTP id y12mr19074270ljc.39.1582189462310; 
 Thu, 20 Feb 2020 01:04:22 -0800 (PST)
MIME-Version: 1.0
References: <20200219143229.18084-1-alexandre.torgue@st.com>
 <20200219143229.18084-3-alexandre.torgue@st.com>
In-Reply-To: <20200219143229.18084-3-alexandre.torgue@st.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 20 Feb 2020 10:04:11 +0100
Message-ID: <CACRpkdZ7uq4U6GBQQQh=pTLf4wW3KfH3Zrz9z_3ZQgoaJD9Ynw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: stm32: Add level interrupt support to
 gpio irq chip
To: Alexandre Torgue <alexandre.torgue@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_010424_117543_07D8DB89 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 3:32 PM Alexandre Torgue
<alexandre.torgue@st.com> wrote:

> GPIO hardware block is directly linked to EXTI block but EXTI handles
> external interrupts only on edge. To be able to handle GPIO interrupt on
> level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
> is retriggered following interrupt type and gpio line value.
>
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> Tested-by: Marek Vasut <marex@denx.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

If Marc want to merge it with patch 1/2 go ahead!

Alternatively I can merge both patches.

Thanks to you & Marek for hashing this out, excellent work!

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
