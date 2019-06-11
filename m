Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752AA3C830
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzgFLcXQI8GNtXnv42wQKIKMlhZTx7pbgKj8uNI4KSo=; b=CvjT1LZh0hpaQf
	vAgzjORvYE4Uo5vQaerlQLeyQUiHyWqVIrnneZCK+ok+ktk4vv0C4Ng2xodzm9wH0iIMrG8/MZbCl
	Lzb5PLO3xjoj+M5TM7g98NxbRoOjf07iuXKh1ZbCs/uXR7UYAI/dnaT2CEOgMrmVe/Y4TEL0tbF9M
	94tcxyuMYaE/YumpOa7eczMdWLEczAfiFAVAIm7Cqii1g9Uozn8Mq6rqpiU8MY7L6JPUhIqjnenUT
	BwVNEMnGJYOwP7qO8gdvw9O+CC5LXyiU1gvejSyOEGj27HJY8BPktM4xNmh9kt1m8GUeR3R7uGJQo
	ljf3roTL4ksUb7+5zg8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadiP-0004Pt-Mj; Tue, 11 Jun 2019 10:09:17 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadhz-0004Dn-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:08:53 +0000
Received: by mail-ed1-f65.google.com with SMTP id k8so19171601edr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:08:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=upToNZmU1lMq7es+5zXvEQjyTF1NnvLf1/9ORQaZ1DE=;
 b=fJV6oehLgFv2fNgORuvMis5QVkWZpDNQo0wWpadfMCcXf/QNkYlLeKAFjq0HiiWDTt
 bPywRuNFXXA4Z/25x+D0W6Cqc5qMq6ja4NfPOX4KwxersNUE3HBw13+15gnaaUB09r38
 NWDNFp3DF7hwbChd/47yXHaGPLNCavVvDgRmg8VUz5fW+TH1tZv7hKe8sbvv64Q35JsD
 OObTzlQQSJYuVODtcDBtRdact1XrCqfPdLLIf/+pJfqvGwvnzBf4rMOwXPDyGYMRSDtI
 f066dtmNUxaemhv+uJSvYa2k/jxMAzF+EQkFbc683zFWXibkJXVztDtLDH4eyl/qAXbg
 VvBw==
X-Gm-Message-State: APjAAAUr9j9h74J6EjH+JCVi5PrBatCMGgat0NuB+6DVt0Dr2XwQfZGs
 kV3a1aU9zB25E0isbM9ow+aYp+mYm8A=
X-Google-Smtp-Source: APXvYqxHJcVxRCQN2BKww5w9JGlf30EDcG0YLaQB8Cx5FE2qIrhvnIYnGy7HFgEkp0nbIa5i8IXJVQ==
X-Received: by 2002:a50:8a24:: with SMTP id i33mr44340888edi.118.1560247729118; 
 Tue, 11 Jun 2019 03:08:49 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id l6sm3403007edk.8.2019.06.11.03.08.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 03:08:47 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id x17so12295899wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 03:08:47 -0700 (PDT)
X-Received: by 2002:adf:fd01:: with SMTP id e1mr23640588wrr.167.1560247727247; 
 Tue, 11 Jun 2019 03:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <af3a342a6cba1dda27763c13093a8fc060946c1e.1560158667.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <af3a342a6cba1dda27763c13093a8fc060946c1e.1560158667.git-series.maxime.ripard@bootlin.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 11 Jun 2019 18:08:34 +0800
X-Gmail-Original-Message-ID: <CAGb2v66vKPeyvw56ROR-B=5Bzi7GVby1CXCjgQ5hnuUdPWX0cg@mail.gmail.com>
Message-ID: <CAGb2v66vKPeyvw56ROR-B=5Bzi7GVby1CXCjgQ5hnuUdPWX0cg@mail.gmail.com>
Subject: Re: [PATCH v2 11/11] ARM: dts: sunxi: Switch to the generic PHY
 properties
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_030851_734286_46E7A8AF 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 5:26 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The DWMAC specific properties to manage the PHY have been superseeded by
> the generic PHY properties. Let's move to it.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> This patch should go through arm-soc.
>
> Changes from v1:
>   - New patch
> ---
>  arch/arm/boot/dts/sun6i-a31-hummingbird.dts       |  6 +++---

Tested-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
