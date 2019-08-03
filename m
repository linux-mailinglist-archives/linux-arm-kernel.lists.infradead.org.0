Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B985480504
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 09:11:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TGaBRujO9jw2mEu0iVuJ1ATXauM4cx4UEIVQFTG0iVU=; b=o5cfMJR12IrCeu
	Yq/7gGE2hJLvpFqe+xjDQN706WDcaGSAA5pVCKJIFa8kMyWJ7WHhILUO4uSjPU631y3/tR1EV94JK
	GIMrkpfQdcRe+ih7Bh8SFFKKx9+14auleScXbZjdxujJCffFe/STI8UQpbZvaiaZRsI9uYj0sEsQN
	he3pMm1MSI2ARRZI+d6nkPCV8SPjLkmmFazrQeYiIlvjbbn+WPkrX50F+9hoLe1xVQgY8ahzOKFdI
	stlT5sAu5ei+MN2M9MRCAOGlGqJ7S3pW4TTTNKsZyEPCKDuNwwf8PKvCGyyKszV/x9rtyFPv1mKa+
	rTX6uChnjZCzgJIFce0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htoCk-0001E3-QM; Sat, 03 Aug 2019 07:11:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htoCa-0001Df-Py
 for linux-arm-kernel@lists.infradead.org; Sat, 03 Aug 2019 07:11:41 +0000
Received: from X250 (cm-84.211.118.175.getinternet.no [84.211.118.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDB4F2087C;
 Sat,  3 Aug 2019 07:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564816300;
 bh=D50s0wbiA78nR+2fSDyPs92LMsY/aXJHUMkfLqFQ84o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mi7AZOxjIC1A95Dmgpb1uzgAmEX9akl3RFWbkAdKtvG9+6e72Tr74QWj+3ViffjUz
 zaxc+fn4eUXSEQKuzrOeYvOPq0TTgSjONr9RaEyV7KgpyeJhzg0J0VFTlz/Q0x/W9M
 6fUhyeiRrF628+oyCX1BccnAGvKv1WfEp5JEzhss=
Date: Sat, 3 Aug 2019 09:11:34 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Chuanhua Han <chuanhua.han@nxp.com>
Subject: Re: [PATCH 3/3] arm64: dts: ls1088a: Revise gpio registers to
 little-endian
Message-ID: <20190803071132.GA5797@X250>
References: <20190529083254.39581-1-chuanhua.han@nxp.com>
 <20190529083254.39581-3-chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529083254.39581-3-chuanhua.han@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_001140_865992_D9EBD814 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, bgolaszewski@baylibre.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 04:32:54PM +0800, Chuanhua Han wrote:
> Since fsl-ls1088a Soc GPIO registers are used as little endian,
> the patch adds the little-endian attribute to each gpio node.
> 
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
