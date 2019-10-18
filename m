Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8010ADCDD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14lzT9cotM9RU+NYCdprnyUF3FAbz3f0/vaBU+CZPs0=; b=DS+zFo2aSqLPEt
	KVYjp8XQYUmGZnl5xAW/tzUeXLuyMCLo92dPY+iZMWLPANhlpYWRRQeVf41FzfOB4MTjyt02acuhW
	faoRfkFhfudfAlpl1zgOzkwJCT1n7GCA4FywEgZx2LnbaSCmAw2D8IvmyodNXNHTSh1VdooH9dRLc
	7AEtYSwUCjESuDmZMrIqgntz87BoiIpDoHkbljswBvE0sdo1eEuwcQ99gf8tZIQradcxrcZOHQQhd
	gGHfI9AAA81mTQHaQY0RFUe6T85/JFUQRjtjbgVft6Zduwj8CbEAtVLIWcBe7OPJzJMUtY1rwkC8y
	c1xgNkLSZOFixCrIAi7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWqm-0001Pz-JI; Fri, 18 Oct 2019 18:19:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWon-00085L-Hf
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:17:43 +0000
Received: by mail-pl1-x642.google.com with SMTP id t10so3220088plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 11:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=v9YW7BHNgsQ/SyyPbXQbYasZCLbj5buK6hp2Stw/kRY=;
 b=hJcc17Pd04cJA9HC+GwMAMjYVUY11jji7LMtJg0uX3pJdY5BbI2BFW0vbvi+yrWNz2
 8nDsrbt4SefCcegWAfhpV1uSHk8BJ9PXRXnyjzPdYtazh1O5lcgZhGE6zCb2lJOfdree
 xXRnqRdH7uKj9Pms/4+rIb+CNct97IEgJLAe2neoEwUUc0VcAdAotoXBAS0q7OW67pCV
 N2ARLR1P9E732WCxfon75MUVThi+EwBib+mU6HGk1+FNlVkb9cS5GbchqGqmQGfTYyMp
 mnI9CNShj6oOspxWy0WylGQJg99plx0jN7qJz+d+UeHSh6+NnqGdqu9qgxYjVnswNoBE
 wy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=v9YW7BHNgsQ/SyyPbXQbYasZCLbj5buK6hp2Stw/kRY=;
 b=T1E2gh15J8EpCbxs2XDuNJqGZrta1vyUx6QTG2tkobl/LUPcax8lF8PhIGAROYxesK
 0vKwsRiyyaS4FH8lmcjlS+AEE7UlW3DpuT7IFMEooOjp6Gakb3OABhBOJyy1T5CVtIwv
 SfjQOcyamaSTKqXEop8Hv75hoWI/b27XE4gNz9fVR1nyHe36RTdP5gTVw/CZxAu9VMOh
 yssvYHMDck+ytjbWnsLkkL63Aw5jsHzxloiRjwQH1D+4vyLYF0tNeIQGWBC3aQ/6vtti
 4mF5Cu2iPHNiyNYFaGNvaJTe8hpJLMpp46/anTh2duczUWOS1pMkEEEPEO3clHiT+wJ+
 Xs2A==
X-Gm-Message-State: APjAAAUFGrz61Xt+qnW8sVc/y6q8CPVOT3TxYXxouo/Fw1DSDpQhLVCK
 g8cm9wJRizzQ7btVCnhYv1ZSPfdiv1A=
X-Google-Smtp-Source: APXvYqwAW1evszJK3zfKVU5qC+kUrzT5nkGmV8rakyUXPWbliiBzm+rVT0a7YhJdlz/GJxIQ+EvtqA==
X-Received: by 2002:a17:902:9a88:: with SMTP id
 w8mr11523945plp.129.1571422651552; 
 Fri, 18 Oct 2019 11:17:31 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:4083:538b:22e5:c2ac])
 by smtp.gmail.com with ESMTPSA id h8sm7654640pfo.64.2019.10.18.11.17.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 18 Oct 2019 11:17:31 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH] arm64: dts: meson-g12b-khadas-vim3: add missing frddr_a
 status property
In-Reply-To: <1jbluef2sd.fsf@starbuckisacylon.baylibre.com>
References: <20191018140216.4257-1-narmstrong@baylibre.com>
 <1jbluef2sd.fsf@starbuckisacylon.baylibre.com>
Date: Fri, 18 Oct 2019 11:17:30 -0700
Message-ID: <7hbludc405.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_111741_623146_3DB83103 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Jerome Brunet <jbrunet@baylibre.com> writes:

> On Fri 18 Oct 2019 at 16:02, Neil Armstrong <narmstrong@baylibre.com> wrote:
>
>> In the process of moving the VIM3 audio nodes to a G12B specific dtsi
>> for enabling the SM1 based VIM3L, the frddr_a status = "okay" property
>> got dropped.
>> This re-enables the frddr_a node to fix audio support.
>>
>> Fixes: 4f26cc1c96c9 ("arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi")
>> Reported-by: Christian Hewitt <christianshewitt@gmail.com>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
>> index 554863429aa6..e2094575f528 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
>> @@ -152,6 +152,10 @@
>>  	clock-latency = <50000>;
>>  };
>>  
>> +&frddr_a {
>> +	status = "okay";
>> +};
>> +
>>  &frddr_b {
>>  	status = "okay";
>>  };
>
> Acked-by: Jerome Brunet <jbrunet@baylibre.com>

Queued as a fix for v5.4-rc,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
