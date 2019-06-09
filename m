Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294503ABD5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 22:39:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8qPCpSOi1Y0It14QYXQpYgC7Jz0h5m+vA6JglzMdXk=; b=Nsfg4n+QMRWcO+
	kWPPPp1Ob0TK3q4ixXTHoT+zpZzAb+JwXcidLH2anwyeN7nVfZAm7TCKRXfZtIQxbgECd1wkF5+Ls
	paQnGEEsc5jfmgYMCMPzNIumIzD9ShU70xHn+kSVyWeHryAwgvNJx/x7mHf2ClMdPYCAxW1x/HDj7
	eQuc11CGqhz46Gh/HZb44eaAF2Jf7YO4HarPwdiokWVPU0USKGN09VDLzoasefoB8DEUFdpewJpba
	8IQg5soYFPYUspJXToxhnStpWJZqdWzLDxGDK2MLoCd4BWV4kIfJcpGU8acbx8wgeAAkzlzcGB78S
	DIhVPH7xnDUskem6Sbxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha4ac-00079g-E8; Sun, 09 Jun 2019 20:38:54 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha4aS-00077i-22; Sun, 09 Jun 2019 20:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aAgxuie2Hz2Ygvh1FvKs8sfXSa5TA6FHsD2v2BeNmlU=; b=loFZ3wg+RZyrJP5WO6P8HV8ypt
 gJzwviy22tCzfN56o6PocZ5VpSRqs864Mo6i6I+Uw8bhxw/vrbHap1giCG/rTkFt64tRsLPv8TE/L
 pPNZIwacKiE8RFy8kheg+N5BzbBM0mDbgETBoA9ACUsBkqJgg0bAHswXQXmQ2g7Xzl9k=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1ha4aC-0002PI-Ik; Sun, 09 Jun 2019 22:38:28 +0200
Date: Sun, 9 Jun 2019 22:38:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC next v1 2/5] gpio: of: parse stmmac PHY reset line specific
 active-low property
Message-ID: <20190609203828.GA8247@lunn.ch>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609180621.7607-3-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190609180621.7607-3-martin.blumenstingl@googlemail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_133844_255982_56D86492 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-gpio@vger.kernel.org, netdev@vger.kernel.org, linus.walleij@linaro.org,
 narmstrong@baylibre.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, joabreu@synopsys.com, khilman@baylibre.com,
 peppe.cavallaro@st.com, linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 09, 2019 at 08:06:18PM +0200, Martin Blumenstingl wrote:
> The stmmac driver currently ignores the GPIO flags which are passed via
> devicetree because it operates with legacy GPIO numbers instead of GPIO
> descriptors.

Hi Martin

I don't think this is the reason. I think historically stmmac messed
up and ignored the flags. There are a number of device tree blobs
which have the incorrect flag value, but since it was always ignored,
it did not matter. Then came along a board which really did need the
flag, but it was too late, it could not be enabled because too many
boards would break. So the hack was made, and snps,reset-active-low
was added.

Since snps,reset-active-low is a hack, it should not be in the
core. Please don't add it to gpiolib-of.c, keep it within stmmac
driver.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
