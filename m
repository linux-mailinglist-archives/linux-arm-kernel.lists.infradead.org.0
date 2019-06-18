Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C387649987
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 08:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dt8RbeBs/c/CjnV9lPQNTCZUC6iC/QlmcNP7rJJzDKU=; b=sGczIABXhTwZZE
	f8Z2jLdoIw/cXCBhAUWZabze5LeE1QB8NgwVcCauVqSlwvCzi7gUQLYDNkizvJZ1u/dJz3Fr/57CE
	/l87dqoIZWE22VtAmhLA87O79GfFk8aXxNp5gTfrkNnooOfAIJTklBovH4e2dqL4edjbpTVsbuxJZ
	IErY07/yMqiVmEKX+sTuqiSjCRw2O/hI8VKVhZ9Q/LydqQ8o0L5jAR7nsOB6t1KPD/1tSUGEjAMTO
	HeupOr3ZU55fDVYFd1HEnELjg5kynXvxpCW/MT58wDDJNuEl+plVnWfeIIVBOQ2/DuGV/rMApZGdG
	xx6UARaRxbRjVCgOzXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd822-0003K2-QU; Tue, 18 Jun 2019 06:55:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd81p-0003Jg-Vi
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 06:55:39 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06F8820665;
 Tue, 18 Jun 2019 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560840937;
 bh=4yU2ni5pgqRgXsFw8Zoge5yRVrNEQlv+sD3OY4wEo6E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eKveZUJAOzxm9DGywEBLIP0l8d41IOCBd6CKoGmwTnJLNJEj1g+gNALjWCvI/iRYr
 OCMr1WrA4dJTqwgoMBikA939CBeOJxGdb4Ssoy27Hwu1tmkUydTU3qW/3uwRkensrc
 cqKlBlwZnETzllTMxomzKP7oSsHcA8pTg8d3P2fE=
Date: Tue, 18 Jun 2019 14:54:47 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: add crypto node
Message-ID: <20190618065446.GC29881@dragon>
References: <20190610152331.10057-1-horia.geanta@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610152331.10057-1-horia.geanta@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_235538_036948_5F5D4901 
X-CRM114-Status: UNSURE (   6.95  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMDY6MjM6MzFQTSArMDMwMCwgSG9yaWEgR2VhbnTEgyB3
cm90ZToKPiBMUzEwMjhBIGhhcyBhIFNFQyB2NS4wIGNvbXBhdGlibGUgc2VjdXJpdHkgZW5naW5l
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhvcmlhIEdlYW50xIMgPGhvcmlhLmdlYW50YUBueHAuY29t
PgoKQXBwbGllZCwgdGhhbmtzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
