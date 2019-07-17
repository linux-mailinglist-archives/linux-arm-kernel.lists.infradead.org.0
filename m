Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCD06B9D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:14:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHC5qWWJlPbOD1TnEiNnVC6SM2Pge4vTpI0eSfstbSQ=; b=WFTPCsLTz6qBoZ
	q2t44eziIZ4dBhuY9LvH8aHCkkM+ugF+zD54noON/Itw+hBVJtYHu4bjJT/m7aHJ1JVJVAWy0hwiK
	x7k8TmVEbYLfellKO5UFm4QQIwzV71KubC0svwZPYbni8jmPSTHOUHRwL+THtCDn6Hvk/rJxFCLEn
	o/MakCht8knEftvcmXtUaw5f5X+fysiIGOqfU2b4uUgiBz8azYMRYt5ARGlAR3zXylJQx3EIoTizr
	qDIR4K6nBGKb9+WAeDBYXnQWSXnbKtZcfGUnlEKOaSbsTH1Q8Or2WKTqf3JP4746XgvW0nFIKsFWp
	baedvcWi2yhLmwDSMEZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngwv-0001Ac-CU; Wed, 17 Jul 2019 10:14:13 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngwh-00019k-B3
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:14:00 +0000
Received: by mail-qk1-f194.google.com with SMTP id w190so16992887qkc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:13:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ydiSyI4VXzh3zwStu1DezvNmkPT/fY5oXBVsiFA5W2o=;
 b=Pb1Z+6kTUByNTjXZkeAn09mwE6XvHYUEdm2DNTUk8Uidf+ia81fxkUQnV2+AzeIOvB
 IeIoIyZhi3/Yf3zltrGDcMwQ0fPskY+ZU+davLWCoN666ky9EWDz6iFuwPU0H1AXvZ1m
 gK5rZyIwnfAnvkMFvCf5GSmKlIgFBJu+rcL+TQLUlGM+3ZxZMMaL7wjabgKF6n4ZCxhp
 8j08luIUNxcVw/2fcJzUKCPRcKEEKZ9ZYmvokSDW8p+0eGGH3DygkJSk7vcqHLNMu16Y
 ajXw2ml6r0N9WH0675i3kqoJF+oB1nHVxkjEwnTQmDUdXi5vQJ9qMgvc07OrjsXLmPkF
 YbkQ==
X-Gm-Message-State: APjAAAW5edxAMcS+Pqq8LdlGDGSU1xsuGuJQFljH2UB9ihOzAz6uh8rV
 aQUkr9OMf8omVmudFoAI8EG7mW/sMNA5cYdgAHA=
X-Google-Smtp-Source: APXvYqz74sf0zQMwIgSKx0dWLQuwU1Y+rjwpOBcH/2vc6J1LxldCUAQqB70LmnswEuy2Ve9BFykDlWeG3fM4zb5gMwE=
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr25818064qki.352.1563358438144; 
 Wed, 17 Jul 2019 03:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190717090438.31522-1-Anson.Huang@nxp.com>
In-Reply-To: <20190717090438.31522-1-Anson.Huang@nxp.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 17 Jul 2019 12:13:41 +0200
Message-ID: <CAK8P3a2nBkxk_qEQm7kT6pQtQXS1GECND_b1d-bEu09A_ttnyw@mail.gmail.com>
Subject: Re: [PATCH 1/2] char: hw_random: imx-rngc: use
 devm_platform_ioremap_resource() to simplify code
To: Anson Huang <Anson.Huang@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_031359_383943_82A9B0E2 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 gregkh <gregkh@linuxfoundation.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Richard Fontana <rfontana@redhat.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Matt Mackall <mpm@selenic.com>, Linux-imx@nxp.com,
 Thomas Gleixner <tglx@linutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 allison@lohutok.net, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 11:14 AM <Anson.Huang@nxp.com> wrote:
>
> From: Anson Huang <Anson.Huang@nxp.com>
>
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Both patches

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
