Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3A514426
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 06:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9foZLg6mmZ1zmugz+2A9MXkKmZQM8/i4yYITnwhZZ1U=; b=Tz44v4FbzJkxsw
	AzNLRuZ8BWaRadLJdPjdQYwWzAFq9IorTGoeqHxXYMiBbfHrHysmTim73ByxwyT274ndcKj6zEB14
	zwJ+747mqudnNpSEehrfK/+z1E18pCgz38Y9Bn2mRli9KG5jnFBmlSamYCqIiyOuXeuoEWDX9DGZ1
	4KU4ABiyIps6Bh9bwCkhpPQGJxfqBfk6ydbJAtlUBf8aRh3c/hhXgsOp25zp+pdzmX5Z29Yqo1tlP
	CVeNHtW2a26Pq5xxnWqQzSVKK6zaLvb/R9wnJeOprxs6BIS7T4HVv09+2cIlsiPboWKmjM/iQ7ez/
	oIKa4ApPIwViUTomAZkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNVXN-0002L2-4P; Mon, 06 May 2019 04:47:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNVXH-0002KS-2s; Mon, 06 May 2019 04:47:32 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 9CABB12D8E1E4;
 Sun,  5 May 2019 21:47:27 -0700 (PDT)
Date: Sun, 05 May 2019 21:47:27 -0700 (PDT)
Message-Id: <20190505.214727.1839442238121977055.davem@davemloft.net>
To: ynezz@true.cz
Subject: Re: [PATCH v4 00/10] of_net: Add NVMEM support to of_get_mac_address
From: David Miller <davem@davemloft.net>
In-Reply-To: <1556893635-18549-1-git-send-email-ynezz@true.cz>
References: <1556893635-18549-1-git-send-email-ynezz@true.cz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 05 May 2019 21:47:28 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_214731_133380_716A9157 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, devicetree@vger.kernel.org,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 srinivas.kandagatla@linaro.org, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Petr =A6tetiar <ynezz@true.cz>
Date: Fri,  3 May 2019 16:27:05 +0200

> this patch series is a continuation of my previous attempt[1], where I've
> tried to wire MTD layer into of_get_mac_address, so it would be possible =
to
> load MAC addresses from various NVMEMs as EEPROMs etc.
 ...

Series applied, thank you.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
