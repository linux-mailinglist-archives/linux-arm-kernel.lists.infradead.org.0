Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4374E1DFF91
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 16:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOI6nCRlxynuzSP3kbhuXSCOCRzmfXsl4xKNjRaELvM=; b=lIo7b+Copxg/ym/Ku9s7/FHgq
	TVgCJDXOu4wBe4gUn+eUTlsXiL/r6WWICElXVWor4lZNGibgcKcBRQUWhBpx31CY3GOoGv9ECdz1s
	8tOcP8hAnpjv14qaHdbodAMyPNU2/b7pW2dF60va9rcMBThpRbY66m1ZX/7SECCZPnjFChoDECV7r
	Vkd00/jAya5rMSOwkeDLIhJxfm5nkl4BeXJLtwuJEwEwS/yAnNr5xry9RvflblVAV3h5WWZOyQahb
	tNdLBCPjFPoswSL41TN0XzoxGrKKiUM3rhejdbrH1YqhKaBXRwnjVOAdOcTTBVmDyY7ScY029ivKa
	ZNhGoVntQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcs5l-0003gq-0F; Sun, 24 May 2020 14:59:09 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcs5M-0003Sl-OU; Sun, 24 May 2020 14:58:46 +0000
Received: by mail-ed1-x543.google.com with SMTP id l5so13081070edn.7;
 Sun, 24 May 2020 07:58:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=Y/UicFuvpcY2Ut5syzHjsj0h3TJzVe57TFkzhdsHkh8=;
 b=d1dfEcltunn5RhfAUawB/4JI0nu1dXp5dzXUBXmljwODwCmVZwtomDVl1Jr75YB1nZ
 4D+gbqqpHycdhu1UPNO2n96mMxtlR1x7kLVwl6UsNrwCqtUzZPjljxxcexozUg8i84Un
 EEFFeEHVtHMgrXVkYFemsaFax32a55JVVxN2sOE9X7SVX/evzbwvOrJ1r8Z7V0GhAZ3P
 6lki8GnGpuiKJwK32AOW1C6BBfQ8WFPAdhiW1x8kcU0J7W/MBRMplBmsLKZf5FoGsAUR
 BXxeEyxdE5e07e1omfsOlc3BehPL9S38IBkzHDFhZhtgBRi5Rm1TQxuecTD6uUOeKHgv
 rucw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=Y/UicFuvpcY2Ut5syzHjsj0h3TJzVe57TFkzhdsHkh8=;
 b=W08630bMURoNgJmZ94zmwDozbc/ArYe4CDRoE2AMHu5F5fnazT3BhGIEh6NITRaHdo
 BYGqmlH6u2iEks/pD+KKj9LWnth+EoSYycahh7UD8LoiaJT6NLkLSDPS4ERsSGYd1eGa
 Uv0j/QTUIgjOhih5aOsX1DngTJSgJrqxMp2F05Mnh81gIR8dw++nU61qf9QKhatIXdor
 jKFg+2gEQJm8kstwTOft3krh3Wn18Z6lqooGbEWBB8ygsJIEqYvvPIhm4a+9qDzWU//9
 9eFM/IoCw62BQK/OiQpiQQ7+T75wgDohFeQVzOHtIxrp17J7q5os3kmxhh/ZfmM5GFQA
 WpDw==
X-Gm-Message-State: AOAM5301W+svmqF8rAPqP7rXX4j7tnk1licbeIQEih/gxUf7Txs/9b5O
 Iow16IBUuoZ43Chu73Txi/8=
X-Google-Smtp-Source: ABdhPJxV5I05JjLMCJZtvjje4+KjsrSq4ae7bPqBHrYqC8pPbSZwnbGSRM1TAjY5x8h2HL+Z79PF6A==
X-Received: by 2002:a05:6402:2213:: with SMTP id
 cq19mr11355107edb.337.1590332318660; 
 Sun, 24 May 2020 07:58:38 -0700 (PDT)
Received: from ?IPv6:2001:16b8:fd4:db00:2db8:f001:5e7a:1a?
 (200116b80fd4db002db8f0015e7a001a.dip.versatel-1u1.de.
 [2001:16b8:fd4:db00:2db8:f001:5e7a:1a])
 by smtp.gmail.com with ESMTPSA id d11sm1851565edp.26.2020.05.24.07.58.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 May 2020 07:58:38 -0700 (PDT)
Subject: Re: [PATCH v2] mt76: mt7615: add support for MT7611N
To: DENG Qingfang <dqfext@gmail.com>, linux-wireless@vger.kernel.org
References: <20200524034110.22576-1-dqfext@gmail.com>
From: Alexander Schlichte <schlichte.alexander@gmail.com>
Message-ID: <6a490b59-df37-b84b-9455-b9c2873b1f0f@gmail.com>
Date: Sun, 24 May 2020 16:58:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200524034110.22576-1-dqfext@gmail.com>
Content-Language: de-DE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_075844_818893_66D2D37A 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [schlichte.alexander[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ryder.lee@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, kvalo@codeaurora.org, royluo@google.com,
 lorenzo.bianconi83@gmail.com, linux-arm-kernel@lists.infradead.org,
 nbd@nbd.name
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just some random drive-by nitpicks, so take it with a grain of salt.

On 24.05.20 05:41, DENG Qingfang wrote:
> MT7611N is basically the same as MT7615N, except it only supports 5GHz
> It is used by some TP-Link and Mercury wireless routers
>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>
> ---
> v1 -> v2:
> make is_mt7615(&dev->mt76) return true for mt7611
>
>   drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c | 7 +++++++
>   drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h | 7 ++++++-
>   drivers/net/wireless/mediatek/mt76/mt7615/pci.c    | 1 +
>   3 files changed, 14 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> index 6a5ae047c63b..edac37e7847b 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
> @@ -111,6 +111,12 @@ mt7615_eeprom_parse_hw_band_cap(struct mt7615_dev *dev)
>   		return;
>   	}
>   
> +	if (is_mt7611(&dev->mt76)) {
> +		/* 5GHz only */
> +		dev->mt76.cap.has_5ghz = true;
> +		return;
> +	}
> +
>   	val = FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
>   			eeprom[MT_EE_WIFI_CONF]);
>   	switch (val) {
> @@ -310,6 +316,7 @@ static void mt7615_cal_free_data(struct mt7615_dev *dev)
>   		mt7622_apply_cal_free_data(dev);
>   		break;
>   	case 0x7615:
> +	case 0x7611:
>   		mt7615_apply_cal_free_data(dev);
>   		break;
>   	}

Maybe sort this alphabetically?
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> index ebdfca64b079..4ce8b379a147 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
> @@ -411,7 +411,7 @@ static inline bool is_mt7622(struct mt76_dev *dev)
>   
>   static inline bool is_mt7615(struct mt76_dev *dev)
>   {
> -	return mt76_chip(dev) == 0x7615;
> +	return mt76_chip(dev) == 0x7615 || mt76_chip(dev) == 0x7611;
>   }

Now the function name is a bit confusing because you can't use it to
differentiate between 7611 and 7615. Would it be an option to give it a more
fitting name? Maybe `is_mt761x` or `is_mt7611_or_7615`?

Apart from that you might want to call `is_mt7611` here. That would avoid
duplicating the check and order these is_* functions alphabetically.
>   
>   static inline bool is_mt7663(struct mt76_dev *dev)
> @@ -419,6 +419,11 @@ static inline bool is_mt7663(struct mt76_dev *dev)
>   	return mt76_chip(dev) == 0x7663;
>   }
>   
> +static inline bool is_mt7611(struct mt76_dev *dev)
> +{
> +	return mt76_chip(dev) == 0x7611;
> +}
> +
>   static inline void mt7615_irq_enable(struct mt7615_dev *dev, u32 mask)
>   {
>   	mt76_set_irq_mask(&dev->mt76, 0, 0, mask);
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> index 88ff14564521..b09d08d0dac9 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
> @@ -14,6 +14,7 @@
>   static const struct pci_device_id mt7615_pci_device_table[] = {
>   	{ PCI_DEVICE(0x14c3, 0x7615) },
>   	{ PCI_DEVICE(0x14c3, 0x7663) },
> +	{ PCI_DEVICE(0x14c3, 0x7611) },
>   	{ },
>   };

Maybe keep this sorted alphabetically?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
