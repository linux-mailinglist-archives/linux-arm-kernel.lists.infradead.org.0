Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FD57DF24
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62ybPIO+VUSPtocYo81T5HKXZFzFcNtb8AXvC6t+faA=; b=qS/fNc/uFrEVnM
	9f/r0JQGMI15otyzFg+8jkrZm15WkCYFgmt3gyl4+EEQm6qaUVXV8QyXeoXfmnfmg+zT/QZTrmdnw
	skWs+VxzSDPHOKHV4zfxSEWUGcBbPwoyGb4WuLou92u2az+xYm8QjORtyFqqdrjVRS98/vndRI7s9
	Imjoj2Yj+OHt3w6XdZYvkns3iaGiWZgQYu0SThna3GMzjWVQFdFIHWvtgEs8kmrGbkPtIj3sA6yoC
	xyaa/ubOZTy9nEymIFAZdfLsJOe4eElKzK/krCXc7tPwzmFsDynXMjW4GB/UVJNk2VOZGJKwrBPkR
	ZsmVMIM5vknkHXc3YBMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htD2u-0007V5-6b; Thu, 01 Aug 2019 15:31:12 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htD2k-0007Ud-1G
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:31:03 +0000
X-Originating-IP: 193.154.195.40
Received: from jirafa.cyrius.com (193-154-195-40.adsl.highway.telekom.at
 [193.154.195.40]) (Authenticated sender: tbm@cyrius.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id F2E1A24000C;
 Thu,  1 Aug 2019 15:30:45 +0000 (UTC)
Received: by jirafa.cyrius.com (Postfix, from userid 1000)
 id EF92FA3F73; Thu,  1 Aug 2019 17:30:44 +0200 (CEST)
Date: Thu, 1 Aug 2019 17:30:44 +0200
From: Martin Michlmayr <tbm@cyrius.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v2] ARM: kirkwood: ts219: disable the SoC's RTC
Message-ID: <20190801153044.GH1843@jirafa.cyrius.com>
References: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731223233.GA15900@taurus.defre.kleine-koenig.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_083102_230338_63C97A01 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Oliver Hartkopp <socketcan@hartkopp.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Uwe Kleine-K=F6nig <uwe@kleine-koenig.org> [2019-08-01 00:32]:
> The internal RTC doesn't work, loading the driver only yields
> =

> 	rtc-mv f1010300.rtc: internal RTC not ticking
> =

> . So disable it.
> =

> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>

Acked-by: Martin Michlmayr <tbm@cyrius.com>

This solves an issue I reported back in 2009, as Oliver Hartkopp
pointed out to my privately:
https://linux-arm-kernel.infradead.narkive.com/jySn4Wsw/patch-kirkwood-don-=
t-initialize-marvell-rtc-for-all-boards

(I contributed to the QNAP board support file in past but that was
replaced by the DT files.)

-- =

Martin Michlmayr
https://www.cyrius.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
