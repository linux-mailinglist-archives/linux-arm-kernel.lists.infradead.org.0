Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62111EC123
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 11:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvozw4fuKzshZmEH4vuYDcs8289C3VP0CxwWiuunUbo=; b=KrfHbb4ZOEQGH6
	vD0pqFbcLF78Lxd9mVhi6NSibmBlyTejiSDGT7Oib+pbWfazfvBfYIWfKE7mXh5zX/zjIN3YAlkbl
	86ksyw7A7towvFFMEYuYv323n/uMPn9y/9Tv2YJK9djIMxdJc8AnL5MDryV6btHRn9cb9BH96mMO5
	DTn5zRk90fb1p0iOjjZ+fS26T9U9irku/GZR1tOBJwUWnOUzRxS5eaD0THYuNRLA3KsRiUd338m1z
	WtNYbFRox6xLFBShH0idp0650Xm6GkeoOhB/9vS8rBG840ZSr/vRXpNwVdn9K5uTqd3aUqft+I86g
	5vWb0aTR+tAtweuktL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQTuv-0003nt-8M; Fri, 01 Nov 2019 10:12:29 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQTup-0003nO-Hb
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 10:12:24 +0000
Received: by mail-qk1-x741.google.com with SMTP id m16so9770098qki.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 03:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ND8y/KAJEHxe8vYu6nFNiGmvLZloLNx/Qhcmj2riyfs=;
 b=DrBwmdA2hyuypUMdqsxgKAPOBwvzb/c3z7uksP87rq82GzxeMEHhvZFCbdACHdfw8N
 vjkd6BctJNzkmDNGqy5YoXmnCNryXR+Cq3mWpEqQz0/vV6JZZg/cExsisJWSnJ5c3vig
 rwnuKfQ2s4VZLHbJovbnP2amAl6xDURhPW/7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ND8y/KAJEHxe8vYu6nFNiGmvLZloLNx/Qhcmj2riyfs=;
 b=rF6RL+fD1gs10nSxjkk/Vg6VcunbWswhW451Sk1One05fbIBOLnvVnsWI7Edfja5Nk
 IdICySZwX5iIhFgPJtcz7f/eqPn+F1uCESMXeEtAvFWrq7tKXeHiPEwM7FOy+GUFBX2w
 TeShxo4Q67FGT5NGYXJ9nJHmOjSCn3LoMiJdvtPVdWMD14z3Y5LLCJvnM78PUgXlJtcK
 MOyPxNYaI7DlSb8UEGKGDyc8KBeciEYLGmu8u7w73G0GbifTJNaCiqiIqyYmHa5xYyu/
 UTKjHk/j8XV7LIqbgo/29Ysz0cTJKrHS6L2mA0lq+lmYjuLhVTEvJAhqx54R6dKhjc8H
 iImw==
X-Gm-Message-State: APjAAAX56jZ4xoqWMImtpnj0mlK2UJch4QjKt+TFKlC6B/F0i0Wdd2/+
 JsRa1ZpeXOm1ghOx1e22gh2DigbM4n5Lq8fU3RQ=
X-Google-Smtp-Source: APXvYqwoU1k7FEmT61Ivo0VZaveC+nWADRFHlsA0BlwLNyI+e6RuAdTXAbMLTDbS33RCVwVgM/jm6sohxZSvu01ohA8=
X-Received: by 2002:a37:5fc1:: with SMTP id t184mr2349520qkb.171.1572603142333; 
 Fri, 01 Nov 2019 03:12:22 -0700 (PDT)
MIME-Version: 1.0
References: <20191021194820.293556-1-taoren@fb.com>
 <20191021194820.293556-2-taoren@fb.com>
In-Reply-To: <20191021194820.293556-2-taoren@fb.com>
From: Joel Stanley <joel@jms.id.au>
Date: Fri, 1 Nov 2019 10:12:10 +0000
Message-ID: <CACPK8XfebA9PcpyWkofCJ5fAZ9ddUjQ4ZeCf73KXb51+k_+N1Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: dts: aspeed: add dtsi for Facebook AST2500
 Network BMCs
To: Tao Ren <taoren@fb.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_031223_582522_63815AAC 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 at 19:49, Tao Ren <taoren@fb.com> wrote:
>
> Introduce "facebook-netbmc-ast2500-common.dtsi" which is included by all
> Facebook AST2500 Network BMC platforms. The major purpose is to minimize
> duplicated device entries cross Facebook Network BMC dts files.
>

> +
> +&mac1 {
> +       status = "okay";
> +       no-hw-checksum;

Was this included to work around the IPv6 issue that Benh recently fixed?

If you can test your platform with
88824e3bf29a2fcacfd9ebbfe03063649f0f3254 applied and the
no-hw-checksum property removed, please send a follow up to remove
this property.

It's not doing any harm, but by cleaning it up there's less chance
others blindly copy the same thing.

Thanks,

Joel

> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
