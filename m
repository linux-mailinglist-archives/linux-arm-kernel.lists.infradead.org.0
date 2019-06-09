Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E43AC75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 00:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kh/Y31u/S9I9Z9AW1GaCNnGqYWQXJjT4U9a7DoTzLd8=; b=excK1wXKXhNFfb
	j4sLCvxmSOHFMN8VVtRe4z7l4Ayc4s4Uf0EyWE1xZb4+7WdOLEqhg51wJVUV0VoPIsha7d4axXLXY
	Zo5Z+noMBMcRZ3SIxvrPvIv+4KiI1OwZ3p22vv6bqiIMaCbRrpTl9ezMkOWdW1Tc2R1uEeCfQsdd2
	PYvbwFIFHhKFBPFaXw6IofEafRxvKeUPV/wb/132LBTv/Z/JKDhFkXmLhQtsVMGTqtCiZNhuqwsAV
	tdQ9jebp9fRvHeMtQg8X3FvYtOuVLKP1jZq8G2Dbyq7PP0Fj/cvgjSC1i8S8ppwlk2weUpqq3EwJN
	PXlWSD3g/V4UYtQZ/H5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha6NJ-0004e4-6f; Sun, 09 Jun 2019 22:33:17 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha6N7-0004cS-D9; Sun, 09 Jun 2019 22:33:06 +0000
Received: by mail-oi1-x243.google.com with SMTP id s184so4947548oie.9;
 Sun, 09 Jun 2019 15:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zQ6OXqNlqQEo6o5SfdnUHG+Qbo6dDyANNmGJ9zTJBy4=;
 b=XTxQbKpLzQ9x7Lmv1HiWlTTLcazVga8prIV+POououfauSrpy2rz1T/twEaGYpD6IJ
 34PV1g5fl4LsumDhAJRAnA2WYCrABePeD/FfLnaSJoHK3zqoo1ySkA7okZeef5a+JFb4
 1Q56ts203Vbq9hlkOLxfCQOm3K+smc1hNcHZh6JZAXFLB8KbmTTOI7F0Ob/T4DU3ISPZ
 B90RQHVmo1KmOuE8scNqc+o3bXLrqX0+KuzDV4zbTFyPUQdlE/oH6zNrkH5RfsZSovnM
 SKpAIYSU1/+GJzc07PM3JO7M5dIeXpnXTmy2OAi7AclW8DTb/cutOg2vqgUYQMS8z21y
 lefw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zQ6OXqNlqQEo6o5SfdnUHG+Qbo6dDyANNmGJ9zTJBy4=;
 b=bB0OgzbyZnbd4OEwzfujpCB7SbGE7bEoXoQi+FLnmkWQN0QDaJhp36wqx2UiCMT8rH
 LkNrd1jFkPwhHIfUGyXlSUTXsgfoRGUk+ac/nTMOaz53zKr78qVEVT729uQbIIgktKi6
 OB98P1ka5kGpDd9i0n/bezjdsBJa0ODA60Fi0+pjXRZ419If/nmG0hdGnjTWm4ChU2Ss
 m652PoBM7SyIT9fcxhmTt6XHtFZNIn+MloJzmRf+di+RmBPsZ10xEBMohNIC4BhRg5Fb
 cXZODJ6KFy1En37CZqNVvSB9ZaxAhXCyIWiU98kv3ub9pruCFmu9Brut5q59M/4VQJCT
 84+A==
X-Gm-Message-State: APjAAAWqOU72KB4iNSPh8tjZ/tQOtCA+HQT8b0qDFd5kLB3K2Q4c7GZu
 9KSFBA6N8aVaFw/wGFJozacvtTp1rMJj/jgGs+0=
X-Google-Smtp-Source: APXvYqyXfo8/VGaQnyvN3uUtUHo2ZPZdhQIigQnxCO0sgva0FRuMUYSkKUNsX1joxCo2ygNdPLmPelw9KQW+AJnJEQc=
X-Received: by 2002:aca:51cf:: with SMTP id f198mr8511263oib.140.1560119583220; 
 Sun, 09 Jun 2019 15:33:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609204510.GB8247@lunn.ch>
In-Reply-To: <20190609204510.GB8247@lunn.ch>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 10 Jun 2019 00:32:52 +0200
Message-ID: <CAFBinCB3SLoVOt_jy6-OW=2=5671o+bXQwMn006u56gHLTOpBw@mail.gmail.com>
Subject: Re: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset
 GPIO
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_153305_455698_3597593D 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-gpio@vger.kernel.org, netdev@vger.kernel.org, linus.walleij@linaro.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, joabreu@synopsys.com, khilman@baylibre.com,
 peppe.cavallaro@st.com, linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Sun, Jun 9, 2019 at 10:45 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Patch #1 and #4 are minor cleanups which follow the boyscout rule:
> > "Always leave the campground cleaner than you found it."
>
> > I
> > am also looking for suggestions how to handle these cross-tree changes
> > (patch #2 belongs to the linux-gpio tree, patches #1, 3 and #4 should
> > go through the net-next tree. I will re-send patch #5 separately as
> > this should go through Kevin's linux-amlogic tree).
>
> Hi Martin
>
> Patches 1 and 4 don't seem to have and dependencies. So i would
> suggest splitting them out and submitting them to netdev for merging
> independent of the rest.
OK, I will do that but after the GPIO changes are applied because only
then I can get rid of that "np" variable

> Linus can probably create a stable branch with the GPIO changes, which
> David can pull into net-next, and then apply the stmmac changes on
> top.
let's go this way since Linus is happy with that route also.
I'll re-spin v2 tomorrow


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
