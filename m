Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98C11AF9D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WLD03BrgKz4eh27tFtjIlmHAqKtJ5OttEHCyNaW9Fg=; b=mWIL7JnWaGEuYh
	ZrUMdFuZe/whhOuUqHmvfNtKBmypnheiYUa9/Rj/Q05NLaaoZxMmCOP/GmsL0gJdrFGq3JW6BQ95H
	9jQv8b96tflMUgZPc+MrKJHvCHX3hI+28F3G9c/7b8IZ3UKbhfgGogIDiYivkH7n2NrL1ST38+Cil
	TuWgeH95E+OpJZ147knd8dSKg5Bun66c3MAa564JkdrfuhiEolvL7Ifh7Jt6NI45XzZLfvTBIXfOy
	ItEiVVz3GDlVnniDsVUv+rOvYPaxSsq4hlta8vS9Y70F82HuCXlo6AL0v9a0AlU963+hTrUtdfv08
	Cq6XU+d/P2RIwo3H/UmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ8o1-0003LY-OB; Sun, 19 Apr 2020 12:12:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ8nn-0003KR-Ae; Sun, 19 Apr 2020 12:12:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id x25so7737408wmc.0;
 Sun, 19 Apr 2020 05:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qDWwN7dRk5pqZLvOlJ3z/P/6xlKYB15KnptTZqFY7ac=;
 b=WHzw1v+6PR34pG/FOKkcHRN2/DDqhMhjR/iJO5meFbj8IrqQe8AdPrjKLYw8HAJHsE
 tnUALuEXuRfa4Y4+pFausKpgN7dakbYI5x9TLjyiBlxqHbnLIfJc7RZKWKbJCt35b7Pi
 NXiAm5gg+h0iMcY6MQcTP6Nyp1Jq5p2wn47CPrY13BElvgWT/0Cl6p47HafBgEMhiBYC
 /w/kNua3p7dHgIsdHGP1YBhZ63pzTcSQSXUce/pkRClm89PM2o+F+mA4CExEKGz2Wmd5
 +H+NlCZ8TG9awAjgbjTgMs9HoHeIOR+WqyDKgsFJKYdvx5kss4aGK8QRz48OoO5kj+wg
 NhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qDWwN7dRk5pqZLvOlJ3z/P/6xlKYB15KnptTZqFY7ac=;
 b=rSma0WBgfN6nUI6taCFLHwwt0XW1AGwfghDgyjnG6apOjLx9S5G2ub+rscrrHe4tWM
 lh8DTc2zsu8FoprLKLTIT5FGJgS0wvQafQjljRqEWLE31uMOfaEQApZdUppoHuusW0VH
 x4PPQsWwBAUfbPdiWLssv+pWpCBHNpF3+tz+DpaHivAbTXH3EkRzBXMFvqEZSt8zuc/5
 efec674cPntWz8kKBuWei4CPR7DdwohNEea6N9FDsut2QBVJ4OmDXqkLzRu8iOQnr5QG
 BNzU6d+FlSZf292MErkEFh1mPqkjPvMFH/bMWlrKxpNRYZ7zh40Qnr279zbGUhNYgyqt
 v74g==
X-Gm-Message-State: AGi0PuY0da1R59rcs/CrhGZjKC1lS86c2KXKEFrQ4yoVXadCwUBp0ABA
 3Sr7+G4TPX+0JUb2ueJCzOc=
X-Google-Smtp-Source: APiQypKgu/b0k3pBd8Nqh1Je1Us+ItJulva0YmJp72MQ6GXdsWl+kPbc/D1tHvSbT4zMsffzpOZNMg==
X-Received: by 2002:a1c:3281:: with SMTP id y123mr12454056wmy.30.1587298317543; 
 Sun, 19 Apr 2020 05:11:57 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 36sm24581283wrc.35.2020.04.19.05.11.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 05:11:57 -0700 (PDT)
Subject: Re: [PATCH v2] dt-bindings: display: convert rockchip rk3066 hdmi
 bindings to yaml
To: Heiko Stuebner <heiko@sntech.de>
References: <20200403133630.7377-1-jbx6244@gmail.com> <5903181.62QgbpdqVa@phil>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <2cf39dcb-1057-5c52-02bd-cc81607414cd@gmail.com>
Date: Sun, 19 Apr 2020 14:11:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <5903181.62QgbpdqVa@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_051159_390628_13A5DD34 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, airlied@linux.ie, hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heiko,

On 4/19/20 2:08 PM, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 3. April 2020, 15:36:30 CEST schrieb Johan Jonker:
>> Current dts files with 'hdmi' nodes for rk3066 are manually verified.
>> In order to automate this process rockchip,rk3066-hdmi.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml
>> @@ -0,0 +1,140 @@
>> +# SPDX-License-Identifier: GPL-2.0
> 
> checkpatch complains about the licensing:
> 
> -:100: WARNING:SPDX_LICENSE_TAG: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Clause)
> #100: FILE: Documentation/devicetree/bindings/display/rockchip/rockchip,rk3066-hdmi.yaml:1:
> +# SPDX-License-Identifier: GPL-2.0
> 
> please consider adapting the license accordingly

This is a conversion of a existing document. => GPL-2.0

> 
> Thanks
> Heiko
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
