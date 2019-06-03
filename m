Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B0833AE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 00:13:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0IIIy7B2/BhmVQ0NjofyQbeY67SWTX95+4Dpm+FJyo=; b=ZCwxb3YPH8/BQl
	gBqBK3fpgNrpoHL4wvHVZHo4djLz8FDWf/LqXZWaGYnx7QR1suMvse9EyU+nRtbUGYTTpjmU2NCnN
	BM869/b2Kb5uy8JX3gQ3qieIidKXQ7pDnHpwU4PdnHpK6LdQD0uaEUrH44PnyLqFsfOM8eEk/eI5Q
	I3C5mDzwOayXn+iAnHz0dugX60PPGKJg5jwbWLPHzWpHnQdzt4Kd4CDm9g60hwxcqR4FzUcAXtVY8
	CaMSc8F2he7ZbyVk83NfqDhAZLjlvo5ogpxv0UrbBh0QgmnLqLOfATl3Byb2YzZuKwjOM0sM5Gn2I
	w/B2lEKtReVVqbPD1txA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXvCS-0005SR-VB; Mon, 03 Jun 2019 22:13:04 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXvCM-0005Ro-6U
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 22:12:59 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so11391132pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 15:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=79eSeDNe0QggiFOBK9zOhkSkQmpm6VlHBwv5gxt7/p4=;
 b=l1rcmfDPB8xZh5ExX5/oeDXna+HD9CgZmCMVmFB+VvD6eo1htrqyiBs/GZ2Yfyausb
 7UVbLj/TE/avZbpLI9r93eUtQgS6YbumWYhxeushwaJj2PIlRBfC4hNhJHGM9kFkd4dW
 /R3J9reECWGS2OKGZw8sgtQ2BRut6q7/R9cIpnaH1AHx2dye3s/W2eYBpvfO0DGL5/WW
 JwYQxnz9NnbpNZcn8bWtLsSsG+0LxdDexu9oaW6sQthC9v47ZYMuFRSh01BqhHMvPpQU
 Q7H1N+qDDJ8EJyFmo++BJsWng0iPSKfXQjjZr2AqAJMQabqIklXrGc94TowDzc40eflv
 JHkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=79eSeDNe0QggiFOBK9zOhkSkQmpm6VlHBwv5gxt7/p4=;
 b=DOGS2TMAXbdyC4zO7jpqsqCJlB1PirT0EfQG+4xOZEzuzZe82UU3xnaJQtY7xrRlNy
 ILDMJyS63vktGWpWAtSPa0iXis0zMdrQ/L0KtiWMuA/uEvbiaWhRrcBA5UcMIuATpoNH
 ldD+de/uGRSI0/ND6YQxgR/HdEy1bKiZp4qG4zBSIuDFPNf65BPEsaRtcchcjQ3LOx99
 eZY6lK7/I1mHeB5s8z0I+7P/tKYfEr112DYq7YRWrUmudIU48fEb5cBVsv0UP1FRburD
 g5N00FHJYbohUHl9QKrgW91dY/DMyz58MhjG6Fo5TQCYSjVrEQvaVdza4pa7ykCmaGZ7
 JPYQ==
X-Gm-Message-State: APjAAAXj8J8oMfvisQE3t4wy/RbuQCMSdPu4HlZUjULJjZLYXc0H3iDp
 8jlD/kN8zouTN+Gn7HhaWIGlAA==
X-Google-Smtp-Source: APXvYqxkGMxpvLdkckFS/GH60j+jfBPnCXI7MzEX2EcX4S0nl6IWm9JFRgyJVj/6Qy9k7P3zcGg6OQ==
X-Received: by 2002:a62:e511:: with SMTP id n17mr28496063pff.181.1559599977626; 
 Mon, 03 Jun 2019 15:12:57 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152]) by smtp.googlemail.com with ESMTPSA id
 i22sm15769445pfa.127.2019.06.03.15.12.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 03 Jun 2019 15:12:57 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v2] arm64: dts: meson: g12a: Add hwrng node
In-Reply-To: <CAFBinCBJO3J1wG1wa6X26VT6yGT_c_1XHOPiPpMRZGW8KKxopg@mail.gmail.com>
References: <20190527125059.32010-1-narmstrong@baylibre.com>
 <CAFBinCBJO3J1wG1wa6X26VT6yGT_c_1XHOPiPpMRZGW8KKxopg@mail.gmail.com>
Date: Mon, 03 Jun 2019 15:12:56 -0700
Message-ID: <7hsgsqiahj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_151258_235186_87BF171F 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> On Mon, May 27, 2019 at 2:51 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> The Amlogic G12A has the hwrng module at the end of an unknown
>> "EFUSE" bus.
>>
>> The hwrng is not enabled on the vendor G12A DTs, but is enabled on
>> next generation SM1 SoC family sharing the exact same memory mapping.
>>
>> Let's add the "EFUSE" bus and the hwrng node.
>>
>> This hwrng has been checked with the rng-tools rngtest FIPS tool :
>> rngtest: starting FIPS tests...
>> rngtest: bits received from input: 1630240032
>> rngtest: FIPS 140-2 successes: 81436
>> rngtest: FIPS 140-2 failures: 76
>> rngtest: FIPS 140-2(2001-10-10) Monobit: 10
>> rngtest: FIPS 140-2(2001-10-10) Poker: 6
>> rngtest: FIPS 140-2(2001-10-10) Runs: 26
>> rngtest: FIPS 140-2(2001-10-10) Long run: 34
>> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
>> rngtest: input channel speed: (min=3.784; avg=5687.521; max=19073.486)Mibits/s
>> rngtest: FIPS tests speed: (min=47.684; avg=52.348; max=52.835)Mibits/s
>> rngtest: Program run time: 30000987 microseconds
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
