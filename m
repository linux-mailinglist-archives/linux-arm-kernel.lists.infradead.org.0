Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989CD802A7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/chUTU7f3lHXLbKs1icVv6Yww0PVjgDofvffJ9T/98=; b=ZFD7YRMPA0dB8B
	/c+3LqTHaJRbGdhjq2u2RyMCkv0ZOZ4ycCJCFmfhtAMVxK9T88DXGToootYK7mE+1g4/d6oJWxOkb
	6VhIkjEhEVWnUX4DwIbtIGjMC6v2XJJBdxffKe7qkcP86pN5g3RrVbU7ONGqwj8J/IPFS9uFLsrpn
	l9ipoQB/FKo3TH648B6Yq910w9hRlumtLDWgtSO5pVkTJWbw+Bel6KkVQZhe5WoPYNAsM+iU3ge0i
	fnTPGLdMHg4zZdEXLARSClAhciMUK0+RxmKevKl2v70k8JVr0IUtpMQ1Mh3nkiUD55EVAimPuu9TH
	MyZPFF/RRryppnQlA1PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htfuS-0001NI-0w; Fri, 02 Aug 2019 22:20:24 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htfuG-0001Mz-5I
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 22:20:13 +0000
Received: by mail-lj1-x241.google.com with SMTP id d24so74198641ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 02 Aug 2019 15:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IZ48FMZQTs4uLcOa+ewd+uatrSZkDn8qdysdEWbOPPM=;
 b=c11DsE6xhXFUkGZOKxS0st145dWqvewhcd3fQlz6reUM8JMeFAhgV6u4i+TozRJvOo
 sKH5UKHncsWaB2Xjfz8zRmJm8YpIFS1WpghI8V66dbRbM/YCMrbRdoOOGFjkAw2VUDd4
 XeMVfXUsMg2le9LZ2rOUIV+hapnOY1oM85zlQapDge4ELyVgXchMO4Mc74KZbF1gXQRw
 CqbrPqC0Tx7XdvggiEfEoGga6UZEwaZsbj3bN4hJ7QMGjvdm5rhbcl77SyloCyw7b5BN
 SODi1TlVZcC/IVLwZydxi5Vx7TJZ2gKURa+2D9HfIPnftiW4ftpjrvsCVhZinnnEtmf8
 s7OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IZ48FMZQTs4uLcOa+ewd+uatrSZkDn8qdysdEWbOPPM=;
 b=gkL92icFXNSQ5AI6vIxElwDpy0bZUySoO8a+HTaSURRd9F/O2geWIFpMPOXGaoaIx9
 YO+Rmtn4x2xAwwAcHqkR7ZaWGJd+aiekXWl26WkyQgmwBrgNakgCsAXObQ6+sSAFW53E
 E+omSjlM0f3hE5aWVP6AmMncKIH+m+8PZ5S6RPrrAGPcjSln7kw9dwaPXcCwgtcTuzD1
 QaeQI8b2sq3WAXU+xcXa+Jnswq6Zx1uqa1sgyGTHyo03JgcnUnNXJ2EjJu62MpgyBTEI
 B56DH/gZb1ncwOpJTFxDQvvxNfYKsux4QLr2wuznkvH3OKYuxFO7qm7kqxIIOQhvqOoG
 M/gg==
X-Gm-Message-State: APjAAAVm4S/HC1zw+bK9X0Z6QFZ2dgrKwUzyVUh3lqg/I/LXepg0hu8n
 0rVHWsCFHzqQb1j0WLaW12udYfsnwj7uG2UtRVlZXw==
X-Google-Smtp-Source: APXvYqzlGf0tKCzKwDLVMNReMvQcDY2AOLHnYQ7fYCG4kMKmoHKNejXmOFBQGqIQflfBg5mRKfTF8g1MtfHSnrhNYSs=
X-Received: by 2002:a2e:8756:: with SMTP id q22mr73630699ljj.108.1564784410398; 
 Fri, 02 Aug 2019 15:20:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190718094902.15562-1-hui.song_1@nxp.com>
 <20190718094902.15562-2-hui.song_1@nxp.com>
In-Reply-To: <20190718094902.15562-2-hui.song_1@nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 3 Aug 2019 00:19:59 +0200
Message-ID: <CACRpkdYRg8mMe5yxu=+tC1uz_usyNyVjn7NFobSUZi0rR5uGjw@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: mpc8xxx: Add ls1028a device specify function.
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_152012_207581_1EC8645B 
X-CRM114-Status: UNSURE (   9.42  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 11:58 AM Hui Song <hui.song_1@nxp.com> wrote:

> From: Song Hui <hui.song_1@nxp.com>
>
> There is a device specify register(named GPIO_IBE)
> on ls1028a need to enable in initial stage.
>
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Patch applied.

As noted on patch 1/2, send a separate patch to add the
device tree bindings in Documentation/devicetree/bindings/gpio/gpio-mpc8xxx.txt

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
