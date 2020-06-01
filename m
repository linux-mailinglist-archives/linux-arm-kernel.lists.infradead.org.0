Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 889EF1EA86D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 19:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvPxS12waOshWDRL+D8p25CNKWVGHGWmwt7Y/XS4gd8=; b=W/MrSJRKkAy1Po
	hPXlrVxOWrE72yL00ZGpM1m7ZfdvWhOyYQaj7aUIAv/Nii/mkwI1yay2yAe5w3Ug8ocDAEcqK9dRH
	u5H0qI+86ZTXRhwEKUkDlDwJJaOJGxPIyb0JSSFMCCZGm4HgNxZkLpk8mvJAzWs0YaGv+mIu1/AFq
	fNnInnwnficSV58DLvB4BJx48jN37MNrrtq9ObvpXsYeWiFu4bSpGlml/D9iQmXlf4u14GHwCypgu
	Ex1jKoO2ffPPbqbl34ThGqmhrfaSumbcLuLH9MPNk0BKZGPeTbYyBEsBnpuMbYH//L5ybewcRHE4o
	6AV5bgtgMuaf8uOPI+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfoHk-00042m-3D; Mon, 01 Jun 2020 17:31:40 +0000
Received: from rere.qmqm.pl ([91.227.64.183])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfoHd-000429-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 17:31:34 +0000
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 49bMfS2W0LzLn;
 Mon,  1 Jun 2020 19:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1591032689; bh=OcbJRSI9gSF9z5NgduN2oVxJ6vT/DUHo/GDJNy7Y0Is=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oO3KEZHmFcixsHiF3qnNmW6/EaRrzo5ZWLa8usHOmKZLeqcBlzOwyoIXVFZ5y2Bzy
 tYH2SgKLRYiMAXaI/xPqQBRZbuetTrK8vnZPUl6MkAwaFocrSHsyqpDoRXVk8L5dU6
 +L26ikeDTAIUDCRYAkfRPurU8uZZaA9GQk/26W0lNFaSPugQp9KJ1XW14ZEd+XO82Z
 +21ysbjhAD3kzwfDgnR3vEkubG4VA76j0epEm3xkR/NRKIgRLDjee+Nv/J0E4BqqBS
 RuMZNzijow8bL4OoAChoVn+m8AiEoJ9ltbgttpX/lfcIUxMiGZnsAqitqjYTUAzdgK
 YIJSeGX1Pe/qA==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 1 Jun 2020 19:31:27 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [PATCH] misc: atmel-ssc: lock with mutex instead of spinlock
Message-ID: <20200601173126.GA31822@qmqm.qmqm.pl>
References: <eb9b1cb3-5b3f-f387-da45-71427a4383ed@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <eb9b1cb3-5b3f-f387-da45-71427a4383ed@web.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_103133_616802_10895465 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMDEsIDIwMjAgYXQgMTE6MTg6NDhBTSArMDIwMCwgTWFya3VzIEVsZnJpbmcg
d3JvdGU6Cj4gPiBVbmludGVycnVwdGlibGUgY29udGV4dCBpcyBub3QgbmVlZGVkIGluIHRoZSBk
cml2ZXIgYW5kIGNhdXNlcyBsb2NrZGVwCj4gPiB3YXJuaW5nIGJlY2F1c2Ugb2YgbXV0ZXggdGFr
ZW4gaW4gb2ZfYWxpYXNfZ2V0X2lkKCkuCj4gCj4gV2FzIGEgc3BpbiBsb2NrIHRha2VuPwo+ID4g
Q29udmVydCB0aGUgbG9jayB0byBtdXRleCB0byBhdm9pZCB0aGUgaXNzdWUuCj4gV291bGQgeW91
IGxpa2UgdG8gYWRkIHRoZSB0YWcg4oCcRml4ZXPigJ0gdG8gdGhlIGNvbW1pdCBtZXNzYWdlPwoK
SSBndWVzcyB3ZSBjYW4gYWRkOgoKRml4ZXM6IDA5OTM0M2M2NGUxNiAoIkFSTTogYXQ5MTogYXRt
ZWwtc3NjOiBhZGQgZGV2aWNlIHRyZWUgc3VwcG9ydCIpCgpCZXN0IFJlZ2FyZHMKTWljaGHFgiBN
aXJvc8WCYXcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
