Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E856184C86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JjNUAfOS4veCawgJ47sBD09SVZVHUSK3JAIGc30tTRg=; b=YA+y4Rrr20MusB
	Lf5PZ77YbyoZ9pwwtfCOxwO4KyAtddDKVowDVhrsuo7aWwBF6Mm7S9tZCX67lQOoaNATDk3hkQhPD
	I7b9+l0R3eYhVvmmTopdUIHnnWdKith44JVLHVSTh5Jrey6OBIA7RWORR1gAxxwoNh2fxtAmk8yaU
	l1deBLIabRZsMu6qcDCrj3RAYIASep4cXJDNbcPqXCTYd9a/+ywvxUV8iA4KsVoh7+rsRUtZRWShu
	GWrwgGq5ynkLqxajP1MiLcAaO1TZgevm9RfQX6dg49en3dhDtcrWpo3X+/9+tq08Jtu5cK5WKrtTb
	xJRTaprjZGwP81vp7+gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnCT-0004Ls-FH; Fri, 13 Mar 2020 16:30:17 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnCA-0004KT-GR
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 16:29:59 +0000
Received: by mail-pg1-x543.google.com with SMTP id t3so5288841pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 09:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vh4lakeK29AQXbqjvMhCG6pLV68gIew76VfeFlkw24k=;
 b=OsJINWin1Nf578Kuw9f5K1zTvctenoENmw0QPr+6Mr6icAk605Pr2l9ZuwOUghW0/e
 SqNqPx8vfFbW68/AJuSYLnO8PCjvEO5wgVNEQ9a2J1LBBXdFgvg61Yo54T+7VTG94hj4
 Lmb5Ri/Af4CYKZqbH166BaSz/j0l00vnfL3iGtyW4dGM0qdXx20LmiFNKn+8odZUIkTS
 a++J7uurgpYO5kMeVkH8qFZP4k1GHm43Q6wKGTm5hTiqgZ3VWkH9WseG6kte8peHj51f
 5togC26nIpwpFFwKyAXUMoQwsxhc/ZxEeBZRV67vpZl/J/fH5vgyOm/a+JUreosYPjhT
 PMBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vh4lakeK29AQXbqjvMhCG6pLV68gIew76VfeFlkw24k=;
 b=AbcOnFzqLD/g98XlK1XyDdVJ8RUCC+dloWOPUo3FZXEi4M5+STCMWK7h0ezxj+ryhZ
 r7SLvJ4KDNZE2Spx6I23PgTOAPKXx0Pj6HfBcr7aMo+4ORx67YFNZtO408zcqYMM9LB+
 OfnXrq0aZjRtJMyRf9ZlPV+5OAd4AOWZnwLAQJX39jLofuOf7GG2XEB/MbZUJkJS37z6
 vQojWOkGCq9IKUwUnttOKUEpkzBG1wApp4DGFoH7EQamZAD9ozS+6sKMielADD70RtQD
 bBRr/VBwiP7/JByY17it28Y3E5E9t31iQnpza/kStVP4hkadSC+j+15Add28wJ06NvCD
 wFrw==
X-Gm-Message-State: ANhLgQ2m1GNj7SRXIBa5k4oq3UWGzA2PfyT4eRS+IQ143UIkaJlTz9w1
 4K7Ud+eLhl8NvFUpGXL+yGMEwBS2WLw=
X-Google-Smtp-Source: ADFU+vtbIXGwXH7/sXeYM4ia7CnfXUpB++YQYaR7JopT89xwppumB41AmCu+hDzYiv1g0KFhJmpWsw==
X-Received: by 2002:a63:7e49:: with SMTP id o9mr14214013pgn.80.1584116997154; 
 Fri, 13 Mar 2020 09:29:57 -0700 (PDT)
Received: from [192.168.1.11] (97-126-123-70.tukw.qwest.net. [97.126.123.70])
 by smtp.gmail.com with ESMTPSA id
 s23sm12169582pjp.28.2020.03.13.09.29.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 09:29:56 -0700 (PDT)
Subject: Re: [PATCH 1/6] arm64: Add asm/ccset.h header
To: Mark Rutland <mark.rutland@arm.com>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-2-richard.henderson@linaro.org>
 <20200313105443.GC42546@lakrids.cambridge.arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Message-ID: <d0476879-c8bd-8a6a-73e2-d5aaaab5cb6b@linaro.org>
Date: Fri, 13 Mar 2020 09:29:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200313105443.GC42546@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_092958_546316_74D77352 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/13/20 3:54 AM, Mark Rutland wrote:
> Is there any documentation on this? What value does the output operand
> nominally have when the flags are clear / set?

Yes.

https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#Flag-Output-Operands

The value is explicitly boolean, so {0,1}, just like type bool.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
