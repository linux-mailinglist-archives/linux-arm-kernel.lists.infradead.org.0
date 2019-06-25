Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF07B54F11
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4aY8PhLK0sKVcb+pxEavSn1kpwM0VA3r8yYEOc8LbXQ=; b=dU9PB79XvUoZQI
	ZVKxoKsZjbQBC2otIfyw5zgEOyXs+Bu2sZXvnT+ZTJaVFlcnxaaUQx1gCfi/J/lY5sEBh3G+9S5Ec
	H9Cn8cDBS9T/9ArAbEh1ylYDxckfk2NZL9moEWQEtxwyfb1rwhtkDW+3N56WE1ZqIda17WI4kmhbM
	+IN6aGSFR4lsnRu3nH+ZFfs3ipaf+HOa9anAXq6CMB69nqi1aASU+k7KVF+gFjJX56ysanKkPX8W0
	vKdrKc0TKu1i/GHg+4yMfLRGg+/lzoFAtk1nTwW1fzzVHxlGgCSIF5F8BsSj+pWDkwlPww0HCaL7Z
	oT6kEgCsjamsKdvnbCIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkkZ-0007qk-CM; Tue, 25 Jun 2019 12:40:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkkO-0007qP-GY
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:40:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8y1gaeTpbfZfd8ZbGxuDcQiOEozkYrlf4u8REEI3J94=; b=HnliAbmAzI/TTUAXnAUuVRbGYX
 C4s4ldQoNZlkEBfeYKtW5k6v+FNQaLAYyl3Ind6bUMVY0YcwTBMmmcqnvVN+kAS/CPGYU6l26VhVL
 MF17gb/DvzBnLyIRbvOV+35gRdP2kYyRHa5TwlAOzJTHT6PBYTS8OWic3k/h97fr2+xA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hfkkG-0005oG-8P; Tue, 25 Jun 2019 14:40:20 +0200
Date: Tue, 25 Jun 2019 14:40:20 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Subject: Re: [PATCH v2] serial: prevent armada-xp-98DX SOC uart buffer loss
Message-ID: <20190625124020.GG17872@lunn.ch>
References: <20190624234900.7315-1-joshua.scott@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624234900.7315-1-joshua.scott@alliedtelesis.co.nz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_054028_710460_1FFC35D1 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:49:00AM +1200, Joshua Scott wrote:
> Switch to the "marvell,armada-38x-uart" driver variant to empty
> the UART buffer before writing to the UART_LCR register.
> 
> Signed-off-by: Joshua Scott <joshua.scott@alliedtelesis.co.nz>

Hi Joshua

You can add my 

Tested-by: Andrew Lunn <andrew@lunn.ch>

if you want. Not for the usual sense, but i did do some testing :-)

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
