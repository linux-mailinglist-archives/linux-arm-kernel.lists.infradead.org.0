Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CA155BD5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 01:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLAX+QLYZsPY9TMwRtqmRa/yXi5Phw5PuVebrYFf/5E=; b=DFYXwM7+3Ahyqs
	eoef3qPOHWFuTkZXiLKA6St/bHFNnDZK4ov+r1M3km0U2Kfrl8gOK+TdSbW+CQha5xe723dbBwg2A
	+7KyDLYAT+AvIiVtG1PNsAKZgVj4t73VizfCiUi71Bb8agqEFFFZpFDnR0fsaeYzJUjH5FjVAgIXF
	ZgLQS7movySi6xOIpfF95MqQ/hnJfrTeAfW1MAp8QVw/Hcf5SGAcJmO4mJtVun5yFYz7KahwyLiv2
	pNP+LHOvQ+4b0ofG2SjawZTzF5GVn6hQb7D5cqC+yHH5Ga7O9p94VoQWKYMxiuPeUkuuB83jkrOyh
	aV+anzSTXBALR+lO7Hcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfuRQ-0003nk-JZ; Tue, 25 Jun 2019 23:01:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfuQW-0003V9-KM; Tue, 25 Jun 2019 23:00:37 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 394762086D;
 Tue, 25 Jun 2019 23:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561503636;
 bh=VJ8Run0Yyz5vZrKCBviF3RYogOOpfjngFxj1ycAUSwE=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=P5wDgSz76b+zzsGkc7Dg3ULasI4YLjC5pHavNdKwo/l7eO1fD4s5RM7a4O22aEuRr
 3qRDDQgWG1kcl23wA7v/eFe9rAU2nlMgqhEeDWhLzRUwIB1eZn6hc6KSPmB1S7j5B9
 BlA4mvcwFrI9N3QELo3NEwfgAm8l5GJjX9vepgpg=
MIME-Version: 1.0
In-Reply-To: <20190611175839.28351-3-nsaenzjulienne@suse.de>
References: <20190611175839.28351-1-nsaenzjulienne@suse.de>
 <20190611175839.28351-3-nsaenzjulienne@suse.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, stefan.wahren@i2se.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v3 2/7] clk: bcm283x: add driver interfacing with
 Raspberry Pi's firmware
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 16:00:35 -0700
Message-Id: <20190625230036.394762086D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_160036_768477_D7414C4E 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, viresh.kumar@linaro.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, rjw@rjwysocki.net, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Nicolas Saenz Julienne (2019-06-11 10:58:36)
> Raspberry Pi's firmware offers an interface though which update it's
> clock's frequencies. This is specially useful in order to change the CPU
> clock (pllb_arm) which is 'owned' by the firmware and we're unable to
> scale using the register interface provided by clk-bcm2835.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
