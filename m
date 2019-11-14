Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 921DAFBFBD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 06:34:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J0uxDP4ZaXDLTLib4cbOaViQDV1M8ihx1VtR+rkIF3Q=; b=SC19fmTtWoGNu6
	vs/+YeCSP5QUl9xZS7s2dwgOnMtdkl4gyE2wp5jMQwlS4CmmekwU+C2yoyaglQTDwveDUCi/JerZN
	SdGK7kq7aDJUC3lAKXDbkLu3tCcXu8+FedgOBj1VhK83yzKZ4p/OP4Ah5OhfpKB9uklMVAA2puR0s
	82zl/LHZj7aPHEkhGH7OhpkpomhUz/CpiOd4ENq5nW2NhnWv3kf53tyCMxT1kQpSBCfBSInOE/jr+
	O2i4EJ8kSGqRX0KPswvaP876BrGf4oP/0mgEhOTC1vUacDfRc9EEmza2Y2boO0RT0+SmSdJ5IDQkM
	t5VG7AVvYIiMJEOhYwAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7lv-0001tL-BY; Thu, 14 Nov 2019 05:34:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7ln-0001sp-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 05:34:16 +0000
Received: by mail-pl1-x643.google.com with SMTP id o9so2103401plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 21:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WnPnwB7+tEaKVjCeEYFNQsf68FzMqh6+Atc4G5a3DV4=;
 b=dZ1o3iwZaKoXYDcRarBQMQQIbKGvT1/uZMV5QvrQzNLfSdAlLK+2QdPZBIew6mpaIY
 ruDLhVoQIQuzH9BzmKaFISKbu7tXlHil6mvxPX4h193BiRyUDIVhoOwxo9Ms1DSYFAMz
 Qfl9hiELr7/Vdh03dNvG13EPY6DxW7wQWCYyv9z7WmLmSyPZeOqi4526TduGbdAn2yc4
 rvMg1Q59MQrClfg07Gi843S3HAFvF0RDhFgagkoOhYQmSmWun4jIJJb24rEQjAn5+Gjs
 vTmpmTYRiv7Cd6qupBYjpBhwIKYiuoDVbs07gtDUFF+f2LDw3LtSWjIplL1VUpkjSt4W
 Od3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WnPnwB7+tEaKVjCeEYFNQsf68FzMqh6+Atc4G5a3DV4=;
 b=gWCHhkr+qduZI04xYukF8dIwgis1T4AGbnGvhb4BAn1jKxkpYI15pf40PP61EGwMVB
 7p7xHCcsWo+BLN6wjphRtt4kt7VOtEig5n9SGEL2m35LSF0JLfvTSYyMr+ZnURpBOy0i
 1dTq9ThalVkY3hj8C4/mwf3/eyFirk4Nbp73rFd0kzOQfFUmMB9QmFtIgiJTE/D2zm/0
 ta5wPFNBvn/h1LOoV1lo325eEV0QyjKFGBjyVpUClEfTKE37K0y9Uv4n/pCL+ttlolz+
 T++7iNU2kl4hBVP2f5ZbZDKydxOXd6gM99HiT92b7+JfYLv9I1lDUhMxnh7UF6xsWnLv
 OQKg==
X-Gm-Message-State: APjAAAWOHOXtD214xJuOc8cd6s/x3fXGeqZQeelqDmJW0xCkQjyJBmIc
 YXy6qJlW7m1fzy7rwpPdQewn
X-Google-Smtp-Source: APXvYqyBGC15lugybXpYqMOdeznxM2kQyrl4gUr+Lq6xXQOeIbhXd1uM0KupL0ilL7lwC4fL9OOk9Q==
X-Received: by 2002:a17:902:6bc3:: with SMTP id
 m3mr7529922plt.329.1573709654189; 
 Wed, 13 Nov 2019 21:34:14 -0800 (PST)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id a16sm4520474pfc.56.2019.11.13.21.34.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 13 Nov 2019 21:34:12 -0800 (PST)
Date: Thu, 14 Nov 2019 11:04:04 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 0/7] Add Bitmain BM1880 clock driver
Message-ID: <20191114053404.GA8459@mani>
References: <20191026110253.18426-1-manivannan.sadhasivam@linaro.org>
 <20191113222116.E5E9B206E3@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113222116.E5E9B206E3@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_213415_627620_9AEA6D96 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 02:21:15PM -0800, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-10-26 04:02:46)
> > Hello,
> > 
> > This patchset adds common clock driver for Bitmain BM1880 SoC clock
> > controller. The clock controller consists of gate, divider, mux
> > and pll clocks with different compositions. Hence, the driver uses
> > composite clock structure in place where multiple clocking units are
> > combined together.
> > 
> > This patchset also removes UART fixed clock and sources clocks from clock
> > controller for Sophon Edge board where the driver has been validated.
> > 
> 
> Are you waiting for review here? I see some kbuild reports so I assumed
> you would fix and resend.

I'll fix it but I was expecting some review from you so that I can send the
next revision incorporating all comments.

Thanks,
Mani

> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
