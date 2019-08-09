Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBB68765C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 11:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6in0Uu7kDBjgzDpIpUtlkY7vzObEXljIFaPS1b+klzE=; b=NAWXAg+/5xs02gHnBe0piOycK
	pcmK6Hd9gRscy36IrrmiikVhCa+Jf/uFTm9Kvx+2KuyLCisfUVsau7IYgVpvXuJerYhYWyhxCIspw
	RiZyme/1RUtAceqXqAntrIft7pFyieZfdqlWa9SnHVacnzICRRKst+fu2eGfP3500WLqfEPLwbdyY
	Gop2Ncb5tKktXB6h+lu9B/db1hP+QOtuMGM9ahuiPkB48+j+luqZ7yWsqOMRYVdpQ4FTLjkT2AX6G
	/c0qH4CDow5DU6btgkkXnjtilpWUQ00J4XVOT5TjAfW1jOvMRccxsXuSarLyqVduW8NpRcxyK978g
	3UIGJznfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw1Ls-0001mL-3D; Fri, 09 Aug 2019 09:38:24 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw1It-0006p9-3V
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 09:35:20 +0000
Received: by mail-lf1-x144.google.com with SMTP id j17so15041765lfp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 02:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ZhZIKbPy1ojcvmbIo8mwd7oy4V33VIdwk5j1j74WW9w=;
 b=VcVeBlNEjS4wa/wbZ2Jy74bbWsbslezZzRDF5L5UlZPXuFgueVv76Apfbc48KCG7go
 O+JybRtPA55YOzc+rFrImDZn5Uzf4Iypjkw1Q2Jrzsy02VozkkgOmiMWFsyG/90IeJID
 s7g3Gev/hUXSaIrCTrM7IhGUouQ5uAYJrQU3W3SKx3qZhdrx3pME6i2VY+znRnPsMDZ6
 IqCV+5+rqLIKHOuF9OdviK0y/AZ3VputL3vLRILFoF8nj2+pSMBc+S3cQ85tH9TO2N3S
 m8AsLb+p6B1SXzPU1ej0Ppenwk9xbIlPPfP789O8926HVT26h04IVIjFQkPvwouSfOGR
 RQ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZhZIKbPy1ojcvmbIo8mwd7oy4V33VIdwk5j1j74WW9w=;
 b=i3EesJ/EYr/Kwl9DdaCzdwXfTNS9RJOxJzVDpUmXBrRMMq7+6JQZP4VkN0XAPQxObR
 R932jc2H0yyno7cdMzxjoJwv2yIVU+rspbZ/imvkEntOUGGRTEMaf/wSyZ0Iy4JCKg06
 w6d5FcFrguSd6v7yz9sIOYsMMJsmlkjsWC/8Qhu2RMATI1QPAnzknFNsxT3JWPJwTsW4
 IBLEenhNjsKX1+/19Fg9tvnWOoYOegUd4ZXTgVa4nzhkB5/Qy5iQlNlOJiKZj/oiWDh4
 CTY41YGYXLubvLHgAiuZ7aD6tD5VqeQ1Mu8N3KLRip5BUbm6zgelyvml9VeekoADcEe9
 wyaw==
X-Gm-Message-State: APjAAAX1sAjMKl9TatyveHxuMjK5VWTGOPH/bKHg3QhL+Iy2VyLcC4FJ
 bS9fV2mWMOe5IU/kb8JNphtrbg==
X-Google-Smtp-Source: APXvYqzlq7k/M37b+stHUNm1aCq6nUomyYeuBENCXNdKlF0iST4RYWqRChfyDEB29cAPzX6iW+LIMA==
X-Received: by 2002:ac2:5981:: with SMTP id w1mr12123067lfn.85.1565343316741; 
 Fri, 09 Aug 2019 02:35:16 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:44bf:fcca:cd2a:e5bf:7de5:cd?
 ([2a00:1fa0:44bf:fcca:cd2a:e5bf:7de5:cd])
 by smtp.gmail.com with ESMTPSA id t21sm19110864ljg.60.2019.08.09.02.35.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Aug 2019 02:35:15 -0700 (PDT)
Subject: Re: [PATCH 6/8] arm-nommu: call dma_mmap_from_dev_coherent directly
To: Christoph Hellwig <hch@lst.de>, iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
References: <20190808160005.10325-1-hch@lst.de>
 <20190808160005.10325-7-hch@lst.de>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <247fabce-5284-8140-c492-fe49e1683ca6@cogentembedded.com>
Date: Fri, 9 Aug 2019 12:35:00 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190808160005.10325-7-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_023519_268877_4EB0A45E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08.08.2019 19:00, Christoph Hellwig wrote:

> Ther is no need to go through dma_common_mmap for the arm-nommu

    There. :-)

> dma mmap implementation as the only possible memory not handled above
> could be that from the per-device coherent pool.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
[...]

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
