Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3739788724
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 02:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzVdGqxAC5Ae8MVuKv2SZQHWXZp3wkSjMTc4kmkBy8w=; b=a6L2aFInzmNTyh
	KXU4bPd8lKVpP77EJnF9plTzibISdCKg2vFHLNDgKF9e+BRWbY8gNtnNHFftSITOb2U+2OMZZKNu/
	vVPTBO83FTObJjzfTCRqU8VupYdL1FuqW8w+T1Zy2W7TiC6O69B6AWUMQYDGzkBa/zruC+5iJW9bW
	AouimZAqMjaLPkSTRbqzamkJVD5fMewmGnMtFGgHQ6t6sjN5ves/gprmyQdPoM1zunyOeVVRivvGK
	OZrbpRcVsbv7w3PjrttcKS+Kq9p1cbIoFCLZIsiRyUROaEVi1eMMHA/t/heV2uQC96wAfQfQeDaeo
	dYu/r7x5H0IOiGmlqMng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwEz9-0007kT-UG; Sat, 10 Aug 2019 00:11:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwEyz-0007jP-Ab
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 00:11:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id n4so4881123pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 17:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=EuQ/R3CppOBh2T1D6FSE6/gAUMLd+emlPXZ8P0KlK4E=;
 b=KECCdmknzaH0Ve1akzRhLGqPfYzLSqiQZzqIGqUTh+SAcO6Q19ScBeUTVGmT9Kn2fi
 wuc/H+9Zvt1RiYlS2YMjELwda9ElQG3tetwgpwSLKyc3GMze7p3oJ/iAFf+mlr04fS3p
 4SoG8g9Vg49LMc+XN9CN2yjxwMYkHbcBup94eMKinNVLCmVJIOstAPR1bTlg+BvjkpIY
 cd36ZXrgFEWiqQp6BRzMLy0rpNVl0ji479pxHPF2OWsm4aIthkJshQrCEUBBzGGR6KqN
 xCB5+OxoXjeEhzq/eUA6LgN2F98/tP71hoMrI7Rz306vlRZd504t0Hj1N10xjJOIG5GQ
 EZNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=EuQ/R3CppOBh2T1D6FSE6/gAUMLd+emlPXZ8P0KlK4E=;
 b=OD9hbW93I/dPD5YgRsX437zRBJ15kRUkFBlbaNDRUwk9RB6GztIYA69Qvph2SNQYzl
 6bPJtHKb3vsIETdbVqw/5otF5mbZCC1yRG8yfdLwF97q9Z2HgpOt6DK3wjCGdkJfJA+j
 A1B+qVUHdlvYPys4NQAc3mgX9JQLhhlWU0jCh4lBDO2+kpQtMYp7UttcIkMJCK/vxxPB
 1kjryTSJmMYJa0xKLjylo+8bInz46hhYY8CRwQzevy3DwD1+qb8hCVcumtPD2L0uvZ0O
 etAFyUA+cg2XWw/7HhGle4s6B7U2phTbKxE8VpJtXsrfd8H0oJiL/4DuVfLbm1Ca8b+G
 jFQg==
X-Gm-Message-State: APjAAAVMnYAJDKfSuuT6/GLxtY7/sdFGy31wtCAcYJJEEGukke0u17Fl
 DSfaW/K3/EWWJ7cSlbRK/3q3fg==
X-Google-Smtp-Source: APXvYqwfo3bJUKvTH7g4ZfJhFp6Q9sQXhh6NsNs21MEaB/aVJYLW2l4lX40Zlrs3JJt56T2EbsbNBA==
X-Received: by 2002:a62:82c1:: with SMTP id w184mr24770723pfd.8.1565395899475; 
 Fri, 09 Aug 2019 17:11:39 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:b873:707a:e893:cdb3])
 by smtp.gmail.com with ESMTPSA id k14sm25201452pgb.78.2019.08.09.17.11.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 17:11:38 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, daniel.lezcano@linaro.org
Subject: Re: [PATCH v3 0/6] Add support of New Amlogic temperature sensor for
 G12 SoCs
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
Date: Fri, 09 Aug 2019 17:11:37 -0700
Message-ID: <7hd0hd3mme.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_171141_449982_099ABB14 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> This patchs series add support of New Amlogic temperature sensor and minimal
> thermal zone for SEI510 and ODROID-N2 boards.
>
> First implementation was doing on IIO[1] but after comments i move on thermal framework.
> Formulas and calibration values come from amlogic.
>
> Changes since v2:
>   - fix yaml documention 
>   - remove unneeded status variable for temperature-sensor node
>   - rework driver after Martin review
>   - add some information in commit message
>
> Changes since v1:
>   - fix enum vs const in documentation
>   - fix error with thermal-sensor-cells value set to 1 instead of 0
>   - add some dependencies needed to add cooling-maps
>
> Dependencies :
> - patch 3,4 & 5: depends on Neil's patch and series :
>               - missing dwc2 phy-names[2]
>               - patchsets to add DVFS on G12a[3] which have deps on [4] and [5]
>
> [1] https://lore.kernel.org/linux-amlogic/20190604144714.2009-1-glaroque@baylibre.com/
> [2] https://lore.kernel.org/linux-amlogic/20190625123647.26117-1-narmstrong@baylibre.com/
> [3] https://lore.kernel.org/linux-amlogic/20190729132622.7566-1-narmstrong@baylibre.com/
> [4] https://lore.kernel.org/linux-amlogic/20190731084019.8451-5-narmstrong@baylibre.com/
> [5] https://lore.kernel.org/linux-amlogic/20190729132622.7566-3-narmstrong@baylibre.com/

Thank you for the detailed list of dependencies!  Much appreciated.

With all the deps, I tested this on sei510 and odroid-n2, and basic
functionality seems to work.

As discussed off-list: it would be nice to have an example of how
cpufreq could be used as a cooling device for hot temperatures.  The
vendor kernel has some trip points that could be included as examples,
or even included as extra patches.

Also the driver patch is missing the two main thermal maintainers, so
please resend at least the driver and bindings including them.


Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
