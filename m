Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0D11F56AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 16:17:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a39pTDKpgEiQbUK9GwPeaX40Tq9XsWejqJYI55vlRFU=; b=muS6UZm6E9zPpr
	BYx4N6IV5jZztpZhhdTjaBdVp47m2BujPq1zcmuyDcJl1aynjYTYzg85S12r7p/1R8336YxiRdWxc
	xhEoxPngFoqn4xZWEgItIr3LorwzyQLRi4My66+wWZVXAA1JsJxfGEYD1egCvqHT2xiVfX7OZDUCv
	D6MDdpMaNiCZmEdPAW814g8MKYiVWIWFiFE8uNlrp6H2gET0zhvG/PUtnq3KQZyMMvDE4DdmlLnUN
	BJkB555Ii/H7d7GZ8Mdxr45HeKORdaKjE/ALBbl0sivqPBqKuFREHQLmHfHe/6qes32M+GER9SWut
	zhEcJquYVSHHgQQo2ITQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1Xt-0000Fb-Sc; Wed, 10 Jun 2020 14:17:37 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Xg-0000Ao-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 14:17:28 +0000
Received: from [192.168.42.142] (unknown [212.29.212.82])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPSA id 3EDB044004C;
 Wed, 10 Jun 2020 17:17:16 +0300 (IDT)
Subject: Re: [RFC PATCH] pci: pci-mvebu: setup BAR0 to internal-regs
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
References: <20200608144024.1161237-1-sh@tkos.co.il>
 <20200608214335.156baaaa@windsurf>
From: "Shmuel H." <sh@tkos.co.il>
Message-ID: <ae84b87c-665b-7619-7cb0-a1fd58b17d8f@tkos.co.il>
Date: Wed, 10 Jun 2020 17:17:15 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200608214335.156baaaa@windsurf>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_071724_625560_178379AF 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: 3.6 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.115.133.116 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [212.29.212.82 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, =?UTF-8?Q?Marek_Beh=c3=ban?= <marek.behun@nic.cz>,
 Chris ackham <chris.packham@alliedtelesis.co.nz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On 6/8/20 10:43 PM, Thomas Petazzoni wrote:
> Some Armada 370/XP platforms really do use 0xd0000000 as the base
> address of the internal registers. This information is available in the
> DT. I think you could simply take the base address of the PCIe
> controller, round down to 1 MB (which is the size of the internal
> registers window) and that would give you the right address.

Apparently, the PCIe controller is outside of the internal registers space.

I could try to use a similar code as in
arch/arm/mach-mvebu/pm.c:mvebu_internal_reg_base or get the first child
of "internal-regs" and call of_translate_address on it with one zero cell.

Do you have a better solution?

Thanks,

-- 
- Shmuel Hazan

mailto:sh@tkos.co.il | tel:+972-523-746-435 | http://tkos.co.il


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
