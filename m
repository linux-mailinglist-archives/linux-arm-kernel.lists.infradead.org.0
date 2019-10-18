Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E9BDCA28
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3IJfauGS6wWGJrwpDInKJe2dz9/qhmLZpgFvdQAbM4=; b=NBrvgGNq4APdTJ
	Lb3p6dBqZHx/Ex6dTNmDoysgwQtmZari3lJJ3lxigMz425xUUjRYYspRtqYldmYIytwYtZgkQxOII
	JEzAlQAtGCYz9qVacCSdr2HRCI3dVwimMzi+1mjbljQ+oqeCKLaniTr8nktLDp5cljdFcCbBPpVv4
	GF83EK1eVsD5JUNK7z6yIRA/3cyCqhdZDw3HtJmZ1B8k1OUsmz1mdkDMrzHIwdJMgSGoT7YBdSXXV
	eBplQf/1Rf8BeZl8DDR1bSr6sWMZApWdbG0sGHpoVpaMQYWqwtoMhG9ygH1m7rmUVZs+cOFt+fuS4
	j//HxucSiR6l2rstV/Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUhC-0003UZ-LO; Fri, 18 Oct 2019 16:01:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUh0-0003Tu-Tb
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:01:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so4158607pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gThyljWtDBKOhSiy6iEb52Z+/qQRS5Kp4hVB8LMGJq4=;
 b=A7/Tv/gOM+6HhintRWJJOEvZ/AdKsn7I2l/DAJ7OUeCkHrTr3E9HDo7LAZGy5a9vh7
 4WwtE1fCXfmc8BQ0axVIpFBHOC+31NPSn6fNdcXBuskW0pwH0z8qEHttIaNCsD9a/WT9
 CSWwteONKad90EyYOWLAZsMTcCSEs49m/y1SMk+tx74WXQrgJhCNZ3HfmXk/OtduEm5a
 qQ3itoPk54BDfX0j6mcM0EBih+R0ZJ3jfvuPOEs1X0w1p/oQbWS5sycEcXEEJZ0NVqCw
 KIW4YlYVRMoRzxXn6IQGQ6fKpjLslhSDGqrPTmsd2Npm9i4tTIfCLf1MpL79wCKrTDuf
 fISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gThyljWtDBKOhSiy6iEb52Z+/qQRS5Kp4hVB8LMGJq4=;
 b=aad3lY+X/GVU/SpNChsQD20ZRl3SEP+u/iNFJZ4o/K+QXUvjfvcBPAT2+kaQ8x2wZK
 q15yL6xAELsWdjlsT/rsa/NrNaO2EmhRMom+XhmhioPlymVxFLR3d4UV9GrRVLk61ubz
 fwWTMkQOODLAl/UWAWGFqjfsQfxD5sO9pJpfKWPNjww1sDoicIU1wMbioisKFMP5THw/
 wpO5D4gQV0fqWUwTKm4RT1xh9NpsiwbrVoTs04/hbfSSxNUDkcQ+AXA8Ia99gsC6BpN1
 4e35Rome5DyIiTqMxaFmuLB4T9W6NOJEU/iN28liB8wvmwd54aip+X65HiAU/Cgbh1Xi
 c+4g==
X-Gm-Message-State: APjAAAUq4Igb6BiitLX5nf0dDoWa8XFwW85DtiG3Rur/sT6w2LbZphkM
 bjtNRqYGOc6TTa6OtyYSdyQ=
X-Google-Smtp-Source: APXvYqxdw4v17EuDhxFWcokH7nzzl0sqYrWyTpIrsUMe5Zs8hAQW6pbS2VQO0dMBPOdl7QCf5KPWZw==
X-Received: by 2002:a17:90a:e98d:: with SMTP id
 v13mr12063806pjy.64.1571414489913; 
 Fri, 18 Oct 2019 09:01:29 -0700 (PDT)
Received: from [192.168.86.235] (c-73-241-150-70.hsd1.ca.comcast.net.
 [73.241.150.70])
 by smtp.gmail.com with ESMTPSA id x12sm6458744pfm.130.2019.10.18.09.01.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Oct 2019 09:01:28 -0700 (PDT)
Subject: Re: [PATCH] net: stmmac: Fix the problem of tso_xmit
To: Shaokun Zhang <zhangshaokun@hisilicon.com>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1571309950-43543-1-git-send-email-zhangshaokun@hisilicon.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <0b6b3394-f9f0-2804-0665-fe914ad2cdea@gmail.com>
Date: Fri, 18 Oct 2019 09:01:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1571309950-43543-1-git-send-email-zhangshaokun@hisilicon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_090130_983436_6475CF99 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eric.dumazet[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>, yuqi jin <jinyuqi@huawei.com>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/17/19 3:59 AM, Shaokun Zhang wrote:
> From: yuqi jin <jinyuqi@huawei.com>
> 
> When the address width of DMA is greater than 32, the packet header occupies
> a BD descriptor. The starting address of the data should be added to the
> header length.
> 
> Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>
> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Jose Abreu <joabreu@synopsys.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Signed-off-by: yuqi jin <jinyuqi@huawei.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---

Please add a Fixes: tag,
thanks.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
