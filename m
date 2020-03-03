Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDB1177169
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 09:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+vYiWexu+PkI1xUCiROEWUihYWUkyjeptiKQn4dZodg=; b=WRB1oRp0d7Zobk
	QJvR2223frHGAfxSFJ4hNpdFxwOMV1UdxrxMyNoR5iDzOxKi+vvT2KqZdnmPqj0pZ4NZG6sKSw01d
	pxdWW0qYo5/6a2/8rOAVpSdC9fiaj9LICAor6dIT/OpTc+ykkpQObAlsHEe/4tqY+TAKYt+nVdSUr
	SC9KRGUc3o/wainp1eSkVqMZ3cUUPfj9PA+sU4NtSUIc5FF8Prc1t02bFg3SbBKV2WGUs/4emAuA6
	n63pspW+i/JyV7M89DbD5KXR8ul+MVlrDGmH4/kVScRVWjJkXP1ECgb4lBXNADxT3pRnq0srma07M
	tHUUuAUJbWyJrlMXXD8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j939p-0006k5-Eh; Tue, 03 Mar 2020 08:44:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j939g-0006iM-My
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 08:43:58 +0000
Received: by mail-wr1-x444.google.com with SMTP id n7so3168851wrt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 00:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=yvGUbo1dfhbwTbh96YBjm+vOHC+xmC7MRUhhdcNamr0=;
 b=KueoG3CH8d1TILJ3jEseAooEkY/vqCzu5vVfybY/sidTv3lRB7+bx+mjB5w2ewajdY
 cY8h1RYGKivEhz4QZtczAVzTeVu+P8LmMF9AqbQANAoUbkt6AxMrzXQC84mvDEoYG5Sn
 R3/Gc+FFqRUZEb3iQbSEWNuvqpxv78iVNG59hxMWr4q4lvnvaotMkLy1YuQ2jQaT8inW
 DlTbYgGFp2Duo1qHw1IXajEDprPuJtugfSxcbbaYU6xMgfl1u96wPJPHjqzrC22V/2m3
 3oLB9yd31KEWxmtyXhtjLTwMXgnlxsNdCudYoVBzxcZeNeQEAJj495TfgrRNYY2e6jwN
 lUuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=yvGUbo1dfhbwTbh96YBjm+vOHC+xmC7MRUhhdcNamr0=;
 b=JG3au3GamexvPWcShWSLlTYo3qeEB7wCtwZuNGFBjHl8madOvft4rhDidCsJXq1AF0
 wBgj8IDf+BU3RPYYNfp/gmwfrpKzE14QRyLtfdXfPHI3u5psfLr8qYrIIOar2i0M3znr
 rRMnsvENinJ9j8EYYLwmGfoSTf0+uDqRJwQjMKWSq3Gt8IXQCQJlN8yoBCpvbavZLHMk
 IGMR5SEeKh7L0VIRsXxLuAdvF6IPAItJECBoRCqyPzC6hn8PhNHq2EMFx69e0z/s+98/
 bFAa51kajfalsj4oq5WSjVZ2CuvDgg78WmZpWqLTcg5huNFjcxMhLELIXPPcyi47OAHb
 +nLA==
X-Gm-Message-State: ANhLgQ0QwG8zE72mrXoMkkk8z0xxOeeZK/YvBjQ+9PzBQMVCILtPwHA5
 hxq4JeF32NFbjS3+bQgHRU8hYQ==
X-Google-Smtp-Source: ADFU+vth77irrYVpMCLL+lMOH+om3PsHUPjCNnAr+ba1VOLlWJv+R/5L/2HoCPBEenVfN9Fm/OsO5w==
X-Received: by 2002:adf:fa05:: with SMTP id m5mr4425101wrr.352.1583225034157; 
 Tue, 03 Mar 2020 00:43:54 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p15sm2720213wma.40.2020.03.03.00.43.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 03 Mar 2020 00:43:53 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Rob Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH v2] dt-bindings: power: Fix dt_binding_check error
In-Reply-To: <20200302201554.GA22028@bogus>
References: <1583164448-83438-1-git-send-email-jianxin.pan@amlogic.com>
 <20200302201554.GA22028@bogus>
Date: Tue, 03 Mar 2020 09:43:52 +0100
Message-ID: <7h5zflrfp3.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004356_776161_1D2621AB 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 SoC Team <soc@kernel.org>, linux-amlogic@lists.infradead.org,
 Stephen Rothwell <sfr@canb.auug.org.au>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob Herring <robh@kernel.org> writes:

> On Mon, 2 Mar 2020 23:54:08 +0800, Jianxin Pan wrote:
>> Missing ';' in the end of secure-monitor example node.
>> 
>> Fixes: 165b5fb294e8 ("dt-bindings: power: add Amlogic secure power domains bindings")
>> Reported-by: Rob Herring <robh+dt@kernel.org>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> ---
>>  Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.

I've (re)added these tags:

  Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
  Acked-by: Rob Herring <robh@kernel.org>

when applying this time.

Jianxin, please collect the tags in the future and add when you send
follow-up versions.

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
