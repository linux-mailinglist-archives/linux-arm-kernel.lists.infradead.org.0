Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3A4185D6D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Mar 2020 15:12:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lo+ea8rJvIrWNwmBo7pmGVwn67/fK6gbcSc+NNehbbY=; b=EhHASW3Tpmpb5R
	ZxFOZ97SU5OTREH5CIZWCgmvV/DDC0WVd3VOYjTiWyG4prU95Z1lW6Sge6VOkRPdO0J1McJugm7S9
	/u2fCJVLjcHJs0a+8j/3STg6ZHraLHAb/eNpdturyjVLW3HiQ0TNr0xh3Kyw5yvreYSmx+1lGVQxi
	eM0X2yhsGeEEglOir3uIErHcRg1R+EdXptWsiAUGxoKiZsIuwLLA9KOY1p3F1y03l9LZhifSWiHPv
	wty4vXrTuFRkwnRlJwTQvc3sfXKEJPedq1T8FismWSEBkkEuGdJrtP8+Rm1Qd+IVpa6VG0AcJsP/T
	KR1jc5t4iM6XgQ2WQwvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDTzq-0005P8-N0; Sun, 15 Mar 2020 14:12:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDTzg-0005Ni-AF; Sun, 15 Mar 2020 14:11:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id t13so8817060wmi.3;
 Sun, 15 Mar 2020 07:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=I2Kq4iO6XijbXFBEnD85G1Xl5+d7l0FLMqlg0wGGvec=;
 b=aBeErJ5YyBbr4nxnQqkvrKEkkPnz6PAkHkmhro6G6MrJOL/UDFD7Ub6vQoY2SEDq1G
 9k+mhialuNE6IJ+pg1nt6+J0TB3v9w/1JZapZVCSYSppUz2ioutiCwrEHRKuPhyJHUU0
 jdD1cUnn28NFihH8vunjsiP7tvrhC/gnJK60e6sF1svey+0fe48hr95M3sdyIGa7BuLt
 vYGMSoLdIpe1SlnjB1aS4NEqq8w/BUPgrjnjfSWDnnnnxNtGqeJwU1wWXvnXkrj54TtT
 1RwUDuS2jAxhEHmJ+SRHGXYpyb8phDFCR9GqLBHcUDO1ZNoqfgaNWzx6x3bFTEGONVBU
 B1eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=I2Kq4iO6XijbXFBEnD85G1Xl5+d7l0FLMqlg0wGGvec=;
 b=B7bFN/soecGP6UstcDMkan27Kz1hje7y+Shh4/jDJIGVLd86lbPzAG2qkNftZAUIxw
 +LWQdY91SDUBI+EEKboqb8MiiGneBSLafmRjlvMZtb9hXSaw1IzksXTyhvvANZC8XwnQ
 VM3XZs8eU/Web8ewdVEUAlraSA8nAQCn6gMeIec8ZQrEt17A8VSmJ2aEXq/N0NcXJSwq
 DIUAxHuoif6ePsy/mKsqc6Qc5bxVyOtTDUD9cmuSey+WeQhkKIclIPy8q4fEkEyGtMlM
 P4F7w9j5UstLn+R74mx9s22l2bCLm7ww33o/nJZr3zkJqWkcXLS9EbEh/TdvoSKPKLHg
 THhA==
X-Gm-Message-State: ANhLgQ1FFuUaqoxvwwN/9vFt8ToQtb8iQ2X97EJbVZsFj//NiV5t+mna
 wSKbl8ghc/ukymaLEWiSs+Q=
X-Google-Smtp-Source: ADFU+vvBllAee/olaNqpNFG6FKneY1AlU0738Qu2NgW69UH5bHcTpF1H8IutAQgMKi9fKOhQ/CHFfQ==
X-Received: by 2002:a05:600c:c8:: with SMTP id
 u8mr22401190wmm.178.1584281513815; 
 Sun, 15 Mar 2020 07:11:53 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x13sm26860956wmj.5.2020.03.15.07.11.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Mar 2020 07:11:53 -0700 (PDT)
Subject: Re: [PATCH v1 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
To: Jonathan Cameron <jic23@kernel.org>
References: <20200313132926.10543-1-jbx6244@gmail.com>
 <20200315112223.07dd863b@archlinux>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <a35bdff4-601e-6186-584e-9a0b88cf3dbb@gmail.com>
Date: Sun, 15 Mar 2020 15:11:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200315112223.07dd863b@archlinux>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_071156_381341_A268B7E4 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jonathan,

For compatible strings with identical fallback we use 'enum' to combine,
so instead of 3 only 1 additional line is needed for each new SoC patch.

properties:
  compatible:
    oneOf:
      - const: rockchip,saradc
      - const: rockchip,rk3066-tsadc
      - const: rockchip,rk3399-saradc
      - items:
          - enum:
            - rockchip,px30-saradc
            - rockchip,rk3308-saradc
            - rockchip,rk3328-saradc
            - rockchip,rv1108-saradc
          - const: rockchip,rk3399-saradc

[..]
vs
[..]

properties:
  compatible:
    oneOf:
      - const: rockchip,saradc
      - const: rockchip,rk3066-tsadc
      - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,px30-saradc
          - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,rk3308-saradc
          - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,rk3328-saradc
          - const: rockchip,rk3399-saradc
      - items:
          - const: rockchip,rv1108-saradc
          - const: rockchip,rk3399-saradc


Check with:

make ARCH=arm menuconfig
# select Rockchip platform

make -k ARCH=arm64 dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

make -k ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

make ARCH=arm64 menuconfig
# select Rockchip platform

make -k ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml

Caution with:

'allOf' and 'additionalProperties: false'
does not completely validate DTS or examples!

On 3/15/20 12:22 PM, Jonathan Cameron wrote:
> On Fri, 13 Mar 2020 14:29:24 +0100
> Johan Jonker <jbx6244@gmail.com> wrote:
>
>> Current dts files with 'saradc' nodes are manually verified.
>> In order to automate this process rockchip-saradc.txt
>> has to be converted to yaml.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>
> Hi Johan,
>
> A question inline which may just be my lack of yaml knowledge
> showing itself!
>
> Jonathan
>

>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - const: rockchip,saradc
>> +      - const: rockchip,rk3066-tsadc
>> +      - const: rockchip,rk3399-saradc
>> +      - items:
>> +          - enum:
>> +            - rockchip,rk3328-saradc
>> +            - rockchip,rv1108-saradc
>> +          - const: rockchip,rk3399-saradc
>
> My yaml knowledge isn't great.  Why do we have this nested
> structure rather than a straight forward list?
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
