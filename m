Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5B2135EFA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 18:12:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfrsWu+beND675ZPndZxjCiR97EC2S2fPbW2lqla0GQ=; b=bA8A/Mf7OxSJUR
	US3g/S2krLNwdhF0rQqKQWAWTWHoTy4FqTBIWio02aTk3bVVc/NnIvvhackl9deGn+YeCpGl9ZZwU
	hvSz5R0ld+70m+TPNtuLNnAbzvuRFyAy2PrvI5qCsiCOGYgRAnHitr1uVYAuLmp/9AC3GTc2SA4Au
	7FPGlezFubn8YRQhrnT5o/tl8qlb8igW0SfqF6r9n5a4D6nBEeNuMmij31Gj/IFYEF9wtoWPh/TAw
	1OBYrdAyBUOYhfmD6IabNftNpEun0rmIJczH7VpA1Yljh9Y7KePgzEMN3YXpLV/fpN7tttKeagOnI
	64okLom9XZ9txQ17bN6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipbMH-0001VX-E0; Thu, 09 Jan 2020 17:12:33 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipbM7-0001TZ-Le; Thu, 09 Jan 2020 17:12:25 +0000
Received: by mail-ed1-x542.google.com with SMTP id v28so6225564edw.12;
 Thu, 09 Jan 2020 09:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m5bKqTGzATt6X20fwIM187YSSZ5nrekRXnj5LVqJY7Y=;
 b=NZk8QVJ4WAq4R3o1D9+VK4ZSDQSQK7dvbRBf4AMuCjvRavx3veVI/WQdqKnErpQRCi
 Eds8ghTPfv2hOFlO+55g+LMIJEC7O2+PJrmajsk7a7ZfOWWf5KbxCbL/TWpXi++9cpKv
 8aBr2fKChY5SkaGsOnqjfiEUsrybPtHq9g0CK6+sssK3HgBu9YUvbopeuATcEF0PO0xI
 tnC5vORlB623hwx5NeI+ql2fbwiqXj1AbZ3c4BjnMQ4f+ysx6m5kguWC8Xg/dyYQZMHs
 84dkmKBvzqz1rcILrG2brbxH8W0Sy9kKfMjsWi3uGO/8Fpsg4osgxmdB1wnTfL9aO7BA
 1/yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m5bKqTGzATt6X20fwIM187YSSZ5nrekRXnj5LVqJY7Y=;
 b=s0sBt7X/74IjEM+R1vXA0u44BEXtCM9HJ41Yi5GVhz5qUSQmPEK33VZUhYAAtRZlJa
 O2ch9eB/4gGioriti34BqcC0YuywU9obFhQRCitYBeVpziq90wRwwozrSIeb1J18N6QF
 +t907KCJfKcVLOuUGFaV4xkvYgfVLdeqZ3ifjF9Gw0TgsJnkVSQHlhnyIJ32p6DUldGu
 Nb3eXqhT+RgGIi3SFXV71pOFadOCCr/D+S106OR9C87IPPch7L57xN478MO0g3asskZE
 yUQ3ioN8DbExFJ+nNV0Scc2Vt9e1b1tTI4i6OMnFQJ3ynZ8emL3ylrN16zUjOLeWuc8x
 0XAw==
X-Gm-Message-State: APjAAAUEonssyyhj3nYuq4GkA8qv2ylKY25dhZP8IMiPN1d+pF5NQyuM
 sba+EzWu03wn5VbzQzLtLq0mGMzRsyONqv1Ubl4=
X-Google-Smtp-Source: APXvYqyLdglBvA5azqE41oQ6/P+wJuoQqzv1gmvgl8pOyKv1FX2KnStTQwNTBWRxCdUkXCCfXmw+cXn4c4ssjYI5N3Y=
X-Received: by 2002:a50:fb96:: with SMTP id e22mr12160409edq.18.1578589941734; 
 Thu, 09 Jan 2020 09:12:21 -0800 (PST)
MIME-Version: 1.0
References: <1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com>
 <1578537045-23260-2-git-send-email-hanjie.lin@amlogic.com>
In-Reply-To: <1578537045-23260-2-git-send-email-hanjie.lin@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 9 Jan 2020 18:12:10 +0100
Message-ID: <CAFBinCDt97E4236obhm0GV58MtoC2qYAZbqPoJd8tyROGW4cvw@mail.gmail.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: phy: Add Amlogic A1 USB2 PHY Bindings
To: Hanjie Lin <hanjie.lin@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_091223_717681_23566E7A 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 devicetree@vger.kernel.org, Liang Yang <liang.yang@amlogic.com>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 9, 2020 at 3:30 AM Hanjie Lin <hanjie.lin@amlogic.com> wrote:
[...]
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: xtal_usb_phy
the "usb_phy" part of "xtal_usb_phy" seems redundant to me:
it's the XTAL clock input (this is what I'd expect as clock-name) of
the USB PHY (this is already part of the node name).
in addition to keeping the reset-names consistent (as Neil suggested)
please also use the same clock-names as G12


Thank you!
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
