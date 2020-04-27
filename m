Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B394B1B9A53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:33:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jK4RWD82eVfTo2en3IwVPH3ENEoyWJee1pp2WTz1UcY=; b=ehctrusrGSi9P9
	UvLB8VDUOkLKy0MmAIOexvcAHY6jz7iX05ObrBMnnzTGmPBTrBra5u3Hv5HxP3JLdctQMPwVDsvBk
	6KIEqduFM1/o9ykDCNgbQvqXZQ4J9xHXnXUO9ehcKV/P84wn5nAPhR4uC0B0xCEGvaiENFFXCaLCq
	g0uPa2p7+N7fIJToqfvzTMFbjBHEG2ZwiZ9TAMq1QF8sZ2wt+9G15gDeyqlmTc9+Iiow3FJZC54ek
	QvSmRIJ+SDqSyYEPgiAXsiEsASvtAPqh2V85Eqn4OPyHclKzECPVFOI/jwMOIKJoHGBEYH0mFnb0t
	1kUyRjtzai5qUiwgvutw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzD0-000364-EN; Mon, 27 Apr 2020 08:33:46 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzCo-00034D-VM; Mon, 27 Apr 2020 08:33:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so19402107wmh.3;
 Mon, 27 Apr 2020 01:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w0nU7XWSKjZiq42hI6aJFP/wV037pceDvXS4f3Cj24g=;
 b=abmztt5gJbmn/okxMUbQZq3wfbR/ooUc1lHRkBzCsYfwqY/b/rQ6IfE9Gdd9IIy0kJ
 Q6piiNV6rQTZ3K0fPfXalydyufc+WO9ycBQd/npG373tXzphOEqqqYbAZHOcD6ZyHfN/
 Ki3hCsk/ORwsvcEZV35MfxVEDM9JTddzQZtfGFL00l5UPp0axMtX15HOg2vuCPO9iAv/
 hanG4dd7nuMjBdgZ5D3FgShsnF0qzJ97w3nN+Up1kfB7WlCXPh9W+xfMbPcsPrCYM3bc
 lt7WCcTZSzxaDOuOaYaKoA1OmdkYbALxXPoS9XGkcuZNhQ0xEasOL3NOeCZb01+OTxcU
 nDfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w0nU7XWSKjZiq42hI6aJFP/wV037pceDvXS4f3Cj24g=;
 b=PQ+rYg3u7IU2RBNKpAX2ecaannBXly7oW0L4GuxvGhuaV+iU6VMuiM2I8z8AlLV7Q/
 8YYPGzBZJhbwZiGvWFjx7AexNcUc0Kbdrfw4fvAupb9i6lOfzuYiERbvpmclYYIsZKTi
 zh2H9zwykcgHEgsaXMAODuEEI8flE301x4fxcENr047eafGYjePpZ/EXaY+s6x0Xj3Qc
 t1Vus9WfLUPGztNFOypo22lvkVUMiU16DRwgNAbNQku0+KxQ83sc7jLHFvNe3M6TryEr
 s6kXUjsGL6zbk3tBhUkIM+0wGFKxz0n9VREyYdTI6iYIuwDu7XQWmaMabE2ZPRqGxJLK
 fjWQ==
X-Gm-Message-State: AGi0PuZ0deJLat8hp55IBFvdXdaMvYgYSvHdHHB1xmMg5gufchBJat17
 ouDs4G+xZLdkNA4Xb57Z3qQ=
X-Google-Smtp-Source: APiQypL9vQ25d/cx9/t2iweoGlzNivVSTWo7XTtXrJ5QP9N9j3FZH6z7MY/kfoDn/0qec5alrYVV6w==
X-Received: by 2002:a1c:808c:: with SMTP id
 b134mr26231938wmd.131.1587976409450; 
 Mon, 27 Apr 2020 01:33:29 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x18sm14448554wmi.29.2020.04.27.01.33.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 01:33:28 -0700 (PDT)
To: wens@kernel.org
References: <20200427073132.29997-2-wens@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: leds: common: Drop enumeration for
 linux,default-triggers
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4044214d-5385-94b6-d985-e1f824a60c5e@gmail.com>
Date: Mon, 27 Apr 2020 10:33:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427073132.29997-2-wens@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_013335_009886_73AE1AEC 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, pavel@ucw.cz,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, robh+dt@kernel.org, jacek.anaszewski@gmail.com,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chen-Yu,

> From: Chen-Yu Tsai <wens@csie.org>
> 
> The bindings currently list a very small subset of valid triggers for
> LEDs. Since many drivers or subsystems in Linux register custom
> triggers, the list would become very hard to maintain.
> 
> Instead, just drop the list and allow free form strings.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  .../devicetree/bindings/leds/common.yaml      | 21 +------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documentation/devicetree/bindings/leds/common.yaml
> index 4c270fde4567..3b3cdab3fc15 100644
> --- a/Documentation/devicetree/bindings/leds/common.yaml
> +++ b/Documentation/devicetree/bindings/leds/common.yaml
> @@ -79,26 +79,7 @@ properties:
>      description:
>        This parameter, if present, is a string defining the trigger assigned to
>        the LED.
> -    allOf:
> -      - $ref: /schemas/types.yaml#definitions/string
> -    enum:
> -        # LED will act as a back-light, controlled by the framebuffer system
> -      - backlight
> -        # LED will turn on (but for leds-gpio see "default-state" property in
> -        # Documentation/devicetree/bindings/leds/leds-gpio.yaml)
> -      - default-on
> -        # LED "double" flashes at a load average based rate
> -      - heartbeat
> -        # LED indicates disk activity
> -      - disk-activity
> -        # LED indicates IDE disk activity (deprecated), in new implementations
> -        # use "disk-activity"
> -      - ide-disk
> -        # LED flashes at a fixed, configurable rate
> -      - timer
> -        # LED alters the brightness for the specified duration with one software
> -        # timer (requires "led-pattern" property)
> -      - pattern
> +    $ref: /schemas/types.yaml#definitions/string

This makes it free form, but deletes the documentation of options that
are standard available for people without custom driver.
Where should that info go?

>  
>    led-pattern:
>      description: |
> -- 
> 2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
