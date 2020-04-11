Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F2C1A53B5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 22:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=487FHEyScsPprk9H2T08AawZwDeDt6uocIPNSy05920=; b=dY/BNVYIvhI6q7
	lMKmuFhKQFZYtEUTtQA6FaO5s13SBCmJt6BJwkmcoVCG2dG1GCsZ8j+GGGp6HJJfnKEEPF3XIJa4+
	MMjFxmzRVN3gSYTFoAJZ/T/sv0f3GqY19NMZ4hWjDqrxOvZM/8oIVFYS8+L8dUTySIBrwy88uFRsL
	7yFlt8BMMDfC5M4kDVSQpKsdJU1dIFIig3RyfM283htrcAggrm/tOBTpm4m/UMVQn6zEYqoh7MkgZ
	SnXx8x+AHjs4zN28/z/IUS5mxGK4J8/ZwC8EZPtI4CrNdU8L0ysBurzbOD5PvZ1aLHt9AZSuXL4K5
	Lf3x9SovXVb1xp8UzXRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNMuM-0000Zi-20; Sat, 11 Apr 2020 20:39:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNMuG-0000Yy-5p
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 20:39:13 +0000
Received: by mail-lf1-x144.google.com with SMTP id h6so3762025lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 13:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dUvGhh7rtUygLtFL6NkahS3nxFZQQQrd2UgQKXcfbs8=;
 b=p6IKm4P6WSbEAcbj6S3ltnZ2NHV2t8qTSW0NL2+R1TTGZLa2zbXXAMYSPOg3HVBLlL
 B0yFCzrnvUvMCA115IQVPj0FnoUHUGTnoN2E9xgDUJlhqT2ELFNVI2zKmxrqx1KgPA44
 UM48pJIiGIqE+sZgpbvelQmutKABl6UJE8DP+wwgnfTiamSfHHZu7Cbaxqj0makocRSi
 Gib5ayNACzWZla1dCsAZi0BHo0ltCbFGSQw8nxkcsvEE61nImKKS9veEH2g+6hrXjGwb
 Dc9V+WHNF7ldjSXauscKvQNCzhQMlN4G6jUkSRkXs0C5elMngQ+xd/8Kx+av69ix8NH8
 d1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dUvGhh7rtUygLtFL6NkahS3nxFZQQQrd2UgQKXcfbs8=;
 b=AwQ3cXPkGR8jEiZgy0OJmU1jZUHec2L5K61ulVCG6paWrbtARvzyN96wz1Uxov0V+p
 IU9XPtjDcVLeHSB/y/vF61KT/fy/9aYTxmfEWeyN0mSM6s0OUzymbJ9R/MrIcfvQZE+M
 0MSQPqrQY09U2IVQO5O4S9zEOsgUixArQC79Ss3ceapivFCY9gz9txLAZ9050CYgYjuW
 nDxpG5AQW4suHbxWkLO5PWTabXO+tnoDPnlSTOCTtLG9Qdqlt8GJ9g7jJq8BJYFrD22x
 N/vqfb+W2XZuIG2L2P8EcAYb8j5OXjyfZltT+bIiR6CJPHa9LWANTrLSUaCkeFfYjDpa
 dS/g==
X-Gm-Message-State: AGi0PuZfserz94MopkQPssV+VxYC7bCBUeq7tx4Mbh3PG04s+2X5XVLF
 74tCgX3iDJIgv33LEmLqTM9nTHVl
X-Google-Smtp-Source: APiQypITUq6qdmf7TaiDE8oKDktp99wvNTm7FyxMm+PVWG07LwV9SMzTF9rfMVSJnQ9VQ9hHrT6pog==
X-Received: by 2002:ac2:43b1:: with SMTP id t17mr6149082lfl.9.1586637550065;
 Sat, 11 Apr 2020 13:39:10 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id u19sm2435448lji.61.2020.04.11.13.39.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Apr 2020 13:39:09 -0700 (PDT)
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
Message-ID: <6976796c-6972-328e-3e9f-60c1737cf0e2@gmail.com>
Date: Sat, 11 Apr 2020 23:39:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <3e518dfa-cb3d-e2ce-a9b8-5e143e02fc61@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_133912_213966_40CE375C 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> ...
>> +#define TRIM_REG(chan, rank, reg, byte)					\
>> +	(((EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
>> +	   _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _MASK &	\
>> +	   next->trim_regs[EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ##		\
>> +				 rank ## _ ## reg ## _INDEX]) >>	\
>> +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
>> +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte ## _SHIFT)	\
>> +	 +								\
>> +	 (((EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
>> +	    byte ## _DATA_BRLSHFT_MASK &				\
>> +	    next->trim_perch_regs[EMC ## chan ##			\
>> +			      _EMC_DATA_BRLSHFT_ ## rank ## _INDEX]) >>	\
>> +	   EMC_DATA_BRLSHFT_ ## rank ## _RANK ## rank ## _BYTE ##	\
>> +	   byte ## _DATA_BRLSHFT_SHIFT) * 64))
>> +
>> +#define CALC_TEMP(rank, reg, byte1, byte2, n)				\
>> +	(((new[n] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##	\
>> +	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _SHIFT) & \
>> +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
>> +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte1 ## _MASK)	\
>> +	 |								\
>> +	 ((new[n + 1] << EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ##\
>> +	   reg ## _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _SHIFT) & \
>> +	  EMC_PMACRO_OB_DDLL_LONG_DQ_RANK ## rank ## _ ## reg ##	\
>> +	  _OB_DDLL_LONG_DQ_RANK ## rank ## _BYTE ## byte2 ## _MASK))

What about replacing those barely readable concatenated macros with a
raw values?

Like:

TRIM_REG(brlshft_idx, ob_ddll_long_dq_rank_mask, ...)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
