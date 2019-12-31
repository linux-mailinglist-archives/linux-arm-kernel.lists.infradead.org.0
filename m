Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6312D12D7D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HAPYn+N8JBUUOPUQTv4NGS719uQ/Asm/5IZyE2UUW28=; b=Y/hbACy87vUPsmZIiHTAU5bBJ
	EC0xHTO1obgghsZWdrZEnP1J8hlLrTfo53k2/7PiORrkB+oUwFMKPwB1DyrLLFo6crc5E4GVHS7uv
	Ub6j5DOTwR6O/BgbR8Os9FEW/U+QlXACXn8dB4dABW+kHzsFxHn5zJm7Njp1raZUKt7vE9tY+K4EC
	8aP/r2LcotrZoPfXfLhzNs7zzN3CtforeuRlrwNVzEOgmdGlDAdPU1uwVgUoGdi+8d9yNN3waamVm
	GGoJhWTLUbbP+fJBmCFyEu9nRPZipaA4N3t4Ysq2oUCDPQ3wohItPOAuA8kmtWtXscLKGqZFLijzZ
	sZ/dVgshg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEW5-0006Tb-SN; Tue, 31 Dec 2019 10:12:45 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEVu-0006S2-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:12:36 +0000
Received: by mail-lj1-x242.google.com with SMTP id y4so21567830ljj.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 02:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=sYidT8cA6/M5ZOcRmE0d5onegqqpe9/lv8i6pNEaUps=;
 b=X2ayaav5pA7MM+KDIIY6EVL62/ilIJWRbII6hQrPv8J6spDZIOjE4LnOX7dGL/7wwl
 dle64UH91jWQiLP9rol7pBRG4MYWWZJY3SlOw/K1Cw7VxlFi5Z3haVOyOHLT1Q2KIQCw
 xwWS/iiiTl4dbgjuyRkXiEJI4uE5H4+faG+qAXS0Rc2ZYlNZP2owOnFsG1+tog7CLDVl
 kPw27rrAQNE5NSzM1zTx/DtbqUhh2kN5Sy8oW01lIAI0XzfnoshuuKZB/WJgxBZCPgOn
 QjdfN0IrLOHhAfNW5M38q2vnbPu0Cu6hn0CK5yHL/y4wDbZKE2ZpoMp6oKJbVkFXAK++
 A8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sYidT8cA6/M5ZOcRmE0d5onegqqpe9/lv8i6pNEaUps=;
 b=P75UfX3arDDqmIi4fc8HeAF7CZUHiNC4VmhkKd0lbU2w89lcxG6IGD16fLw1U9qwL4
 fJw97sdGzuQLpuVDSwpkCLl63Vi1M2JLDbKkR2LXX7+0zCjdoeGBJPu4leRCJ6tTrKJi
 ipVzQzAt0NiEYAiogWpqpfYejTwTY6DyyrTw87prfPoKZ7P0xteIuzlDp2Md+z0WJvXE
 zVFu0wU4fBhd27dbVUmBbffcYvTprtukEfalkreyCrTrSGjOYxE8lSp7gn9EVv38J71q
 6Aj0KweTwltXM1XpoCkK1LkZxrVWCKUFui814sf18iw0PyQxlTc7BnOagnL5e4qliSCQ
 lGpQ==
X-Gm-Message-State: APjAAAV17cJOGCEo3e/146lCzRjBsSP4mS3T7t7/X/+MK81f249MWGVm
 dmenbUwo9Vd/2vgjMLBKEA+urw==
X-Google-Smtp-Source: APXvYqz3o9BNQOLYRcJKaBB89OeIbOZreMSdC+Y1SprnU0gutIUg4V9KRPDOu+KX+7jC75FdTe8Kfg==
X-Received: by 2002:a2e:8797:: with SMTP id n23mr40379304lji.176.1577787151735; 
 Tue, 31 Dec 2019 02:12:31 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:646:8dc9:cad:7023:48c4:5145?
 ([2a00:1fa0:646:8dc9:cad:7023:48c4:5145])
 by smtp.gmail.com with ESMTPSA id z7sm23586452lfa.81.2019.12.31.02.12.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Dec 2019 02:12:31 -0800 (PST)
Subject: Re: [PATCH] stmmac: debugfs entry name is not be changed when udev
 rename device name.
To: Jiping Ma <jiping.ma2@windriver.com>, peppe.cavallaro@st.com,
 alexandre.torgue@st.com
References: <20191231020302.71792-1-jiping.ma2@windriver.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <57dcdaa1-feff-1134-919e-57b37e306431@cogentembedded.com>
Date: Tue, 31 Dec 2019 13:12:29 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20191231020302.71792-1-jiping.ma2@windriver.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_021235_137624_249316F2 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, joabreu@synopsys.com,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

On 31.12.2019 5:03, Jiping Ma wrote:

> Add one notifier for udev changes net device name.
> 
> Signed-off-by: Jiping Ma <jiping.ma2@windriver.com>
> ---
>   .../net/ethernet/stmicro/stmmac/stmmac_main.c | 38 ++++++++++++++++++-
>   1 file changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index b14f46a57154..c1c877bb4421 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4038,6 +4038,40 @@ static int stmmac_dma_cap_show(struct seq_file *seq, void *v)
>   }
>   DEFINE_SHOW_ATTRIBUTE(stmmac_dma_cap);
>   
> +/**
> + * Use network device events to create/remove/rename
> + * debugfs file entries
> + */
> +static int stmmac_device_event(struct notifier_block *unused,
> +			       unsigned long event, void *ptr)
> +{
> +	struct net_device *dev = netdev_notifier_info_to_dev(ptr);
> +	struct stmmac_priv *priv = netdev_priv(dev);
> +
> +	switch (event) {
> +	case NETDEV_CHANGENAME:
> +		if (priv->dbgfs_dir)
> +			priv->dbgfs_dir = debugfs_rename(stmmac_fs_dir,
> +							 priv->dbgfs_dir,
> +							 stmmac_fs_dir,
> +							 dev->name);
> +		break;
> +
> +	case NETDEV_GOING_DOWN:
> +		break;
> +
> +	case NETDEV_UP:
> +		break;

    Why not merge the above 2 cases? Or just remove them('event' is not *enum*)?

> +	}
> +
> +done:
> +	return NOTIFY_DONE;
> +}
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
