Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4D08C266
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 22:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xB8qghSG++Kbff8p/sOtFdqHZqZlD0PJ1nNDNuoq0vM=; b=IxbEkp+O70SSJA
	shmzO/n8EvIiCXkxqO4rLZGepJ4J+mw4D1obb4+Fwr5fzw1NbNrbnt/jkF5ZsVAv/+9e7SQoHaU+e
	E+bFfVCcMqquQgh2DrPdUHHYnxA3r2e76HP+MJaMbTbS9xqqzetJz4quwR47wpdcqZCAwGLZNBA1x
	0gxNAywh1w7+3/aHexzWQ1PapcXY9Z8IcwPMv4oc/WDK8462AHRUdEU2xTzx9850ojINDru6aYiIe
	1+3I+i2TxsFrTP78u71swYkuJTpdjyy2fXze+xpB4F4roM1mRnfUZe/2RdcB+grXfkAr1RcU7HtNE
	NpANf49BXplTpVg8KMXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxdrV-0004uD-NL; Tue, 13 Aug 2019 20:57:45 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxdrL-0004tm-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 20:57:37 +0000
Received: by mail-qk1-x743.google.com with SMTP id s14so10424026qkm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 13:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=bNfCPQHfFfS05Ua0jgfTWRkNVMemAI0m1k8K0MkNCfo=;
 b=YwV4nGNRSR1A1eVJ/QD41sekOqfOp8xgyNC95HHYPXad4HG7a2JDRShmZhBlpGQUUt
 WSHEMsmrJ19lmUCYMUrWkocjF2D0hTI4iyF5PpD0ZhSAQO+GkBFVViFj9Gx4u0oJPIWS
 y1GYX3DWqvmZ4Sjfdt+P0aNDrEQX9tP/jtldhK1rGqsPbAAoJ+Bk7SDMmzBcjGOfTvwg
 Pp/zVhGRjz7gsjbgYw3pqzG15i7zJ0RUecjBuDopi4mFQbblrWUTjCHFH52oWPytiFD4
 IVpRDmpauS0ZvJMBttPhzfi9MdcVF7kuk2lhyfa2uX4iQdFXBu9gUfwyrmRD5IvX2NgN
 LlvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=bNfCPQHfFfS05Ua0jgfTWRkNVMemAI0m1k8K0MkNCfo=;
 b=d2pIL0jQEkz5XzJPeeJdWOQeOBVKH/+J5yqVQRGVakBXUs1Vhwh2Ybf3g1KLAlKI76
 kFUq+SscqqUHehS9PjPstxynAC4+28w2wOjQ7LBe0MVoBTgZcCNTk2Nz87I5dBBPZjDx
 Xo6puf8nTS5eWdStKgQM9RCKt6Vk/RUjWjwsJlUETybEwLSyoRUozpBFS6wWISsTIOjo
 2DZpGoXcqw7HDxu2iCIG7B8TK5tA4uANbx2Jgd+pR3bnO3vlceDm5+0VGsQzGT2AeI5B
 1dlWfnKzzY5kPYXyNhiGSGeEU23rNBuaJbHib8fw8Lau53PZ6uG6EjhjBekzL0Q9KZjH
 fU2A==
X-Gm-Message-State: APjAAAVGtzRw2wSPBqqGPbcihbaaF0oDZrwZfdw0xjicrDXm3Kul1EUJ
 fHslIZEPDkmA0fZqhH59Hdu7hg==
X-Google-Smtp-Source: APXvYqxfiM+cvNMIUPbfi2x+FX0ul2aixQ+5yH92qTgQl+N7+EOdhtTpE+zWSqcR0Xy7ioIiApIKdw==
X-Received: by 2002:a37:b82:: with SMTP id 124mr33996866qkl.260.1565729854473; 
 Tue, 13 Aug 2019 13:57:34 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id d71sm11374918qkg.70.2019.08.13.13.57.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 13:57:34 -0700 (PDT)
Date: Tue, 13 Aug 2019 13:57:22 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 01/12] net: stmmac: Get correct timestamp
 values from XGMAC
Message-ID: <20190813135722.22ea671d@cakuba.netronome.com>
In-Reply-To: <195f374a0b46e5e65a691742fc2dbeffacfaf148.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
 <195f374a0b46e5e65a691742fc2dbeffacfaf148.1565602974.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_135735_987816_1110180E 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

On Mon, 12 Aug 2019 11:44:00 +0200, Jose Abreu wrote:
> TX Timestamp in XGMAC comes from MAC instead of descriptors. Implement
> this in a new callback.
> 
> Also, RX Timestamp in XGMAC must be cheked against corruption and we need
> a barrier to make sure that descriptor fields are read correctly.
> 
> Changes from v1:
> 	- Rework the get timestamp function (David)
> 
> Signed-off-by: Jose Abreu <joabreu@synopsys.com>

The barrier sounds like it might be a bug fix, does it occur in he wild?

> @@ -113,13 +119,11 @@ static int dwxgmac2_get_rx_timestamp_status(void *desc, void *next_desc,
>  	unsigned int rdes3 = le32_to_cpu(p->des3);
>  	int ret = -EBUSY;
>  
> -	if (likely(rdes3 & XGMAC_RDES3_CDA)) {
> +	if (likely(rdes3 & XGMAC_RDES3_CDA))
>  		ret = dwxgmac2_rx_check_timestamp(next_desc);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return ret;
> +	if (!ret)
> +		return 1;
> +	return 0;

nit:

	return !ret;

>  }
>  
>  static void dwxgmac2_init_rx_desc(struct dma_desc *p, int disable_rx_ic,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
