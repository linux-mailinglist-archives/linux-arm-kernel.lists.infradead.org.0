Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD6FB1E300B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 22:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SoIZuAJ8QWA3VX6/aiVFPPZDIsUYWlhpA3gv01mFR8=; b=gasiwewfRyI+kv
	dIgBOMY0+9Tdky1N4M+y2C/wmgl5oNsgXCof0FjwrfeFuXXrakMgdcGoQs5t4FCsnFW9dV6fLlSy0
	CCA7QNsgpSflcq2SCZd4kTPslfdtCRdXbKLq06HKDvhv086oqpEi6KkycHxjs/y9AyFcVYcbCRXhz
	0Mxk5NGYTx5f6dUH9J4oE1rhpK1JCEbQLXNUu55N9Wr07oxoXpCRrvWbW1/RP2u9aZx+TCwOVOaGY
	yeEofQmjYwgt34j418HMop4G4hlfqTGsWr80kUGql9ntp7rD579QzMeRFu/JULFA2G22EcG824Mm6
	qr240p+sCPZhPJfTZl4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdgFz-0000E2-Ok; Tue, 26 May 2020 20:33:03 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdgFS-0008S6-2C; Tue, 26 May 2020 20:32:31 +0000
Received: by mail-ej1-x644.google.com with SMTP id k11so57635ejr.9;
 Tue, 26 May 2020 13:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=frTCyEJytMIpMzPgqZ3lqF+pkdQxw1WSjI5Ry5UFq5I=;
 b=IljquMpmJNsQqTFtQAguaOxhoTCWTpYRniOr8MuJ3DoqbydFogfDP9VW+W87BQstsR
 OPBayw0RFE6iKQ/hTP4hyGHOywAU0FnWt++TBwFlvjadyrBZgNlYAOIQFxvplj6b6mtl
 wpORcH+FUq038v382wEk3G+YK2w/TABXGVqSFUVIeo5feLNG8RnB2QVgBDN1NK/V3Del
 2qzVbosAlK0HzoQzjA3jpz0z8VPpDWTJc2vKlNc8inJEwiIYHG4shAR1cFhgZHO2ge5a
 jtKi8rQN/9bUgKv+cz4lgfEl2nw/Ie6fq+1Gl6NyoQhEzmlrZ8rPb2rgw5+guPULhKqe
 fe3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=frTCyEJytMIpMzPgqZ3lqF+pkdQxw1WSjI5Ry5UFq5I=;
 b=kJSSaewCNEL2HLvWkGwtOYcJI92BUIioSDNsTQb3jGikfLXwdDuG4s/w+L+w169Ps0
 /ciPnyR/inE/QCKd1zwUgfuTyFEFukZmRsmrebmKrMA4OKIQGZH4p69HDqGUSC6ZpUUh
 LaWAdwHzBJCxKFQnBR4y6nTV/TTEEORJQzMmTthaAbb1ZE3LL5WoqMgkF2EJ0rhBBUyK
 QLRNPORvBvBu3drmF46t610DxgjDcfm3zL8n4kh08pHQeV4OLBEYTb0WMfHfGZTifcHK
 8ORzbtOO63k9dZE5am6Mh4YAXyJ7GHSvy+E9rMPT2Zv+gmWvyPHf9HlxwO677Q2HXrUU
 gyvg==
X-Gm-Message-State: AOAM531Jt9Zvmr85LFPVY/NM+oz9eZ4bAj3VIvgwDKhmFLqK4+cM5yLg
 mqiZX2p63rDEyrMZP5ICkSffnA7E4ns+IKcyA84=
X-Google-Smtp-Source: ABdhPJzFPlr2WGlGDBnhC7WsSJMXNzXAUl4NRIgZRMAQF7dmd4WuTEuCuUSuOKDlw1a8WDHUXwvb9/G+7EwF7/tuigY=
X-Received: by 2002:a17:906:7e17:: with SMTP id
 e23mr2664267ejr.172.1590525148457; 
 Tue, 26 May 2020 13:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <5ec9617c.1c69fb81.b979a.bf47@mx.google.com>
 <ffe2c64c-62ed-9b59-3754-7ede0f0203be@collabora.com>
In-Reply-To: <ffe2c64c-62ed-9b59-3754-7ede0f0203be@collabora.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 26 May 2020 22:32:17 +0200
Message-ID: <CAFBinCC59r-LqSCkVpyjkEr_q+hLQLECDSSiAas+ZF+DoaiJLw@mail.gmail.com>
Subject: Re: next/master bisection: baseline.login on meson-sm1-sei610
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_133230_103468_53AD65C8 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Felipe Balbi <balbi@kernel.org>, kernelci-results@groups.io,
 Neil Armstrong <narmstrong@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-next@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 10:39 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> Please see the bisection report below about a kernel Oops.
>
> Reports aren't automatically sent to the public while we're
> trialing new bisection features on kernelci.org but this one
> looks valid.
this one is valid indeed and I have sent a fix for it (plus an
unrelated fix): [0]

Also thank you for listening to feedback from a while ago.
This email reminded me to add the Reported-by tag :-)


Martin


[0] https://patchwork.kernel.org/cover/11571203/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
