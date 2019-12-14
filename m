Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D06011F3F8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 21:29:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmVgyrc2h8hPB7MqNd2bX9QV0GnTRwf+nCa6GUCr+H8=; b=akbU5875KImvVn
	JiKiFehb7orv0CaDLk0yKLH07xr1+jj5YssLmICh/8ileTpdYpFjuyZ/DOfwWWq3Kjvsyegpb6LMV
	Txrg4Ap3mUx9BVW/HhdYFw3IqWBVcGzc65hxoPt66B+5pasz9gVK+rTkRSxXKoIL4QYT8/iruVuub
	IjDLtiGPSY00Og/8zIzndFcwd0VwUdy2KRT1EFtbOWCOzL67NfuOGYuPMPNSqY2qfiw3xlXEdCGws
	KxxAEAHib5Xhw26N4dX9HdbgVOLhttieNLyVLfy7aYUH8bWgJKJG6HzIJoO6anoY7Iv7MmOcqBty4
	WjsIe48ytmH4hRW9eoGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igE22-0004YR-DA; Sat, 14 Dec 2019 20:28:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igE1q-0004Xd-0v
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 20:28:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so3378920pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Dec 2019 12:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=XaEVbBb580dizOkGCrPl3aky5kExYp09pR6s9oLfxlg=;
 b=gV1zMRDtDbnkngwtuQVwVmMdqJd0MOI0fNpU6Ahcqv24gDsTZqN7er/XEdhNFOIG2s
 Xefw1oqnnTQsDc4ng5Cy8vViWduwKTiEG5+r2soBzQ+XgrMccITVnWoUgRcZEvMN0qhF
 SyHwqKAw1126RdW6AkgKomQJestodaeQcGWLNA8Bo1YfcUDcUzm+IjAPhyyqM5sSU/UT
 pJvQh3SP0tVr3+ISCV7EJ15wzggPTmxXP2qAuC9n5g29422zcnRupqNxkgq3N913afDE
 yXlkrVCfPIQ3jUx6d5ySjT1pE0hJJRqikGo7Tf4wmiA88gVODXzbye5eaUYDTV1LIx6W
 hQJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=XaEVbBb580dizOkGCrPl3aky5kExYp09pR6s9oLfxlg=;
 b=XtClZjwY5AnJnWF396Gkg37m5b4PKTnApbFiL0aqTWVtXwGyZYfLD9JAuYseGOtT5O
 HvJpSo+f3nHIdrSjzuRW8hALjq+tASUiL9ObN8gNOcxvsMc9gieDMq1zpbSmQ8yW+XT3
 7F5om4VNKuLxAPkFqBTcLzp3t9mYdmKXWfS8gl8Pq9bBn0BPmspQC3zaaHQGuPHgD75n
 MzzZ4A6RxIqHVLzzpd5ZIjm0R9CWlPD9Biylt+5APQ6SvZ6QwP+TXLQ0bX+Y4dBkf7Cl
 +criymmfbEF1vWwJZDjSN2MazkZ9YOGgIfpxLBMJUeF+HA25DxxgZ4GZwXPkeG8xPwCl
 XGTg==
X-Gm-Message-State: APjAAAXgdQ8Vfo/ifxoQCyto5ckcMAV2emDT0PRav30cSiSjOmNyIM2G
 M166FqqiLuWotEm4fLfbJ8StLI/fUVo=
X-Google-Smtp-Source: APXvYqz7r5mvCKhiJymgkgcgt9xu5gMGoR9VG64DTQi7xuM3hxBSuiZTj0eQuUJtNFn0EbRE+cxYuw==
X-Received: by 2002:a62:6342:: with SMTP id x63mr7050443pfb.103.1576355320580; 
 Sat, 14 Dec 2019 12:28:40 -0800 (PST)
Received: from cakuba.netronome.com (c-73-202-202-92.hsd1.ca.comcast.net.
 [73.202.202.92])
 by smtp.gmail.com with ESMTPSA id t63sm16959694pfb.70.2019.12.14.12.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Dec 2019 12:28:40 -0800 (PST)
Date: Sat, 14 Dec 2019 12:28:37 -0800
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 4/4] net: stmmac: Always use TX coalesce timer
 value when rescheduling
Message-ID: <20191214122837.4960adfd@cakuba.netronome.com>
In-Reply-To: <23c0ff1feddcc690ee66adebefdc3b10031afe1b.1576007149.git.Jose.Abreu@synopsys.com>
References: <cover.1576007149.git.Jose.Abreu@synopsys.com>
 <23c0ff1feddcc690ee66adebefdc3b10031afe1b.1576007149.git.Jose.Abreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_122842_069998_CEFEE19D 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 20:54:44 +0100, Jose Abreu wrote:
> When we have pending packets we re-arm the TX timer with a magic value.
> Change this from the hardcoded value to the pre-defined TX coalesce
> timer value.

s/pre-defined/user controlled/ ?

> Signed-off-by: Jose Abreu <Jose.Abreu@synopsys.com>
> ---
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: netdev@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index f61780ae30ac..726a17d9cc35 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -1975,7 +1975,7 @@ static int stmmac_tx_clean(struct stmmac_priv *priv, int budget, u32 queue)
>  
>  	/* We still have pending packets, let's call for a new scheduling */
>  	if (tx_q->dirty_tx != tx_q->cur_tx)
> -		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(10));
> +		mod_timer(&tx_q->txtimer, STMMAC_COAL_TIMER(priv->tx_coal_timer));

I think intent of this code is to re-check the ring soon. The same
value of 10 is used in stmmac_tx_timer() for quick re-check.

tx_coal_timer defaults to 1000, so it's quite a jump from 10 to 1000.

I think the commit message leaves too much unsaid.

Also if you want to change to the ethtool timeout value, could you move 
stmmac_tx_timer_arm() and reuse that helper?

>  
>  	__netif_tx_unlock_bh(netdev_get_tx_queue(priv->dev, queue));
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
