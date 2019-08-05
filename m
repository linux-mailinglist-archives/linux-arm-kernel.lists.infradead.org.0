Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B99826B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uznFVQwWXtCAS0L027BbR+4H/QfkIFrdnQoaz2yDBCU=; b=uuJu+lPZzNgpua
	oyuVa0xCQe5Eilyukktj8YWIye10Ucf2iKjHCJHVTjRnjir0/rkwlASITmOBo2WI0Qjw3n3nqfXbi
	cg0THbYiD6JchwEfZSvXidVeLF0Pgl+xI5+vlIs1a8tNQTsEPuklnpGbcgKg9Ml2Aijs67B/U20kx
	8ms1Vv+jIaU0iTArKMOZ2f2hDhtdcWLU+5+SNjbnJHjP0Mc9ZB4c8Gd/LX9l2jqZFVFn4yQrdBd3d
	t2LBiEA9xDJ+Po2Uk2ZQbdt31ZWKnBQpRYHwMpmVTLqUSx8TBPESeiFjCqPbW0dsyzxsTBBgGr2JX
	MCBV5DMRlD8U+uXyaorw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukLl-0003FN-BY; Mon, 05 Aug 2019 21:17:01 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukLb-0003DV-FD
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 21:16:53 +0000
Received: by mail-pg1-x544.google.com with SMTP id o13so40346123pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 14:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Hjv4j/Vj9Xr1+lu3Alv0JlnmOoEgFtBXSbU9UmsCNGo=;
 b=I5W//gcUzJjBl1Uh/hM6NCnd/3gkKL5WdQwBH2HCxYB93LCDcBaq6915n5HTBbwLzl
 BIwoT8Pr5Uc8vdAH+4NtY+xzjflTxDsc2Td574oTXofj1JvaQmLEV3LCVj5RSE8Pzlhc
 EcpADse3wb4aKlMimttC306Fchd3kK4tcvLifCfNb4+V/xpmHsh/VVOEdc/YH4ZepUtg
 +kfLFW4L5jADtwfGi9mrxLK7YHVLoP1/UAxkigc8MCywrRI9cv+geqfpQ3Sv/tfe1osq
 5ee0Z3BBLVSAUIW8YD/aW9IuwcTu1hWuL1be/vg+stx4M2Bg4fkd1qcrayV/mYtR6MeR
 dlng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Hjv4j/Vj9Xr1+lu3Alv0JlnmOoEgFtBXSbU9UmsCNGo=;
 b=QLpLvP89jAMg+CdwIAAOp2qDjDw0CTYAeiTfc/WhO94Ya/MqcPb3vfqoc6JYnOBvYw
 /0ArcL16BTSNK7Fo6JsFGmrvNfwRnvbknnP5qNQ/LKP4zS/42gB3GdmVwsbqBsMoQp78
 Z6kAG1syW4Cmc8UhB2Qnx+MRLK0BGr/PfaGqMKJV+Xcli39UCs0hpRvasgNXC85Aa2Mv
 NdEKmWqOJxr3p5jbLpNFx7pS3mjacU7mfbiD/IllSEfqIza1r0M+bqxb+e90Er46isMS
 Q0mcL4iHJSrzaUhjrQS0PRNi62xfsEzbHY5v47guKb74f9LGKlIxPUimKFbTZ53tbA5P
 0Qzg==
X-Gm-Message-State: APjAAAU4oq/taX6KsLbncYhJrV31Wyo11zrOTZPICs6h2T8bQknZmGwm
 NpdPSJoMkFX9HlW8FEGxZv3tAA==
X-Google-Smtp-Source: APXvYqxahduyCEutbqa0LcJHp5B6a1S9MrYHMRKY6K3RuFuNrWxNYoi+A5H3XEU1nhAc3ORA/+GmRQ==
X-Received: by 2002:a63:5402:: with SMTP id i2mr111205104pgb.414.1565039810266; 
 Mon, 05 Aug 2019 14:16:50 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:7483:80d6:7f67:2672])
 by smtp.googlemail.com with ESMTPSA id h12sm21316957pje.12.2019.08.05.14.16.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 05 Aug 2019 14:16:49 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2 0/4] ARM: dts: meson8b: add VDDEE / mali-supply
In-Reply-To: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
References: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
Date: Mon, 05 Aug 2019 14:16:48 -0700
Message-ID: <7ho913gvnj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_141651_514398_ACF545CC 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Martin Blumenstingl <martin.blumenstingl@googlemail.com> writes:

> EC-100 and Odroid-C1 use a "copy" of the VCCK regulator as "VDDEE"
> regulator. VDDEE supplies the Mali GPU and various other bits within
> the SoC.
>
> The VDDEE regulator is not exclusive to the Mali GPU so it must not
> change it's voltage. The GPU OPP table has a fixed voltage for all
> frequencies of 1.10V. This matches with what u-boot sets on my EC-100
> and Odroid-C1.

Series queued for v5.4,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
