Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DD9241DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 22:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HLtjUTLE8vhh6lLa3ATKLqca5zzmvo4KidU115Uq6gM=; b=YU8JxaWHpKe2h6Mqn7CiIXlCR
	pX+p3BVQXSyfj+xraUqZFy4X/nWOgKYj806dt+HkJBcPkreDtYfzZKdWQ9/RLsEsJT1DG2Eu1cOLT
	tCleiZa6WJV+w3hvd+wHyf+ZcWLndZFzDIGzVWq2HBqoQPJz2LFCxdO3w+8Jsvx2j6bBlOiGQ65Fn
	R3gpk9G5a5UwKXbrIr3YqqEHWZmi4QvoniMzW8D4QvLhSHZDJkhjNVS1t75Vi2I0xIfbHVSs7exS2
	22l+omKkVwkrteuseGO847oDZ6tRWx1IBVyBiZTwCxIEnc4jW3uQLU4w7qJS5DS2n6PMPL/a7b+xf
	q200hk+rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSodg-0006jD-OU; Mon, 20 May 2019 20:12:04 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSodY-0006it-FZ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 20:11:58 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id B67CC608D4; Mon, 20 May 2019 20:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558383115;
 bh=apvzPomu1xSc+1mrdcgyoLfkXvPIEgcA1K8kh3yrRGo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aK3eCG3ZTRwKIyMF1zLEDfYHaNUdlEL6R2Jj5MbBoZlpAsxVxYs39InfNOhOrgGSR
 /QEC1YieTnLxZG8eZoLuxGuQVugx98JMstIzBJGFfCIMmr+oSX50g6SjyoHCZlb0qQ
 5Hm+5dyBW6SlsV6BqQJbwGL2y0gQFfHPoJxOVAEs=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 by smtp.codeaurora.org (Postfix) with ESMTP id 3DA5F60274;
 Mon, 20 May 2019 20:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1558383115;
 bh=apvzPomu1xSc+1mrdcgyoLfkXvPIEgcA1K8kh3yrRGo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aK3eCG3ZTRwKIyMF1zLEDfYHaNUdlEL6R2Jj5MbBoZlpAsxVxYs39InfNOhOrgGSR
 /QEC1YieTnLxZG8eZoLuxGuQVugx98JMstIzBJGFfCIMmr+oSX50g6SjyoHCZlb0qQ
 5Hm+5dyBW6SlsV6BqQJbwGL2y0gQFfHPoJxOVAEs=
MIME-Version: 1.0
Date: Mon, 20 May 2019 14:11:55 -0600
From: Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH 1/8] net: qualcomm: rmnet: fix struct rmnet_map_header
In-Reply-To: <20190520135354.18628-2-elder@linaro.org>
References: <20190520135354.18628-1-elder@linaro.org>
 <20190520135354.18628-2-elder@linaro.org>
Message-ID: <b0edef36555877350cfbab2248f8baac@codeaurora.org>
X-Sender: subashab@codeaurora.org
User-Agent: Roundcube Webmail/1.2.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_131156_557758_A9136BA5 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: syadagir@codeaurora.org, ejcaruso@google.com, arnd@arndb.de,
 netdev@vger.kernel.org, ilias.apalodimas@linaro.org,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, agross@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 davem@davemloft.net, cpratapa@codeaurora.org, benchan@google.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-20 07:53, Alex Elder wrote:
> The C bit-fields in the first byte of the rmnet_map_header structure
> are defined in the wrong order.  The first byte should be formatted
> this way:
>                  +------- reserved_bit
>                  | +----- cd_bit
>                  | |
>                  v v
>     +-----------+-+-+
>     |  pad_len  |R|C|
>     +-----------+-+-+
>      7 6 5 4 3 2 1 0  <-- bit position
> 
> But the C bit-fields that define the first byte are defined this way:
>     u8 pad_len:6;
>     u8 reserved_bit:1;
>     u8 cd_bit:1;
> 

If the above illustration is supposed to be in network byte order,
then it is wrong. The documentation has the definition for the MAP
packet.

Packet format -

Bit             0             1           2-7      8 - 15           16 - 
31
Function   Command / Data   Reserved     Pad   Multiplexer ID    Payload 
length
Bit            32 - x
Function     Raw  Bytes

The driver was written assuming that the host was running ARM64, so
the structs are little endian. (I should have made it compatible
with big and little endian earlier so that is my fault).

In any case, this patch on its own will break the data operation on
ARM64, so it needs to be folded with other patches.

> And although this isn't portable, I can state that when I build it
> the result puts the bit-fields in the wrong location (e.g., the
> cd_bit is in bit position 7, when it should be position 0).
> 
> Fix this by reordering the definitions of these struct members.
> Upcoming patches will reimplement these definitions portably.
> 
> Signed-off-by: Alex Elder <elder@linaro.org>
> ---
>  drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> index 884f1f52dcc2..b1ae9499c0b2 100644
> --- a/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> +++ b/drivers/net/ethernet/qualcomm/rmnet/rmnet_map.h
> @@ -40,9 +40,9 @@ enum rmnet_map_commands {
>  };
> 
>  struct rmnet_map_header {
> -	u8  pad_len:6;
> -	u8  reserved_bit:1;
>  	u8  cd_bit:1;
> +	u8  reserved_bit:1;
> +	u8  pad_len:6;
>  	u8  mux_id;
>  	__be16 pkt_len;
>  }  __aligned(1);

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
