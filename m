Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2268620C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtT8I0hrSny+YgaIPVcQ0HRRf+YUNUSeR/1zCql3JSE=; b=bwNezXMwYGfJBl
	2yEvfntN4IF8b6GN2zmuSw8ZAE6FWpJUYbEXKAuuhjlyXj8rxYFY3ydzP0mnuFOQdIWSd4I3Xrt6o
	5OXJFtIr9x140QNePdJgpLrJf8oN76I0iHs2cDT/zJcn5Mq+5vgLEYb/nnZn23TEMxYKjPN2BqJVX
	y21opEXhEkIfMLbBKd+1+H7KNZuD6qJuN2UjFBg5sbB85p0sG26EGJlu60OYhAXwowvyPSDOz+PwK
	l5QVhiB2Y9tDxekjmYwbhj79RvxyTOfxCxWVI7Tnz+SJl32XlbrKbBPV1xEZvOIGiiQftlNnfdg3f
	nuwqEdz6tL8Maze7eyqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUtH-0000Yi-Ky; Mon, 08 Jul 2019 14:45:15 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUt2-00007f-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:45:02 +0000
Received: from [192.168.1.110] ([95.117.164.184]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N0X4c-1igq9K0K28-00wTJK; Mon, 08 Jul 2019 16:44:06 +0200
Subject: Re: [RFC] SW connection between DVB Transport Stream demuxer and
 I2C-based frontend
To: Marc Gonzalez <marc.w.gonzalez@free.fr>, I2C <linux-i2c@vger.kernel.org>, 
 linux-media <linux-media@vger.kernel.org>,
 GPIO <linux-gpio@vger.kernel.org>
References: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <b6abf5a2-3151-29e5-8eb7-c960580fd4ea@metux.net>
Date: Mon, 8 Jul 2019 16:44:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <5e35b4fb-646d-6428-f372-ee47d7352cd6@free.fr>
Content-Language: en-US
X-Provags-ID: V03:K1:2jvRaVlfIBbTWqmqs0v71/intYTyRlJx4arYouNLUMLImoa4JE8
 Due+PYAz9HHlV+Oh+JGvJQEVWaMqdW8Uon8bE6aHmyP8jq9DMorJEvkmsLYY+Y0Qhs4zwbv
 y7HQMEjNaeKMhE2X4e5YLDubhQW/BSnmjtMmJ0aTTdDAmP18wIi5s3lNhDqQs+e+WaQDOxX
 AADgUj4XIC3nDfJfDfgyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BNa//kL+MSA=:/U9k6JExtxUNSL7QQzrsVO
 Qc/YmJFqFi09e6T66lH+eMgVWarfdks/PkAbhyQSktly45MzYnQ/s0DecPsTJhutefvm2VPNm
 BCMRR7bsmjcQQjkDgIdf4xHk+1c6xMilKnXtdnfDMXpLyBXSFAbS+CeBEWLqwqg6IMvfOiEPG
 TeXkmT31LlnLRirAyV21Ukz1h2ZNsLo/NAG7Ca6VcoSYx4Fjd1IfLON0F5/5SGTKjNV+HlgIU
 4MZSLWYhGjywPlPOdguG924KONrEzbE6D00X7MKuS0vvvmbsp2SN/+1ddSuFqOSO5YPToO7OO
 z2WVRY1fPvJC9eyLIsKuLhWcNOxVnvMClIMPmNS58Nh/1nxhf0RJFOk1DL8e6T6CP4tcHvxx9
 wSMXRQ/sohx+GsBr1KQRnKxEGky965NbmzBsFydKdioBZBH0wWf8cFDyvhjD/pTZmqEDrAwpb
 j9XByJy8tLYTTeqk/Sv9OGOZ6KYW0dztaQ/JW52ntYX+VDhgkOVRha04v/DB9YXks9FbCUiWA
 KNNcl3u9Fe8ag8l/GItK1aMpzTndlSInXTFhy4BsIkNmmL1gukAmSKU85++AM8Fodg4DDTpJh
 DQVkgDKbnZUxRcYqx1NGSuT6tPyVLnSy6Hjc47WTUUqCD3IPgJyj+3SIIe3BmcO4CfbspoeRA
 9r4I7e9GvgSlCYfeS2jkSrc8ulDdK5oSWZxOso/tj52W1AzLqwfqf2+R51B1HtkS+WT55N6Hp
 YnzujFdSNwMrvyhmlmWS9KPxKeBdKdw4o4yq+nokVHMPRqwhRrvgB9Crp5Kmz0fMfGIGHRXv1
 jXVRq9ud3voStvHFMZCXWHqw49Vmwhds5x4uGs5GrIDnc5MS0B1CEjGDMSzp5Y59Mz0qyif
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_074501_209517_E19202A3 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Peter Korsgaard <peter@korsgaard.com>,
 Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, Wolfram Sang <wsa@the-dreams.de>,
 Linus Walleij <linus.walleij@linaro.org>, Brad Love <brad@nextdimension.cc>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Antti Palosaari <crope@iki.fi>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Olli Salonen <olli.salonen@iki.fi>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08.07.19 13:08, Marc Gonzalez wrote:

> The tuner (si2157) is not on the i2c5 bus, instead it is on a private
> i2c bus *behind* si2168, which routes requests to the proper client.

Should the si2168 make up it's own i2c controller ?


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
