Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 690178BD17
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 17:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NPABthc1cprSYBVAlFwm/a4Kn9OcWigSLxmvXvRFM8E=; b=PuGp6GFriyClw/IVQCAfYamlS
	XD4qdpBIsqrG35fR9ucbwmJ9cxHADrc7Q0uyELMyGCaEuqcfL9rP8YJLDLSQOE7hsqy/EaAtFMqzg
	dWKfYnkk7wQ9bpBlSN39AtZVy7I+BgdPGDdRul0CcH7Sfak5dEjHx1/iHsE3SCtqtOazTLwSffUsA
	5xgf6KZ6dVLWBsSkXLYfv0v+LdAv0O5Gj4/JSq5niNZOtDiufoF3nqR3Tp3jZL5G2BnUY4RHeyoiW
	HmUgZJqEa1PMvZgPJ8xpWjfPlHkc+39dpdoyCPAjZ5NEX0zxDaIehyG4gU8yOPPW4k9QubHXDZ31w
	j9Mh0QC4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYil-0005J6-6e; Tue, 13 Aug 2019 15:28:23 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYiS-0005HE-DR
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 15:28:06 +0000
Received: from [167.98.27.226] (helo=[10.35.5.101])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1hxYiN-0006Cf-ER; Tue, 13 Aug 2019 16:27:59 +0100
Subject: Re: [PATCH 01/16] ARM: remove ks8695 platform
To: Arnd Bergmann <arnd@arndb.de>, soc@kernel.org
References: <20190809202749.742267-1-arnd@arndb.de>
 <20190809202749.742267-2-arnd@arndb.de>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <3d6c7162-f802-6869-77cb-27aa456b237d@codethink.co.uk>
Date: Tue, 13 Aug 2019 16:27:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190809202749.742267-2-arnd@arndb.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_082804_602552_83192F4A 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Greg Ungerer <gerg@kernel.org>, Andrew Victor <linux@maxim.org.za>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/08/2019 21:27, Arnd Bergmann wrote:
> ks8695 is an older SoC originally made by Kendin, which was later acquired
> by Micrel, and subsequently by Microchip.
> 
> The platform port was originally contributed by Andrew Victor and Ben
> Dooks, and later maintained by Greg Ungerer.
> 
> When I recently submitted cleanups, but Greg noted that the platform no
> longer boots and nobody is using it any more, we decided to remove it.
> 
> Cc: Greg Ungerer <gerg@kernel.org>
> Cc: Andrew Victor <linux@maxim.org.za>
> Cc: Ben Dooks <ben.dooks@codethink.co.uk>
> Link: https://wikidevi.com/wiki/Micrel
> Link: https://lore.kernel.org/linux-arm-kernel/2bc41895-d4f9-896c-0726-0b2862fcbf25@kernel.org/
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Ben Dooks <ben-linux@fluff.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
