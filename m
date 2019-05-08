Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD1A17656
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 12:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irLRABaxd1xNPQCDUCHG1HtUZ0VeCKmVRJmJzSNwZiA=; b=pz9+qHgbIWq3B5
	VBXQlmr7tIgcjXlaPmQKWoX4NfNTW59epuE4H4oehO4LI+3ii0rH6eLTV53WIaBQJqd4vHhuAUNRF
	eKKFXORE4tL4AqdXmrmHS0oYuDEY/y2bIlxT+YfmTEr4bbdYwxOdJgZG/Qm/1wpt3uw7lsY0ZcTtg
	ZUPbzwXs1gEN8oyqAcWatKfdEaIZAr8P/XDHfR/D7ncvRrSnXhTfYHSdIBF7er6oI9ictciMCCptJ
	80ktx0neiekFaMhG6RTX1YfaHqQTemH1aW4HG1WAhlz+o8t4jfKZKoxNiExfZZrIHZXpFzt4bLRSR
	Kafx7Z1QRXk/7PJGj/LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOKEs-0002uf-74; Wed, 08 May 2019 10:55:54 +0000
Received: from 212-186-180-163.static.upcbusiness.at ([212.186.180.163]
 helo=cgate.sperl.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOKEi-0002tJ-2v; Wed, 08 May 2019 10:55:46 +0000
Received: from msmac.intern.sperl.org (account martin@sperl.org [10.10.10.11]
 verified) by sperl.org (CommuniGate Pro SMTP 6.2.1 _community_)
 with ESMTPSA id 7764359; Wed, 08 May 2019 10:55:22 +0000
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH V2 5/6] spi: bcm2835: make the lower limit for dma mode
 configurable
From: kernel@martin.sperl.org
In-Reply-To: <20190508084205.GD14916@sirena.org.uk>
Date: Wed, 8 May 2019 12:55:32 +0200
Message-Id: <CE110436-866D-44F4-B8A5-F7D02DD06F70@martin.sperl.org>
References: <20190423201513.8073-1-kernel@martin.sperl.org>
 <20190423201513.8073-6-kernel@martin.sperl.org>
 <20190424070712.hh6ozvhkvkxhwak3@wunner.de>
 <20190508084205.GD14916@sirena.org.uk>
To: Mark Brown <broonie@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_035544_299389_284824AF 
X-CRM114-Status: UNSURE (   3.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-spi@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Lukas Wunner <lukas@wunner.de>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> On 08.05.2019, at 10:42, Mark Brown <broonie@kernel.org> wrote:
> 
> especially with the ATMega case where we want fast individual clocks but
> lots of dead space in between bytes (is the controller capable of adding
> that dead space itself in DMA mode BTW?).

No it is not - at least not so far as I know of (and I just went over the
available documentation again).

Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
