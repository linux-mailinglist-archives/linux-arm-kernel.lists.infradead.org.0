Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8273D192574
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 11:24:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PLGQF/UZFgwY55ETYfHUnhyAlfydZB45geYkCMUnN4=; b=KGBabeclCYBowE
	bXxj9lGwu+E9ghkhf0ukYjS3AeDhdf9OSvMsMpvf9hffsPv4SbFIC38wAcht9ho75zpL0X88XgKo/
	DgYttCv4GFFhmvjyk61kbxLcto5NQFTn9bo+zRGwEis0fa8IzyJ7BUPYwWjfwfVdg3RRYjaLQKdbe
	KX8Xh2wWxx+5K+wFxG0mVxol6fMYZbg4DRIVhKlF1Sb+/8nr+UyzBeG9JNYOaYJ92jZOmjkYbmhfP
	bYXz/517uFmfJB2DTdNxV0gfGWRHVgh4mEEDkBjYgXw67iUv2zzS4vdptKQ8LCHiDZ3K/2kOsRzH0
	/b+dVetbTB8rq18n1zvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH3D9-00028L-Qx; Wed, 25 Mar 2020 10:24:35 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH3Cu-00026H-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 10:24:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id b2so2198082wrj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 03:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:autocrypt:organization:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BzfHzYyeVZSWPZmf8Nhpyum9G6Q8ZKSfkWFQNKWGsCE=;
 b=sU0a7J0Gs/HUbiRP/++nlwRUahSg/FE2iHXQpHBkAJZubhqtSCLXwDHbVsilwBsPcH
 UCM1UpzMXM0KxHO9aiaXkmtFvcRycP2SVUU+Z5JEadxttHW2Z4/KLM3B4jZPl3svT2FR
 wTpjVtUqnlDU2KqWAnqlyuLdzLWRbXdkLUmHpXgxotqrSJxSJGrDbkO9rRU+hFL1ToFi
 3fI5u/RH/rkga9INNxa9/uN3gODIDCm1P7hr+mKjEF8uJyr3FVbVaWEh/Q4Cby+12hKI
 SFglv4CMGtdNZ5ey/YkGbmn5KYd//7uU3/RqROKJ307oYDbmkX84gH+OvQj53/xGQ40Y
 4k7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BzfHzYyeVZSWPZmf8Nhpyum9G6Q8ZKSfkWFQNKWGsCE=;
 b=o3uGTtSjz8iqdpE/2plV0WgQfxvIoJ58G+ckenNZ4S1qgz+9NoTs2hJaLMT8V7a/ox
 gGSZu1X2F5xIFFTe9+/0lZzoDvRBXHWNN33/4iv8V/3OKgn56oHWOiPJvn80GWS2yEIe
 KCDpUDIPDynpIuUgRt+WIOEpBWEQ4AhdnIWwQ9XSvqz1RqJ3vWEdpMMTsRgEgJ7rdKjy
 MXsCBHb+Pek9Rh2BVTGUScbI1o2osHtsHQ1KOxCFA0ZTVt3PkE250U83s/OzMf7Kzq40
 BAGD4vH/sqPk1xCRrUqb1G+wCwA9r5YA4yb08BQduR2bf38BJ80foD3Ph6PFfZDww7Un
 cS7g==
X-Gm-Message-State: ANhLgQ0RJsnxxAaHpBYXHhwLgp6VPPh2j+AC0GqEXw0m8okbFZ7eFKnM
 8ukiEl1f9Tm7q30BIFGI7/s1ePkBLCmNBg==
X-Google-Smtp-Source: ADFU+vvLJbAbbUIWJHam7GRwCI9HtZWGavPvsJGJ2ROzjsDECG7fc2inbvS7x4LguS+4Gq8i7PwDTg==
X-Received: by 2002:a5d:664d:: with SMTP id f13mr2546821wrw.51.1585131856849; 
 Wed, 25 Mar 2020 03:24:16 -0700 (PDT)
Received: from ?IPv6:2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2?
 ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id s15sm35271104wrr.45.2020.03.25.03.24.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Mar 2020 03:24:16 -0700 (PDT)
Subject: Re: [PATCH v4 7/8] drm/fourcc: amlogic: Add modifier definitions for
 the Scatter layout
To: Simon Ser <contact@emersion.fr>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
 <20200325085025.30631-8-narmstrong@baylibre.com>
 <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
From: Neil Armstrong <narmstrong@baylibre.com>
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 BSwxi7g3Mu7u5kUByanqHyA=
Organization: Baylibre
Message-ID: <b1386ef5-c3e3-c07b-5982-e3f02441b431@baylibre.com>
Date: Wed, 25 Mar 2020 11:24:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <JgBZ7eZYMgXRNu_-E4ItS1bud9mEe15xptZEX_XhsM_h8_iIZTOmPokEVxPJYwX0wP0pmb5p-ymubyyZP3kVbcfuDNdmM0__L8wBR5IykfE=@emersion.fr>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_032420_135855_97FBD5B5 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mjourdan@baylibre.com" <mjourdan@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 25/03/2020 10:04, Simon Ser wrote:
> On Wednesday, March 25, 2020 9:50 AM, Neil Armstrong <narmstrong@baylibre.com> wrote:
> 
>> Amlogic uses a proprietary lossless image compression protocol and format
>> for their hardware video codec accelerators, either video decoders or
>> video input encoders.
>>
>> This introduces the Scatter Memory layout, means the header contains IOMMU
>> references to the compressed frames content to optimize memory access
>> and layout.
>>
>> In this mode, only the header memory address is needed, thus the content
>> memory organization is tied to the current producer execution and cannot
>> be saved/dumped neither transferrable between Amlogic SoCs supporting this
>> modifier.
> 
> I don't think this is suitable for modifiers. User-space relies on
> being able to copy a buffer from one machine to another over the
> network. It would be pretty annoying for user-space to have a blacklist
> of modifiers that don't work this way.
> 
> Example of such user-space:
> https://gitlab.freedesktop.org/mstoeckl/waypipe/
> 

I really understand your point, but this is one of the use-cases we need solve.
This is why I split the fourcc patch and added an explicit comment.

Please point me a way to display such buffer, the HW exists, works like that and
it's a fact and can't change.

It will be the same for secure zero-copy buffers we can't map from userspace, but
only the HW decoder can read/write and HW display can read.

We need a solution for those if we want embedded and secure products to be supported
upstream, otherwise they will stay in an obscure off-tree linux tree and for example
AOSP support (which will support these secure video buffers) will use these vendor
specific hacks.

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
