Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25719EE396
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAXzMUiVtLZYVqTsmok4ft15fEQgE10HPLsafQ3g1Ag=; b=TVGR0FImj7zmC/
	WhhMtGUnJHmWFlxsO4oGeiM5CVZF7aR8wHAGm2PhmZvdynFgIvIsmCuJZeqf9C7IAIq1sWos6uMwc
	KiMsHUfv8twdei/2TT0vX/glJY2OYd78Q76Sj9WmP+vivJyOAjxJXssJw8d763jIJSPrTiumTTK7a
	BIL+VQg+LK16ha/HZky27fs+qOvJQU62CauYpH0z2tbHtyBunBngnZSUP592X5CKXJKgiz38C53c0
	qFeNznslE8eQXmGBRR+bdLNznQO+sK0H0qQQkfX3ZjR6YGDPxgHHw+Vi9gVAPCth/MeUEQm+2W9vP
	85BsNefVvqqBN5qmSyWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iReAV-0007av-Il; Mon, 04 Nov 2019 15:21:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iReAK-0007Zj-RC
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:21:14 +0000
Received: by mail-lf1-x142.google.com with SMTP id j14so12542328lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WmqHJfKrHEuo8+nq0y5509yDW9+rTv0+ADIVFj4pe+o=;
 b=Wu/lDZ+WeUXXOX/13FqsU02HMEMgYvvB+EJ0LPqhTBPaOHLQT0fOaNd06zxDhbFciz
 +s1Tr2bvcFcTXAKFDo4sXqML9cn7Aj+b7WLcRtz8bPtLAK7XRUULMzjSibVZRIS2psZI
 mnYqdJndH0YktK4xeQ9C6a0HdlGGoGQjueJfHW5OwGQO3Y3CPSDtSgeubfVwq8uTJOf/
 0j4Av/a0R79S6GWb44T+HcJmI7cYybJNtYvru4SJbtvFWL9HhJxmRqpWmdC+iZl4d20f
 OhRSjsAsz71rzoRUgUMjmnkmujYF/Bf/DCMRxLBAxGNmF1ktLntxofpezkBtqYEVviq4
 TNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WmqHJfKrHEuo8+nq0y5509yDW9+rTv0+ADIVFj4pe+o=;
 b=l/0WltDN1JSV0NDYQ/3MOTnIlccGcAqfMJYAzvSsskoJmnXA8fyuasJpzr1t0puH2r
 XQmOX9dL6U8hbtYKq0PyyxFxiTUyR0YGCtAtrtTRbs/iM4FmiDZShJTP4RQgEWGhMcQw
 6JJotIdtVzoX9rLLP7XAmI1f9qY2poM5+0b0XyYUrO92G4AqZX4N9lC4BnPSBTstBibJ
 2btS1t5c0c8CC0p2CTqiBvaGkrjB3gP1Lxattjv+NVgDdjsw1dBmplTEp6Nh2Ny/7U9a
 j35WWjPETS7mZ3sF4xCLSdFb1gmZpu425utTy/wd4vGsJua0JLCJBKaAM6HsuPhKnRCw
 kjzA==
X-Gm-Message-State: APjAAAU068ZGMJEiIm+W3dajtKW5ZMZpfKedeO1ev3lPI9A2Y9RA/PxC
 sHYDkIhcmtDFEA+d6KuspJNh9cT8tSwGf/RpYU3AApcbEQ0=
X-Google-Smtp-Source: APXvYqyb7sOTS3sJnVKALeqMLINw0jckqgVt+EfzBugF2XKADxqvI03Ya1086CmdBNeJEP74ox3oPirCl8Kl0+Qe9+Q=
X-Received: by 2002:a19:651b:: with SMTP id z27mr16940144lfb.117.1572880871163; 
 Mon, 04 Nov 2019 07:21:11 -0800 (PST)
MIME-Version: 1.0
References: <20191104001819.2300-1-chris.packham@alliedtelesis.co.nz>
 <20191104001819.2300-3-chris.packham@alliedtelesis.co.nz>
In-Reply-To: <20191104001819.2300-3-chris.packham@alliedtelesis.co.nz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Nov 2019 16:20:59 +0100
Message-ID: <CACRpkda_5iB_nejfpOS9_f4w1E_-60DMVRJX+uzv40w5jNwDcw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: bcm: nsp: implement get_direction
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_072112_884955_D8A15738 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 4, 2019 at 1:18 AM Chris Packham
<chris.packham@alliedtelesis.co.nz> wrote:

> The get_direction api is strongly recommended to be implemented. In fact
> if it is not implemented gpio-hogs will not get the correct direction.
> Add an implementation of get_direction for the nsp-gpio driver.
>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>
> Notes:
>     Changes in v3:
>     - add revew from Florian
>     Changes in v2:
>     - New

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
