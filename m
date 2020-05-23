Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A051DF76B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 15:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/+Iu0mmbq5FzoRB5swVNBq3zKPNWdxO1lyz1ICSNZc=; b=etp3/9V2K+fXif
	iXZuLPfF0OFS8ky4S/1pCNpBXJTihSCMR8W044/EXHTm5P+6cSf48MSfKw7bsglb5ExdPudvOydwO
	ruKdvbr2XcYSKtT8Q2VGSfSY1qJuKPDAN27HNzJZ4iGqgONsJ02KD7X2+KNPEEZ6hUP7OSW2hV1gH
	1MNJlegasSu5KU2GY6MNbVe87olpSjLD39rbvGdUj1rLmidjM/gdBIsc6riwG+bnY2OBZKMQepUQe
	01R7XYtv5/Z46TtuZiKtRVB9OWroQE615bc6eRyvmpt5zGLoAjv+X54tLdhCzEpCVEZN1RffLSwMr
	zW/YNa11l93/JAhrSAnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcTz7-0002de-MD; Sat, 23 May 2020 13:14:41 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcTyv-0002cC-Q7; Sat, 23 May 2020 13:14:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id u13so2516476wml.1;
 Sat, 23 May 2020 06:14:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8LGo7kypX/UuiVS5X2JtFQ0JunA+QZt3vaFNvgvumNU=;
 b=gLm0wTbvAO45hZ2XesfzpTYLf2INXCegMtldROnBej+YMsA5hq5Qva0/c5u9XRoNfD
 2KP/Pu3p+OAXOdee9bB9unMBWRVIheR8b9dYAg5ncfqwXiJrkWGOEhPuapE4gmRIDeNn
 RNMV6rh9yvyTu7CCrYZzFJ/iVXM2VBsHVAiqPoHJNUQzdq11GxG7hyvjbCxHQz85s7xd
 NVX4QsVYkYcrX7MBIlJRZeDwX6MFL4FnJJxhmA2zaaQZHxdVCcvqwG7aTTh6fajXvJVB
 uUt1ErAwinoImb+4eA2YEKk4Nj7PfNayxWo1G9TSFyLJmH/QJgdTNjP7QpuVXk8aly+p
 rA8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8LGo7kypX/UuiVS5X2JtFQ0JunA+QZt3vaFNvgvumNU=;
 b=TIFiGl1vcvdqoAivIhndYOVdhPzvR/253sem1YVacbWa97bGBH1SA3hi/+RnOXghzq
 OgJsOTUy9Brh3yFu/BGdYfwf5mFSjZsXBd+XWCUHMJ1BXJLfy04H3XFUe53et4Et6hhy
 Ozvwid92GkIy9jtCLhGKvNlUUiLOPc+mJbLDrPMDye493Oupxg21tUzX08AiGeJ6mp65
 JKnmyjIV+ApWJ2G1C8+UlT/9J6kJtby/Mq0OLKpoHbSbxuvcx++xKrIGi7xBE9Ski/gM
 hjKFtVkEwJLSGTN1R2ZnIGGNobwjZZHiOFOSYEtj3V3RQWmAX/WpbKRN9iRESANES5RE
 Jjeg==
X-Gm-Message-State: AOAM532dW6CP+c2RQnq6kJnq9rz5nniXFW1a+XEALhk/cpYQl1hO6GXl
 v1EqQEeYPSsV3Xx/61R9iXM=
X-Google-Smtp-Source: ABdhPJxn+IxcTwwADZNrv5cvugkYcBEcPWXDlnjrtAyFx9W55umV1V9VFywTsf2mzefrH5OFGaF3Ug==
X-Received: by 2002:a05:600c:2043:: with SMTP id
 p3mr16862280wmg.187.1590239665539; 
 Sat, 23 May 2020 06:14:25 -0700 (PDT)
Received: from linux-gy6r.site ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id y207sm13594800wmd.7.2020.05.23.06.14.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 May 2020 06:14:24 -0700 (PDT)
Subject: Re: [PATCH v5 00/11] mediatek: add support for MediaTek Ethernet MAC
To: David Miller <davem@davemloft.net>
References: <20200522120700.838-1-brgl@bgdev.pl>
 <20200522.142031.1631406151370247419.davem@davemloft.net>
 <1f941213-7ca2-c138-3530-85c34ebf0d53@gmail.com>
 <20200522.143656.1986528672037093503.davem@davemloft.net>
From: Matthias Brugger <matthias.bgg@gmail.com>
X-Pep-Version: 2.0
Message-ID: <4a95de78-05fe-eec6-e09b-1b907287a8af@gmail.com>
Date: Sat, 23 May 2020 15:14:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200522.143656.1986528672037093503.davem@davemloft.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_061429_845988_952093AF 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 stephane.leprovost@mediatek.com, arnd@arndb.de, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, brgl@bgdev.pl, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, pedro.tsai@mediatek.com, fparent@baylibre.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 andrew.perepech@mediatek.com, john@phrozen.org, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/22/20 11:36 PM, David Miller wrote:
> From: Matthias Brugger <matthias.bgg@gmail.com>
> Date: Fri, 22 May 2020 23:31:50 +0200
> 
>>
>>
>> On 22/05/2020 23:20, David Miller wrote:
>>> From: Bartosz Golaszewski <brgl@bgdev.pl>
>>> Date: Fri, 22 May 2020 14:06:49 +0200
>>>
>>>> This series adds support for the STAR Ethernet Controller present on MediaTeK
>>>> SoCs from the MT8* family.
>>>
>>> Series applied to net-next, thank you.
>>>
>>
>> If you say "series applied" do you mean you also applied the device tree parts?
>> These should go through my branch, because there could be conflicts if there are
>> other device tree patches from other series, not related with network, touching
>> the same files.
> 
> It's starting to get rediculous and tedious to manage the DT changes
> when they are tied to new networking drivers and such.
> 
> And in any event, it is the patch series submitter's responsibility to
> sort these issues out, separate the patches based upon target tree, and
> clearly indicate this in the introductory posting and Subject lines.
> 

My experience in with other subsystems is that the DTS changes which
enables de device are part of the series.
They are normally prefixed with "arm64: dts:" or "ARM: dts:" for 32 bit
SoCs. That also normally the way I detect patches which should through
my tree.

Anyway I'll try to remember submitters in the future to send DTS patches
for network devices as separate series. That makes my life a bit more
complicated as I afterwards have to find the related DTS series to the
driver you accepted, but I'll try.

Regards,
Matthias


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
