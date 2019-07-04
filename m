Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611E55F778
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBHdnHEtawgKmrA5gpCZVgyL152Fgq7TwG3JAPyVM1g=; b=X35rXxxmO/urI+
	sYA7DaIwtoRweMNIGtiw10x49T45HbuFQXmdp/yrN7CZ2IfgAThAde/YyvF7JwpHvnwJPirMgUSDN
	Aw1O5V+oHfZGFL0A4L4wU+tnaUQf9MaE+uI+k27/pN4vlmpkyDaVgz4hZGUDTzRjvOMUaI236e5mh
	HIve/Wv6ud98b1EAwvzlZZUiCG3HiCUAuiqsQCXeu2wIR8OjM8OMlldIX2B8vAYu+m2ayb1m3SSwF
	4VRjSX212G2OqGhvgS54R7Q8SRFFWWzBEmRX1c5lioP3kyQrrVNQp8klU5qjxJy7PMApo9Eszt+C4
	ymHOsbCjgAYWOW8wAu7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0G5-0001YP-F2; Thu, 04 Jul 2019 11:50:37 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0Fg-0001Xu-Ou; Thu, 04 Jul 2019 11:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562240946;
 bh=3XgfK29g7vLa/3fkH4yqnV5cnFE1yxc49nWYpw/CAjE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=knmHJll2oZI2vMmwAv/1ME4hVpqS0PWrF9Ii8PkJp7W5/sqfcY/qrsUAkKjVViwQn
 3CxBSzc/FCwAmnBG2/JJ/9Qcs9UnGrsKgur1158+rpQ4xA/L8ZOOZucSZQ+H3zoH/H
 r8/kl+3pUg6RVhZL4FTDAvNzcrsZD9G5hCVre2hI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.121] ([217.61.145.121]) by web-mail.gmx.net
 (3c-app-gmx-bs27.server.lan [172.19.170.79]) (via HTTP); Thu, 4 Jul 2019
 13:49:06 +0200
MIME-Version: 1.0
Message-ID: <trinity-cc209a43-af34-4788-8b7a-8495052c8ca6-1562240946454@3c-app-gmx-bs27>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: Aw: Re: [PATCH v2 2/7] rtc: mt6397: move some common definitions
 into rtc.h
Date: Thu, 4 Jul 2019 13:49:06 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <62a4c4ce-7ab3-2f9d-a85e-be92340724a9@gmail.com>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-3-frank-w@public-files.de>
 <62a4c4ce-7ab3-2f9d-a85e-be92340724a9@gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:7WCJDoI4ExT7kJKMPI6fq7FNUW7pRNwLc1tUO/5cmP72zZnoBU2v1Y8uix/fw2i48d5FF
 Wd8wvTQJl1I2afIhS99OdBd4Iyh67OTcrpdbEQzhKKf6oNe+8evBVlNA3mdt3sLZ9EfauHTySxHm
 DPZWCXm6h5c0Phecn2JIbp8F6eSFLCyZzdI2+ijkEM1IUpZ0cT5dqCmnk8hPwd9Sd1EJDKwLDMdM
 fnT5RJ/tuLvBBpxa3bA56T8T1C/9SuiwHF1TDpcf69rvk2/9SvDHsBp3GT6hMIlCS4ZRbzcYD2dP
 58=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mW1rCx44iLA=:/Gajeu7to3A6Ht4fEOGmOM
 VrVkYrIOaOWFbVz0dUB19QotgPqpUaNZ9s5JK+j8PjaEBomafj/raSFiwvRW1i7F+V8c1yXi3
 7UJr7dAlUe5CK5xzgHEMiBNl7adKcmNKYRE/o0poTjKZAwuMVnHV9J+fkUdRrQDVrVkNZQDtY
 LHvQnas9brIhuezksYFzH9Pol+hd3YXpTP1J/k9Tep1e6ppE6zX3awixfJVVyPXj09b9iFFPP
 nPpETdXzqQspp2OaySgm9TbPNosj+TI6fbPcuIA9018AH3QcfASNas9uoobDSzUAKc7u2CYCl
 SmsdGV0F41hBk0LaPWMD5JmQE14GDfYBjsG1BP29GHify4oGtvVCBqrZwZKRCtbUz3G7i9KQG
 IknEjSp92+qsc71cN9DiVh3WD72v2MeCIqH32Vt5HLNfOb2hbBvkYRepx+55v6D+PY0s0xKDY
 ld9U5E2roDTiHXZ+GymN4caVOKAi3lsJT8kr9E3JCAEFOuqkGsPN8VrnmnDmvFOlxOumyBJki
 NqU8IwX2kaZfTf99CDBU5Ortk+6ZMl98egmxvVuWkpX9nml7w1lACPqpLuB1FFc0rFvC1MzXB
 wDNcELXrKOYz9pdcvEr6jUKFQoA9gQsQbd6KNaUd8V3CtnvF7ZGL1GdRH8I4RJ7AKDsyEeUsy
 Ekr8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_045013_107450_440669E4 
X-CRM114-Status: UNSURE (   5.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Linus
 Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro
 Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sre@kernel.org>, "David S .
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Still missing commit message. Describe here why you need to do that.

ok, added note that headers are reused in power-off-driver

https://github.com/frank-w/BPI-R2-4.14/commits/5.2-poweroff-mainline

> Please check your email setting as discussed offline. Otherwise your patches
> won't get accepted.

tested with webmailer where it looks good :(

seems the problem is only shown when imported to patchwork

using only git sendemail in ubuntu 18.4 without any mta (have sendmail not installed) and no changes made to git sendemail except authentication.

i see that (except cover-letter which is quoted-printable) all is send with
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

so i have forced git sendemail now to
sendemail.composeencoding UTF-8

if this does not work i can try instead
sendemail.transferEncoding 8bit

regards Frank

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
