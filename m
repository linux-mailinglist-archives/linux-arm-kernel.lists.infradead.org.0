Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802BAA1D61
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 16:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vZ9beBVePKe5w8yE9JOoTOG94xgBCx8AIyEQLqt9ldE=; b=qmFV/qBKJEGGct
	w7CPAiPsXZZYcr/41yq6mRbbp4+rQz2/Q8kSrA8cWRkefJqXJDeRLXBPkPnIPVIJ/TsuThsk9Hc1J
	VIb0RHFu5zkh+GqP+raLW4n/PD0Iq+tQ27Ok7lZLxGcljEvLbk2w4n+av5l8n3+ge0Q5f4Q23C/MG
	PhCtyO5CwZLjLvuGS4aNK/urulTbgoAZrIr7z8ab0dCV0LLCPtHQAAoNdxpUr9mipi7fKoy6fV4Jq
	bqGKw+hMjxbq3oUh5SG4ZZF3e7bmBAl6wveM3DrHDlAh2211GgcFlbPAG4v6wPmP2i55aKhZHLXl3
	6bx1wH4GT2BhnjFBMEOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Lci-0008Kk-PX; Thu, 29 Aug 2019 14:42:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LaW-0008H2-Av
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 14:39:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so3683137wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 07:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FShUYmpojXqD91qD2VQWKES2PpwI8gR+TS0hREDpeNg=;
 b=0ftpj6xZNoPnvIzgnjbHG/aJr3YHegwO8wl279E3BArfSZQxwDoBUu0rJrzRAXGF2A
 XVdp+sxsYp2O0Vhu4raX4uJjyJ6haP/vT2+jzSbWBwDZYOXjefzossTbVV0bQDoQmjTX
 VIUQxHlPIwUKMgZaOsyYdZri4q0lygOsthe59VXcgMEF+YWO20GLLbE33xH2H5foNxvk
 J4Ec9AyVNv6g+Wnj95cAWZ5hfD0b0PTA0CFLLTdyT1pExxeRza/o36B7slWihyWX/z8G
 Gojf9QOpJAaiuOQaUls/hMyzfBpQyCyQGxaCvC2fCt5BFnm4mO4bS6Fd/PPfECKP8lPg
 Q2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=FShUYmpojXqD91qD2VQWKES2PpwI8gR+TS0hREDpeNg=;
 b=toJRVDJ2OsTd3OYXGJAWJcoYYYdsDz27bjhXEk2YyZXpcwzxJWSrJWznJ7O9K/ujuO
 VtZ/a+Z0TMOYfAPqRWCSwTHm5IDLeFCPpxVySKvMswJ0Gp5NREQNaGsDNoFbAR5wu8ay
 hDaRwqbHtuexnjP/xKTe0vT5LdKbOWwYH+ylTyKuTdzhVUEjeDVhUd2mtRCc4MQ31u/G
 psD3vW4jHeDuh2tu2ZEkanh5xZf1VNloV9Cu18WH2Kg/GHFYzKlKm0JRMgTjuz4Cwpti
 ZSohljGNA9njqgikdoVqy5770rZRu3sMJ8Lvu6KO/NqLokvWKrXCfSKOn0dAsvf8R3lB
 3Hbw==
X-Gm-Message-State: APjAAAURe3pXWH2K+iO8RHY0YMQ4YkIpn+vivOIy3aCGKa4+kcR6sp8I
 e54ZvwB+Ze9dhHDr1tuobSGTKA==
X-Google-Smtp-Source: APXvYqwYkf/teAXMDXjBSarnDX5tyWrHvMSPMUbg/1ctXaCS5fY7GTEvTTK7xJ01Nf92vom5WehJng==
X-Received: by 2002:adf:de8e:: with SMTP id w14mr11944917wrl.79.1567089584611; 
 Thu, 29 Aug 2019 07:39:44 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o2sm3151404wmh.9.2019.08.29.07.39.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 07:39:44 -0700 (PDT)
Subject: Re: [PATCH v3 0/3] arm64: meson-sm1: add support for the SM1 based
 VIM3L
To: Kevin Hilman <khilman@baylibre.com>
References: <20190828141816.16328-1-narmstrong@baylibre.com>
 <7hblw9rx8f.fsf@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <70d75312-68f0-351c-26b8-0f357721dd9e@baylibre.com>
Date: Thu, 29 Aug 2019 16:39:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7hblw9rx8f.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073948_468687_EC09E08F 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/08/2019 19:55, Kevin Hilman wrote:
> Neil Armstrong <narmstrong@baylibre.com> writes:
> 
>> This patchset adds support for the Amlogic SM1 based Khadas VIM3L variant.
>>
>> The S903D3 package variant of SM1 is pin-to-pin compatible with the
>> S922X and A311d, so only internal DT changes are needed :
>> - DVFS support is different
>> - Audio support not yet available for SM1
>>
>> This patchset moved all the non-g12b nodes to meson-khadas-vim3.dtsi
>> and add the sm1 specific nodes into meson-sm1-khadas-vim3l.dts.
> 
> Reviewed-by: Kevin Hilman <khilman@baylibre.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> 
> Basic boot test + suspend/resume test OK on my vim3L (thanks to Khadas
> for the board!)
> 
>> Display has a color conversion bug on SM1 by using a more recent vendor
>> bootloader on the SM1 based VIM3, this is out of scope of this patchset
>> and will be fixed in the drm/meson driver.
>>
>> Dependencies:
>> - patch 1,2: None
>> - patch 3: Depends on the "arm64: meson-sm1: add support for DVFS" patchset at [1]
> 
> I tested in my integ branch where this series is applied, but I'm not
> seeing any OPPs created (/sys/devices/system/cpu/cpufreq/)

These patches were sent from your integ branch, on top of :
commit 395df5af4c782ad19fb34b9a2009ca240eeb9749 (khilman-amlogic/v5.4/integ)
Merge: 2fcc5666dd45 9557737987bb
Author: Kevin Hilman <khilman@baylibre.com>
Date:   Tue Aug 27 15:39:46 2019 -0700

    Merge branch 'v5.4/testing' into tmp/aml-rebuild

Rebuilt and retested, and I get the OPPs just fine :
# cat /sys/bus/cpu/devices/cpu0/cpufreq/scaling_available_frequencies
100000 250000 500000 666666 1000000 1200000 1404000 1500000 1608000 1704000 1800000 1908000

Here is the boot log:
https://pastebin.com/LY21gU9E

and .config:
https://termbin.com/1s5g

Neil

> 
> Kevin
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
