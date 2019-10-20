Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90084DE0C8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 20 Oct 2019 23:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cw+6opqqupoBT3OGgxd34WrSdf0LymejT3OgKHDzQhE=; b=BHtzjjshQeh7et
	+lRwbDsWNeHSv4v7dIMK1Olnff+KCSzRVc2Nec6UXJpRAnu6fRRz0EAMC1Grg5kri20bAK0ZR8+5Y
	MQIFNyb+6MqMH+8PW+aeTlInEq4LYOskmudI6Cp1eiOWksMPxByaUKxWfNZ4WTxUDU48CAuJ6A47m
	55WIp+bveYoHU6Qflo1F782ClvlO8o8aYBivq8GAKMwUPUL+aYAEBiNXqyXhRH5s6jh/8UgDv6pLC
	6bymnBFSYN4cAbRXAZpA8m6y8eUpeEQmS7WxYvWRE7n/oJ0q9mQLeUZiRmNFSDOmlDjDAbw3qhSFS
	61LPHhcyhhzGNPrL9Suw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMJ2x-0005UC-Oc; Sun, 20 Oct 2019 21:47:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMJ2d-0004uB-52
 for linux-arm-kernel@lists.infradead.org; Sun, 20 Oct 2019 21:47:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so11191845wrb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 20 Oct 2019 14:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nEa2nCLVl/CaMx9prf1lrKZwy7roZPUD/Ml2yn5od4E=;
 b=PQ20TaMwJw0MJgI3eTBNxZzpIGkEApoS44W9J39kJyfMiQJOqSuECuaTRZYsz5Kngv
 F1SucEn8ltoeOktI1hFuCi35SsaY+6OBU7PiygDJhvtx+xmGRHci8bz+lm/8akpoAwu1
 pOmm2tSiDzuKFYEWoc6At9zcsRHJcBj4heeuTh2wyyqfremfg3fgm9/w32cgJo5e4AQ8
 Ac1tTlSxYL+cqjTESg70KDBTqXpaNcH71ZBHmLPpGggsxtZjT8fos/p3O8/570ZFNTY0
 8JqiQbJwrhJ8+bZDTS13w9Apw6SlZPeaUs1H1Kehdq0Gxd3OZb4vp+6sNBndhNL3sjsH
 Q0PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nEa2nCLVl/CaMx9prf1lrKZwy7roZPUD/Ml2yn5od4E=;
 b=JDqImEhBmL9BwrMGnzuV0gRmKuhWQ/qHDd14mzdxE6Q1mSKH4S2F7Ja64cmT3z34w+
 EmY9w7TcWU6uapGZO5MeBbDnTD94o03pDNaKJgVnczlV2pzqWVJEgm5SSZS9zyafmzXV
 CH1MQM6YW027kYEvGE/BBD96Yhg6s46qGsDCa5Pqy7cQ6S8IitoYz4IKfeHD2pq0AqAV
 34Yt+axpQhTEgUiGnid+fLRg2MwwJgSj7N9xfif6O9fQ2CgERAU+sfkeItFz3ginlnf3
 q1kSdrp/EvWrrru+Xz7LJfhLyv2kPaIEpoZELOduBWDCFbvVTugm+4LTe+L4Wfbxj0Bx
 ab6g==
X-Gm-Message-State: APjAAAU1YOy+NS6vIOZALJFHEGZaIa9zJ5vURENSGTp2W026eTB11ZLh
 LeCQtLmkwMF3K1y8i2YlnME=
X-Google-Smtp-Source: APXvYqyClbvQwzSKous9HNBfGcsRcFKBAklGfnLnPbxdFoLXwJ9Ngy/ZfpoFh7Lp3zlTGFkSxiwWbw==
X-Received: by 2002:adf:c448:: with SMTP id a8mr5850387wrg.233.1571608028815; 
 Sun, 20 Oct 2019 14:47:08 -0700 (PDT)
Received: from [192.168.1.221] ([62.68.24.148])
 by smtp.gmail.com with ESMTPSA id x7sm12307771wrg.63.2019.10.20.14.47.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Oct 2019 14:47:08 -0700 (PDT)
Subject: Re: [PATCH 2/6] ARM: ep93xx: enable SPARSE_IRQ
To: Arnd Bergmann <arnd@arndb.de>
References: <20191018163047.1284736-1-arnd@arndb.de>
 <20191018163047.1284736-2-arnd@arndb.de>
 <20191019184234.4cdb37a735fe632528880d76@gmail.com>
 <CAK8P3a0LWeGJshr=AdeE3QXHYe2jVmc90K_2prc=4=ZFk0hr=g@mail.gmail.com>
 <20191019222413.52f7b79369d085c4ce29bc23@gmail.com>
 <CAK8P3a3UztT5aqDTiBNDssHWcdYQNqbhiY_hxJ+AHuM54hgCWQ@mail.gmail.com>
 <20191019231418.c17b05f73276539536b4732c@gmail.com>
 <CAK8P3a0FfTjNAvJG1yUi==bLBjeVaJ0oseaqs-ZouZKHrFdBHQ@mail.gmail.com>
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Message-ID: <31d57d94-9701-1c46-6ce2-c43eaa16f444@gmail.com>
Date: Sun, 20 Oct 2019 23:45:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0FfTjNAvJG1yUi==bLBjeVaJ0oseaqs-ZouZKHrFdBHQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_144711_229795_D1132FB6 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.sverdlin[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Hubert Feurstein <hubert.feurstein@contec.at>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lukasz Majewski <lukma@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On 20/10/2019 13:49, Arnd Bergmann wrote:
>>> Ah, that makes sense. so all interrupt numbers need to
>>> be shifted by a fixed number (e.g. 1) like we did for
>>> other platforms (see attachment).
>> Yes, the below patch resolved both GPIO and DMA issues.
        ^^^^^^^^^^^^^^^
>> Previous patch (selecting IRQ_DOMAIN_HIERARCHY) is not
>> required.
>>
>> If you re-spin all 3 ep93xx-relevant patches together, you can put my
>> Tested-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
>> on them.
> Awesome, thanks for testing.
> 
> I only remember sending two patches  for ep93xx:
>  ARM: ep93xx: make mach/ep93xx-regs.h local
>  ARM: ep93xx: enable SPARSE_IRQ
> 
> and have added the Tested-by tag to them now. Is there a third one
> I missed?

The patch shifting the IRQ-numbering by one is a prerequisite for the two
above patches, right?

--
Alex.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
