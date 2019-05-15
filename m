Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0562D1E5DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 02:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=airJyfaAcki1H0QU/CZL7R2CUe7dKiJx9EraVt5T2w8=; b=B4uRN3oVzj5Ix3
	yHZV3WFbKsS1hFfkX/vFmZro2K5nSgO87zFZK/dIrjQsbIpgF7/ad/QGGNpKvsBdbN6QVkA8NDoqv
	h+IrH7LC+zDIJPNCG5yoqlxoLvtFb8hWwdTYqUtSwrYd59jD7UUXyfKu18Zj4MKDDPFwRj2rwSqfz
	jzO+IlpecQVV28X4Au6yvIkEyYwNcxP1tEktEm/M5jOGhni1Fg5QSMuVtpVQrysUcpLWNK7Ctn5YY
	nXP9TTJRVG8PrHld5lA16Jwwmq5FH3aDUnfVL09zudpGVlEHsKIi+F1jo7aka1bnSXMjFhC4bhJWX
	i56mMRQBzMpI5qD83rfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQhMy-0002nJ-Bo; Wed, 15 May 2019 00:02:04 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQhMe-0002Wj-K9
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 00:01:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id c5so369738pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 May 2019 17:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=pK3FjIHXVmrELjQUSW35gN3WLzKI4J7kVggFfkHpZEc=;
 b=Xl7AsYqQKlB5zy/wRKUEO0Qd2uouo1vCT1/wb/CGvV8OERDkUy28e4hZ2p3JGUYo2E
 r1JAbjjCCHJI5dJnbkzzaNinbbjlORDDkn5x5D7ziOixXN/Zli+SCjzsG9tapi3Ah1+l
 YF+ln5Kg9e1AXnXW+X6cghzxV++UnF1X6T73T1ZL9B7Y31EF2K46iTKp3BztzDfkD21h
 zgrbwR/vdrTHrND092KZTcMySPGv+Nh3Hk1NnErJj5yyqNfkzX7JhhYDphEHKyzSyxpd
 5UUrpiDSjxWILvU2uG1JHZc+G3ykLwEN0MO+yvWONg4YOMcr8dKom6QMfuXm1nb1/wf6
 0doA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=pK3FjIHXVmrELjQUSW35gN3WLzKI4J7kVggFfkHpZEc=;
 b=O0RUPLQFv/Bipmnpefu7rquZAHIKKYjv2hs3QJqe60KlBymYJkukIXnKby+TXyHPvD
 q85SeJQR6HU2RriGHfXs/Xhr73tEKxAOYYdOXFUbN9MqSpYPqlsJBKHvDVYI4tDs5Kst
 nSSro9qFIQSLARwu7BYevZcmttGqcQRDVvJGepYRAdTIW32k142xlXcXMj+A6IVOaHci
 SQTHvwUfkF4e4LrWhAujfUChH/JjsWW45pQarcz8D0NdHu6KHC84yovw/LapILW1eQaj
 tGnHJ8f71xv5zyzQuxPe9X3iMvT5qSZU/48f3hbUbYu5VJ8HKrToFEKdHSvhe8GcLQUS
 NK8Q==
X-Gm-Message-State: APjAAAXk3knzYjpAIKh9A1kvuMCJIGh+1g9PC+8eJTXqlGQjc6ZniI/r
 +favEA6sYFj1+XxPJXQsb714HA==
X-Google-Smtp-Source: APXvYqwA/DfK+7NSW/9CQTfxQs+5NE+m+9VhlUWRaZcnUJR3+QSMWeh19luJ6oTr81L8JvnMeyDraQ==
X-Received: by 2002:a17:902:e28a:: with SMTP id
 cf10mr40494068plb.77.1557878503981; 
 Tue, 14 May 2019 17:01:43 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:fd66:a9bc:7c2c:636a])
 by smtp.googlemail.com with ESMTPSA id d186sm247122pgc.58.2019.05.14.17.01.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 17:01:43 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Andrew Lunn <andrew@lunn.ch>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH] arm64: dts: amlogic: remove ethernet-phy-idAAAA.BBBB
 compatible strings
In-Reply-To: <20190511195150.GI4889@lunn.ch>
References: <20190511174534.2403-1-martin.blumenstingl@googlemail.com>
 <20190511195150.GI4889@lunn.ch>
Date: Tue, 14 May 2019 17:01:42 -0700
Message-ID: <7hv9ycd1qx.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_170144_820800_61AFA008 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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
Cc: linux-amlogic@lists.infradead.org, jbrunet@baylibre.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andrew Lunn <andrew@lunn.ch> writes:

> On Sat, May 11, 2019 at 07:45:34PM +0200, Martin Blumenstingl wrote:
>> The Ethernet PHY documentation
>> (Documentation/devicetree/bindings/net/phy.txt) states that:
>>   If the PHY reports an incorrect ID (or none at all) then the
>>   "compatible" list may contain an entry with the correct PHY ID in the
>>   form: "ethernet-phy-idAAAA.BBBB"
>> 
>> An older version of the documentation suggested that the compatible
>> string can be used when the PHY ID is known.
>> 
>> Remove the ethernet-phy-id compatible string and add a comment with the
>> PHY ID instead.
>> This is a no-op on boards which are shipped with the PHY that was
>> listed (= all known cases). However, if a board manufacturer decides to
>> ship a different PHY we will now load and use the correct driver because
>> we ask the PHY to identify itself.
>> 
>> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>  
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Queuing for v5.3,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
