Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D883B2DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJtzgjiqWjrWiNFD9exs1NCa4GYmZEOcOj1x0Kw+wL0=; b=WXewkZ6v90G1AB
	ARchI4t49PeuNssxMlqgjGil2b5eh254sjqLnErWWik53zmiThl6uVpYBBmxrvcfE7e7TbVGLo3rI
	zPjz+O8vdpCj2nx/9ESCPMYPM91sLV3f0b5hN+h9rOeutVu8Skd+ibU+5+2QfiQN26BWDZE+pB0Ra
	gbvjiLDrPAfMw5pOJ2ABaM+rluRDUP3kFjKBIHNnxr52exIlL2rPtBn5Y+48Z0YGxAT1cGzBMszHC
	npy5oeyiLk8tUBnqM/T4KvIdrpK+rp1pSQwcqoHGz7l9f+YjeYqL6xta0mOUHyJpMID6SRCp0WPGj
	HSoqkjt1j77Xz3S+aFJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHP5-0000zC-O4; Mon, 10 Jun 2019 10:19:51 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHOb-0000m5-JQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:19:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id x15so5057208pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 03:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xl6v5F/D3VxC6oJtpVMTcWPj1WSUBStBszKQqnRd45o=;
 b=Zxke5XTXYzZ1WpIKENuUCvQiJugmF6xmPmbVa+fQbXPRt5NLXE3XHZUNoUGyv8aLFk
 0rjG9L8UqFlU/U4gpMjRlgJ8X3nE6ri7wGy68f6iQ0YzmFvk4qUWjWrM+LidoPGkcYmC
 PQ9xxtOgJlxOvxLQsHD98QnhH9k+vQEifhuGZEw6YF5JG7SxcgV9Yrm+JHUTnexYbwAF
 kXuHYrgJkBfViN9xWMijKskkhxv4JJjHTYC543USXdVVRRCXXHLpuHefM1TguMusR2yy
 vc20X6vM3jkm2bt3gBKV0pla8vMhrOsmoUlAB2tkbEgoAhTb/u7PiuuxS5EVmWSF1W4W
 /vug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xl6v5F/D3VxC6oJtpVMTcWPj1WSUBStBszKQqnRd45o=;
 b=iqZoWA7ZL3LMxaLZGOC7swT58j2OABG71e2AjSVpf09U4shj4dAsSDwYziCUZGK/va
 kJAwlz1yPtVT9T4UA2Qh4b8kewikcRYluYZ5HZtQSw69hDc6w6Sm9fsnGVREwpJ02aSN
 EROkxvy97TFPF4g4NNJz0F+1HAYvADrB2fGdMbW54cb+n76txazCzFHRqG6O+/GVzv19
 bn8dLIpFMgq4po6vF24ncto1/vN6+P4N9O4VpA/6VepuEmc4MINN+Iz5HpXU0CLz9f0U
 zLodF3uFMhBXEffxoRvEjeWHPO9zYFNAi0A41ywom0BEljARXtrrkP0OxyUzG/6leY1p
 6NRg==
X-Gm-Message-State: APjAAAVHXcqQ9NiooEArSzNWDvvZs346T6vATweP+mg39ZN5Lb8zN0P7
 jxyE2HBAU52uBGcpBOvlEqliJQ==
X-Google-Smtp-Source: APXvYqz3SI+6kD/ZaeTpbKZtNgBi0rdKkLPqyJFXIcZSqv4cqHNVPe2yimUvsPw0UUlmdDCXEymP1A==
X-Received: by 2002:a65:6495:: with SMTP id e21mr993356pgv.383.1560161960609; 
 Mon, 10 Jun 2019 03:19:20 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id f186sm13630525pfb.5.2019.06.10.03.19.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 03:19:19 -0700 (PDT)
Date: Mon, 10 Jun 2019 15:49:18 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>
Subject: Re: [PATCH] clk: mvebu: armada-37xx-periph: Fix initialization for
 cpu clocks
Message-ID: <20190610101918.sypafywc6fn4jsbo@vireshk-i7>
References: <20190314134428.GA24768@apalos> <874l85v8p6.fsf@FE-laptop>
 <20190318112844.GA1708@apalos> <87h8c0s955.fsf@FE-laptop>
 <20190318122113.GA4834@apalos>
 <20190424093015.rcr5auamfccxf6ei@vireshk-i7>
 <20190425123303.GA12659@apalos>
 <20190520112042.mpamnabxpwciih5m@vireshk-i7>
 <20190522070341.GA32613@apalos>
 <20190522070614.jhpo7nqrxinmlbcs@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522070614.jhpo7nqrxinmlbcs@vireshk-i7>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_031921_664077_5FF7FFEF 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Christian Neubert <christian.neubert.86@gmail.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?utf-8?Q?Miqu=C3=A8l?= Raynal <miquel.raynal@bootlin.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-05-19, 12:36, Viresh Kumar wrote:
> On 22-05-19, 10:03, Ilias Apalodimas wrote:
> > Hi Viresh, Gregory
> > On Mon, May 20, 2019 at 04:50:42PM +0530, Viresh Kumar wrote:
> > > On 25-04-19, 15:33, Ilias Apalodimas wrote:
> > > > Hi Viresh,
> > > > 
> > > > > > > Also, during this week-end, Christian suggested that the issue might
> > > > > > > come from the AVS support.
> > > > > > > 
> > > > > > > Could you disable it and check you still have the issue?
> > > > > > > 
> > > > > > > For this, you just have to remove the avs node in
> > > > > > > arch/arm64/boot/dts/marvell/armada-37xx.dtsi and rebuild the dtb.
> > > > > > Sure. You'll have to wait for a week though. Currently on a trip. I'll run that
> > > > > >  once i return
> > > > > 
> > > > > @Ilias: Can you please try this now and confirm to Gregory ?
> > > > I am more overloaded than usual and totally forgot about this. Apologies.
> > > > I'll try finding some time and do this.
> > > 
> > > Ping Ilias.
> > Sorry for the huge delay. 
> > Applying this patch and removing tha 'avs' node from
> > arch/arm64/boot/dts/marvell/armada-37xx.dtsi seems to work.
> > Changing between governors does not freeze the board any more. I haven't checked
> > the actual impact on the CPU speed but the values on 
> > /sys/devices/system/cpu/cpufreq/policy0/scaling_governor are correct
> 
> Thanks for testing it out. Lets see what Gregory has to say now.

@Gregory: Do you have any further advice for Ilias ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
