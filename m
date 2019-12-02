Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6CA10E79E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 10:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DltiBpxGSukvoV/tfmYNXRXexYGKaUEXS1YL5o028j0=; b=cqiEqgoQMA3a5F
	5f8UWU57RX3AZHWQmp+vw1x4MiNwUzS4fbu32FQwMBWt5ZtPmKhSXGrRK2TgxMaUs5lC0LR4jmdma
	9cBZN06nyIhC+/ijEouIbyDDICvyHi7Y36ZUznOQQ5OYqN9ujy0QS81yAD1YUQQ0YamB7zVHVLTR1
	xig/M1MDxIV9lrZFEXG+ntavOGHdj+2tsCmLT94Vu38FPvubxWCFjO+p+OglIy4wgYYT3LYoyX6nj
	q4AFIIcNDUwwAxIfpD4t6+o/URQ3bXgfAmZKXJhkMyQxu6wYfpjaBgCbKJFfUAORYIus+c+aAZZfP
	XWMnEmY/+0WbuzMFtd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibhxI-0007Jw-1W; Mon, 02 Dec 2019 09:25:20 +0000
Received: from a27-188.smtp-out.us-west-2.amazonses.com ([54.240.27.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhx7-0006c4-48; Mon, 02 Dec 2019 09:25:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=zsmsymrwgfyinv5wlfyidntwsjeeldzt; d=codeaurora.org; t=1575278705;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type;
 bh=PsbuLqg3PnKHZC8fFLVJ8BSKlIh+aXX3eRcWBfbOHQk=;
 b=JlF4sKGzqfKyhUUPkMR9i8e8xkUE6AO3en95zysRt23Qqb645ZBLk9bJIuSBWcWS
 Ug84EuxiBWcMwXc7IIHhL3QlzgMyHKJJ0TRp69lORlJs1/ndebbJ4UGGl+ggM8wH91S
 enIFinMvcGH4b0K+6G7bEZcLOLCtZNhbnIYRLuWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
 s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1575278705;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:Message-ID:MIME-Version:Content-Type:Feedback-ID;
 bh=PsbuLqg3PnKHZC8fFLVJ8BSKlIh+aXX3eRcWBfbOHQk=;
 b=dGTJRBE49IOZbjfisuV7Y2WsSTNpz4KwJe73vr3ftf/Y9LYzpMZbReiIXvsveEZQ
 rRP4N7BI3XD2n6uVlqcNL+D0hidtt3fxblaBgLVMYCAPuHDWtt+ZfF2K0EUPiciBsaN
 djxXuzwCr931qx7xz08ssGiZ1S95wUq8dnFApMbQ=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7F829C43383
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH v1] mt76: mt7615: Fix build with older compilers
References: <20191201181716.61892-1-pgreco@centosproject.org>
Date: Mon, 2 Dec 2019 09:25:05 +0000
In-Reply-To: <20191201181716.61892-1-pgreco@centosproject.org> (Pablo Greco's
 message of "Sun, 1 Dec 2019 15:17:10 -0300")
Message-ID: <0101016ec5ed7c1c-0d86f585-372a-4b20-af6e-5b59e732b70c-000000@us-west-2.amazonses.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-SES-Outgoing: 2019.12.02-54.240.27.188
Feedback-ID: 1.us-west-2.CZuq2qbDmUIuT3qdvXlRHZZCpfZqZ4GtG9v3VKgRyF0=:AmazonSES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_012509_194988_02B74BCC 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.240.27.188 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pablo Greco <pgreco@centosproject.org> writes:

> Some compilers (tested with 4.8.5 from CentOS 7) fail properly process
> FIELD_GET inside an inline function, which ends up in a BUILD_BUG_ON.
> Convert inline function to a macro.
>
> Fixes commit bf92e7685100 ("mt76: mt7615: add support for per-chain
> signal strength reporting")
> Reported in https://lkml.org/lkml/2019/9/21/146
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/mac.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> index c77adc5d2552..77e395ca2c6a 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> @@ -13,10 +13,7 @@
>  #include "../dma.h"
>  #include "mac.h"
>  
> -static inline s8 to_rssi(u32 field, u32 rxv)
> -{
> -	return (FIELD_GET(field, rxv) - 220) / 2;
> -}
> +#define to_rssi(field, rxv)		((FIELD_GET(field, rxv) - 220) / 2)

What about u32_get_bits() instead of FIELD_GET(), would that work? I
guess chances for that is slim, but it's always a shame to convert a
function to a macro so we should try other methods first.

Or even better if we could fix FIELD_GET() to work with older compilers.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
