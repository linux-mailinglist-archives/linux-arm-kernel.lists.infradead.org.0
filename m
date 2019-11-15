Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DF7FE021
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 15:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N/5aDEC1i4pl5k6z0iM9h9MWhBtGe11Tiu5QNvmITLw=; b=KS9zf0+1eBQcsrY5dx+BQEXSu
	uGfl/cA2hhpJzMjTTJsM5KA5eAk2RKESizROn0CVb+zTKbtbfHdc/KcelQJFWVLBIXwNrmI8FDrMC
	Ivknfu/fk6bMtMKK7b9j7El+DMigXzkAIvCltp+Hubi5Dz2WBf9L/wPi0rGhs8JGAoiF4nDxxCAJe
	KAki5dJNtTrQ/Vy1i1aIWf24GDm77fMHAfYisFr81pOm2QmcYdCXzX1E5ZA9e0iaSERTZXy/A9Gd5
	MT0KDDHS5KYcH+rmBsiyHsPo1CNjT0MnUc1bNgiuxgGeaOPt2HdRMlW68Oo51YaEbGqJfWDS0pgUW
	h0e3QeLfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVceN-0002Yp-SR; Fri, 15 Nov 2019 14:32:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVceD-0002Xf-0Y
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 14:32:30 +0000
Received: from [192.168.1.20] (cpe-24-28-70-126.austin.res.rr.com
 [24.28.70.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6F4220733;
 Fri, 15 Nov 2019 14:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573828348;
 bh=TAYLQOhUh8h/nx6QbmxUbjow7UiI6LrAdXaD68+uFvE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=QCc9FbnjyGGyKkCNbEVOPEZxP32m3xPd+mfiIWpYphzaBxg9RNGVPUg/1VfeNFDh9
 5f+B5udjGz7ePtloj37N5rCoqZPSoWg2T0NaFSV0Uc3NQkcJFXE2M080wtTJdHgLfj
 bwUP6Ul0Esu35Kov5IyJBDwk2KkA058sMZlbGsBw=
Subject: Re: [PATCH v4 46/47] net: ethernet: freescale: make UCC_GETH
 explicitly depend on PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Li Yang <leoyang.li@nxp.com>
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-47-linux@rasmusvillemoes.dk>
 <CAOZdJXUX2cZfaQTkBdNrwD=jT2399rZzRFtDj6vNa==9Bmkh5A@mail.gmail.com>
 <CADRPPNS00uU+f6ap9D-pYQUFo_T-o2bgtnYaE9qAXOwck86-OQ@mail.gmail.com>
 <29b45e76-f384-fe16-0891-cc51cfecefd4@rasmusvillemoes.dk>
From: Timur Tabi <timur@kernel.org>
Message-ID: <e251d109-9f41-4d04-927d-70fb035622e8@kernel.org>
Date: Fri, 15 Nov 2019 08:32:26 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <29b45e76-f384-fe16-0891-cc51cfecefd4@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_063229_072689_0914CB1E 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, netdev <netdev@vger.kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/15/19 1:54 AM, Rasmus Villemoes wrote:
> "Also, the QE Ethernet has never been integrated on any non-PowerPC SoC
> and most likely will not be in the future."

That works for me, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
