Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FE628248
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 18:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aj8y6EQdBQSw67UOR/uMywWEsJjE6/MviV1lZpt1K6U=; b=roK+tsmcqGd7j+
	3Q8bY3vXclFWY1aKamhdtoFG6TfAKu99lqBulo52p09+AERORQBFCTpfKXLw91wr4Bnqt3v9ScQJR
	JNCQJuhd/mpS+38gu65rn1JCiUkTS9UOyCStkwMKW1Mmh+tmxeDQGacmbuiv1yLHPlLxxXeEyOyai
	2TbLGoBlSMJdQOEXJeZaUs5G5DrySVRchiRJpKhrrJukYzchYpTqSlHuacagmvTC69woX6bi4aAXK
	iBIeemhZ8GQ/i5XnFF9wy9ATtcV7a9dF6tDle+EWbTsDLil0yAhCKPz5PU2GEq5V+aneuMvGCZ4ey
	58GDFW2r1MDPYvhRLn8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqLZ-00015Z-LZ; Thu, 23 May 2019 16:13:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqLR-00014d-UH
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 16:13:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id n19so3514133pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 09:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Kla6xn5Rtm/ynxCsZh/uXOzs/7PtvcUWbm78TW3QhsA=;
 b=JJYISij6OTQsMewWsc7E1+XwxCJ7YJu4Ozycyefko7cDmUqjkzF/kf6xWuFAnOuEtt
 LvswkfXUWuKGPntdlRHylbPV9y1JW5Hu0fqMzZNcnf2Oz4HfZuuweY6RZ6BnA6pS2LRQ
 Mwn12h3qCDX3PIoCuk5sWBE41AaqOiijn8jXAI7gvSJQ6cIFqLV693BJheHieGlWjvHo
 s3hqw5gZ49nccTodxDAp/AT15UCMFafqatcT58SdQDyCpqZVObvuW3h7YS1WPGYtyllc
 wsalnXQnQyPywJaKwG15xvgfqoHoD40PWsPDm8KYmKGKQ+bGe1973LFOFsYo2CyB0q/M
 H5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Kla6xn5Rtm/ynxCsZh/uXOzs/7PtvcUWbm78TW3QhsA=;
 b=uUOCrRcscfbjvPqXvA9/6rTGOoevRDe+Km2mjeKPS4pHeoWE+92BTWC56Nd4VufJIM
 WTYU40ylh/RV8OeCw6zJR07Hd3/662i4jAi6tBLJ0r6sajFNGkG0mWiCWAgBvzh4fO76
 D6Uzr+DqlZpNUHvRmZ4Bf2SRphXPP/gkppqx9rBCC/ON1pUNP4XwRHb6wQgL4CHxISaN
 g1/Bxm3tmAP82JmQJ/Zfi0Tkfhzqg7WLy1df16LUYCz5+M/Bo8rLhACebpxL9eLiYqpB
 QM5DF2xzdCMpEyfU6elo2vUr64PylwX/vYV1JHrjCREvmnGTNCqcLv/OQHEHoth7yNN6
 3nVg==
X-Gm-Message-State: APjAAAU6/jshQAfCQNezCbX+6y6dxRs5gXO9wsPKHZSxLP6I5QWXox6q
 tjYFv7RyL8KiiYISxlbTaGEsFg==
X-Google-Smtp-Source: APXvYqzBDUKiUXW17Cp+BBLLt2WrMZacAsmzczuBQyg6+dOwQ2cQhPPIpTsGvSMwoBSJZaVBpKP9qQ==
X-Received: by 2002:a63:950d:: with SMTP id p13mr99087861pgd.269.1558628009001; 
 Thu, 23 May 2019 09:13:29 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:ed4f:2717:3604:bb3f])
 by smtp.googlemail.com with ESMTPSA id v39sm1383544pjb.3.2019.05.23.09.13.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 09:13:27 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/3] arm64: dts: meson: g12a: add drive-strength hdmi ddc
 pins
In-Reply-To: <CAFBinCA+G6f8pq8zPwzq6rkNmyS6U=7fL5HWnObvWDWCB893iQ@mail.gmail.com>
References: <20190520134817.25435-1-narmstrong@baylibre.com>
 <20190520134817.25435-2-narmstrong@baylibre.com>
 <CAFBinCA+G6f8pq8zPwzq6rkNmyS6U=7fL5HWnObvWDWCB893iQ@mail.gmail.com>
Date: Thu, 23 May 2019 09:13:27 -0700
Message-ID: <7hk1eh409k.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_091330_027953_94314693 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

> On Mon, May 20, 2019 at 3:48 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> With the default boot settings, the DDC drive strength is too weak,
>> set the driver-strengh to 4mA to avoid errors on the DDC line.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Amlogic's vendor kernel (from buildroot-openlinux-A113-201901) does the same so:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Queued for v5.3,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
