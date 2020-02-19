Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7525E164E6E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 20:06:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Subject:To:From:Date:
	Message-ID:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yro85J161FTrTbk60E+Ha7ydahLIxcyvfQXZW/M0Toc=; b=Eyv0sTUrbsJZIS
	G9JmcWb8CMzOFnwhCewoJlza3sV2pzV16fSiEc5GaRxD5sOGl3ZXKzhfSfga7bIeaVrwm5XZnswrX
	KvH98D8VGiFo9OfiTgca21Tu4k8NuImvKWtExlvmxAsZvMwOTU9BAesMQPGPTUaeOQ/j+JR/rcZfu
	ZBBC+hauMEbTYs6M8v15Q1Q1vUsqYj9UopGJsRFPlXJNUOO0bPnAffqssTuCjv2QfkcpddvjXcrEW
	U730d74kLE6XL4XkRZJKn0gu5S7SqOrPI3VIUv+VbUCxWDtJBDpCAhPI4g4hrBpJNKTimvnWrcAbp
	5FfZEQBA6gWeIVUtEueA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ug3-0007cz-0a; Wed, 19 Feb 2020 19:06:31 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Uft-0007cE-Sa
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 19:06:23 +0000
Received: by mail-pl1-f193.google.com with SMTP id b22so436536pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 11:06:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:cc:cc:subject
 :references:in-reply-to;
 bh=Li69D96UynYkf8JlXUUJ5Eri/Si/2jqwsMBbn3qmZS4=;
 b=Glg6xk9jm2Y1h/VQIFiE2U9f7yfPzeRjHgJ9gNZeD61PxXuU7B1ixzKMXlFhECdaJX
 Has2PBvSyGt9DcobDfOGxNRk4oQev+Zi1LT+XoWaJCxlomgtj7Mp/x3fU9HL8U5iMdFi
 CZv8yJmkQHcHlijuDTsQpXMjbjpYicYKLWzbsPfgLbNMziN5kcVnnwARIzBwvf2zFLcn
 lMBmfD0ccGWVZwyCgSyWSxLNmLt2AvlxbAm/fRmoUt5qv5/0XSz2zrdnN3JVCOk7jXKj
 sFFLY0gQ9/t13PDlPVhQhYRuSNdpmzZ2II/PR30MnMhuvuOoo9RVBKQ+OS3EZ3XXh5IF
 q0TQ==
X-Gm-Message-State: APjAAAXf3BDPlLSL8Ou7t6fsQ4DwzK7fh8bbiPUcPmD7qTtO7rXPoGBD
 EFz+/il7m2OBr8+dLSlkloM=
X-Google-Smtp-Source: APXvYqxEWtnBUAbhG3oyDrpABKMoy4uPAfK1vDTH8uFSy42bySZvvzQ185jRsvkELv1wDoR5r/7gOQ==
X-Received: by 2002:a17:902:8546:: with SMTP id
 d6mr27599050plo.193.1582139177825; 
 Wed, 19 Feb 2020 11:06:17 -0800 (PST)
Received: from localhost ([2601:646:8a00:9810:5af3:56d9:f882:39d4])
 by smtp.gmail.com with ESMTPSA id v5sm467463pgc.11.2020.02.19.11.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 11:06:17 -0800 (PST)
Message-ID: <5e4d8729.1c69fb81.a8fdb.15ed@mx.google.com>
Date: Wed, 19 Feb 2020 11:06:11 -0800
From: Paul Burton <paulburton@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2] MIPS: configs: Cleanup old Kconfig options
References: <20200217165634.5362-1-krzk@kernel.org>
In-Reply-To: <20200217165634.5362-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_110621_923695_F36984A0 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [paulburton89[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paulburton89[at]gmail.com]
 0.0 PP_MIME_FAKE_ASCII_TEXT BODY: MIME text/plain claims to be ASCII
 but isn't 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?q?Philippe_Mathieu-Daud?= =?utf-8?q?=C3=A9?= <f4bug@amsat.org>,
 bcm-kernel-feedback-list@broadcom.com, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============4724106645458064911=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4724106645458064911==
Content-Type: text/plain

Hello,

Krzysztof Kozlowski wrote:
> CONFIG_MTD_NAND_IDS is gone and not needed (part of CONFIG_MTD_NAND)
> since commit f16bd7ca0457 ("mtd: nand: Kill the MTD_NAND_IDS Kconfig
> option").
> 
> CONFIG_IOSCHED_DEADLINE, CONFIG_IOSCHED_CFQ and CONFIG_DEFAULT_NOOP are
> gone since commit f382fb0bcef4 ("block: remove legacy IO schedulers").
> 
> The IOSCHED_DEADLINE was replaced by MQ_IOSCHED_DEADLINE and it will be
> now enabled by default (along with MQ_IOSCHED_KYBER).
> 
> The BFQ_GROUP_IOSCHED is the only multiqueue scheduler which comes with
> group scheduling so select it in configs previously choosing
> CFQ_GROUP_IOSCHED.

Applied to mips-next.

> commit f6541f347bba
> https://git.kernel.org/mips/c/f6541f347bba
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Philippe Mathieu-Daudé <f4bug@amsat.org>
> Signed-off-by: Paul Burton <paulburton@kernel.org>

Thanks,
    Paul

[ This message was auto-generated; if you believe anything is incorrect
  then please email paulburton@kernel.org to report it. ]


--===============4724106645458064911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4724106645458064911==--
