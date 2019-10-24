Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59157E31C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9eOFy9yV7zEWSnBvLaq5JzBxkmKgadYVmCn56XL/TI=; b=DAmcO9zeEbsIuz
	tg0nlmDN23gtW6mjLKE7RiJJnEI/m4U339NNOKG59m672OH20HsARp7Pje9sPGkOhDKS5r8JDzTxx
	XVn30inzfQPNahpYYbCx3KJw6UZJcg3hrEYHAEgWIhUSp9h8QWfZjEvpo+hsWAm8bur3sLffJFKZM
	6o6dtxIOvERmNMHlRh5kBX3xDSejPO314Idy8usY9uJG6nSxflCNa3JjTJwYiz/tXRK8onJthKr+5
	kNNRPhwwTgilEFHKe57DzBAxMIwnS7OnmKAkP/u+ndcWdXvyCAkabdI6qOn3IfxjEJ8wz6Ac+x9vx
	Okkks4JOhcOGdGFFY6tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNbri-00019P-5Y; Thu, 24 Oct 2019 12:05:18 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNbrC-0000uz-1c
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:04:47 +0000
Received: by mail-vs1-xe41.google.com with SMTP id v10so16036089vsc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 05:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sK0pWvTCky33QCYiFA2nfCFulsVEzPP8ouWQMoNEYbQ=;
 b=X77JQu2M74j32zRnCvWFx0hX8hm5QE9BLD7tdFlihPqR5QsbcspBUaPz9+ocTDD3Xk
 CaMVHrQioNbYE5wdY85fJgXy51TlkFVvpkjMkS0J2osnWORTeIKW4AHxz1wLR+lqiYbr
 2qWoPxAm9njrO/Se9XRbowj8pJ0UjCx0gmpmyS5rq3pAiyKm66fDpurQV1l8Q/XOq7CE
 gMEsEgIe33ihcHLvqE3a4UCQk0UodbnovvCttQb6FlDk8QzrESZTd3cHxmfMl7ZlhBmm
 ZStu/9Y36ikZ0TlP2kr3enmD087wd1WAokylvvKRtK8acsp/kLwLQ2KUHgTopIhDtv7k
 qI8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sK0pWvTCky33QCYiFA2nfCFulsVEzPP8ouWQMoNEYbQ=;
 b=tcFBHi3A1dyBzJYrju2DHVw3LoAoCM7i+G7kPSrPUiWJSR6JHBLwpkZJkxS2c0hirA
 tq8WO3OwUJIpLilfj3lCeS7bRvGv/JuoVSjFIktMO+52Ls44N9igI0NeASzcLjjsIQ/d
 7t9jyLlNbyOP0b7JpEcTdSIcmyreFEKG967cwVO2euiwRGIMJ8dFlvdBLHesfGays89M
 CnPaNwq2aELpB34K127FgDiR+XcK2YeWKjGnFNOeHp39RvLdS8Hen6/O3w8O3FIR1Lc4
 tYBqD/5sucjwzNuVQ1BlIL0V7/XTo+aVa+HhtfuAIFioZJj5IVoO2433IxvAKgOF1YX5
 wBgQ==
X-Gm-Message-State: APjAAAUht/2wISY+rTPgNTdLflP384FB7b/jFF8ZdsojGb39L5pi4JCd
 x8hFuuJOaI/fEjPkFmBkMpA03Tcd2KLzyZLYMQYy2w==
X-Google-Smtp-Source: APXvYqzfB6++WoSRmQXkMK1uRnAw/CGlvAz3yUOrxP/5OG3nCHbkCQk9VVZg71JFiCROWtuW1HxxnC7HzkTd4MEDx2s=
X-Received: by 2002:a67:fe42:: with SMTP id m2mr8848686vsr.67.1571918684479;
 Thu, 24 Oct 2019 05:04:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191016141217.21520-1-yuehaibing@huawei.com>
In-Reply-To: <20191016141217.21520-1-yuehaibing@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Oct 2019 14:04:33 +0200
Message-ID: <CACRpkdYhVExyh2L9A7Fm7y7khCV9wrneKhtMsntWL5DFAaGrug@mail.gmail.com>
Subject: Re: [PATCH -next] pinctrl: mvebu: use devm_platform_ioremap_resource()
 to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_050446_091417_E6CE74C7 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 4:13 PM YueHaibing <yuehaibing@huawei.com> wrote:

> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
