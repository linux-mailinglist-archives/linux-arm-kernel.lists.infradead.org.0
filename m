Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C8A1A9296
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 07:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rjuUG/+v2xO9ot4pcYPMXu9A91AFb2kfVlLqQuMK+rQ=; b=qT5NPg9bTQPFrY
	VfS3pfdAUJcozDhC4AlJz/hF5VnIi0MmCYMFW21KzjxsII14EKFuF2S9N8N8NRJF6CrZM7IoXuu6q
	JtTQ5Llng7rn2fF+Kt/EBaOVie1qyKcYs0Hi7g92KRPmYGXxk1ZjtHWM5vvciagM+9zfXFyacSSC1
	YqvppOkYOx5lLaTJpGObEVoSxJ8Cpd0OXOqDZWu/HMBmdQWPVcMYd9nIiKoP+Fm2fujr8PGLJUNr5
	TNM7r+5NIfi74vG8s4qvKSzAnkuwMzezkzW7FbJBxEKR9M60oPDwQdqc4CxOUX3fWW0D8ITTTo9DW
	Rtj3xjxZ95wR7hlcKfTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOaoJ-0001Rn-MO; Wed, 15 Apr 2020 05:42:07 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOaoC-0001RH-U1
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 05:42:02 +0000
Received: by mail-ed1-f68.google.com with SMTP id s10so3049507edy.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 22:41:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8GnTx0izeYvyDZyS+vHAcMDpC99flKBZNWxhXwvZUWs=;
 b=ukV4RFUllpyspfZalyKUVJSmngIF1cELOdAWI8bHRsNBJZMc8dErB4WV+4zT+KW+WK
 stTSyKjZ/ugZMcWGAzxWmyVE6/aMNWgGyLhjIkc7grR3lT5TBqJqVeG6+uR4sILe4Yt6
 KgFMBTz2OkmieiHn+85sr9icthsCnjhcqFgRYzDTwY7ip8opmGplO57SLqQKle2WyIZr
 QPG1EqHEzDtxQ3gNxGD4nebQTP4yJOY3socU+YbFKBRy14eK7IM/5uFv/b6Fb1fJhavK
 ihDaMDfLyOoiKrX0GZ+PG0yQ/E1l0aTlyMWjhsXQm2Xd3ewkno1EywjOP1FkhbX1srDJ
 skAg==
X-Gm-Message-State: AGi0PuZriyUKIi0M5Bl8r7ac3CNRxXdDxd+Nv4Wq7cUzTyUV3FWDNYq7
 F2KQNfq0Z/GzOeODv54ruhsTI7N+h2o=
X-Google-Smtp-Source: APiQypLYCU0tfSXsrrgHnVVmKkTSj+0D1OcKiV9kQHMFJ/gXMLeP7IAlK1vNGcZn4gtxynJnN0+uhw==
X-Received: by 2002:a17:906:9706:: with SMTP id
 k6mr3499004ejx.103.1586929317809; 
 Tue, 14 Apr 2020 22:41:57 -0700 (PDT)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id mj1sm929007ejb.6.2020.04.14.22.41.57
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 22:41:57 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id b11so6162866wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 22:41:57 -0700 (PDT)
X-Received: by 2002:a5d:65d2:: with SMTP id e18mr19082552wrw.104.1586929316945; 
 Tue, 14 Apr 2020 22:41:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200414223952.5886-1-f.fainelli@gmail.com>
In-Reply-To: <20200414223952.5886-1-f.fainelli@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 15 Apr 2020 13:41:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v65XwJ30_g1qf5a=1LR63BZ=DEq0qG9GQae0YuZfH1C79g@mail.gmail.com>
Message-ID: <CAGb2v65XwJ30_g1qf5a=1LR63BZ=DEq0qG9GQae0YuZfH1C79g@mail.gmail.com>
Subject: Re: [PATCH net] net: stmmac: dwmac-sunxi: Provide TX and RX fifo sizes
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_224200_966971_D8F660F0 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, netdev <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>, Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, olteanv@gmail.com,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 6:40 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> After commit bfcb813203e619a8960a819bf533ad2a108d8105 ("net: dsa:
> configure the MTU for switch ports") my Lamobo R1 platform which uses
> an allwinner,sun7i-a20-gmac compatible Ethernet MAC started to fail
> by rejecting a MTU of 1536. The reason for that is that the DMA
> capabilities are not readable on this version of the IP, and there
> is also no 'tx-fifo-depth' property being provided in Device Tree. The
> property is documented as optional, and is not provided.
>
> Chen-Yu indicated that the FIFO sizes are 4KB for TX and 16KB for RX, so
> provide these values through platform data as an immediate fix until
> various Device Tree sources get updated accordingly.
>
> Fixes: eaf4fac47807 ("net: stmmac: Do not accept invalid MTU values")
> Suggested-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
