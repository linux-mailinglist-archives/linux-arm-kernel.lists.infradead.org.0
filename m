Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B61FA5EA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 02:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PU3f24WFjKRcCVBtSm02jYzHOF0D1LFwI2CI23lxF8w=; b=etV2NSZL1qwvcWTb01rtjXUWw
	+snrrJZ28ib5BA7E59F7u39JtFjKLpMCemfFRud6tv003IZCzrDcpqi3L5Ew+n05PaGI2puYfzNNz
	h+WOrkhdCtQU8Agkg5zpsDtijabNgomypERfeJ0BQkjLCnAjqyjIG2j6dvHMIfVBh4wfw/zeewpDv
	xWcUKqd6QIJccCPsIreQa22ismMeo5tnwetWu3b+1HUkicOLvluv0mPVIcA8e7ODNMa0KzE2mEeCU
	pPM1QiCOMMdkfrTmeX5PzwP7Knv+61PadJyrgI75qbHvQoXqje6A/W/fIn0068Jtoznbk2i3sYaAA
	FebbwIu1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4wpt-0007RB-NU; Tue, 03 Sep 2019 00:38:18 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4wp1-0007QJ-MF
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 00:37:29 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so4052766pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 17:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HYKhqZZp7jnIMlp6HX/xKA8CzksLvNCX8Kw12YKrVSI=;
 b=GG9uHqY6EzKTp+NmNFXol0x0Yo8b//eg5hirJUjGZbF8Ewi6n3Aqv7g5Qrs0WqwQzn
 sYwtAwbs8OtQOgUAVDuGRTUtGcLmQMWv4Ut+WcNtxSx4RwlMr+vCoe9uD0ie205jaN8F
 PfebOKtzphUwJgdQ382wOh2cZLBWxdCmOIP2WpEXo8+gsu09D1A6XomasjFchYmx1nOI
 XegTHmoC3NxSSC86A053v0JJS56nqb055YMqKnvesE4JSl8QbDQ8Wp1YMn7OM3UVs1IG
 XUQ/9dOwqVpsSPRIfP77FZdjdz4Yy+YHRU3taDM1pNNGowqahRwQCqlNw3zObX2COMrO
 E21Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HYKhqZZp7jnIMlp6HX/xKA8CzksLvNCX8Kw12YKrVSI=;
 b=Tu1NOmOu4FlIAO1pX4fmGUHJz0b5pHmEJ/PQnupBxE4WI0wzDn3ronnr4SYjMaDwtc
 hQl3B10DxrxvorLX2ysron+wbel3ZCE0CWljbgFB5Uj6u0AV+eedTk2gdT6cSJlheXKo
 nYoLTseIqfITdltBmxKsNCKr+Wg7jUIj4h52VO8kDPwUFPH08E5+DSXvi2/VX+lFl8KN
 vVcSZKg7uBi44VVgupBuA7glFA3GWe5roh+9hi8+gboAkx26vDsp4TUZszNHsZ4g+4mR
 QOfUFyLHKClf9nljjSJDLG/1y/zOHqgqmN3QUyU0TK0snOF4pTUJfkIlYoLBRB7oeWne
 PFzQ==
X-Gm-Message-State: APjAAAWhwqRwgF3QTqCU8uq7Fci1HsG2NX4tFCEvkQ55F844o5wCP5Jh
 iRmL5OjPfQ35AnHABwPZny4=
X-Google-Smtp-Source: APXvYqyaxD5JaG3LjjtT0YzYZcEzB/up1o1Kca6y0BH2nffXoIjkDxft6i8APuQY3uZc8Dx2gSgPwg==
X-Received: by 2002:a65:4c4d:: with SMTP id l13mr27017264pgr.156.1567471037707; 
 Mon, 02 Sep 2019 17:37:17 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 l7sm15825681pff.35.2019.09.02.17.37.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 17:37:17 -0700 (PDT)
Subject: Re: [PATCH RESEND v2 1/6] dt-bindings: watchdog: Add YAML schemas for
 the generic watchdog bindings
To: Maxime Ripard <mripard@kernel.org>
References: <20190821143835.7294-1-mripard@kernel.org>
 <20190830164811.GA7911@roeck-us.net> <20190902114650.w65ya7mgfsyu275x@flea>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <a7c5892b-4fd5-9b24-fdd6-f3aa1e6c98e7@roeck-us.net>
Date: Mon, 2 Sep 2019 17:37:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902114650.w65ya7mgfsyu275x@flea>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_173724_068776_E2386E5A 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 wim@linux-watchdog.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/2/19 4:46 AM, Maxime Ripard wrote:
> Hi Guenther,
> 
> On Fri, Aug 30, 2019 at 09:48:11AM -0700, Guenter Roeck wrote:
>> On Wed, Aug 21, 2019 at 04:38:30PM +0200, Maxime Ripard wrote:
>>> From: Maxime Ripard <maxime.ripard@bootlin.com>
>>>
>>> The watchdogs have a bunch of generic properties that are needed in a
>>> device tree. Add a YAML schemas for those.
>>>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>>
>> Reviewed-by: Guenter Roeck <linux@roeck-us.net>
> 
> Thanks for reviewing this, which tree should this go through? Yours or Rob's?
> 
I added the watchdog patches to my watchdog-next tree, where Wim
usually pick them up. I would be ok with Rob picking them up too
if he wants to.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
