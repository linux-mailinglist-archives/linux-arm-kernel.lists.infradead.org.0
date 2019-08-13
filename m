Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1248C37F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 23:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6CXVEIRK2eldO07H9+XduXHO97NYX4tcA2/PhubApU=; b=fzZrj5Rz9MKi+T
	8tltDADwIrMTmWEMqhXLV7/U+0D6mJ8QS6MeIsS7x1h9sJezsxkHUWZH4C0U2bVUHsvrvrmetz9dc
	GJ2N/gZF3V/VkblATcOZHysYBN11SfEs2GLJ6gWsnY3tm0kJO0Zzwb329iBTlo25eFfRgfa0kUfp4
	FcRzaPeOkthkqTBQlZtgEPNerf2RQjNKIys+o0isYTKQ0S7ULPqMiCITbTMJNqYa23lWYIbn1JLCD
	c7ywZ/Hh5Nmy4s1UcY16g1ZFURbthaQHru/hRLu/9YxlBLpPx/51m08rp+GQYXeW7718gRYe22PXG
	Ch6nzakMl2e4raoMbljg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxeCp-0003UG-AW; Tue, 13 Aug 2019 21:19:47 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxeCZ-0003MY-8G
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 21:19:32 +0000
Received: by mail-qt1-x829.google.com with SMTP id t12so19335947qtp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 14:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=EFWQ4jRCEd8FDkIajgVLnR+9FJPAclCDJqxx4O3K6cM=;
 b=Uhqq6zLgUzH8NOnI6um+OvZlJTV4BOdsi9we2uNC6K9kKPpRJ/fKLAXMTOND4i58/4
 jUQeGgcoCwewV8FUpAKWd5CJPlt6G9tfZlDrFtQus00zfDwWbg19riTtLBj4XAqRG9Lj
 e6omlbWCvIA9q0rzQWEGDWrhCLNHK8xuAJ6t9XIY5ZxNghs4gn9Z4XhJmqcYQKxCFFK8
 HYYOaE/MHrthxHR8PaeSXpgrGMAsBQAYCRtzxsprE/JjO4hWMx5D3pSxLzZGbxTfes33
 uAIgEjcf+KZhxUqwgD07/+JNDvvmiutIWtHdbEpU4pSXxZLo/LHMK4n+w9Y2tWO8qM2r
 UqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=EFWQ4jRCEd8FDkIajgVLnR+9FJPAclCDJqxx4O3K6cM=;
 b=Ddh6VO/7pMnz7rtWzBTzj04mGS8r52VF1ZpVEuuCyxHZKyxauzSEwB6jtNoU4g6puc
 TSgLuFY3xj6pGwPOFLVvEPhZu71/f3sXrUpSTP2rCrWGy9Exru8/yBhgvgsyxa3Q6ta+
 gJYRpp3aoBsI/yaqf8lB+WKQgV/JvQpT6blfy9i7dlxputYIyKnyG0nFNKxv9ybcYX8L
 8YV1jV3M4vnn+Z87/wM+14CLDg9fU1GIHdsNmSvwEuRcaZqpUjpiQ2+za2YtLfaS5j6n
 chygxW0dJ2FiadeDjaWRUviDi5UYnllz6cthSgUxjOGpfyGsHMe0mr35DyooyTeFc3Br
 Dv3Q==
X-Gm-Message-State: APjAAAW6Gr4g1WfkrYTPql4mCzsLshHdIpooSSEWHXXvecR1L7Jtfl/i
 2WaPMVa9YnJRFtXRvEwzNKG1zyDYjJc=
X-Google-Smtp-Source: APXvYqx8AHPEuStN+ub7pm2zn9aiQcHCFLgI8UqHRNn5qyIpv84YbbRdbjZrRhAdb/Zul9jpQxkcRA==
X-Received: by 2002:ac8:43c5:: with SMTP id w5mr35103972qtn.280.1565731169195; 
 Tue, 13 Aug 2019 14:19:29 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id m38sm13989192qta.43.2019.08.13.14.19.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Aug 2019 14:19:29 -0700 (PDT)
Date: Tue, 13 Aug 2019 14:19:18 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v2 07/12] net: stmmac: Add ethtool register
 dump for XGMAC cores
Message-ID: <20190813141918.1601a649@cakuba.netronome.com>
In-Reply-To: <3d860a78ce4e98941f7e292d251d7360755fdf2e.1565602974.git.joabreu@synopsys.com>
References: <cover.1565602974.git.joabreu@synopsys.com>
 <3d860a78ce4e98941f7e292d251d7360755fdf2e.1565602974.git.joabreu@synopsys.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_141931_297777_C54F9171 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:829 listed in]
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

On Mon, 12 Aug 2019 11:44:06 +0200, Jose Abreu wrote:
>  static void stmmac_ethtool_gregs(struct net_device *dev,
>  			  struct ethtool_regs *regs, void *space)
>  {
> -	u32 *reg_space = (u32 *) space;
> -
>  	struct stmmac_priv *priv = netdev_priv(dev);
> +	int size = stmmac_ethtool_get_regs_len(dev);
> +	u32 *reg_space = (u32 *) space;
>  
> -	memset(reg_space, 0x0, REG_SPACE_SIZE);
> +	memset(reg_space, 0x0, size);

no need to zero regs, ethtool core zallocs them

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
