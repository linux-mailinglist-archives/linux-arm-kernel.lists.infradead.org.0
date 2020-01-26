Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C0E149D10
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 22:32:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FANArRz9ZGStW0XiPJU0IbNb2XisZ3MZlm2Q+pGn0PU=; b=Km/OB3EVRrcU6c
	LCTT5ijKlqlBBkljiWK9NJR6ATNmTdz4rfNZcL7muLtpLoiHX1K6hgTjw2eKap4LoRtHSdqaQZgfd
	5NPJf6UHhgMwnl2EMcOAUCKlXiAiA4KaB6Y4SbZzpw5Sg3m/YidPbrVAeqEgosk5Deh2VeAXx1K7i
	YuxGjJ15eQW8E1874Fylnn8iwDO7JOsyZGLW+PLShpaK2AstauvdOA6tR41U/FWsbtC+2SesPlqov
	4y98EbFZRwbBwD5aYBO5/e4DBMTojOw56b7jhhJz/mwi64uGqorGJYcnVjmilmgLw7mDYG0fzZWu7
	L3QRRW3insoxStS+XjHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivpVu-0002tb-Qv; Sun, 26 Jan 2020 21:32:14 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivpVm-0002su-DM
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 21:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1V/T5meEi3lp3z9WtoLHDUqZu/jNnEZKliaVuzu3WMM=; b=oo8PF+bcZDKwZUU4Gc3isibiH3
 gruAkIn/CqkWJ3iGuW1cJfza2HSZcio2fNurZ2ggH/Y44++Cs7IJI9yH2UIsCBoQuC0jBCbXcR05H
 k3xmztiD0K/w3+Q1leuVi2b3zWJpICSkQX2y2et9vuDfoTeuwPZNM7j7EL1NerCYrf5E=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ivpVd-00032o-7n; Sun, 26 Jan 2020 22:31:57 +0100
Date: Sun, 26 Jan 2020 22:31:57 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Thomas <pthomas8589@gmail.com>
Subject: Re: [PATCH] GPIO, Fix bug where the wrong GPIO register is written to
Message-ID: <20200126213157.GA9495@lunn.ch>
References: <20200125221410.8022-1-pthomas8589@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200125221410.8022-1-pthomas8589@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200126_133206_455570_20D44085 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 25, 2020 at 05:14:10PM -0500, Paul Thomas wrote:
> Care is taken with "index", however with the current version
> the actual xgpio_writereg is using index for data but
> xgpio_regoffset(chip, i) for the offset. And since i is already
> incremented it is incorrect. This patch fixes it so that index
> is used for the offset too.
> 
> Signed-off-by: Paul Thomas <pthomas8589@gmail.com>

Hi Paul

Please put Xilinx into the subject line. I had to actually look at the
patch to decide it was not relevant to me.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
