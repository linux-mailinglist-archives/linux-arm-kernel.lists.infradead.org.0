Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897322CA5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:08:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kgQ4SYoHAbXhQ+pekeUGsnJTDLKH6hGo6T8baHk2ms=; b=UXRuQWs52ZrnGP
	ZmdsQlZbro3me0TD2+tXboCZN6AtaeblNhAfHiLnK9JRKCsCCw0Jt3aQrSTS6Ck/pOb87qbeDDs6a
	US6hJc+1xxO5CMMPH2AXRcZ+UvLAmgihA7ZEdK3PufGM9sGKB07WWHDMKaDLuxTb3TUB6Bb/+lgkT
	fKrwdHEZ9EXMPCvSfSpWMxPzRZjsXYbuRToeBErz/5t9/B/NyPlQBkLlLRY99h6FLuPfSNold3GDb
	D9IcBz/7qgLCDkRGHur6FQEfxJV494yZCsojDYcnxITWASNAFlfvi3o8LKKb9Z94j1RyC3KAI7je6
	cho52r/a/JkwePq0cMBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScP2-0002uZ-RF; Mon, 20 May 2019 07:08:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hScOt-0002rT-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 07:08:02 +0000
Received: by mail-pl1-x642.google.com with SMTP id gn7so2104944plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 00:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Sfz/wTK4Fk7TRovLBv1qvhNp3yN3sj59BUUzJlRjkrc=;
 b=lpcM74dz/aZhexCJWtDmJQFV0sKM3IJH8Ic7/gX5171ohRi1znuJy73Hs8hqsJiOlf
 bEhmbUXJU50A5eKZiFhlx0U8A2gMBIVMpcAnR4gMTqoFfqFM4cfK5UJRJbaj2jnuLvnk
 tV37CzvQqnAtGaVudi1HDU2pBtyhI20CF5+iBks9T4IrouY+LnwHeeJDrpAEPbVbsUts
 x4PjJ41O8QELJbc95gQSYbNahprjL4SxeQl9F1FNmyvP119KDWuoHAcSp5qArwK2knbJ
 QW7B2+f7Cppb8V9ZDnf1edb/ogWabtC0is9BkjJHJvNLyT4QPvh30//ZoXP2QFRmyl31
 4KEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Sfz/wTK4Fk7TRovLBv1qvhNp3yN3sj59BUUzJlRjkrc=;
 b=Nbnxc0GZ7mdyYacSzSp8TCeWMbuExP+df//wGU5IIbYUC27InHXarWQpXU2l3hqeht
 YuhhNLmLLaj3/oJk9aqueSbYRM5FTol+1O0eAhMPvmW/rreuc8ed1K7DtP22xTFUrO3e
 ygkmKxmI+wdEWMmi3MhhRNTUjAnU4tFuC9SDU0kjFo3xFwgPz9/KPJu/6ZfGfz7kqYSM
 PbFrQN3LQvbr9qh49la7aKaIolLpQnvMX5T9giPm0gqEdqZXtRtHJtqL0g3QTFvG1CMs
 kT6OHSpMg49beLCSoGi8UC95LN4Zk+wOtyEzAP9q4OLS/A7ql2SHa+yc5xbYxXZAGmn5
 ueBg==
X-Gm-Message-State: APjAAAUBL0N7dI1PItBJ4/T7nA6+kyoMrAuME77AzVHQDKZlNGbpFYOd
 zbGyVNOrrilw0wzoEjErnH5rsg==
X-Google-Smtp-Source: APXvYqxyVzPC9IoxOLKDts628XWv6OkrfIirzaprUaYuA7AlwNUSiNFN1GO1i7qw0lRjk+2T7cp04A==
X-Received: by 2002:a17:902:347:: with SMTP id
 65mr61865215pld.232.1558336079127; 
 Mon, 20 May 2019 00:07:59 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id c2sm24319974pfa.18.2019.05.20.00.07.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 00:07:57 -0700 (PDT)
Date: Mon, 20 May 2019 12:37:55 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [RESEND] dt-bindings: cpufreq: Document
 allwinner,sun50i-h6-operating-points
Message-ID: <20190520070755.46y7k4l5ya2mdjdn@vireshk-i7>
References: <20190418125538.25722-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418125538.25722-1-tiny.windzz@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_000800_137569_A69F5CEB 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: nm@ti.com, mark.rutland@arm.com, linux-pm@vger.kernel.org,
 maxime.ripard@bootlin.com, vireshk@kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, sboyd@kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18-04-19, 08:55, Yangtao Li wrote:
> Allwinner Process Voltage Scaling Tables defines the voltage and
> frequency value based on the speedbin blown in the efuse combination.
> The sunxi-cpufreq-nvmem driver reads the efuse value from the SoC to
> provide the OPP framework with required information.
> This is used to determine the voltage and frequency value for each
> OPP of operating-points-v2 table when it is parsed by the OPP framework.
> 
> The "allwinner,sun50i-h6-operating-points" DT extends the
> "operating-points-v2"
> with following parameters:
> - nvmem-cells (NVMEM area containig the speedbin information)
> - opp-microvolt-<name>: voltage in micro Volts.
>   At runtime, the platform can pick a <name> and matching
>   opp-microvolt-<name> property.
> 			HW:		<name>:
> 			sun50i-h6      speed0 speed1 speed2
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
> just fix a typo:
> sun50iw-h6 -> sun50i-h6
> 
> This patch is [2/2].
> for [1/2]:
> https://patchwork.kernel.org/patch/10903381/
> ---
>  .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 ++++++++++++++++++
>  1 file changed, 167 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt

@Rob: Do you have any comments on this one before I apply it ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
