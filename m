Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C3F185629
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 19:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJ7JEJDRA45DrU+O4F9kvBy29G2cHn57zp7RRunsfB4=; b=UsohXnTxriM8R6
	ebdF7dstW8Jy5JKqYDzF3XfSwsoYLLhnRbqkkjQyG9rdCFqm2XK3xKsgiybjk0L8fgM25//ZG/FCg
	Pj8eDiWlsSCSMcFjlLR317prHjSqQkR0Snv7UVova9x1/e199jCQWjz5O1Y2wz+eZvyD4I4U6WlNA
	ImSFPBuuc9k70BcdvAPSeHxDLPbew+xSa6HsBEkP0cqXYtEGoN0flPTBmhMWpCvQOoHz9mTDxqH8B
	HnyoY7O4v/m0/zh9w31jnZpIiDKlUwIYAn/4UPe2skG8b57X0Og0V9x8vnuRmD0glyO9KxK5wnmms
	4DKb7QsmS6llBkKGQx+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDBOa-0001LY-5C; Sat, 14 Mar 2020 18:20:24 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDBOR-0001L5-LP
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 18:20:18 +0000
Received: by mail-ed1-f65.google.com with SMTP id dc19so16438121edb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 11:20:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IGvteHNkCAAe9RzBu1B2j4q+4lEY8L8k3NmOvCcX8OE=;
 b=OlEJtfJWq3daAGQ7EOm2oboEonjvwF6eCBxqytI9uzMPp8StclgviGOj09F6VxKu5x
 FTaseuRtnEnmTTtD7uJeDgqLGQrdlKerEaLkNFnQT76gBbEowBP19MvEIgNXhl+1DA92
 Pf2SeZQQFEMaAPblY5EciQ+hr+K8p7qK3Vnuo0OFl2ZR+/+p1LtqPBL8lbw11XFRxuFN
 k95/ua8tLbdHmKTuWTUXjMz2Is/8emZAk/4Wl8k04SU2NS0g2VjGChZm0xSmWIKMHsoh
 tu2zEf8e0Xs8wBcgCorAkt8CqnLfKZoiBpPhfaC1GE/ec/OqPen7N+ZOJjcqQz2Emg2x
 MLOQ==
X-Gm-Message-State: ANhLgQ2IZKc7mC0S9v3C0Osn7CEnZyfz74cCJs2UAZ7n/QlLoqLLbj3T
 hBKAjiHiU9pWN2/JREpoHuE=
X-Google-Smtp-Source: ADFU+vvqta4B+r9p/W0zTELooOA9Cc7fWz4UD77LqxM6UYcl+Sd+u1u4HEDyOkSEfBTCw7OTPTESnQ==
X-Received: by 2002:a50:d657:: with SMTP id c23mr19074934edj.18.1584210014117; 
 Sat, 14 Mar 2020 11:20:14 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id n6sm2172656ejy.23.2020.03.14.11.20.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Mar 2020 11:20:13 -0700 (PDT)
Date: Sat, 14 Mar 2020 19:20:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 2/5] ARM: dts: exynos: Add missing usbdrd3 suspend clk
Message-ID: <20200314182010.GB17580@kozik-lap>
References: <20200310194854.831-1-linux.amoon@gmail.com>
 <20200310194854.831-3-linux.amoon@gmail.com>
 <CANAwSgR4fJK0uVANv-x-=iSL_hAKD8kvazACUsY9Meu5xonuqQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgR4fJK0uVANv-x-=iSL_hAKD8kvazACUsY9Meu5xonuqQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_112015_704211_6CDEE5C9 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Felipe Balbi <balbi@kernel.org>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 07:02:33PM +0530, Anand Moon wrote:
> Hi Krzysztof,
> 
> On Wed, 11 Mar 2020 at 01:19, Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > Add new compatible strings for USBDRD3 for adding missing
> > suspend clk, exynos5422 usbdrd3 support two clk USBD300 and
> > SCLK_USBD300, so add missing suspemd_clk for Exynos542x DWC3 nodes.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> 
> My assumption based on the FSYS clock source diagram below was bit wrong.
> [0] https://imgur.com/gallery/zAiBoyh
> 
> And again re-looking into the driver source code, it turn out their
> are *6 clock*
> Here is the correct mapping as per the Exynos5420 clock driver.
> 
> USB-(phy@12100000)
> |___________________CLK_SCLK_USBD300
> |___________________CLK_SCLK_USBPHY300
> 
> USB-(phy@12500000)
> |___________________CLK_SCLK_USBD301
> |___________________CLK_SCLK_USBPHY301
> 
> USB-(dwc3@12000000)
> |___________________CLK_USBD300
> USB-(dwc3@12400000)
> |___________________CLK_USBD301
> 
> Note: As per Exynos 5422 user manual, There are some more USB CLK
> configuration missing in GATE_IP_FSYS. So we could enable another dwc3 clk,
> If needed I would like too add this missing clk code and enable this
> clk for dwc3 driver.
> 
> For some reason we already use CLK_USBD300 and CLK_USBD301
> for PHY nodes, which lead to this confusion. So we need to update PHY clock
> CLK_USBD300 with CLK_SCLK_USBD300 and clock CLK_USBD301 with CLK_SCLK_USBD301.
> 
> Please share your thought on linking PHY nodes above and add new DWC3 clock
> and enable this clock.

The real clock topology of Exynos5422 is not properly reflected in the
kernel. However cleaning this up is quite big task.


Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
