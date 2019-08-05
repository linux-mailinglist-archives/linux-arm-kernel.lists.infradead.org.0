Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAC281815
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:22:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dDQJQslO+bcx7DZqLSep4gcV7JCVULIvAKRoLlOpLk=; b=kY7PRNWdS8Phrk
	Xg82fnTKRWYn4PeXxQqU7S9GWK3RN5CGQhet7bms2VRQKoRp2aWfwmp9M43E9rdWQaW9gma9998Kr
	yAVlE0ImBEswloMcizNlbpUONUVx9LPBO7M23b5rI5CgdbmbYj5cjaHYXq/OTkI1dawVZRD3IoR8S
	10cVgWYpTMVqA+GknQyZyD+oSU13q810rlXCqSC/NZuHkT4Du1OgwpnxfWbzcGoB0UdxZYNuw9ZYW
	rIA405C65/hX+6GMHy3SmqMJhpUq7L9szkNrzG/+5hkQ8W4RdX2vbtsQNW86zqTUW70MfSLNYNQQG
	7fjSpRz3ON3ykhD4BMHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hub4F-0001ph-0Y; Mon, 05 Aug 2019 11:22:19 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hub41-0001pK-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:22:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id m23so78889043lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 04:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4I7HQUzLg54lQgNOoG7lv5acdMfxGmf2zfBCM1oNE/0=;
 b=kJNgTfZMaKn6TTMOFPead6v6yGgAI32EWQkZDbKiBwGAwjsol9HjziurVVVeirxM/K
 2V8gqYMpnSlFHb5II2bLAW5QAwLrk81iLN31TauQ+Rv7lQYYjp3+dxhxWrno1/7H8T7d
 orucJ4h1JxTkaoq8jkFUVWP2RlYjamDWxjuzziPd7J8dpMwyl1g0yX5m11+8bbxfvP+u
 bEpuj7WvvCQ+O3DH+hbURzr7jWukVLG7BXJ3ZusyDW6qx8ZBcHXYw1P9qjlz+9hU+eMB
 3ziMfQ6ZZvCtdV0Wipmo53Bs3zCSBljIrCFhiXkuBA5DI+y82Qn0t30gY+N81iLfD1+J
 Jxzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4I7HQUzLg54lQgNOoG7lv5acdMfxGmf2zfBCM1oNE/0=;
 b=eWNlCM4pbcmdPeUjOmjN33Fw3V8wB+J40PqMJ1bbqiLxLs6KrKW6fflQupYgev4XGu
 WNE50WX/Ml8FZafaPa0KKb3z9MOdEYB9F49bpF1Wc17+/85tRQALPxodQDSg+PmonThA
 jxfJhepJJmxRmiypGYThGmJPmTWdvQGO0heWNMUIqG2lBI+LBV9tpei/r8M3Z6y/axME
 UvErDyh4kjdbul8YHQjB//MWo08jwG4GWRbVhMpSNbc5SuUAHCzH4WOgKKqwcHWklbTd
 KJ+luH2yDyX9J5nPV9nMnHPKRJC1wFTFTgd0DpCe73mCA05bAYmyBuZ1tdnsrQf/LETo
 Vw/w==
X-Gm-Message-State: APjAAAUaNlj5aMVw7JnlsYmqL2oMNZulFtxIX0HHDJHQrvxdFBE+t0CH
 2zzcBMj4pW+ch6+VigWVOTuhjOFvTefnnt+gCJl+CA==
X-Google-Smtp-Source: APXvYqxB+/B4tIr8qhrPO4eeWRecgH4quPXH5oIsTvpDO6GilYVnzK/IWqZawWQcrqK8hwD0P0EJ4mfCDrr/N2cg260=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr14964936ljm.180.1565004123132; 
 Mon, 05 Aug 2019 04:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <1564465410-9165-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1564465410-9165-6-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1564465410-9165-6-git-send-email-hayashi.kunihiko@socionext.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 13:21:52 +0200
Message-ID: <CACRpkdYeJwVCfPW3duVspnBFsyTbFu8kLmr84xv0HHiF_FSxsw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] pinctrl: uniphier: Fix Pro5 SD pin-mux setting
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_042205_184656_452B54D6 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 7:43 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:

> SD uses the following pins starting from 247:
>     SDCD, SDWP, SDVOLC, SDCLK, SDCMD, SDDAT{0,1,2,3}
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
